(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1779274771)
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
      (lambda _%$args186785%_
        (apply make-instance gx#module-import::t _%$args186785%_)))
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
      (lambda _%$args186782%_
        (apply make-instance gx#module-export::t _%$args186782%_)))
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
      (lambda _%$args186779%_
        (apply make-instance gx#import-set::t _%$args186779%_)))
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
      (lambda _%$args186776%_
        (apply make-instance gx#export-set::t _%$args186776%_)))
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
      (lambda _%$args186773%_
        (apply make-instance gx#import-expander::t _%$args186773%_)))
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
      (lambda _%$args186770%_
        (apply make-instance gx#export-expander::t _%$args186770%_)))
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
      (lambda _%$args186767%_
        (apply make-instance gx#import-export-expander::t _%$args186767%_)))
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
      (lambda (_%path186764%_ _%fun186765%_)
        (call-with-input-file
         (cons 'path: (cons _%path186764%_ gx#source-file-settings))
         _%fun186765%_)))
    (define gx#module-context:::init!
      (lambda (_%self186747%_
               _%id186748%_
               _%super186749%_
               _%ns186750%_
               _%path186751%_)
        (let ((_%self186754%_ _%self186747%_))
          (if (##fx< '11 (##structure-length _%self186754%_))
              (begin
                (##unchecked-structure-set!
                 _%self186754%_
                 _%id186748%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self186754%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self186754%_
                 _%super186749%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self186754%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self186754%_ '#f '5 '#f '#f)
                (##unchecked-structure-set!
                 _%self186754%_
                 _%ns186750%_
                 '6
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self186754%_
                 _%path186751%_
                 '7
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self186754%_ '() '8 '#f '#f)
                (##unchecked-structure-set! _%self186754%_ '() '9 '#f '#f)
                (##unchecked-structure-set! _%self186754%_ '#f '10 '#f '#f)
                (##unchecked-structure-set! _%self186754%_ '#f '11 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self186754%_
                     '11
                     (##structure-length _%self186754%_))))))
    (__bind-method!__%
     gx#module-context::t
     ':init!
     gx#module-context:::init!
     '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_%self186580%_ _%ctx186581%_ _%root186582%_)
        (let* ((_%self186585%_ _%self186580%_)
               (_%super186601%_
                (let ((_%$e186595%_ _%root186582%_))
                  (if _%$e186595%_
                      _%$e186595%_
                      (let ((_%$e186598%_ (gx#core-context-root__0)))
                        (if _%$e186598%_
                            _%$e186598%_
                            (let ((__obj186829
                                   (##structure gx#root-context::t '#f '#f)))
                              (let ((__constructor186830
                                     (direct-method-ref
                                      gx#root-context::t
                                      __obj186829
                                      ':init!)))
                                (if __constructor186830
                                    (__constructor186830 __obj186829)
                                    (error '"missing constructor method implementation"
                                           'class:
                                           gx#root-context::t
                                           'method:
                                           ':init!)))
                              __obj186829)))))))
          (if _%ctx186581%_
              (let ((_%id186604%_
                     (##structure-ref
                      _%ctx186581%_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_%path186605%_
                     (##structure-ref
                      _%ctx186581%_
                      '7
                      gx#module-context::t
                      '#f))
                    (_%in186606%_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _%ctx186581%_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_%e186607%_
                     (__make-atomic-promise
                      (lambda () (gx#eval-module _%ctx186581%_)))))
                (if (##fx< '8 (##structure-length _%self186585%_))
                    (begin
                      (##unchecked-structure-set!
                       _%self186585%_
                       _%id186604%_
                       '1
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self186585%_
                       (make-hash-table-eq 'size: (##length _%in186606%_))
                       '2
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self186585%_
                       _%super186601%_
                       '3
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self186585%_
                       '#f
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self186585%_
                       '#f
                       '5
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self186585%_
                       _%path186605%_
                       '6
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self186585%_
                       _%in186606%_
                       '7
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self186585%_
                       _%e186607%_
                       '8
                       '#f
                       '#f)
                      '#!void)
                    (error '"struct-instance-init!: too many arguments for struct"
                           _%self186585%_
                           '8
                           (##structure-length _%self186585%_)))
                (##for-each
                 (lambda (_%g186608186610%_)
                   (gx#core-bind-weak-import!__%
                    _%g186608186610%_
                    _%self186585%_))
                 _%in186606%_))
              (if (##fx< '8 (##structure-length _%self186585%_))
                  (begin
                    (##unchecked-structure-set! _%self186585%_ '#f '1 '#f '#f)
                    (##unchecked-structure-set!
                     _%self186585%_
                     (make-hash-table-eq)
                     '2
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self186585%_
                     _%super186601%_
                     '3
                     '#f
                     '#f)
                    (##unchecked-structure-set! _%self186585%_ '#f '4 '#f '#f)
                    (##unchecked-structure-set! _%self186585%_ '#f '5 '#f '#f)
                    (##unchecked-structure-set! _%self186585%_ '#f '6 '#f '#f)
                    (##unchecked-structure-set! _%self186585%_ '() '7 '#f '#f)
                    (##unchecked-structure-set! _%self186585%_ '#f '8 '#f '#f)
                    '#!void)
                  (error '"struct-instance-init!: too many arguments for struct"
                         _%self186585%_
                         '8
                         (##structure-length _%self186585%_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_%self186616%_ _%ctx186617%_)
        (let ((_%root186619%_ '#f))
          (gx#prelude-context:::init!__%
           _%self186616%_
           _%ctx186617%_
           _%root186619%_))))
    (define gx#prelude-context:::init!
      (lambda _g186836_
        (let ((_g186837_ (##length _g186836_)))
          (cond ((##fx= _g186837_ 2)
                 (apply gx#prelude-context:::init!__0 _g186836_))
                ((##fx= _g186837_ 3)
                 (apply gx#prelude-context:::init!__% _g186836_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g186836_))))))
    (__bind-method!__%
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_%self186454%_ _%e186455%_)
        (if (##fx< '3 (##structure-length _%self186454%_))
            (begin
              (##unchecked-structure-set!
               _%self186454%_
               _%e186455%_
               '1
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self186454%_
               (gx#current-expander-context)
               '2
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self186454%_
               (##fx- (gx#current-expander-phi) '1)
               '3
               '#f
               '#f)
              '#!void)
            (error '"struct-instance-init!: too many arguments for struct"
                   _%self186454%_
                   '3
                   (##structure-length _%self186454%_)))))
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
      (lambda (_%g186080186083%_ _%g186081186085%_)
        (gx#core-apply-user-expander__%
         _%g186080186083%_
         _%g186081186085%_
         'apply-import-expander)))
    (__bind-method!__%
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_%g185951185954%_ _%g185952185956%_)
        (gx#core-apply-user-expander__%
         _%g185951185954%_
         _%g185952185956%_
         'apply-export-expander)))
    (__bind-method!__%
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_%ctx185822%_)
        (let* ((_%path185824%_
                (##structure-ref _%ctx185822%_ '7 gx#module-context::t '#f))
               (_%path185826%_
                (if (pair? _%path185824%_)
                    (##last _%path185824%_)
                    _%path185824%_)))
          (if (string? _%path185826%_) _%path185826%_ '#f))))
    (define gx#import-module__%
      (lambda (_%path185798%_ _%reload?185799%_ _%eval?185800%_)
        (let ((_%ctx185802%_
               ((gx#current-expander-module-import)
                _%path185798%_
                _%reload?185799%_)))
          (if (and _%ctx185802%_ _%eval?185800%_)
              (gx#eval-module _%ctx185802%_)
              '#!void)
          _%ctx185802%_)))
    (define gx#import-module__0
      (lambda (_%path185807%_)
        (let* ((_%reload?185809%_ '#f) (_%eval?185811%_ '#f))
          (gx#import-module__%
           _%path185807%_
           _%reload?185809%_
           _%eval?185811%_))))
    (define gx#import-module__1
      (lambda (_%path185813%_ _%reload?185814%_)
        (let ((_%eval?185816%_ '#f))
          (gx#import-module__%
           _%path185813%_
           _%reload?185814%_
           _%eval?185816%_))))
    (define gx#import-module
      (lambda _g186838_
        (let ((_g186839_ (##length _g186838_)))
          (cond ((##fx= _g186839_ 1) (apply gx#import-module__0 _g186838_))
                ((##fx= _g186839_ 2) (apply gx#import-module__1 _g186838_))
                ((##fx= _g186839_ 3) (apply gx#import-module__% _g186838_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g186838_))))))
    (define gx#eval-module
      (lambda (_%mod185795%_)
        ((gx#current-expander-module-eval) _%mod185795%_)))
    (define gx#core-eval-module
      (lambda (_%obj185774%_)
        (letrec ((_%force-e185776%_
                  (lambda (_%getf185790%_ _%e185791%_)
                    (call-with-parameters__1
                     (lambda ()
                       (call-with-parameters__1
                        (lambda () (force (_%getf185790%_ _%e185791%_)))
                        gx#current-expander-phi
                        '0))
                     gx#current-expander-context
                     _%e185791%_))))
          (let _%recur185778%_ ((_%e185780%_ _%obj185774%_))
            (if (##structure-instance-of? _%e185780%_ 'gx#module-context::t)
                (let ()
                  (let ((_%$e185783%_
                         (gx#core-context-prelude__% _%e185780%_)))
                    (if _%$e185783%_ (_%recur185778%_ _%$e185783%_) '#!void))
                  (_%force-e185776%_ gx#module-context-e _%e185780%_))
                (if (##structure-instance-of?
                     _%e185780%_
                     'gx#prelude-context::t)
                    (_%force-e185776%_ gx#prelude-context-e _%e185780%_)
                    (if (gx#stx-string? _%e185780%_)
                        (_%recur185778%_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _%e185780%_)))
                        (if (gx#core-library-module-path? _%e185780%_)
                            (_%recur185778%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%e185780%_)))
                            (error '"cannot eval module" _%obj185774%_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_%ctx185754%_)
        (let _%lp185756%_ ((_%e185758%_ _%ctx185754%_))
          (if (or (##structure-instance-of? _%e185758%_ 'gx#module-context::t)
                  (##structure-instance-of? _%e185758%_ 'gx#local-context::t))
              (_%lp185756%_ (##unchecked-structure-ref _%e185758%_ '3 '#f '#f))
              (if (##structure-instance-of? _%e185758%_ 'gx#prelude-context::t)
                  _%e185758%_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_%ctx185770%_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _%ctx185770%_))))
    (define gx#core-context-prelude
      (lambda _g186840_
        (let ((_g186841_ (##length _g186840_)))
          (cond ((##fx= _g186841_ 0)
                 (apply gx#core-context-prelude__0 _g186840_))
                ((##fx= _g186841_ 1)
                 (apply gx#core-context-prelude__% _g186840_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g186840_))))))
    (define gx#core-module->prelude-context
      (lambda (_%ctx185745%_)
        (let ((_%$e185747%_ (__hash-get gx#__module-registry _%ctx185745%_)))
          (if _%$e185747%_
              _%$e185747%_
              (let ((_%pre185751%_
                     (let ((__obj186831
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
                        __obj186831
                        _%ctx185745%_)
                       __obj186831)))
                (__hash-put! gx#__module-registry _%ctx185745%_ _%pre185751%_)
                _%pre185751%_)))))
    (define gx#core-import-module__%
      (lambda (_%rpath185613%_ _%reload?185614%_)
        (letrec ((_%import-source185616%_
                  (lambda (_%path185704%_)
                    (if (member _%path185704%_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _%path185704%_)
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
                                      (let ((_g186842_
                                             (gx#core-read-module
                                              _%path185704%_)))
                                        (begin
                                          (let ((_g186843_
                                                 (if (##values? _g186842_)
                                                     (##values-length
                                                      _g186842_)
                                                     1)))
                                            (if (not (##fx= _g186843_ 4))
                                                (error "Context expects 4 values"
                                                       _g186843_)))
                                          (let ((_%pre185712%_
                                                 (##values-ref _g186842_ 0))
                                                (_%id185713%_
                                                 (##values-ref _g186842_ 1))
                                                (_%ns185714%_
                                                 (##values-ref _g186842_ 2))
                                                (_%body185715%_
                                                 (##values-ref _g186842_ 3)))
                                            (let* ((_%prelude185725%_
                                                    (if (##structure-instance-of?
                                                         _%pre185712%_
                                                         'gx#prelude-context::t)
                                                        _%pre185712%_
                                                        (if (##structure-instance-of?
                                                             _%pre185712%_
                                                             'gx#module-context::t)
                                                            (gx#core-module->prelude-context
                                                             _%pre185712%_)
                                                            (if (string? _%pre185712%_)
                                                                (gx#core-module->prelude-context
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#core-import-module__0 _%pre185712%_))
                        (if (not _%pre185712%_)
                            (let ((_%$e185721%_
                                   (gx#current-expander-module-prelude)))
                              (if _%$e185721%_
                                  _%$e185721%_
                                  (let ((__obj186832
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
                                     __obj186832
                                     '#f)
                                    __obj186832)))
                            (error '"cannot import module; unknown prelude"
                                   _%rpath185613%_
                                   _%pre185712%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%ctx185727%_
                                                    (let ((__obj186833
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
                                                       __obj186833
                                                       _%id185713%_
                                                       _%prelude185725%_
                                                       _%ns185714%_
                                                       _%path185704%_)
                                                      __obj186833))
                                                   (_%body185729%_
                                                    (gx#core-expand-module-begin
                                                     _%body185715%_
                                                     _%ctx185727%_))
                                                   (_%body185731%_
                                                    (gx#core-quote-syntax__%
                                                     (gx#core-cons
                                                      '%#begin
                                                      _%body185729%_)
                                                     _%path185704%_
                                                     _%ctx185727%_
                                                     '())))
                                              (##unchecked-structure-set!
                                               _%ctx185727%_
                                               (__make-atomic-promise
                                                (lambda ()
                                                  (gx#eval-syntax*
                                                   _%body185731%_)))
                                               '10
                                               '#f
                                               '#f)
                                              (##unchecked-structure-set!
                                               _%ctx185727%_
                                               _%body185731%_
                                               '11
                                               '#f
                                               '#f)
                                              (__hash-put!
                                               gx#__module-registry
                                               _%path185704%_
                                               _%ctx185727%_)
                                              (__hash-put!
                                               gx#__module-registry
                                               _%id185713%_
                                               _%ctx185727%_)
                                              _%ctx185727%_)))))
                                    gx#current-export-expander-phi
                                    '#f))
                                 gx#current-import-expander-phi
                                 '#f))
                              gx#current-expander-path
                              (cons _%path185704%_
                                    (gx#current-expander-path))))
                           gx#current-expander-phi
                           '0))
                        gx#current-expander-marks
                        '()))
                     gx#current-expander-context
                     (gx#core-context-root__0))))
                 (_%import-submodule185617%_
                  (lambda (_%rpath185633%_)
                    (let* ((_%rpath185634185641%_ _%rpath185633%_)
                           (_%E185636185644%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%rpath185634185641%_
                                     '([origin . refs]))
                              '#!void))
                           (_%K185637185692%_
                            (lambda (_%refs185647%_ _%origin185648%_)
                              (let ((_%ctx185650%_
                                     (if _%origin185648%_
                                         (gx#core-import-module__%
                                          _%origin185648%_
                                          _%reload?185614%_)
                                         (gx#current-expander-context))))
                                (let _%lp185652%_ ((_%rest185654%_
                                                    _%refs185647%_)
                                                   (_%ctx185655%_
                                                    _%ctx185650%_))
                                  (let* ((_%rest185656185664%_ _%rest185654%_)
                                         (_%else185658185672%_
                                          (lambda () _%ctx185655%_))
                                         (_%K185660185680%_
                                          (lambda (_%rest185675%_ _%id185676%_)
                                            (let ((_%bind185678%_
                                                   (gx#resolve-identifier__%
                                                    _%id185676%_
                                                    '0
                                                    _%ctx185655%_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _%bind185678%_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _%bind185678%_
                                                         '5
                                                         '#f
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_%lp185652%_
                                                   _%rest185675%_
                                                   (##unchecked-structure-ref
                                                    _%bind185678%_
                                                    '5
                                                    '#f
                                                    '#f))
                                                  (error '"cannot import submodule; not bound as a module"
                                                         _%rpath185633%_
                                                         _%id185676%_
                                                         _%bind185678%_))))))
                                    (if (pair? _%rest185656185664%_)
                                        (let ((_%hd185661185683%_
                                               (##car _%rest185656185664%_))
                                              (_%tl185662185685%_
                                               (##cdr _%rest185656185664%_)))
                                          (let* ((_%id185688%_
                                                  _%hd185661185683%_)
                                                 (_%rest185690%_
                                                  _%tl185662185685%_))
                                            (_%K185660185680%_
                                             _%rest185690%_
                                             _%id185688%_)))
                                        (_%else185658185672%_))))))))
                      (if (pair? _%rpath185634185641%_)
                          (let ((_%hd185638185695%_
                                 (##car _%rpath185634185641%_))
                                (_%tl185639185697%_
                                 (##cdr _%rpath185634185641%_)))
                            (let* ((_%origin185700%_ _%hd185638185695%_)
                                   (_%refs185702%_ _%tl185639185697%_))
                              (_%K185637185692%_
                               _%refs185702%_
                               _%origin185700%_)))
                          (_%E185636185644%_))))))
          (let ((_%$e185619%_
                 (if (not _%reload?185614%_)
                     (__hash-get gx#__module-registry _%rpath185613%_)
                     '#f)))
            (if _%$e185619%_
                _%$e185619%_
                (if (list? _%rpath185613%_)
                    (_%import-submodule185617%_ _%rpath185613%_)
                    (if (gx#core-library-module-path? _%rpath185613%_)
                        (let ((_%ctx185624%_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _%rpath185613%_)
                                _%reload?185614%_)))
                          (__hash-put!
                           gx#__module-registry
                           _%rpath185613%_
                           _%ctx185624%_)
                          _%ctx185624%_)
                        (let* ((_%npath185627%_
                                (path-normalize _%rpath185613%_))
                               (_%$e185629%_
                                (if (not _%reload?185614%_)
                                    (__hash-get
                                     gx#__module-registry
                                     _%npath185627%_)
                                    '#f)))
                          (if _%$e185629%_
                              _%$e185629%_
                              (_%import-source185616%_
                               _%npath185627%_))))))))))
    (define gx#core-import-module__0
      (lambda (_%rpath185738%_)
        (let ((_%reload?185740%_ '#f))
          (gx#core-import-module__% _%rpath185738%_ _%reload?185740%_))))
    (define gx#core-import-module
      (lambda _g186844_
        (let ((_g186845_ (##length _g186844_)))
          (cond ((##fx= _g186845_ 1)
                 (apply gx#core-import-module__0 _g186844_))
                ((##fx= _g186845_ 2)
                 (apply gx#core-import-module__% _g186844_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g186844_))))))
    (define gx#core-read-module
      (lambda (_%path185595%_)
        (__with-catch
         (lambda (_%exn185597%_)
           (if (datum-parsing-exception? _%exn185597%_)
               (let ((_%pos185599%_
                      (datum-parsing-exception-filepos _%exn185597%_)))
                 (if (= _%pos185599%_ '0)
                     (gx#core-read-module/lang _%path185595%_)
                     (gx#raise-syntax-error
                      'read-module
                      '"error reading module"
                      _%path185595%_
                      (call-with-parameters__1
                       (lambda ()
                         (call-with-output-string
                          '""
                          (lambda (_%g185601185603%_)
                            (display-exception__%
                             _%exn185597%_
                             _%g185601185603%_))))
                       dump-stack-trace?
                       '#f)
                      (cons 'line:
                            (cons (##filepos-line _%pos185599%_)
                                  (cons 'col:
                                        (cons (##filepos-col _%pos185599%_)
                                              '())))))))
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _%path185595%_
                (call-with-parameters__1
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_%g185606185608%_)
                      (display-exception__% _%exn185597%_ _%g185606185608%_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _%path185595%_)))))
    (define gx#core-read-module/sexp
      (lambda (_%path185447%_)
        (let _%lp185449%_ ((_%body185451%_
                            (read-syntax-from-file _%path185447%_))
                           (_%pre185452%_ '#f)
                           (_%ns185453%_ '#f)
                           (_%pkg185454%_ '#f))
          (let* ((_%e185455185479%_ _%body185451%_)
                 (_%E185471185505%_
                  (lambda ()
                    (let ((_g186846_
                           (if _%pkg185454%_
                               (values _%pre185452%_
                                       _%ns185453%_
                                       _%pkg185454%_)
                               (gx#core-read-module-package
                                _%path185447%_
                                _%pre185452%_
                                _%ns185453%_))))
                      (begin
                        (let ((_g186847_
                               (if (##values? _g186846_)
                                   (##values-length _g186846_)
                                   1)))
                          (if (not (##fx= _g186847_ 3))
                              (error "Context expects 3 values" _g186847_)))
                        (let ((_%pre185483%_ (##values-ref _g186846_ 0))
                              (_%ns185484%_ (##values-ref _g186846_ 1))
                              (_%pkg185485%_ (##values-ref _g186846_ 2)))
                          (let* ((_%prelude185491%_
                                  (if (gx#core-bound-module-prelude?
                                       _%pre185483%_)
                                      (gx#syntax-local-e__0 _%pre185483%_)
                                      (if (gx#core-library-module-path?
                                           _%pre185483%_)
                                          (gx#core-resolve-library-module-path
                                           _%pre185483%_)
                                          (if (gx#stx-string? _%pre185483%_)
                                              (gx#core-resolve-module-path__%
                                               _%pre185483%_
                                               _%path185447%_)
                                              (gx#stx-e _%pre185483%_)))))
                                 (_%path-id185493%_
                                  (gx#core-module-path->namespace
                                   _%path185447%_))
                                 (_%pkg-id185495%_
                                  (if _%pkg185485%_
                                      (##string-append
                                       _%pkg185485%_
                                       '"/"
                                       _%path-id185493%_)
                                      _%path-id185493%_))
                                 (_%module-id185497%_
                                  (##string->symbol _%pkg-id185495%_))
                                 (_%module-ns185502%_
                                  (if (eq? _%ns185484%_ '#!void)
                                      '#f
                                      (let ((_%$e185499%_ _%ns185484%_))
                                        (if _%$e185499%_
                                            _%$e185499%_
                                            _%pkg-id185495%_)))))
                            (values _%prelude185491%_
                                    _%module-id185497%_
                                    _%module-ns185502%_
                                    _%body185451%_)))))))
                 (_%E185464185537%_
                  (lambda ()
                    (if (gx#stx-pair? _%e185455185479%_)
                        (let ((_%e185472185509%_
                               (gx#syntax-e _%e185455185479%_)))
                          (let ((_%hd185473185512%_ (##car _%e185472185509%_))
                                (_%tl185474185514%_ (##cdr _%e185472185509%_)))
                            (if (eq? (gx#stx-e _%hd185473185512%_) 'package:)
                                (if (gx#stx-pair? _%tl185474185514%_)
                                    (let ((_%e185475185517%_
                                           (gx#syntax-e _%tl185474185514%_)))
                                      (let ((_%hd185476185520%_
                                             (##car _%e185475185517%_))
                                            (_%tl185477185522%_
                                             (##cdr _%e185475185517%_)))
                                        (let* ((_%pkg185525%_
                                                _%hd185476185520%_)
                                               (_%rest185527%_
                                                _%tl185477185522%_)
                                               (_%pkg185535%_
                                                (if (gx#identifier?
                                                     _%pkg185525%_)
                                                    (symbol->string
                                                     (gx#stx-e _%pkg185525%_))
                                                    (if (or (gx#stx-string?
                                                             _%pkg185525%_)
                                                            (gx#stx-false?
                                                             _%pkg185525%_))
                                                        (gx#stx-e
                                                         _%pkg185525%_)
                                                        (gx#raise-syntax-error
                                                         'import
                                                         '"Bad syntax; Illegal package name"
                                                         _%pkg185525%_)))))
                                          (_%lp185449%_
                                           _%rest185527%_
                                           _%pre185452%_
                                           _%ns185453%_
                                           _%pkg185535%_))))
                                    (_%E185471185505%_))
                                (_%E185471185505%_))))
                        (_%E185471185505%_))))
                 (_%E185457185567%_
                  (lambda ()
                    (if (gx#stx-pair? _%e185455185479%_)
                        (let ((_%e185465185541%_
                               (gx#syntax-e _%e185455185479%_)))
                          (let ((_%hd185466185544%_ (##car _%e185465185541%_))
                                (_%tl185467185546%_ (##cdr _%e185465185541%_)))
                            (if (eq? (gx#stx-e _%hd185466185544%_) 'namespace:)
                                (if (gx#stx-pair? _%tl185467185546%_)
                                    (let ((_%e185468185549%_
                                           (gx#syntax-e _%tl185467185546%_)))
                                      (let ((_%hd185469185552%_
                                             (##car _%e185468185549%_))
                                            (_%tl185470185554%_
                                             (##cdr _%e185468185549%_)))
                                        (let* ((_%ns185557%_
                                                _%hd185469185552%_)
                                               (_%rest185559%_
                                                _%tl185470185554%_)
                                               (_%ns185565%_
                                                (if (gx#identifier?
                                                     _%ns185557%_)
                                                    (symbol->string
                                                     (gx#stx-e _%ns185557%_))
                                                    (if (gx#stx-string?
                                                         _%ns185557%_)
                                                        (gx#stx-e _%ns185557%_)
                                                        (if (gx#stx-false?
                                                             _%ns185557%_)
                                                            '#!void
                                                            (gx#raise-syntax-error
                                                             'import
                                                             '"Bad syntax; illegal namespace"
                                                             _%ns185557%_))))))
                                          (_%lp185449%_
                                           _%rest185559%_
                                           _%pre185452%_
                                           _%ns185565%_
                                           _%pkg185454%_))))
                                    (_%E185464185537%_))
                                (_%E185464185537%_))))
                        (_%E185464185537%_))))
                 (_%E185456185591%_
                  (lambda ()
                    (if (gx#stx-pair? _%e185455185479%_)
                        (let ((_%e185458185571%_
                               (gx#syntax-e _%e185455185479%_)))
                          (let ((_%hd185459185574%_ (##car _%e185458185571%_))
                                (_%tl185460185576%_ (##cdr _%e185458185571%_)))
                            (if (eq? (gx#stx-e _%hd185459185574%_) 'prelude:)
                                (if (gx#stx-pair? _%tl185460185576%_)
                                    (let ((_%e185461185579%_
                                           (gx#syntax-e _%tl185460185576%_)))
                                      (let ((_%hd185462185582%_
                                             (##car _%e185461185579%_))
                                            (_%tl185463185584%_
                                             (##cdr _%e185461185579%_)))
                                        (let* ((_%prelude185587%_
                                                _%hd185462185582%_)
                                               (_%rest185589%_
                                                _%tl185463185584%_))
                                          (_%lp185449%_
                                           _%rest185589%_
                                           _%prelude185587%_
                                           _%ns185453%_
                                           _%pkg185454%_))))
                                    (_%E185457185567%_))
                                (_%E185457185567%_))))
                        (_%E185457185567%_)))))
            (_%E185456185591%_)))))
    (define gx#core-read-module/lang
      (lambda (_%path185268%_)
        (letrec ((_%default-read-module-body185270%_
                  (lambda (_%inp185439%_)
                    (let _%lp185441%_ ((_%body185443%_ '()))
                      (let ((_%next185445%_ (read-syntax__% _%inp185439%_)))
                        (if (eof-object? _%next185445%_)
                            (reverse _%body185443%_)
                            (_%lp185441%_
                             (cons _%next185445%_ _%body185443%_)))))))
                 (_%read-body185271%_
                  (lambda (_%inp185356%_
                           _%pre185357%_
                           _%ns185358%_
                           _%pkg185359%_
                           _%args185360%_)
                    (let ((_g186848_
                           (if _%pkg185359%_
                               (values _%pre185357%_
                                       _%ns185358%_
                                       _%pkg185359%_)
                               (gx#core-read-module-package
                                _%path185268%_
                                _%pre185357%_
                                _%ns185358%_))))
                      (begin
                        (let ((_g186849_
                               (if (##values? _g186848_)
                                   (##values-length _g186848_)
                                   1)))
                          (if (not (##fx= _g186849_ 3))
                              (error "Context expects 3 values" _g186849_)))
                        (let ((_%pre185362%_ (##values-ref _g186848_ 0))
                              (_%ns185363%_ (##values-ref _g186848_ 1))
                              (_%pkg185364%_ (##values-ref _g186848_ 2)))
                          (let* ((_%prelude185366%_
                                  (gx#import-module__0 _%pre185362%_))
                                 (_%read-module-body185421%_
                                  (let ((_%$e185412%_
                                         (__find (lambda (_%e185367185369%_)
                                                   (let* ((_%e185367185371185381%_
                                                           _%e185367185369%_)
                                                          (_%else185373185389%_
                                                           (lambda () '#f))
                                                          (_%K185375185393%_
                                                           (lambda () '#t)))
                                                     (if (##structure-direct-instance-of?
                                                          _%e185367185371185381%_
                                                          'gx#module-export::t)
                                                         (let* ((_%e185376185396%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##unchecked-structure-ref
                          _%e185367185371185381%_
                          '1
                          '#f
                          '#f))
                        (_%e185377185399%_
                         (##unchecked-structure-ref
                          _%e185367185371185381%_
                          '2
                          '#f
                          '#f))
                        (_%e185378185402%_
                         (##unchecked-structure-ref
                          _%e185367185371185381%_
                          '3
                          '#f
                          '#f)))
                   (if (##eq? _%e185378185402%_ '1)
                       (let ((_%e185379185405%_
                              (##unchecked-structure-ref
                               _%e185367185371185381%_
                               '4
                               '#f
                               '#f)))
                         (if ((lambda (_%g185407185409%_)
                                (eq? _%g185407185409%_ 'read-module-body))
                              _%e185379185405%_)
                             (_%K185375185393%_)
                             (_%else185373185389%_)))
                       (_%else185373185389%_)))
                 (_%else185373185389%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (##unchecked-structure-ref
                                                  _%prelude185366%_
                                                  '9
                                                  '#f
                                                  '#f))))
                                    (if _%$e185412%_
                                        ((lambda (_%xport185415%_)
                                           (let ((_%proc185418%_
                                                  (__with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _%xport185415%_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _%proc185418%_)
                                                 _%proc185418%_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _%path185268%_
                                                  _%pre185362%_
                                                  _%proc185418%_))))
                                         _%$e185412%_)
                                        _%default-read-module-body185270%_)))
                                 (_%path-id185423%_
                                  (gx#core-module-path->namespace
                                   _%path185268%_))
                                 (_%pkg-id185425%_
                                  (if _%pkg185364%_
                                      (##string-append
                                       _%pkg185364%_
                                       '"/"
                                       _%path-id185423%_)
                                      _%path-id185423%_))
                                 (_%module-id185427%_
                                  (##string->symbol _%pkg-id185425%_))
                                 (_%module-ns185432%_
                                  (let ((_%$e185429%_ _%ns185363%_))
                                    (if _%$e185429%_
                                        _%$e185429%_
                                        _%pkg-id185425%_)))
                                 (_%body185436%_
                                  (call-with-parameters__1
                                   (lambda ()
                                     (call-with-parameters__1
                                      (lambda ()
                                        (_%read-module-body185421%_
                                         _%inp185356%_))
                                      gx#current-module-reader-args
                                      _%args185360%_))
                                   gx#current-module-reader-path
                                   _%path185268%_)))
                            (values _%prelude185366%_
                                    _%module-id185427%_
                                    _%module-ns185432%_
                                    _%body185436%_)))))))
                 (_%string-e185272%_
                  (lambda (_%obj185350%_ _%what185351%_)
                    (if (string? _%obj185350%_)
                        _%obj185350%_
                        (if (symbol? _%obj185350%_)
                            (##symbol->string _%obj185350%_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _%what185351%_)
                             _%path185268%_
                             _%obj185350%_)))))
                 (_%read-lang-args185273%_
                  (lambda (_%inp185305%_ _%args185306%_)
                    (let* ((_%args185307185315%_ _%args185306%_)
                           (_%else185309185323%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _%path185268%_)))
                           (_%K185311185338%_
                            (lambda (_%args185326%_ _%prelude185327%_)
                              (let* ((_%pkg185329%_
                                      (pgetq__0 'package: _%args185326%_))
                                     (_%pkg185331%_
                                      (if _%pkg185329%_
                                          (_%string-e185272%_
                                           _%pkg185329%_
                                           '"package")
                                          '#f))
                                     (_%ns185333%_
                                      (pgetq__0 'namespace: _%args185326%_))
                                     (_%ns185335%_
                                      (if _%ns185333%_
                                          (_%string-e185272%_
                                           _%ns185333%_
                                           '"namespace")
                                          '#f)))
                                (_%read-body185271%_
                                 _%inp185305%_
                                 _%prelude185327%_
                                 _%ns185335%_
                                 _%pkg185331%_
                                 _%args185326%_)))))
                      (if (pair? _%args185307185315%_)
                          (let ((_%hd185312185341%_
                                 (##car _%args185307185315%_))
                                (_%tl185313185343%_
                                 (##cdr _%args185307185315%_)))
                            (let* ((_%prelude185346%_ _%hd185312185341%_)
                                   (_%args185348%_ _%tl185313185343%_))
                              (_%K185311185338%_
                               _%args185348%_
                               _%prelude185346%_)))
                          (_%else185309185323%_)))))
                 (_%read-lang185274%_
                  (lambda (_%inp185279%_)
                    (let* ((_%head185281%_ (read-line _%inp185279%_))
                           (_%$e185283%_
                            (string-index__0 _%head185281%_ '#\space)))
                      (if _%$e185283%_
                          ((lambda (_%ix185286%_)
                             (let ((_%lang185288%_
                                    (substring
                                     _%head185281%_
                                     '0
                                     _%ix185286%_)))
                               (if (equal? _%lang185288%_ '"#lang")
                                   (let* ((_%rest185290%_
                                           (substring
                                            _%head185281%_
                                            (##fx+ _%ix185286%_ '1)
                                            (string-length _%head185281%_)))
                                          (_%args185301%_
                                           (__with-catch
                                            (lambda (_%g185291185293%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _%path185268%_
                                               _%g185291185293%_))
                                            (lambda ()
                                              (call-with-input-string
                                               _%rest185290%_
                                               (lambda (_%g185296185298%_)
                                                 (read-all
                                                  _%g185296185298%_
                                                  read)))))))
                                     (_%read-lang-args185273%_
                                      _%inp185279%_
                                      _%args185301%_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _%path185268%_))))
                           _%$e185283%_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _%path185268%_)))))
                 (_%read-e185275%_
                  (lambda (_%inp185277%_)
                    (if (eq? (peek-char _%inp185277%_) '#\#)
                        (_%read-lang185274%_ _%inp185277%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _%path185268%_)))))
          (gx#call-with-input-source-file _%path185268%_ _%read-e185275%_))))
    (define gx#core-read-module-package
      (lambda (_%path185216%_ _%pre185217%_ _%ns185218%_)
        (letrec ((_%string-e185220%_
                  (lambda (_%e185263%_)
                    (if (symbol? _%e185263%_)
                        (##symbol->string _%e185263%_)
                        (if (string? _%e185263%_)
                            _%e185263%_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%e185263%_))))))
          (let _%lp185222%_ ((_%dir185224%_ (path-directory _%path185216%_))
                             (_%pkg-path185225%_ '()))
            (let ((_%gerbil.pkg185227%_
                   (path-expand '"gerbil.pkg" _%dir185224%_)))
              (if (##file-exists? _%gerbil.pkg185227%_)
                  (let ((_%plist185229%_
                         (gx#core-library-package-plist__% _%dir185224%_ '#t)))
                    (if (null? _%plist185229%_)
                        (let ((_%pkg185232%_
                               (if (null? _%pkg-path185225%_)
                                   '#f
                                   (string-join _%pkg-path185225%_ '"/"))))
                          (values _%pre185217%_ _%ns185218%_ _%pkg185232%_))
                        (if (list? _%plist185229%_)
                            (let* ((_%root185235%_
                                    (pgetq__0 'package: _%plist185229%_))
                                   (_%pkg185239%_
                                    (let ((_%pkg-path185237%_
                                           (if _%root185235%_
                                               (cons (_%string-e185220%_
                                                      _%root185235%_)
                                                     _%pkg-path185225%_)
                                               _%pkg-path185225%_)))
                                      (if (null? _%pkg-path185237%_)
                                          '#f
                                          (string-join
                                           _%pkg-path185237%_
                                           '"/"))))
                                   (_%ns185246%_
                                    (let ((_%ns185244%_
                                           (let ((_%$e185241%_ _%ns185218%_))
                                             (if _%$e185241%_
                                                 _%$e185241%_
                                                 (pgetq__0
                                                  'namespace:
                                                  _%plist185229%_)))))
                                      (if _%ns185244%_
                                          (_%string-e185220%_ _%ns185244%_)
                                          '#f)))
                                   (_%pre185251%_
                                    (let ((_%$e185248%_ _%pre185217%_))
                                      (if _%$e185248%_
                                          _%$e185248%_
                                          (pgetq__0
                                           'prelude:
                                           _%plist185229%_)))))
                              (values _%pre185251%_
                                      _%ns185246%_
                                      _%pkg185239%_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%plist185229%_))))
                  (let ((_%dir*185255%_
                         (path-strip-trailing-directory-separator
                          _%dir185224%_)))
                    (if (or (__string-empty? _%dir*185255%_)
                            (equal? _%dir185224%_ _%dir*185255%_))
                        (values _%pre185217%_ _%ns185218%_ '#f)
                        (let ((_%xpath185260%_
                               (path-strip-directory _%dir*185255%_))
                              (_%xdir185261%_ (path-directory _%dir*185255%_)))
                          (_%lp185222%_
                           _%xdir185261%_
                           (cons _%xpath185260%_ _%pkg-path185225%_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_%path185214%_)
        (path-strip-extension (path-strip-directory _%path185214%_))))
    (define gx#core-module-path->id
      (lambda (_%path185212%_)
        (##string->symbol (gx#core-module-path->namespace _%path185212%_))))
    (define gx#core-resolve-module-path__%
      (lambda (_%stx-path185191%_ _%rel185192%_)
        (let* ((_%path185194%_ (gx#stx-e _%stx-path185191%_))
               (_%path185196%_
                (if (__string-empty? (path-extension _%path185194%_))
                    (##string-append _%path185194%_ '".ss")
                    _%path185194%_)))
          (gx#core-resolve-path__%
           _%path185196%_
           (let ((_%$e185199%_ (gx#stx-source _%stx-path185191%_)))
             (if _%$e185199%_ _%$e185199%_ _%rel185192%_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_%stx-path185205%_)
        (let ((_%rel185207%_ '#f))
          (gx#core-resolve-module-path__% _%stx-path185205%_ _%rel185207%_))))
    (define gx#core-resolve-module-path
      (lambda _g186850_
        (let ((_g186851_ (##length _g186850_)))
          (cond ((##fx= _g186851_ 1)
                 (apply gx#core-resolve-module-path__0 _g186850_))
                ((##fx= _g186851_ 2)
                 (apply gx#core-resolve-module-path__% _g186850_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g186850_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_%libpath185076%_)
        (let* ((_%spath185078%_ (symbol->string (gx#stx-e _%libpath185076%_)))
               (_%spath185080%_
                (substring
                 _%spath185078%_
                 '1
                 (##string-length _%spath185078%_)))
               (_%ext185082%_ (path-extension _%spath185080%_))
               (_%ssi185084%_
                (if (__string-empty? _%ext185082%_)
                    (##string-append _%spath185080%_ '".ssi")
                    (##string-append
                     (path-strip-extension _%spath185080%_)
                     '".ssi")))
               (_%srcs185088%_
                (if (__string-empty? _%ext185082%_)
                    (##map (lambda (_%ext185086%_)
                             (string-append _%spath185080%_ _%ext185086%_))
                           '(".ss" ".sld" ".scm"))
                    (cons _%spath185080%_ '()))))
          (let _%lp185091%_ ((_%rest185093%_ (load-path)))
            (let* ((_%rest185094185103%_ _%rest185093%_)
                   (_%E185097185107%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rest185094185103%_
                             '([dir . rest])
                             '([]))
                      '#!void)))
              (let ((_%K185099185178%_
                     (lambda (_%rest185118%_ _%dir185119%_)
                       (letrec ((_%resolve185121%_
                                 (lambda (_%ssi185134%_ _%srcs185135%_)
                                   (let ((_%compiled-path185137%_
                                          (path-expand
                                           _%ssi185134%_
                                           _%dir185119%_)))
                                     (if (##file-exists?
                                          _%compiled-path185137%_)
                                         (path-normalize
                                          _%compiled-path185137%_)
                                         (let _%lpr185139%_ ((_%rest-src185141%_
                                                              _%srcs185135%_))
                                           (let* ((_%rest-src185142185150%_
                                                   _%rest-src185141%_)
                                                  (_%else185144185158%_
                                                   (lambda ()
                                                     (_%lp185091%_
                                                      _%rest185118%_)))
                                                  (_%K185146185166%_
                                                   (lambda (_%rest-src185161%_
                                                            _%src185162%_)
                                                     (let ((_%src-path185164%_
                                                            (path-expand
                                                             _%src185162%_
                                                             _%dir185119%_)))
                                                       (if (##file-exists?
                                                            _%src-path185164%_)
                                                           (path-normalize
                                                            _%src-path185164%_)
                                                           (_%lpr185139%_
                                                            _%rest-src185161%_))))))
                                             (if (pair? _%rest-src185142185150%_)
                                                 (let ((_%hd185147185169%_
                                                        (##car _%rest-src185142185150%_))
                                                       (_%tl185148185171%_
                                                        (##cdr _%rest-src185142185150%_)))
                                                   (let* ((_%src185174%_
                                                           _%hd185147185169%_)
                                                          (_%rest-src185176%_
                                                           _%tl185148185171%_))
                                                     (_%K185146185166%_
                                                      _%rest-src185176%_
                                                      _%src185174%_)))
                                                 (_%else185144185158%_)))))))))
                         (let ((_%$e185123%_
                                (gx#core-library-package-path-prefix
                                 _%dir185119%_)))
                           (if _%$e185123%_
                               ((lambda (_%prefix185126%_)
                                  (if (string-prefix?
                                       _%prefix185126%_
                                       _%spath185080%_)
                                      (let ((_%ssi185130%_
                                             (substring
                                              _%ssi185084%_
                                              (string-length _%prefix185126%_)
                                              (##string-length _%ssi185084%_)))
                                            (_%srcs185131%_
                                             (##map (lambda (_%src185128%_)
                                                      (substring
                                                       _%src185128%_
                                                       (string-length
                                                        _%prefix185126%_)
                                                       (string-length
                                                        _%src185128%_)))
                                                    _%srcs185088%_)))
                                        (_%resolve185121%_
                                         _%ssi185130%_
                                         _%srcs185131%_))
                                      (_%lp185091%_ _%rest185118%_)))
                                _%$e185123%_)
                               (_%resolve185121%_
                                _%ssi185084%_
                                _%srcs185088%_))))))
                    (_%K185098185112%_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"cannot find library module"
                        _%libpath185076%_))))
                (let ((_%try-match185096185115%_
                       (lambda ()
                         (if (null? _%rest185094185103%_)
                             (_%K185098185112%_)
                             (_%E185097185107%_)))))
                  (if (pair? _%rest185094185103%_)
                      (let ((_%tl185101185183%_ (##cdr _%rest185094185103%_))
                            (_%hd185100185181%_ (##car _%rest185094185103%_)))
                        (let ((_%dir185186%_ _%hd185100185181%_)
                              (_%rest185188%_ _%tl185101185183%_))
                          (_%K185099185178%_ _%rest185188%_ _%dir185186%_)))
                      (_%try-match185096185115%_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_%modpath185044%_)
        (letrec ((_%resolve185046%_
                  (lambda (_%path185067%_ _%base185068%_)
                    (let ((_%$e185070%_
                           (string-rindex__0 _%base185068%_ '#\/)))
                      (if _%$e185070%_
                          ((lambda (_%idx185073%_)
                             (gx#core-resolve-library-module-path
                              (##string->symbol
                               (string-append
                                '":"
                                (substring _%base185068%_ '0 _%idx185073%_)
                                '"/"
                                _%path185067%_))))
                           _%$e185070%_)
                          (gx#core-resolve-library-module-path
                           (##string->symbol
                            (string-append '":" _%path185067%_))))))))
          (let ((_%spath185048%_ (symbol->string (gx#stx-e _%modpath185044%_)))
                (_%mod185049%_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _%mod185049%_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"cannot resolve relative module path; not in module context"
                 _%modpath185044%_))
            (let ((_%mpath185051%_
                   (symbol->string
                    (##structure-ref
                     _%mod185049%_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _%lp185053%_ ((_%spath185055%_ _%spath185048%_)
                                 (_%mpath185056%_ _%mpath185051%_))
                (if (string-prefix? '"../" _%spath185055%_)
                    (let ((_%$e185059%_
                           (string-rindex__0 _%mpath185056%_ '#\/)))
                      (if _%$e185059%_
                          ((lambda (_%idx185062%_)
                             (_%lp185053%_
                              (substring
                               _%spath185055%_
                               '3
                               (string-length _%spath185055%_))
                              (substring _%mpath185056%_ '0 _%idx185062%_)))
                           _%$e185059%_)
                          (gx#raise-syntax-error
                           '#f
                           '"cannot resolve relative module path; illegal traversal"
                           _%modpath185044%_)))
                    (if (string-prefix? '"./" _%spath185055%_)
                        (_%lp185053%_
                         (substring
                          _%spath185055%_
                          '2
                          (string-length _%spath185055%_))
                         _%mpath185056%_)
                        (_%resolve185046%_
                         _%spath185055%_
                         _%mpath185056%_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_%dir185036%_)
        (let ((_%$e185038%_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _%dir185036%_))))
          (if _%$e185038%_
              ((lambda (_%pkg185041%_)
                 (##string-append (symbol->string _%pkg185041%_) '"/"))
               _%$e185038%_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_%dir185006%_ _%exists?185007%_)
        (let ((_%$e185009%_ (__hash-get gx#__module-pkg-cache _%dir185006%_)))
          (if _%$e185009%_
              _%$e185009%_
              (let* ((_%gerbil.pkg185013%_
                      (path-expand '"gerbil.pkg" _%dir185006%_))
                     (_%plist185023%_
                      (if (or _%exists?185007%_
                              (##file-exists? _%gerbil.pkg185013%_))
                          (let ((_%e185018%_
                                 (gx#call-with-input-source-file
                                  _%gerbil.pkg185013%_
                                  read)))
                            (if (eof-object? _%e185018%_)
                                '()
                                (if (list? _%e185018%_)
                                    _%e185018%_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _%gerbil.pkg185013%_
                                     _%e185018%_))))
                          '())))
                (__hash-put!
                 gx#__module-pkg-cache
                 _%dir185006%_
                 _%plist185023%_)
                _%plist185023%_)))))
    (define gx#core-library-package-plist__0
      (lambda (_%dir185029%_)
        (let ((_%exists?185031%_ '#f))
          (gx#core-library-package-plist__% _%dir185029%_ _%exists?185031%_))))
    (define gx#core-library-package-plist
      (lambda _g186852_
        (let ((_g186853_ (##length _g186852_)))
          (cond ((##fx= _g186853_ 1)
                 (apply gx#core-library-package-plist__0 _g186852_))
                ((##fx= _g186853_ 2)
                 (apply gx#core-library-package-plist__% _g186852_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g186852_))))))
    (define gx#core-library-module-path?
      (lambda (_%stx185003%_)
        (gx#core-special-module-path? _%stx185003%_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_%stx185001%_)
        (gx#core-special-module-path? _%stx185001%_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_%stx184996%_ _%char184997%_)
        (if (gx#identifier? _%stx184996%_)
            (if (interned-symbol? (gx#stx-e _%stx184996%_))
                (let ((_%str184999%_
                       (symbol->string (gx#stx-e _%stx184996%_))))
                  (if (##fx> (##string-length _%str184999%_) '1)
                      (eq? (string-ref _%str184999%_ '0) _%char184997%_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_%stx184990%_)
        (gx#core-bound-identifier?__%
         _%stx184990%_
         (lambda (_%g184991184993%_)
           (gx#expander-binding?__% _%g184991184993%_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_%stx184984%_)
        (gx#core-bound-identifier?__%
         _%stx184984%_
         (lambda (_%g184985184987%_)
           (gx#expander-binding?__% _%g184985184987%_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_%stx184971%_)
        (letrec ((_%module-prelude?184973%_
                  (lambda (_%e184979%_)
                    (let ((_%$e184981%_
                           (##structure-instance-of?
                            _%e184979%_
                            'gx#module-context::t)))
                      (if _%$e184981%_
                          _%$e184981%_
                          (##structure-instance-of?
                           _%e184979%_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _%stx184971%_
           (lambda (_%g184974184976%_)
             (gx#expander-binding?__%
              _%g184974184976%_
              _%module-prelude?184973%_))))))
    (define gx#core-bind-import!__%
      (lambda (_%in184902%_ _%ctx184903%_ _%force-weak?184904%_)
        (let* ((_%in184905184914%_ _%in184902%_)
               (_%E184907184917%_
                (lambda ()
                  (error '"No clause matching"
                         _%in184905184914%_
                         '((module-import source key phi weak?)))
                  '#!void))
               (_%K184908184930%_
                (lambda (_%weak?184920%_
                         _%phi184921%_
                         _%key184922%_
                         _%source184923%_)
                  (gx#core-bind!__%
                   _%key184922%_
                   (let* ((_%e184925%_
                           (gx#core-resolve-module-export _%source184923%_))
                          (__obj186834
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
                      __obj186834
                      (##unchecked-structure-ref _%e184925%_ '1 '#f '#f)
                      _%key184922%_
                      _%phi184921%_
                      _%e184925%_
                      (##unchecked-structure-ref _%source184923%_ '1 '#f '#f)
                      (let ((_%$e184927%_ _%force-weak?184904%_))
                        (if _%$e184927%_ _%$e184927%_ _%weak?184920%_)))
                     __obj186834)
                   gx#core-context-rebind?
                   _%phi184921%_
                   _%ctx184903%_))))
          (if (##structure-direct-instance-of?
               _%in184905184914%_
               'gx#module-import::t)
              (let* ((_%e184909184933%_
                      (##unchecked-structure-ref
                       _%in184905184914%_
                       '1
                       '#f
                       '#f))
                     (_%source184936%_ _%e184909184933%_)
                     (_%e184910184938%_
                      (##unchecked-structure-ref
                       _%in184905184914%_
                       '2
                       '#f
                       '#f))
                     (_%key184941%_ _%e184910184938%_)
                     (_%e184911184943%_
                      (##unchecked-structure-ref
                       _%in184905184914%_
                       '3
                       '#f
                       '#f))
                     (_%phi184946%_ _%e184911184943%_)
                     (_%e184912184948%_
                      (##unchecked-structure-ref
                       _%in184905184914%_
                       '4
                       '#f
                       '#f))
                     (_%weak?184951%_ _%e184912184948%_))
                (_%K184908184930%_
                 _%weak?184951%_
                 _%phi184946%_
                 _%key184941%_
                 _%source184936%_))
              (_%E184907184917%_)))))
    (define gx#core-bind-import!__0
      (lambda (_%in184956%_)
        (let* ((_%ctx184958%_ (gx#current-expander-context))
               (_%force-weak?184960%_ '#f))
          (gx#core-bind-import!__%
           _%in184956%_
           _%ctx184958%_
           _%force-weak?184960%_))))
    (define gx#core-bind-import!__1
      (lambda (_%in184962%_ _%ctx184963%_)
        (let ((_%force-weak?184965%_ '#f))
          (gx#core-bind-import!__%
           _%in184962%_
           _%ctx184963%_
           _%force-weak?184965%_))))
    (define gx#core-bind-import!
      (lambda _g186854_
        (let ((_g186855_ (##length _g186854_)))
          (cond ((##fx= _g186855_ 1) (apply gx#core-bind-import!__0 _g186854_))
                ((##fx= _g186855_ 2) (apply gx#core-bind-import!__1 _g186854_))
                ((##fx= _g186855_ 3) (apply gx#core-bind-import!__% _g186854_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g186854_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_%in184888%_ _%ctx184889%_)
        (gx#core-bind-import!__% _%in184888%_ _%ctx184889%_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_%in184894%_)
        (let ((_%ctx184896%_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _%in184894%_ _%ctx184896%_))))
    (define gx#core-bind-weak-import!
      (lambda _g186856_
        (let ((_g186857_ (##length _g186856_)))
          (cond ((##fx= _g186857_ 1)
                 (apply gx#core-bind-weak-import!__0 _g186856_))
                ((##fx= _g186857_ 2)
                 (apply gx#core-bind-weak-import!__% _g186856_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g186856_))))))
    (define gx#core-resolve-module-export
      (lambda (_%out184781%_)
        (letrec ((_%subst184783%_
                  (lambda (_%key184828%_)
                    (let* ((_%key184829184837%_ _%key184828%_)
                           (_%else184831184845%_ (lambda () _%key184828%_))
                           (_%K184833184875%_
                            (lambda (_%mark184848%_ _%id184849%_)
                              (let* ((_%mark184850184856%_ _%mark184848%_)
                                     (_%E184852184859%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark184850184856%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K184853184867%_
                                      (lambda (_%subst184862%_)
                                        (let ((_%$e184864%_
                                               (if _%subst184862%_
                                                   (hash-get
                                                    _%subst184862%_
                                                    _%id184849%_)
                                                   '#f)))
                                          (if _%$e184864%_
                                              _%$e184864%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _%key184828%_))))))
                                (if (##structure-instance-of?
                                     _%mark184850184856%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e184854184870%_
                                            (##unchecked-structure-ref
                                             _%mark184850184856%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst184873%_ _%e184854184870%_))
                                      (_%K184853184867%_ _%subst184873%_))
                                    (_%E184852184859%_))))))
                      (if (pair? _%key184829184837%_)
                          (let ((_%hd184834184878%_
                                 (##car _%key184829184837%_))
                                (_%tl184835184880%_
                                 (##cdr _%key184829184837%_)))
                            (let* ((_%id184883%_ _%hd184834184878%_)
                                   (_%mark184885%_ _%tl184835184880%_))
                              (_%K184833184875%_ _%mark184885%_ _%id184883%_)))
                          (_%else184831184845%_))))))
          (let* ((_%out184784184794%_ _%out184781%_)
                 (_%E184786184797%_
                  (lambda ()
                    (error '"No clause matching"
                           _%out184784184794%_
                           '((module-export ctx key phi _ _)))
                    '#!void))
                 (_%K184787184804%_
                  (lambda (_%phi184800%_ _%key184801%_ _%ctx184802%_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _%ctx184802%_ _%phi184800%_)
                     (_%subst184783%_ _%key184801%_)))))
            (if (##structure-direct-instance-of?
                 _%out184784184794%_
                 'gx#module-export::t)
                (let* ((_%e184788184807%_
                        (##unchecked-structure-ref
                         _%out184784184794%_
                         '1
                         '#f
                         '#f))
                       (_%ctx184810%_ _%e184788184807%_)
                       (_%e184789184812%_
                        (##unchecked-structure-ref
                         _%out184784184794%_
                         '2
                         '#f
                         '#f))
                       (_%key184815%_ _%e184789184812%_)
                       (_%e184790184817%_
                        (##unchecked-structure-ref
                         _%out184784184794%_
                         '3
                         '#f
                         '#f))
                       (_%phi184820%_ _%e184790184817%_)
                       (_%e184791184822%_
                        (##unchecked-structure-ref
                         _%out184784184794%_
                         '4
                         '#f
                         '#f))
                       (_%e184792184825%_
                        (##unchecked-structure-ref
                         _%out184784184794%_
                         '5
                         '#f
                         '#f)))
                  (_%K184787184804%_
                   _%phi184820%_
                   _%key184815%_
                   _%ctx184810%_))
                (_%E184786184797%_))))))
    (define gx#core-module-export->import__%
      (lambda (_%out184707%_ _%rename184708%_ _%dphi184709%_)
        (let* ((_%out184710184720%_ _%out184707%_)
               (_%E184712184723%_
                (lambda ()
                  (error '"No clause matching"
                         _%out184710184720%_
                         '((module-export ctx key phi name weak?)))
                  '#!void))
               (_%K184713184735%_
                (lambda (_%weak?184726%_
                         _%name184727%_
                         _%phi184728%_
                         _%key184729%_
                         _%ctx184730%_)
                  (##structure
                   gx#module-import::t
                   _%out184707%_
                   (let ((_%$e184732%_ _%rename184708%_))
                     (if _%$e184732%_ _%$e184732%_ _%name184727%_))
                   (fx+ _%phi184728%_ _%dphi184709%_)
                   _%weak?184726%_))))
          (if (##structure-direct-instance-of?
               _%out184710184720%_
               'gx#module-export::t)
              (let* ((_%e184714184738%_
                      (##unchecked-structure-ref
                       _%out184710184720%_
                       '1
                       '#f
                       '#f))
                     (_%ctx184741%_ _%e184714184738%_)
                     (_%e184715184743%_
                      (##unchecked-structure-ref
                       _%out184710184720%_
                       '2
                       '#f
                       '#f))
                     (_%key184746%_ _%e184715184743%_)
                     (_%e184716184748%_
                      (##unchecked-structure-ref
                       _%out184710184720%_
                       '3
                       '#f
                       '#f))
                     (_%phi184751%_ _%e184716184748%_)
                     (_%e184717184753%_
                      (##unchecked-structure-ref
                       _%out184710184720%_
                       '4
                       '#f
                       '#f))
                     (_%name184756%_ _%e184717184753%_)
                     (_%e184718184758%_
                      (##unchecked-structure-ref
                       _%out184710184720%_
                       '5
                       '#f
                       '#f))
                     (_%weak?184761%_ _%e184718184758%_))
                (_%K184713184735%_
                 _%weak?184761%_
                 _%name184756%_
                 _%phi184751%_
                 _%key184746%_
                 _%ctx184741%_))
              (_%E184712184723%_)))))
    (define gx#core-module-export->import__0
      (lambda (_%out184766%_)
        (let* ((_%rename184768%_ '#f) (_%dphi184770%_ '0))
          (gx#core-module-export->import__%
           _%out184766%_
           _%rename184768%_
           _%dphi184770%_))))
    (define gx#core-module-export->import__1
      (lambda (_%out184772%_ _%rename184773%_)
        (let ((_%dphi184775%_ '0))
          (gx#core-module-export->import__%
           _%out184772%_
           _%rename184773%_
           _%dphi184775%_))))
    (define gx#core-module-export->import
      (lambda _g186858_
        (let ((_g186859_ (##length _g186858_)))
          (cond ((##fx= _g186859_ 1)
                 (apply gx#core-module-export->import__0 _g186858_))
                ((##fx= _g186859_ 2)
                 (apply gx#core-module-export->import__1 _g186858_))
                ((##fx= _g186859_ 3)
                 (apply gx#core-module-export->import__% _g186858_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g186858_))))))
    (define gx#core-expand-module%
      (lambda (_%stx184606%_)
        (letrec ((_%make-context184608%_
                  (lambda (_%id184685%_)
                    (let* ((_%super184687%_ (gx#current-expander-context))
                           (_%bind-id184689%_ (gx#stx-e _%id184685%_))
                           (_%mod-id184691%_
                            (if (##structure-instance-of?
                                 _%super184687%_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##unchecked-structure-ref
                                  _%super184687%_
                                  '1
                                  '#f
                                  '#f)
                                 '"~"
                                 _%bind-id184689%_)
                                _%bind-id184689%_))
                           (_%ns184693%_ (symbol->string _%mod-id184691%_))
                           (_%path184703%_
                            (if (##structure-instance-of?
                                 _%super184687%_
                                 'gx#module-context::t)
                                (let ((_%path184695%_
                                       (##unchecked-structure-ref
                                        _%super184687%_
                                        '7
                                        '#f
                                        '#f)))
                                  (if (or (pair? _%path184695%_)
                                          (null? _%path184695%_))
                                      (cons _%bind-id184689%_ _%path184695%_)
                                      (if (not _%path184695%_)
                                          _%bind-id184689%_
                                          (cons _%bind-id184689%_
                                                (cons _%path184695%_ '())))))
                                _%bind-id184689%_))
                           (__obj186835
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
                       __obj186835
                       _%mod-id184691%_
                       _%super184687%_
                       _%ns184693%_
                       _%path184703%_)
                      __obj186835)))
                 (_%valid-module-id?184609%_
                  (lambda (_%id184660%_)
                    (let* ((_%str184662%_ (symbol->string _%id184660%_))
                           (_%len184664%_ (##string-length _%str184662%_)))
                      (if (##fx>= _%len184664%_ '1)
                          (let _%loop184667%_ ((_%index184669%_
                                                (##fx- (##string-length
                                                        _%str184662%_)
                                                       '1)))
                            (if (##fx>= _%index184669%_ '0)
                                (let ((_%c184671%_
                                       (string-ref
                                        _%str184662%_
                                        _%index184669%_)))
                                  (if (or (and (##char>=? _%c184671%_ '#\a)
                                               (##char<=? _%c184671%_ '#\z))
                                          (and (##char>=? _%c184671%_ '#\A)
                                               (##char<=? _%c184671%_ '#\Z))
                                          (and (##char>=? _%c184671%_ '#\0)
                                               (##char<=? _%c184671%_ '#\9))
                                          (##char=? _%c184671%_ '#\_)
                                          (##char=? _%c184671%_ '#\-))
                                      (_%loop184667%_
                                       (##fx- _%index184669%_ '1))
                                      '#f))
                                '#t))
                          '#f)))))
          (let* ((_%e184610184620%_ _%stx184606%_)
                 (_%E184612184624%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e184610184620%_)))
                 (_%E184611184656%_
                  (lambda ()
                    (if (gx#stx-pair? _%e184610184620%_)
                        (let ((_%e184613184628%_
                               (gx#syntax-e _%e184610184620%_)))
                          (let ((_%hd184614184631%_ (##car _%e184613184628%_))
                                (_%tl184615184633%_ (##cdr _%e184613184628%_)))
                            (if (gx#stx-pair? _%tl184615184633%_)
                                (let ((_%e184616184636%_
                                       (gx#syntax-e _%tl184615184633%_)))
                                  (let ((_%hd184617184639%_
                                         (##car _%e184616184636%_))
                                        (_%tl184618184641%_
                                         (##cdr _%e184616184636%_)))
                                    (let* ((_%id184644%_ _%hd184617184639%_)
                                           (_%body184646%_ _%tl184618184641%_))
                                      (if (and (gx#identifier? _%id184644%_)
                                               (gx#stx-list? _%body184646%_))
                                          (if (_%valid-module-id?184609%_
                                               (gx#stx-e
                                                (gx#datum->syntax__0 '#f 'id)))
                                              (let* ((_%ctx184648%_
                                                      (_%make-context184608%_
                                                       _%id184644%_))
                                                     (_%body184650%_
                                                      (gx#core-expand-module-begin
                                                       _%body184646%_
                                                       _%ctx184648%_))
                                                     (_%body184652%_
                                                      (gx#core-quote-syntax__1
                                                       (gx#core-cons
                                                        '%#begin
                                                        _%body184650%_)
                                                       (gx#stx-source
                                                        _%stx184606%_))))
                                                (##unchecked-structure-set!
                                                 _%ctx184648%_
                                                 (__make-atomic-promise
                                                  (lambda ()
                                                    (gx#eval-syntax*
                                                     _%body184652%_)))
                                                 '10
                                                 '#f
                                                 '#f)
                                                (##unchecked-structure-set!
                                                 _%ctx184648%_
                                                 _%body184652%_
                                                 '11
                                                 '#f
                                                 '#f)
                                                (gx#core-bind-syntax!__0
                                                 _%id184644%_
                                                 _%ctx184648%_)
                                                (gx#core-quote-syntax__1
                                                 (gx#core-list
                                                  '%#module
                                                  (gx#core-quote-syntax__0
                                                   _%id184644%_)
                                                  _%body184652%_)
                                                 (gx#stx-source
                                                  _%stx184606%_)))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"invalid module id; allowed characters are A-Z,a-z,0-9,_,-"
                                               _%stx184606%_
                                               (gx#datum->syntax__0 '#f 'id)))
                                          (_%E184612184624%_)))))
                                (_%E184612184624%_))))
                        (_%E184612184624%_)))))
            (_%E184611184656%_)))))
    (define gx#core-expand-module-begin
      (lambda (_%body184571%_ _%ctx184572%_)
        (call-with-parameters__1
         (lambda ()
           (call-with-parameters__1
            (lambda ()
              (gx#core-bind-feature!__1 'gerbil-module '#t)
              (let* ((_%stx184576%_
                      (gx#core-expand-head
                       (cons '%%begin-module _%body184571%_)))
                     (_%e184577184584%_ _%stx184576%_)
                     (_%E184579184588%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module body expansion"
                         _%stx184576%_)))
                     (_%E184578184602%_
                      (lambda ()
                        (if (gx#stx-pair? _%e184577184584%_)
                            (let ((_%e184580184592%_
                                   (gx#syntax-e _%e184577184584%_)))
                              (let ((_%hd184581184595%_
                                     (##car _%e184580184592%_))
                                    (_%tl184582184597%_
                                     (##cdr _%e184580184592%_)))
                                (if (and (gx#identifier? _%hd184581184595%_)
                                         (gx#core-identifier=?
                                          _%hd184581184595%_
                                          '%#begin-module))
                                    (let ((_%body184600%_ _%tl184582184597%_))
                                      (if (gx#sealed-syntax? _%stx184576%_)
                                          _%body184600%_
                                          (gx#core-expand-module-body
                                           _%body184600%_)))
                                    (_%E184579184588%_))))
                            (_%E184579184588%_)))))
                (_%E184578184602%_)))
            gx#current-expander-phi
            '0))
         gx#current-expander-context
         _%ctx184572%_)))
    (define gx#core-expand-module-body
      (lambda (_%body184367%_)
        (letrec ((_%expand-special184369%_
                  (lambda (_%hd184498%_ _%K184499%_ _%rest184500%_ _%r184501%_)
                    (let* ((_%e184502184519%_ _%hd184498%_)
                           (_%E184514184523%_
                            (lambda ()
                              (_%K184499%_
                               _%rest184500%_
                               (cons (gx#core-expand-top _%hd184498%_)
                                     _%r184501%_))))
                           (_%E184504184535%_
                            (lambda ()
                              (if (gx#stx-pair? _%e184502184519%_)
                                  (let ((_%e184515184527%_
                                         (gx#syntax-e _%e184502184519%_)))
                                    (let ((_%hd184516184530%_
                                           (##car _%e184515184527%_))
                                          (_%tl184517184532%_
                                           (##cdr _%e184515184527%_)))
                                      (if (and (gx#identifier?
                                                _%hd184516184530%_)
                                               (gx#core-identifier=?
                                                _%hd184516184530%_
                                                '%#export))
                                          (_%K184499%_
                                           _%rest184500%_
                                           (cons _%hd184498%_ _%r184501%_))
                                          (_%E184514184523%_))))
                                  (_%E184514184523%_))))
                           (_%E184503184567%_
                            (lambda ()
                              (if (gx#stx-pair? _%e184502184519%_)
                                  (let ((_%e184505184539%_
                                         (gx#syntax-e _%e184502184519%_)))
                                    (let ((_%hd184506184542%_
                                           (##car _%e184505184539%_))
                                          (_%tl184507184544%_
                                           (##cdr _%e184505184539%_)))
                                      (if (and (gx#identifier?
                                                _%hd184506184542%_)
                                               (gx#core-identifier=?
                                                _%hd184506184542%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl184507184544%_)
                                              (let ((_%e184508184547%_
                                                     (gx#syntax-e
                                                      _%tl184507184544%_)))
                                                (let ((_%hd184509184550%_
                                                       (##car _%e184508184547%_))
                                                      (_%tl184510184552%_
                                                       (##cdr _%e184508184547%_)))
                                                  (let ((_%hd-bind184555%_
                                                         _%hd184509184550%_))
                                                    (if (gx#stx-pair?
                                                         _%tl184510184552%_)
                                                        (let ((_%e184511184557%_
                                                               (gx#syntax-e
                                                                _%tl184510184552%_)))
                                                          (let ((_%hd184512184560%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e184511184557%_))
                        (_%tl184513184562%_ (##cdr _%e184511184557%_)))
                    (let ((_%expr184565%_ _%hd184512184560%_))
                      (if (gx#stx-null? _%tl184513184562%_)
                          (if (gx#core-bind-values? _%hd-bind184555%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind184555%_)
                                (_%K184499%_
                                 _%rest184500%_
                                 (cons _%hd184498%_ _%r184501%_)))
                              (_%E184504184535%_))
                          (_%E184504184535%_)))))
                (_%E184504184535%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E184504184535%_))
                                          (_%E184504184535%_))))
                                  (_%E184504184535%_)))))
                      (_%E184503184567%_))))
                 (_%expand-body184370%_
                  (lambda (_%rbody184372%_)
                    (let _%lp184374%_ ((_%rest184376%_ _%rbody184372%_)
                                       (_%body184377%_ '()))
                      (let* ((_%rest184378184386%_ _%rest184376%_)
                             (_%else184380184394%_ (lambda () _%body184377%_))
                             (_%K184382184486%_
                              (lambda (_%rest184397%_ _%hd184398%_)
                                (let* ((_%e184399184420%_ _%hd184398%_)
                                       (_%E184415184424%_
                                        (lambda ()
                                          (_%lp184374%_
                                           _%rest184397%_
                                           (cons (gx#core-expand-expression
                                                  _%hd184398%_)
                                                 _%body184377%_))))
                                       (_%E184411184438%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e184399184420%_)
                                              (let ((_%e184416184428%_
                                                     (gx#syntax-e
                                                      _%e184399184420%_)))
                                                (let ((_%hd184417184431%_
                                                       (##car _%e184416184428%_))
                                                      (_%tl184418184433%_
                                                       (##cdr _%e184416184428%_)))
                                                  (let ((_%form184436%_
                                                         _%hd184417184431%_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _%form184436%_
                                                         gx#special-form-binding?)
                                                        (_%lp184374%_
                                                         _%rest184397%_
                                                         (cons _%hd184398%_
                                                               _%body184377%_))
                                                        (_%E184415184424%_)))))
                                              (_%E184415184424%_))))
                                       (_%E184401184450%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e184399184420%_)
                                              (let ((_%e184412184442%_
                                                     (gx#syntax-e
                                                      _%e184399184420%_)))
                                                (let ((_%hd184413184445%_
                                                       (##car _%e184412184442%_))
                                                      (_%tl184414184447%_
                                                       (##cdr _%e184412184442%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd184413184445%_)
                                                           (gx#core-identifier=?
                                                            _%hd184413184445%_
                                                            '%#export))
                                                      (_%lp184374%_
                                                       _%rest184397%_
                                                       (cons (gx#core-expand-export%__0
                                                              _%hd184398%_)
                                                             _%body184377%_))
                                                      (_%E184411184438%_))))
                                              (_%E184411184438%_))))
                                       (_%E184400184482%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e184399184420%_)
                                              (let ((_%e184402184454%_
                                                     (gx#syntax-e
                                                      _%e184399184420%_)))
                                                (let ((_%hd184403184457%_
                                                       (##car _%e184402184454%_))
                                                      (_%tl184404184459%_
                                                       (##cdr _%e184402184454%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd184403184457%_)
                                                           (gx#core-identifier=?
                                                            _%hd184403184457%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl184404184459%_)
                                                          (let ((_%e184405184462%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl184404184459%_)))
                    (let ((_%hd184406184465%_ (##car _%e184405184462%_))
                          (_%tl184407184467%_ (##cdr _%e184405184462%_)))
                      (let ((_%hd-bind184470%_ _%hd184406184465%_))
                        (if (gx#stx-pair? _%tl184407184467%_)
                            (let ((_%e184408184472%_
                                   (gx#syntax-e _%tl184407184467%_)))
                              (let ((_%hd184409184475%_
                                     (##car _%e184408184472%_))
                                    (_%tl184410184477%_
                                     (##cdr _%e184408184472%_)))
                                (let ((_%expr184480%_ _%hd184409184475%_))
                                  (if (gx#stx-null? _%tl184410184477%_)
                                      (_%lp184374%_
                                       _%rest184397%_
                                       (cons (gx#core-quote-syntax__1
                                              (gx#core-list
                                               '%#define-values
                                               (gx#core-quote-bind-values
                                                _%hd-bind184470%_)
                                               (gx#core-expand-expression
                                                _%expr184480%_))
                                              (gx#stx-source _%hd184398%_))
                                             _%body184377%_))
                                      (_%E184401184450%_)))))
                            (_%E184401184450%_)))))
                  (_%E184401184450%_))
              (_%E184401184450%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E184401184450%_)))))
                                  (_%E184400184482%_)))))
                        (if (pair? _%rest184378184386%_)
                            (let ((_%hd184383184489%_
                                   (##car _%rest184378184386%_))
                                  (_%tl184384184491%_
                                   (##cdr _%rest184378184386%_)))
                              (let* ((_%hd184494%_ _%hd184383184489%_)
                                     (_%rest184496%_ _%tl184384184491%_))
                                (_%K184382184486%_
                                 _%rest184496%_
                                 _%hd184494%_)))
                            (_%else184380184394%_)))))))
          (_%expand-body184370%_
           (gx#core-expand-block__%
            (cons '%#begin-module _%body184367%_)
            _%expand-special184369%_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_%stx184208%_
               _%expanded?184209%_
               _%method184210%_
               _%current-phi184211%_
               _%expand1184212%_)
        (letrec ((_%K184214%_
                  (lambda (_%rest184334%_ _%r184335%_)
                    (let* ((_%e184336184343%_ _%rest184334%_)
                           (_%E184338184347%_ (lambda () _%r184335%_))
                           (_%E184337184363%_
                            (lambda ()
                              (if (gx#stx-pair? _%e184336184343%_)
                                  (let ((_%e184339184351%_
                                         (gx#syntax-e _%e184336184343%_)))
                                    (let ((_%hd184340184354%_
                                           (##car _%e184339184351%_))
                                          (_%tl184341184356%_
                                           (##cdr _%e184339184351%_)))
                                      (let* ((_%hd184359%_ _%hd184340184354%_)
                                             (_%rest184361%_
                                              _%tl184341184356%_))
                                        (_%step184215%_
                                         _%hd184359%_
                                         _%rest184361%_
                                         _%r184335%_))))
                                  (_%E184338184347%_)))))
                      (_%E184337184363%_))))
                 (_%step184215%_
                  (lambda (_%hd184248%_ _%rest184249%_ _%r184250%_)
                    (let* ((_%e184251184269%_ _%hd184248%_)
                           (_%E184264184273%_
                            (lambda ()
                              (if (_%expanded?184209%_ (gx#stx-e _%hd184248%_))
                                  (_%K184214%_
                                   _%rest184249%_
                                   (cons (gx#stx-e _%hd184248%_) _%r184250%_))
                                  (_%expand1184212%_
                                   _%hd184248%_
                                   _%K184214%_
                                   _%rest184249%_
                                   _%r184250%_))))
                           (_%E184260184289%_
                            (lambda ()
                              (if (gx#stx-pair? _%e184251184269%_)
                                  (let ((_%e184265184277%_
                                         (gx#syntax-e _%e184251184269%_)))
                                    (let ((_%hd184266184280%_
                                           (##car _%e184265184277%_))
                                          (_%tl184267184282%_
                                           (##cdr _%e184265184277%_)))
                                      (let* ((_%macro184285%_
                                              _%hd184266184280%_)
                                             (_%body184287%_
                                              _%tl184267184282%_))
                                        (if (gx#core-bound-identifier?__%
                                             _%macro184285%_
                                             gx#syntax-binding?)
                                            (_%K184214%_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _%macro184285%_)
                                                    _%hd184248%_
                                                    _%method184210%_)
                                                   _%rest184249%_)
                                             _%r184250%_)
                                            (_%E184264184273%_)))))
                                  (_%E184264184273%_))))
                           (_%E184253184303%_
                            (lambda ()
                              (if (gx#stx-pair? _%e184251184269%_)
                                  (let ((_%e184261184293%_
                                         (gx#syntax-e _%e184251184269%_)))
                                    (let ((_%hd184262184296%_
                                           (##car _%e184261184293%_))
                                          (_%tl184263184298%_
                                           (##cdr _%e184261184293%_)))
                                      (if (eq? (gx#stx-e _%hd184262184296%_)
                                               'begin:)
                                          (let ((_%body184301%_
                                                 _%tl184263184298%_))
                                            (_%K184214%_
                                             (gx#stx-foldr
                                              cons
                                              _%rest184249%_
                                              _%body184301%_)
                                             _%r184250%_))
                                          (_%E184260184289%_))))
                                  (_%E184260184289%_))))
                           (_%E184252184330%_
                            (lambda ()
                              (if (gx#stx-pair? _%e184251184269%_)
                                  (let ((_%e184254184307%_
                                         (gx#syntax-e _%e184251184269%_)))
                                    (let ((_%hd184255184310%_
                                           (##car _%e184254184307%_))
                                          (_%tl184256184312%_
                                           (##cdr _%e184254184307%_)))
                                      (if (eq? (gx#stx-e _%hd184255184310%_)
                                               'phi:)
                                          (if (gx#stx-pair? _%tl184256184312%_)
                                              (let ((_%e184257184315%_
                                                     (gx#syntax-e
                                                      _%tl184256184312%_)))
                                                (let ((_%hd184258184318%_
                                                       (##car _%e184257184315%_))
                                                      (_%tl184259184320%_
                                                       (##cdr _%e184257184315%_)))
                                                  (let* ((_%dphi184323%_
                                                          _%hd184258184318%_)
                                                         (_%body184325%_
                                                          _%tl184259184320%_))
                                                    (if (gx#stx-fixnum?
                                                         _%dphi184323%_)
                                                        (let ((_%rbody184328%_
                                                               (call-with-parameters__1
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%K184214%_ _%body184325%_ '()))
                        _%current-phi184211%_
                        (fx+ (gx#stx-e _%dphi184323%_)
                             (_%current-phi184211%_)))))
                  (_%K184214%_
                   _%rest184249%_
                   (foldr__0 cons _%r184250%_ _%rbody184328%_)))
                (_%E184253184303%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E184253184303%_))
                                          (_%E184253184303%_))))
                                  (_%E184253184303%_)))))
                      (_%E184252184330%_)))))
          (let* ((_%e184216184223%_ _%stx184208%_)
                 (_%E184218184227%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e184216184223%_)))
                 (_%E184217184244%_
                  (lambda ()
                    (if (gx#stx-pair? _%e184216184223%_)
                        (let ((_%e184219184231%_
                               (gx#syntax-e _%e184216184223%_)))
                          (let ((_%hd184220184234%_ (##car _%e184219184231%_))
                                (_%tl184221184236%_ (##cdr _%e184219184231%_)))
                            (let ((_%body184239%_ _%tl184221184236%_))
                              (if (_%current-phi184211%_)
                                  (_%K184214%_ _%body184239%_ '())
                                  (call-with-parameters__1
                                   (lambda () (_%K184214%_ _%body184239%_ '()))
                                   _%current-phi184211%_
                                   (gx#current-expander-phi))))))
                        (_%E184218184227%_)))))
            (_%E184217184244%_)))))
    (define gx#core-expand-import%__%
      (lambda (_%stx183862%_ _%internal-expand?183863%_)
        (letrec ((_%expand1183865%_
                  (lambda (_%hd184180%_ _%K184181%_ _%rest184182%_ _%r184183%_)
                    (if (gx#core-bound-module? _%hd184180%_)
                        (_%import1183866%_
                         (gx#syntax-local-e__0 _%hd184180%_)
                         _%K184181%_
                         _%rest184182%_
                         _%r184183%_)
                        (if (gx#core-library-module-path? _%hd184180%_)
                            (_%import1183866%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%hd184180%_))
                             _%K184181%_
                             _%rest184182%_
                             _%r184183%_)
                            (if (gx#core-library-relative-module-path?
                                 _%hd184180%_)
                                (_%import1183866%_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _%hd184180%_))
                                 _%K184181%_
                                 _%rest184182%_
                                 _%r184183%_)
                                (let ((_%e184189%_ (gx#stx-e _%hd184180%_)))
                                  (if (pair? _%e184189%_)
                                      (let ((_%$e184192%_
                                             (gx#stx-e (##car _%e184189%_))))
                                        (if (eq? 'spec: _%$e184192%_)
                                            (_%import-spec183869%_
                                             _%hd184180%_
                                             _%K184181%_
                                             _%rest184182%_
                                             _%r184183%_)
                                            (if (eq? 'in: _%$e184192%_)
                                                (_%import-submodule183867%_
                                                 _%hd184180%_
                                                 _%K184181%_
                                                 _%rest184182%_
                                                 _%r184183%_)
                                                (if (eq? 'runtime:
                                                         _%$e184192%_)
                                                    (_%import-runtime183868%_
                                                     _%hd184180%_
                                                     _%K184181%_
                                                     _%rest184182%_
                                                     _%r184183%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _%stx183862%_
                                                     _%hd184180%_)))))
                                      (if (string? _%e184189%_)
                                          (_%import1183866%_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _%hd184180%_
                                             (gx#stx-source _%stx183862%_)))
                                           _%K184181%_
                                           _%rest184182%_
                                           _%r184183%_)
                                          (if (##structure-instance-of?
                                               _%e184189%_
                                               'gx#module-context::t)
                                              (_%K184181%_
                                               _%rest184182%_
                                               (cons _%e184189%_ _%r184183%_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _%stx183862%_
                                               _%hd184180%_))))))))))
                 (_%import1183866%_
                  (lambda (_%ctx184169%_
                           _%K184170%_
                           _%rest184171%_
                           _%r184172%_)
                    (let ((_%dphi184174%_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_%K184170%_
                       _%rest184171%_
                       (cons (##structure
                              gx#import-set::t
                              _%ctx184169%_
                              _%dphi184174%_
                              (map (lambda (_%g184175184177%_)
                                     (gx#core-module-export->import__%
                                      _%g184175184177%_
                                      '#f
                                      _%dphi184174%_))
                                   (##unchecked-structure-ref
                                    _%ctx184169%_
                                    '9
                                    '#f
                                    '#f)))
                             _%r184172%_)))))
                 (_%import-submodule183867%_
                  (lambda (_%hd184136%_ _%K184137%_ _%rest184138%_ _%r184139%_)
                    (let* ((_%e184140184147%_ _%hd184136%_)
                           (_%E184142184151%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e184140184147%_)))
                           (_%E184141184165%_
                            (lambda ()
                              (if (gx#stx-pair? _%e184140184147%_)
                                  (let ((_%e184143184155%_
                                         (gx#syntax-e _%e184140184147%_)))
                                    (let ((_%hd184144184158%_
                                           (##car _%e184143184155%_))
                                          (_%tl184145184160%_
                                           (##cdr _%e184143184155%_)))
                                      (let ((_%spath184163%_
                                             _%tl184145184160%_))
                                        (_%import1183866%_
                                         (_%import-spec-source183870%_
                                          _%spath184163%_)
                                         _%K184137%_
                                         _%rest184138%_
                                         _%r184139%_))))
                                  (_%E184142184151%_)))))
                      (_%E184141184165%_))))
                 (_%import-runtime183868%_
                  (lambda (_%hd184103%_ _%K184104%_ _%rest184105%_ _%r184106%_)
                    (let* ((_%e184107184114%_ _%hd184103%_)
                           (_%E184109184118%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e184107184114%_)))
                           (_%E184108184132%_
                            (lambda ()
                              (if (gx#stx-pair? _%e184107184114%_)
                                  (let ((_%e184110184122%_
                                         (gx#syntax-e _%e184107184114%_)))
                                    (let ((_%hd184111184125%_
                                           (##car _%e184110184122%_))
                                          (_%tl184112184127%_
                                           (##cdr _%e184110184122%_)))
                                      (let ((_%spath184130%_
                                             _%tl184112184127%_))
                                        (_%K184104%_
                                         _%rest184105%_
                                         (cons (_%import-spec-source183870%_
                                                _%spath184130%_)
                                               _%r184106%_)))))
                                  (_%E184109184118%_)))))
                      (_%E184108184132%_))))
                 (_%import-spec183869%_
                  (lambda (_%hd183941%_ _%K183942%_ _%rest183943%_ _%r183944%_)
                    (let* ((_%e183945183962%_ _%hd183941%_)
                           (_%E183954183966%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e183945183962%_)))
                           (_%E183947184077%_
                            (lambda ()
                              (if (gx#stx-pair? _%e183945183962%_)
                                  (let ((_%e183955183970%_
                                         (gx#syntax-e _%e183945183962%_)))
                                    (let ((_%hd183956183973%_
                                           (##car _%e183955183970%_))
                                          (_%tl183957183975%_
                                           (##cdr _%e183955183970%_)))
                                      (if (gx#stx-pair? _%tl183957183975%_)
                                          (let ((_%e183958183978%_
                                                 (gx#syntax-e
                                                  _%tl183957183975%_)))
                                            (let ((_%hd183959183981%_
                                                   (##car _%e183958183978%_))
                                                  (_%tl183960183983%_
                                                   (##cdr _%e183958183978%_)))
                                              (let* ((_%path183986%_
                                                      _%hd183959183981%_)
                                                     (_%specs183988%_
                                                      _%tl183960183983%_))
                                                (let ((_%src-ctx183990%_
                                                       (_%import-spec-source183870%_
                                                        _%path183986%_))
                                                      (_%exports183991%_
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
                                                      (_%specs183992%_
                                                       (gx#syntax->list
                                                        _%specs183988%_)))
                                                  (for-each
                                                   (lambda (_%out183994%_)
                                                     (__hash-put!
                                                      _%exports183991%_
                                                      (cons (##unchecked-structure-ref
                                                             _%out183994%_
                                                             '3
                                                             '#f
                                                             '#f)
                                                            (##unchecked-structure-ref
                                                             _%out183994%_
                                                             '4
                                                             '#f
                                                             '#f))
                                                      _%out183994%_))
                                                   (##unchecked-structure-ref
                                                    _%src-ctx183990%_
                                                    '9
                                                    '#f
                                                    '#f))
                                                  (_%K183942%_
                                                   _%rest183943%_
                                                   (foldl__0
                                                    (lambda (_%spec183996%_
                                                             _%r183997%_)
                                                      (let* ((_%e183998184014%_
                                                              _%spec183996%_)
                                                             (_%E184000184018%_
                                                              (lambda ()
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid syntax-case clause"
                         _%e183998184014%_)))
                     (_%E183999184073%_
                      (lambda ()
                        (if (gx#stx-pair? _%e183998184014%_)
                            (let ((_%e184001184022%_
                                   (gx#syntax-e _%e183998184014%_)))
                              (let ((_%hd184002184025%_
                                     (##car _%e184001184022%_))
                                    (_%tl184003184027%_
                                     (##cdr _%e184001184022%_)))
                                (let ((_%phi184030%_ _%hd184002184025%_))
                                  (if (gx#stx-pair? _%tl184003184027%_)
                                      (let ((_%e184004184032%_
                                             (gx#syntax-e _%tl184003184027%_)))
                                        (let ((_%hd184005184035%_
                                               (##car _%e184004184032%_))
                                              (_%tl184006184037%_
                                               (##cdr _%e184004184032%_)))
                                          (let ((_%name184040%_
                                                 _%hd184005184035%_))
                                            (if (gx#stx-pair?
                                                 _%tl184006184037%_)
                                                (let ((_%e184007184042%_
                                                       (gx#syntax-e
                                                        _%tl184006184037%_)))
                                                  (let ((_%hd184008184045%_
                                                         (##car _%e184007184042%_))
                                                        (_%tl184009184047%_
                                                         (##cdr _%e184007184042%_)))
                                                    (let ((_%src-phi184050%_
                                                           _%hd184008184045%_))
                                                      (if (gx#stx-pair?
                                                           _%tl184009184047%_)
                                                          (let ((_%e184010184052%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl184009184047%_)))
                    (let ((_%hd184011184055%_ (##car _%e184010184052%_))
                          (_%tl184012184057%_ (##cdr _%e184010184052%_)))
                      (let ((_%src-name184060%_ _%hd184011184055%_))
                        (if (gx#stx-null? _%tl184012184057%_)
                            (if (and (gx#stx-fixnum? _%src-phi184050%_)
                                     (gx#identifier? _%src-name184060%_)
                                     (gx#stx-fixnum? _%phi184030%_)
                                     (gx#identifier? _%name184040%_))
                                (let ((_%src-phi184062%_
                                       (gx#stx-e _%src-phi184050%_))
                                      (_%src-name184063%_
                                       (gx#core-identifier-key
                                        _%src-name184060%_))
                                      (_%phi184064%_ (gx#stx-e _%phi184030%_))
                                      (_%name184065%_
                                       (gx#core-identifier-key
                                        _%name184040%_)))
                                  (let ((_%$e184067%_
                                         (__hash-get
                                          _%exports183991%_
                                          (cons _%src-phi184062%_
                                                _%src-name184063%_))))
                                    (if _%$e184067%_
                                        ((lambda (_%out184070%_)
                                           (cons (gx#core-module-export->import__%
                                                  _%out184070%_
                                                  _%name184065%_
                                                  (fx- _%phi184064%_
                                                       _%src-phi184062%_))
                                                 _%r183997%_))
                                         _%$e184067%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; no matching export"
                                         _%stx183862%_
                                         _%hd183941%_))))
                                (_%E184000184018%_))
                            (_%E184000184018%_)))))
                  (_%E184000184018%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E184000184018%_)))))
                                      (_%E184000184018%_)))))
                            (_%E184000184018%_)))))
                (_%E183999184073%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r183944%_
                                                    _%specs183992%_))))))
                                          (_%E183954183966%_))))
                                  (_%E183954183966%_))))
                           (_%E183946184099%_
                            (lambda ()
                              (if (gx#stx-pair? _%e183945183962%_)
                                  (let ((_%e183948184081%_
                                         (gx#syntax-e _%e183945183962%_)))
                                    (let ((_%hd183949184084%_
                                           (##car _%e183948184081%_))
                                          (_%tl183950184086%_
                                           (##cdr _%e183948184081%_)))
                                      (if (gx#stx-pair? _%tl183950184086%_)
                                          (let ((_%e183951184089%_
                                                 (gx#syntax-e
                                                  _%tl183950184086%_)))
                                            (let ((_%hd183952184092%_
                                                   (##car _%e183951184089%_))
                                                  (_%tl183953184094%_
                                                   (##cdr _%e183951184089%_)))
                                              (let ((_%path184097%_
                                                     _%hd183952184092%_))
                                                (if (gx#stx-null?
                                                     _%tl183953184094%_)
                                                    (_%K183942%_
                                                     _%rest183943%_
                                                     (cons (_%import-spec-source183870%_
                                                            _%path184097%_)
                                                           _%r183944%_))
                                                    (_%E183947184077%_)))))
                                          (_%E183947184077%_))))
                                  (_%E183947184077%_)))))
                      (_%E183946184099%_))))
                 (_%import-spec-source183870%_
                  (lambda (_%spath183939%_)
                    (gx#core-import-nested-module
                     _%spath183939%_
                     _%stx183862%_)))
                 (_%import!183871%_
                  (lambda (_%rbody183884%_)
                    (letrec* ((_%current-ctx183886%_
                               (gx#current-expander-context))
                              (_%deps183887%_ (make-hash-table-eq))
                              (_%bind!183888%_
                               (lambda (_%hd183937%_)
                                 (gx#core-bind-import!__1
                                  _%hd183937%_
                                  _%current-ctx183886%_))))
                      (let _%lp183890%_ ((_%rest183892%_ _%rbody183884%_)
                                         (_%body183893%_ '()))
                        (let* ((_%rest183894183902%_ _%rest183892%_)
                               (_%else183896183913%_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _%current-ctx183886%_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _%current-ctx183886%_
                                       (foldl__0
                                        cons
                                        (##unchecked-structure-ref
                                         _%current-ctx183886%_
                                         '8
                                         '#f
                                         '#f)
                                        _%body183893%_)
                                       '8
                                       '#f
                                       '#f)
                                      '#!void)
                                  (__hash-for-each
                                   (lambda (_%ctx183910%_ _%_183911%_)
                                     (gx#eval-module _%ctx183910%_))
                                   _%deps183887%_)
                                  _%body183893%_))
                               (_%K183898183925%_
                                (lambda (_%rest183916%_ _%hd183917%_)
                                  (if (##structure-direct-instance-of?
                                       _%hd183917%_
                                       'gx#module-import::t)
                                      (let ()
                                        (_%bind!183888%_ _%hd183917%_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _%hd183917%_
                                                   '3
                                                   '#f
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _%hd183917%_
                                                            '1
                                                            '#f
                                                            '#f)
                                                           '3
                                                           '#f
                                                           '#f)))
                                            (__hash-put!
                                             _%deps183887%_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _%hd183917%_
                                               '1
                                               '#f
                                               '#f)
                                              '1
                                              '#f
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _%hd183917%_
                                           'gx#import-set::t)
                                          (let ()
                                            (for-each
                                             _%bind!183888%_
                                             (##unchecked-structure-ref
                                              _%hd183917%_
                                              '3
                                              '#f
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _%hd183917%_
                                                  '2
                                                  '#f
                                                  '#f))
                                                (__hash-put!
                                                 _%deps183887%_
                                                 (##unchecked-structure-ref
                                                  _%hd183917%_
                                                  '1
                                                  '#f
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_%$e183921%_
                                                 (##structure-instance-of?
                                                  _%hd183917%_
                                                  'gx#module-context::t)))
                                            (if _%$e183921%_
                                                _%$e183921%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _%stx183862%_
                                                 _%hd183917%_)))))
                                  (_%lp183890%_
                                   _%rest183916%_
                                   (cons _%hd183917%_ _%body183893%_)))))
                          (if (pair? _%rest183894183902%_)
                              (let ((_%hd183899183928%_
                                     (##car _%rest183894183902%_))
                                    (_%tl183900183930%_
                                     (##cdr _%rest183894183902%_)))
                                (let* ((_%hd183933%_ _%hd183899183928%_)
                                       (_%rest183935%_ _%tl183900183930%_))
                                  (_%K183898183925%_
                                   _%rest183935%_
                                   _%hd183933%_)))
                              (_%else183896183913%_)))))))
                 (_%expanded-import?183872%_
                  (lambda (_%e183876%_)
                    (let ((_%$e183878%_
                           (##structure-direct-instance-of?
                            _%e183876%_
                            'gx#import-set::t)))
                      (if _%$e183878%_
                          _%$e183878%_
                          (let ((_%$e183881%_
                                 (##structure-direct-instance-of?
                                  _%e183876%_
                                  'gx#module-import::t)))
                            (if _%$e183881%_
                                _%$e183881%_
                                (##structure-instance-of?
                                 _%e183876%_
                                 'gx#module-context::t))))))))
          (let ((_%rbody183874%_
                 (gx#core-expand-import/export
                  _%stx183862%_
                  _%expanded-import?183872%_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _%expand1183865%_)))
            (if _%internal-expand?183863%_
                (reverse _%rbody183874%_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_%import!183871%_ _%rbody183874%_))
                 (gx#stx-source _%stx183862%_)))))))
    (define gx#core-expand-import%__0
      (lambda (_%stx184201%_)
        (let ((_%internal-expand?184203%_ '#f))
          (gx#core-expand-import%__%
           _%stx184201%_
           _%internal-expand?184203%_))))
    (define gx#core-expand-import%
      (lambda _g186860_
        (let ((_g186861_ (##length _g186860_)))
          (cond ((##fx= _g186861_ 1)
                 (apply gx#core-expand-import%__0 _g186860_))
                ((##fx= _g186861_ 2)
                 (apply gx#core-expand-import%__% _g186860_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g186860_))))))
    (define gx#core-import-nested-module
      (lambda (_%spath183789%_ _%where183790%_)
        (let* ((_%e183791183798%_ _%spath183789%_)
               (_%E183793183802%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e183791183798%_)))
               (_%E183792183857%_
                (lambda ()
                  (if (gx#stx-pair? _%e183791183798%_)
                      (let ((_%e183794183806%_
                             (gx#syntax-e _%e183791183798%_)))
                        (let ((_%hd183795183809%_ (##car _%e183794183806%_))
                              (_%tl183796183811%_ (##cdr _%e183794183806%_)))
                          (let* ((_%origin183814%_ _%hd183795183809%_)
                                 (_%sub183816%_ _%tl183796183811%_)
                                 (_%origin-ctx183818%_
                                  (if (gx#stx-false? _%origin183814%_)
                                      (gx#current-expander-context)
                                      (gx#import-module__0 _%origin183814%_))))
                            (let _%lp183820%_ ((_%rest183822%_ _%sub183816%_)
                                               (_%ctx183823%_
                                                _%origin-ctx183818%_))
                              (let* ((_%e183824183831%_ _%rest183822%_)
                                     (_%E183826183835%_
                                      (lambda () _%ctx183823%_))
                                     (_%E183825183853%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e183824183831%_)
                                            (let ((_%e183827183839%_
                                                   (gx#syntax-e
                                                    _%e183824183831%_)))
                                              (let ((_%hd183828183842%_
                                                     (##car _%e183827183839%_))
                                                    (_%tl183829183844%_
                                                     (##cdr _%e183827183839%_)))
                                                (let* ((_%id183847%_
                                                        _%hd183828183842%_)
                                                       (_%rest183849%_
                                                        _%tl183829183844%_)
                                                       (_%bind183851%_
                                                        (gx#resolve-identifier__%
                                                         _%id183847%_
                                                         '0
                                                         _%ctx183823%_)))
                                                  (if (and (##structure-direct-instance-of?
                                                            _%bind183851%_
                                                            'gx#syntax-binding::t)
                                                           (##structure-instance-of?
                                                            (##unchecked-structure-ref
                                                             _%bind183851%_
                                                             '5
                                                             '#f
                                                             '#f)
                                                            'gx#module-context::t))
                                                      '#!void
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; not bound as module"
                                                       _%where183790%_
                                                       _%spath183789%_
                                                       _%id183847%_))
                                                  (_%lp183820%_
                                                   _%rest183849%_
                                                   (##unchecked-structure-ref
                                                    _%bind183851%_
                                                    '5
                                                    '#f
                                                    '#f)))))
                                            (_%E183826183835%_)))))
                                (_%E183825183853%_))))))
                      (_%E183793183802%_)))))
          (_%E183792183857%_))))
    (define gx#core-expand-import-source
      (lambda (_%hd183787%_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _%hd183787%_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_%stx183282%_ _%internal-expand?183283%_)
        (letrec* ((_%make-export__186788186789%_
                   (lambda (_%bind183735%_
                            _%phi183736%_
                            _%ctx183737%_
                            _%name183738%_)
                     (let* ((_%key183740%_
                             (##unchecked-structure-ref
                              _%bind183735%_
                              '2
                              '#f
                              '#f))
                            (_%export-key183742%_
                             (if _%name183738%_
                                 (gx#core-identifier-key _%name183738%_)
                                 _%key183740%_)))
                       (##structure
                        gx#module-export::t
                        _%ctx183737%_
                        _%key183740%_
                        _%phi183736%_
                        _%export-key183742%_
                        (let ((_%$e183745%_
                               (##structure-instance-of?
                                _%bind183735%_
                                'gx#extern-binding::t)))
                          (if _%$e183745%_
                              _%$e183745%_
                              (##structure-direct-instance-of?
                               _%bind183735%_
                               'gx#import-binding::t)))))))
                  (_%make-export__0__186790186793%_
                   (lambda (_%bind183751%_)
                     (let* ((_%phi183753%_ (gx#current-export-expander-phi))
                            (_%ctx183755%_ (gx#current-expander-context))
                            (_%name183757%_ '#f))
                       (_%make-export__186788186789%_
                        _%bind183751%_
                        _%phi183753%_
                        _%ctx183755%_
                        _%name183757%_))))
                  (_%make-export__1__186791186794%_
                   (lambda (_%bind183759%_ _%phi183760%_)
                     (let* ((_%ctx183762%_ (gx#current-expander-context))
                            (_%name183764%_ '#f))
                       (_%make-export__186788186789%_
                        _%bind183759%_
                        _%phi183760%_
                        _%ctx183762%_
                        _%name183764%_))))
                  (_%make-export__2__186792186795%_
                   (lambda (_%bind183766%_ _%phi183767%_ _%ctx183768%_)
                     (let ((_%name183770%_ '#f))
                       (_%make-export__186788186789%_
                        _%bind183766%_
                        _%phi183767%_
                        _%ctx183768%_
                        _%name183770%_))))
                  (_%make-export183285%_
                   (lambda _g186862_
                     (let ((_g186863_ (##length _g186862_)))
                       (cond ((##fx= _g186863_ 1)
                              (apply _%make-export__0__186790186793%_
                                     _g186862_))
                             ((##fx= _g186863_ 2)
                              (apply _%make-export__1__186791186794%_
                                     _g186862_))
                             ((##fx= _g186863_ 3)
                              (apply _%make-export__2__186792186795%_
                                     _g186862_))
                             ((##fx= _g186863_ 4)
                              (apply _%make-export__186788186789%_ _g186862_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g186862_))))))
                  (_%expand1183286%_
                   (lambda (_%hd183440%_
                            _%K183441%_
                            _%rest183442%_
                            _%r183443%_)
                     (let* ((_%e183444183476%_ _%hd183440%_)
                            (_%E183471183480%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _%stx183282%_
                                _%hd183440%_)))
                            (_%E183461183564%_
                             (lambda ()
                               (if (gx#stx-pair? _%e183444183476%_)
                                   (let ((_%e183472183484%_
                                          (gx#syntax-e _%e183444183476%_)))
                                     (let ((_%hd183473183487%_
                                            (##car _%e183472183484%_))
                                           (_%tl183474183489%_
                                            (##cdr _%e183472183484%_)))
                                       (if (eq? (gx#stx-e _%hd183473183487%_)
                                                'import:)
                                           (let ((_%in183492%_
                                                  _%tl183474183489%_))
                                             (if (gx#stx-list? _%in183492%_)
                                                 (let _%lp183494%_ ((_%in-rest183496%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%in183492%_)
                            (_%r183497%_ _%r183443%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%e183498183505%_
                                                           _%in-rest183496%_)
                                                          (_%E183500183509%_
                                                           (lambda ()
                                                             (_%K183441%_
                                                              _%rest183442%_
                                                              _%r183497%_)))
                                                          (_%E183499183560%_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%e183498183505%_)
                         (let ((_%e183501183513%_
                                (gx#syntax-e _%e183498183505%_)))
                           (let ((_%hd183502183516%_ (##car _%e183501183513%_))
                                 (_%tl183503183518%_
                                  (##cdr _%e183501183513%_)))
                             (let* ((_%hd183521%_ _%hd183502183516%_)
                                    (_%in-rest183523%_ _%tl183503183518%_)
                                    (_%src183558%_
                                     (if (gx#core-bound-module? _%hd183521%_)
                                         (gx#syntax-local-e__0 _%hd183521%_)
                                         (if (gx#core-library-module-path?
                                              _%hd183521%_)
                                             (gx#import-module__0
                                              (gx#core-resolve-library-module-path
                                               _%hd183521%_))
                                             (if (gx#core-library-relative-module-path?
                                                  _%hd183521%_)
                                                 (gx#import-module__0
                                                  (gx#core-resolve-library-relative-module-path
                                                   _%hd183521%_))
                                                 (if (gx#stx-string?
                                                      _%hd183521%_)
                                                     (gx#import-module__0
                                                      (gx#core-resolve-module-path__%
                                                       _%hd183521%_
                                                       (gx#stx-source
                                                        _%stx183282%_)))
                                                     (let* ((_%e183529183536%_
                                                             _%hd183521%_)
                                                            (_%E183531183540%_
                                                             (lambda ()
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; illegal re-export"
                                                                _%stx183282%_
                                                                _%hd183521%_)))
                                                            (_%E183530183554%_
                                                             (lambda ()
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%e183529183536%_)
                           (let ((_%e183532183544%_
                                  (gx#syntax-e _%e183529183536%_)))
                             (let ((_%hd183533183547%_
                                    (##car _%e183532183544%_))
                                   (_%tl183534183549%_
                                    (##cdr _%e183532183544%_)))
                               (if (eq? (gx#stx-e _%hd183533183547%_) 'in:)
                                   (let ((_%spath183552%_ _%tl183534183549%_))
                                     (gx#core-import-nested-module
                                      _%spath183552%_
                                      _%stx183282%_))
                                   (_%E183531183540%_))))
                           (_%E183531183540%_)))))
               (_%E183530183554%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (_%lp183494%_
                                _%in-rest183523%_
                                (_%export-imports183287%_
                                 _%src183558%_
                                 _%r183497%_)))))
                         (_%E183500183509%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E183499183560%_)))
                                                 (_%E183471183480%_)))
                                           (_%E183471183480%_))))
                                   (_%E183471183480%_))))
                            (_%E183448183604%_
                             (lambda ()
                               (if (gx#stx-pair? _%e183444183476%_)
                                   (let ((_%e183462183568%_
                                          (gx#syntax-e _%e183444183476%_)))
                                     (let ((_%hd183463183571%_
                                            (##car _%e183462183568%_))
                                           (_%tl183464183573%_
                                            (##cdr _%e183462183568%_)))
                                       (if (eq? (gx#stx-e _%hd183463183571%_)
                                                'rename:)
                                           (if (gx#stx-pair?
                                                _%tl183464183573%_)
                                               (let ((_%e183465183576%_
                                                      (gx#syntax-e
                                                       _%tl183464183573%_)))
                                                 (let ((_%hd183466183579%_
                                                        (##car _%e183465183576%_))
                                                       (_%tl183467183581%_
                                                        (##cdr _%e183465183576%_)))
                                                   (let ((_%id183584%_
                                                          _%hd183466183579%_))
                                                     (if (gx#stx-pair?
                                                          _%tl183467183581%_)
                                                         (let ((_%e183468183586%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl183467183581%_)))
                   (let ((_%hd183469183589%_ (##car _%e183468183586%_))
                         (_%tl183470183591%_ (##cdr _%e183468183586%_)))
                     (let ((_%name183594%_ _%hd183469183589%_))
                       (if (gx#stx-null? _%tl183470183591%_)
                           (let* ((_%phi183596%_
                                   (gx#current-export-expander-phi))
                                  (_%$e183598%_
                                   (gx#core-resolve-identifier__1
                                    _%id183584%_
                                    _%phi183596%_)))
                             (if _%$e183598%_
                                 ((lambda (_%bind183601%_)
                                    (_%K183441%_
                                     _%rest183442%_
                                     (cons (_%make-export__186788186789%_
                                            _%bind183601%_
                                            _%phi183596%_
                                            (gx#current-expander-context)
                                            _%name183594%_)
                                           _%r183443%_)))
                                  _%$e183598%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Reference to unbound identifier"
                                  _%stx183282%_
                                  _%hd183440%_
                                  _%id183584%_)))
                           (_%E183461183564%_)))))
                 (_%E183461183564%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E183461183564%_))
                                           (_%E183461183564%_))))
                                   (_%E183461183564%_))))
                            (_%E183447183654%_
                             (lambda ()
                               (if (gx#stx-pair? _%e183444183476%_)
                                   (let ((_%e183449183608%_
                                          (gx#syntax-e _%e183444183476%_)))
                                     (let ((_%hd183450183611%_
                                            (##car _%e183449183608%_))
                                           (_%tl183451183613%_
                                            (##cdr _%e183449183608%_)))
                                       (if (eq? (gx#stx-e _%hd183450183611%_)
                                                'spec:)
                                           (if (gx#stx-pair?
                                                _%tl183451183613%_)
                                               (let ((_%e183452183616%_
                                                      (gx#syntax-e
                                                       _%tl183451183613%_)))
                                                 (let ((_%hd183453183619%_
                                                        (##car _%e183452183616%_))
                                                       (_%tl183454183621%_
                                                        (##cdr _%e183452183616%_)))
                                                   (let ((_%phi183624%_
                                                          _%hd183453183619%_))
                                                     (if (gx#stx-pair?
                                                          _%tl183454183621%_)
                                                         (let ((_%e183455183626%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl183454183621%_)))
                   (let ((_%hd183456183629%_ (##car _%e183455183626%_))
                         (_%tl183457183631%_ (##cdr _%e183455183626%_)))
                     (let ((_%id183634%_ _%hd183456183629%_))
                       (if (gx#stx-pair? _%tl183457183631%_)
                           (let ((_%e183458183636%_
                                  (gx#syntax-e _%tl183457183631%_)))
                             (let ((_%hd183459183639%_
                                    (##car _%e183458183636%_))
                                   (_%tl183460183641%_
                                    (##cdr _%e183458183636%_)))
                               (let ((_%name183644%_ _%hd183459183639%_))
                                 (if (gx#stx-null? _%tl183460183641%_)
                                     (if (and (gx#stx-fixnum? _%phi183624%_)
                                              (gx#identifier? _%id183634%_)
                                              (gx#identifier? _%name183644%_))
                                         (let* ((_%phi183646%_
                                                 (gx#stx-e _%phi183624%_))
                                                (_%$e183648%_
                                                 (gx#core-resolve-identifier__1
                                                  _%id183634%_
                                                  _%phi183646%_)))
                                           (if _%$e183648%_
                                               ((lambda (_%bind183651%_)
                                                  (_%K183441%_
                                                   _%rest183442%_
                                                   (cons (_%make-export__186788186789%_
                                                          _%bind183651%_
                                                          _%phi183646%_
                                                          (gx#current-expander-context)
                                                          _%name183644%_)
                                                         _%r183443%_)))
                                                _%$e183648%_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _%stx183282%_
                                                _%hd183440%_
                                                _%id183634%_)))
                                         (_%E183448183604%_))
                                     (_%E183448183604%_)))))
                           (_%E183448183604%_)))))
                 (_%E183448183604%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E183448183604%_))
                                           (_%E183448183604%_))))
                                   (_%E183448183604%_))))
                            (_%E183446183666%_
                             (lambda ()
                               (let ((_%id183658%_ _%e183444183476%_))
                                 (if (gx#identifier? _%id183658%_)
                                     (let ((_%$e183660%_
                                            (gx#core-resolve-identifier__1
                                             _%id183658%_
                                             (gx#current-export-expander-phi))))
                                       (if _%$e183660%_
                                           ((lambda (_%bind183663%_)
                                              (_%K183441%_
                                               _%rest183442%_
                                               (cons (_%make-export__0__186790186793%_
                                                      _%bind183663%_)
                                                     _%r183443%_)))
                                            _%$e183660%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _%stx183282%_
                                            _%hd183440%_)))
                                     (_%E183447183654%_)))))
                            (_%E183445183730%_
                             (lambda ()
                               (if (eq? (gx#stx-e _%e183444183476%_) '#t)
                                   (let* ((_%current-ctx183670%_
                                           (gx#current-expander-context))
                                          (_%current-phi183672%_
                                           (gx#current-export-expander-phi))
                                          (_%phi-ctx183674%_
                                           (gx#core-context-shift
                                            _%current-ctx183670%_
                                            _%current-phi183672%_))
                                          (_%phi-bind183676%_
                                           (hash->list
                                            (##unchecked-structure-ref
                                             _%phi-ctx183674%_
                                             '2
                                             '#f
                                             '#f))))
                                     (let _%lp183679%_ ((_%bind-rest183681%_
                                                         _%phi-bind183676%_)
                                                        (_%set183682%_ '()))
                                       (let* ((_%bind-rest183683183693%_
                                               _%bind-rest183681%_)
                                              (_%else183685183701%_
                                               (lambda ()
                                                 (_%K183441%_
                                                  _%rest183442%_
                                                  (cons (##structure
                                                         gx#export-set::t
                                                         '#f
                                                         _%current-phi183672%_
                                                         _%set183682%_)
                                                        _%r183443%_))))
                                              (_%K183687183711%_
                                               (lambda (_%bind-rest183704%_
                                                        _%bind183705%_
                                                        _%key183706%_)
                                                 (if (or (##structure-direct-instance-of?
                                                          _%bind183705%_
                                                          'gx#import-binding::t)
                                                         (gx#private-feature-binding?
                                                          _%bind183705%_))
                                                     (_%lp183679%_
                                                      _%bind-rest183704%_
                                                      _%set183682%_)
                                                     (_%lp183679%_
                                                      _%bind-rest183704%_
                                                      (cons (_%make-export__2__186792186795%_
                                                             _%bind183705%_
                                                             _%current-phi183672%_
                                                             _%current-ctx183670%_)
                                                            _%set183682%_))))))
                                         (if (pair? _%bind-rest183683183693%_)
                                             (let ((_%hd183688183714%_
                                                    (##car _%bind-rest183683183693%_))
                                                   (_%tl183689183716%_
                                                    (##cdr _%bind-rest183683183693%_)))
                                               (if (pair? _%hd183688183714%_)
                                                   (let ((_%hd183690183719%_
                                                          (##car _%hd183688183714%_))
                                                         (_%tl183691183721%_
                                                          (##cdr _%hd183688183714%_)))
                                                     (let* ((_%key183724%_
                                                             _%hd183690183719%_)
                                                            (_%bind183726%_
                                                             _%tl183691183721%_)
                                                            (_%bind-rest183728%_
                                                             _%tl183689183716%_))
                                                       (_%K183687183711%_
                                                        _%bind-rest183728%_
                                                        _%bind183726%_
                                                        _%key183724%_)))
                                                   (_%else183685183701%_)))
                                             (_%else183685183701%_)))))
                                   (_%E183446183666%_)))))
                       (_%E183445183730%_))))
                  (_%export-imports183287%_
                   (lambda (_%src183317%_ _%r183318%_)
                     (letrec* ((_%current-ctx183320%_
                                (gx#current-expander-context))
                               (_%current-phi183321%_
                                (gx#current-export-expander-phi))
                               (_%import->export183322%_
                                (lambda (_%in183403%_)
                                  (let* ((_%in183404183412%_ _%in183403%_)
                                         (_%E183406183415%_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _%in183404183412%_
                                                   '((module-import
                                                      out
                                                      key
                                                      phi)))
                                            '#!void))
                                         (_%K183407183422%_
                                          (lambda (_%phi183418%_
                                                   _%key183419%_
                                                   _%out183420%_)
                                            (##structure
                                             gx#module-export::t
                                             _%current-ctx183320%_
                                             _%key183419%_
                                             _%phi183418%_
                                             _%key183419%_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _%in183404183412%_
                                         'gx#module-import::t)
                                        (let* ((_%e183408183425%_
                                                (##unchecked-structure-ref
                                                 _%in183404183412%_
                                                 '1
                                                 '#f
                                                 '#f))
                                               (_%out183428%_
                                                _%e183408183425%_)
                                               (_%e183409183430%_
                                                (##unchecked-structure-ref
                                                 _%in183404183412%_
                                                 '2
                                                 '#f
                                                 '#f))
                                               (_%key183433%_
                                                _%e183409183430%_)
                                               (_%e183410183435%_
                                                (##unchecked-structure-ref
                                                 _%in183404183412%_
                                                 '3
                                                 '#f
                                                 '#f))
                                               (_%phi183438%_
                                                _%e183410183435%_))
                                          (_%K183407183422%_
                                           _%phi183438%_
                                           _%key183433%_
                                           _%out183428%_))
                                        (_%E183406183415%_)))))
                               (_%fold-e183323%_
                                (lambda (_%in183325%_ _%r183326%_)
                                  (let* ((_%in183327183341%_ _%in183325%_)
                                         (_%else183330183349%_
                                          (lambda () _%r183326%_)))
                                    (let ((_%K183336183385%_
                                           (lambda (_%phi183381%_
                                                    _%key183382%_
                                                    _%out183383%_)
                                             (if (and (fx= _%phi183381%_
                                                           _%current-phi183321%_)
                                                      (eq? _%src183317%_
                                                           (##unchecked-structure-ref
                                                            _%out183383%_
                                                            '1
                                                            '#f
                                                            '#f)))
                                                 (cons (_%import->export183322%_
                                                        _%in183325%_)
                                                       _%r183326%_)
                                                 _%r183326%_)))
                                          (_%K183332183360%_
                                           (lambda (_%imports183353%_
                                                    _%phi183354%_
                                                    _%ctx183355%_)
                                             (if (and (fx= _%phi183354%_
                                                           _%current-phi183321%_)
                                                      (eq? _%src183317%_
                                                           _%ctx183355%_))
                                                 (foldl__0
                                                  (lambda (_%in183357%_
                                                           _%r183358%_)
                                                    (cons (_%import->export183322%_
                                                           _%in183357%_)
                                                          _%r183358%_))
                                                  _%r183326%_
                                                  _%imports183353%_)
                                                 _%r183326%_))))
                                      (let ((_%try-match183329183378%_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _%in183327183341%_
                                                    'gx#import-set::t)
                                                   (let* ((_%e183333183363%_
                                                           (##unchecked-structure-ref
                                                            _%in183327183341%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                          (_%e183334183368%_
                                                           (##unchecked-structure-ref
                                                            _%in183327183341%_
                                                            '2
                                                            '#f
                                                            '#f))
                                                          (_%e183335183373%_
                                                           (##unchecked-structure-ref
                                                            _%in183327183341%_
                                                            '3
                                                            '#f
                                                            '#f)))
                                                     (let ((_%ctx183366%_
                                                            _%e183333183363%_)
                                                           (_%phi183371%_
                                                            _%e183334183368%_)
                                                           (_%imports183376%_
                                                            _%e183335183373%_))
                                                       (_%K183332183360%_
                                                        _%imports183376%_
                                                        _%phi183371%_
                                                        _%ctx183366%_)))
                                                   (_%else183330183349%_)))))
                                        (if (##structure-direct-instance-of?
                                             _%in183327183341%_
                                             'gx#module-import::t)
                                            (let* ((_%e183337183388%_
                                                    (##unchecked-structure-ref
                                                     _%in183327183341%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                   (_%e183338183393%_
                                                    (##unchecked-structure-ref
                                                     _%in183327183341%_
                                                     '2
                                                     '#f
                                                     '#f))
                                                   (_%e183339183398%_
                                                    (##unchecked-structure-ref
                                                     _%in183327183341%_
                                                     '3
                                                     '#f
                                                     '#f)))
                                              (let ((_%out183391%_
                                                     _%e183337183388%_)
                                                    (_%key183396%_
                                                     _%e183338183393%_)
                                                    (_%phi183401%_
                                                     _%e183339183398%_))
                                                (_%K183336183385%_
                                                 _%phi183401%_
                                                 _%key183396%_
                                                 _%out183391%_)))
                                            (_%try-match183329183378%_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _%src183317%_
                              _%current-phi183321%_
                              (foldl__0
                               _%fold-e183323%_
                               '()
                               (##unchecked-structure-ref
                                _%current-ctx183320%_
                                '8
                                '#f
                                '#f)))
                             _%r183318%_))))
                  (_%export!183288%_
                   (lambda (_%rbody183304%_)
                     (letrec* ((_%current-ctx183306%_
                                (gx#current-expander-context))
                               (_%fold-e183307%_
                                (lambda (_%out183311%_ _%r183312%_)
                                  (if (##structure-direct-instance-of?
                                       _%out183311%_
                                       'gx#module-export::t)
                                      (cons _%out183311%_ _%r183312%_)
                                      (if (##structure-direct-instance-of?
                                           _%out183311%_
                                           'gx#export-set::t)
                                          (foldl__0
                                           cons
                                           _%r183312%_
                                           (##unchecked-structure-ref
                                            _%out183311%_
                                            '3
                                            '#f
                                            '#f))
                                          _%r183312%_)))))
                       (let ((_%body183309%_ (reverse _%rbody183304%_)))
                         (##unchecked-structure-set!
                          _%current-ctx183306%_
                          (foldl__0
                           _%fold-e183307%_
                           (##unchecked-structure-ref
                            _%current-ctx183306%_
                            '9
                            '#f
                            '#f)
                           _%body183309%_)
                          '9
                          '#f
                          '#f)
                         _%body183309%_))))
                  (_%expanded-export?183289%_
                   (lambda (_%e183299%_)
                     (let ((_%$e183301%_
                            (##structure-direct-instance-of?
                             _%e183299%_
                             'gx#module-export::t)))
                       (if _%$e183301%_
                           _%$e183301%_
                           (##structure-direct-instance-of?
                            _%e183299%_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _%internal-expand?183283%_)
              (let ((_%rbody183295%_
                     (gx#core-expand-import/export
                      _%stx183282%_
                      _%expanded-export?183289%_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _%expand1183286%_)))
                (if _%internal-expand?183283%_
                    (reverse _%rbody183295%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons
                      '%#export
                      (_%export!183288%_ _%rbody183295%_))
                     (gx#stx-source _%stx183282%_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _%stx183282%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _%stx183282%_))))))
    (define gx#core-expand-export%__0
      (lambda (_%stx183780%_)
        (let ((_%internal-expand?183782%_ '#f))
          (gx#core-expand-export%__%
           _%stx183780%_
           _%internal-expand?183782%_))))
    (define gx#core-expand-export%
      (lambda _g186864_
        (let ((_g186865_ (##length _g186864_)))
          (cond ((##fx= _g186865_ 1)
                 (apply gx#core-expand-export%__0 _g186864_))
                ((##fx= _g186865_ 2)
                 (apply gx#core-expand-export%__% _g186864_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g186864_))))))
    (define gx#core-expand-export-source
      (lambda (_%hd183279%_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _%hd183279%_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_%stx183249%_)
        (let* ((_%e183250183257%_ _%stx183249%_)
               (_%E183252183261%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e183250183257%_)))
               (_%E183251183275%_
                (lambda ()
                  (if (gx#stx-pair? _%e183250183257%_)
                      (let ((_%e183253183265%_
                             (gx#syntax-e _%e183250183257%_)))
                        (let ((_%hd183254183268%_ (##car _%e183253183265%_))
                              (_%tl183255183270%_ (##cdr _%e183253183265%_)))
                          (let ((_%body183273%_ _%tl183255183270%_))
                            (if (gx#identifier-list? _%body183273%_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _%body183273%_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _%body183273%_))
                                   (gx#stx-source _%stx183249%_)))
                                (_%E183252183261%_)))))
                      (_%E183252183261%_)))))
          (_%E183251183275%_))))
    (define gx#core-bind-feature!__%
      (lambda (_%id183215%_ _%private?183216%_ _%phi183217%_ _%ctx183218%_)
        (gx#core-bind-syntax!__%
         _%id183215%_
         ((if _%private?183216%_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _%id183215%_))
         _%private?183216%_
         _%phi183217%_
         _%ctx183218%_)))
    (define gx#core-bind-feature!__0
      (lambda (_%id183223%_)
        (let* ((_%private?183225%_ '#f)
               (_%phi183227%_ (gx#current-expander-phi))
               (_%ctx183229%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id183223%_
           _%private?183225%_
           _%phi183227%_
           _%ctx183229%_))))
    (define gx#core-bind-feature!__1
      (lambda (_%id183231%_ _%private?183232%_)
        (let* ((_%phi183234%_ (gx#current-expander-phi))
               (_%ctx183236%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id183231%_
           _%private?183232%_
           _%phi183234%_
           _%ctx183236%_))))
    (define gx#core-bind-feature!__2
      (lambda (_%id183238%_ _%private?183239%_ _%phi183240%_)
        (let ((_%ctx183242%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id183238%_
           _%private?183239%_
           _%phi183240%_
           _%ctx183242%_))))
    (define gx#core-bind-feature!
      (lambda _g186866_
        (let ((_g186867_ (##length _g186866_)))
          (cond ((##fx= _g186867_ 1)
                 (apply gx#core-bind-feature!__0 _g186866_))
                ((##fx= _g186867_ 2)
                 (apply gx#core-bind-feature!__1 _g186866_))
                ((##fx= _g186867_ 3)
                 (apply gx#core-bind-feature!__2 _g186866_))
                ((##fx= _g186867_ 4)
                 (apply gx#core-bind-feature!__% _g186866_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g186866_))))))))
