(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1713454411)
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
      (lambda _%$args127632%_
        (apply make-instance gx#module-import::t _%$args127632%_)))
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
      (lambda _%$args127629%_
        (apply make-instance gx#module-export::t _%$args127629%_)))
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
      (lambda _%$args127626%_
        (apply make-instance gx#import-set::t _%$args127626%_)))
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
      (lambda _%$args127623%_
        (apply make-instance gx#export-set::t _%$args127623%_)))
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
      (lambda _%$args127620%_
        (apply make-instance gx#import-expander::t _%$args127620%_)))
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
      (lambda _%$args127617%_
        (apply make-instance gx#export-expander::t _%$args127617%_)))
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
      (lambda _%$args127614%_
        (apply make-instance gx#import-export-expander::t _%$args127614%_)))
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
      (lambda (_%path127611%_ _%fun127612%_)
        (call-with-input-file
         (cons 'path: (cons _%path127611%_ gx#source-file-settings))
         _%fun127612%_)))
    (define gx#module-context:::init!
      (lambda (_%self124063127592%_
               _%id127594%_
               _%super127595%_
               _%ns127596%_
               _%path127597%_)
        (let* ((_%self127599%_ _%self124063127592%_)
               (_%self127601%_ _%self127599%_))
          (if (##fx< '11 (##structure-length _%self127601%_))
              (begin
                (##unchecked-structure-set!
                 _%self127601%_
                 _%id127594%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self127601%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self127601%_
                 _%super127595%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self127601%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self127601%_ '#f '5 '#f '#f)
                (##unchecked-structure-set!
                 _%self127601%_
                 _%ns127596%_
                 '6
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self127601%_
                 _%path127597%_
                 '7
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self127601%_ '() '8 '#f '#f)
                (##unchecked-structure-set! _%self127601%_ '() '9 '#f '#f)
                (##unchecked-structure-set! _%self127601%_ '#f '10 '#f '#f)
                (##unchecked-structure-set! _%self127601%_ '#f '11 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self127601%_
                     '11
                     (##vector-length _%self127601%_))))))
    (__bind-method!__%
     gx#module-context::t
     ':init!
     gx#module-context:::init!
     '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_%self124064127423%_ _%ctx127425%_ _%root127426%_)
        (let* ((_%self127428%_ _%self124064127423%_)
               (_%self127430%_ _%self127428%_)
               (_%super127446%_
                (let ((_%$e127440%_ _%root127426%_))
                  (if _%$e127440%_
                      _%$e127440%_
                      (let ((_%$e127443%_ (gx#core-context-root__0)))
                        (if _%$e127443%_
                            _%$e127443%_
                            (let ((__obj127676
                                   (##structure gx#root-context::t '#f '#f)))
                              (let ((__constructor127677
                                     (direct-method-ref
                                      gx#root-context::t
                                      __obj127676
                                      ':init!)))
                                (if __constructor127677
                                    (__constructor127677 __obj127676)
                                    (error '"missing constructor method implementation"
                                           'class:
                                           gx#root-context::t
                                           'method:
                                           ':init!)))
                              __obj127676)))))))
          (if _%ctx127425%_
              (let ((_%id127449%_
                     (##structure-ref
                      _%ctx127425%_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_%path127450%_
                     (##structure-ref
                      _%ctx127425%_
                      '7
                      gx#module-context::t
                      '#f))
                    (_%in127451%_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _%ctx127425%_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_%e127452%_
                     (__make-promise
                      (lambda () (gx#eval-module _%ctx127425%_)))))
                (if (##fx< '8 (##structure-length _%self127430%_))
                    (begin
                      (##unchecked-structure-set!
                       _%self127430%_
                       _%id127449%_
                       '1
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self127430%_
                       (make-hash-table-eq 'size: (##length _%in127451%_))
                       '2
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self127430%_
                       _%super127446%_
                       '3
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self127430%_
                       '#f
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self127430%_
                       '#f
                       '5
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self127430%_
                       _%path127450%_
                       '6
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self127430%_
                       _%in127451%_
                       '7
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self127430%_
                       _%e127452%_
                       '8
                       '#f
                       '#f)
                      '#!void)
                    (error '"struct-instance-init!: too many arguments for struct"
                           _%self127430%_
                           '8
                           (##vector-length _%self127430%_)))
                (##for-each
                 (lambda (_%g127453127455%_)
                   (gx#core-bind-weak-import!__%
                    _%g127453127455%_
                    _%self127430%_))
                 _%in127451%_))
              (if (##fx< '8 (##structure-length _%self127430%_))
                  (begin
                    (##unchecked-structure-set! _%self127430%_ '#f '1 '#f '#f)
                    (##unchecked-structure-set!
                     _%self127430%_
                     (make-hash-table-eq)
                     '2
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self127430%_
                     _%super127446%_
                     '3
                     '#f
                     '#f)
                    (##unchecked-structure-set! _%self127430%_ '#f '4 '#f '#f)
                    (##unchecked-structure-set! _%self127430%_ '#f '5 '#f '#f)
                    (##unchecked-structure-set! _%self127430%_ '#f '6 '#f '#f)
                    (##unchecked-structure-set! _%self127430%_ '() '7 '#f '#f)
                    (##unchecked-structure-set! _%self127430%_ '#f '8 '#f '#f)
                    '#!void)
                  (error '"struct-instance-init!: too many arguments for struct"
                         _%self127430%_
                         '8
                         (##vector-length _%self127430%_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_%self124064127461%_ _%ctx127462%_)
        (let ((_%root127464%_ '#f))
          (gx#prelude-context:::init!__%
           _%self124064127461%_
           _%ctx127462%_
           _%root127464%_))))
    (define gx#prelude-context:::init!
      (lambda _g127683_
        (let ((_g127682_ (##length _g127683_)))
          (cond ((##fx= _g127682_ 2)
                 (apply gx#prelude-context:::init!__0 _g127683_))
                ((##fx= _g127682_ 3)
                 (apply gx#prelude-context:::init!__% _g127683_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g127683_))))))
    (__bind-method!__%
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_%self127297%_ _%e127298%_)
        (if (##fx< '3 (##structure-length _%self127297%_))
            (begin
              (##unchecked-structure-set!
               _%self127297%_
               _%e127298%_
               '1
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self127297%_
               (gx#current-expander-context)
               '2
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self127297%_
               (##fx- (gx#current-expander-phi) '1)
               '3
               '#f
               '#f)
              '#!void)
            (error '"struct-instance-init!: too many arguments for struct"
                   _%self127297%_
                   '3
                   (##vector-length _%self127297%_)))))
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
      (lambda (_%g126923126926%_ _%g126924126928%_)
        (gx#core-apply-user-expander__%
         _%g126923126926%_
         _%g126924126928%_
         'apply-import-expander)))
    (__bind-method!__%
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_%g126794126797%_ _%g126795126799%_)
        (gx#core-apply-user-expander__%
         _%g126794126797%_
         _%g126795126799%_
         'apply-export-expander)))
    (__bind-method!__%
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_%ctx126665%_)
        (let* ((_%path126667%_
                (##structure-ref _%ctx126665%_ '7 gx#module-context::t '#f))
               (_%path126669%_
                (if (pair? _%path126667%_)
                    (##last _%path126667%_)
                    _%path126667%_)))
          (if (string? _%path126669%_) _%path126669%_ '#f))))
    (define gx#import-module__%
      (lambda (_%path126641%_ _%reload?126642%_ _%eval?126643%_)
        (let ((_%ctx126645%_
               ((gx#current-expander-module-import)
                _%path126641%_
                _%reload?126642%_)))
          (if (and _%ctx126645%_ _%eval?126643%_)
              (gx#eval-module _%ctx126645%_)
              '#!void)
          _%ctx126645%_)))
    (define gx#import-module__0
      (lambda (_%path126650%_)
        (let* ((_%reload?126652%_ '#f) (_%eval?126654%_ '#f))
          (gx#import-module__%
           _%path126650%_
           _%reload?126652%_
           _%eval?126654%_))))
    (define gx#import-module__1
      (lambda (_%path126656%_ _%reload?126657%_)
        (let ((_%eval?126659%_ '#f))
          (gx#import-module__%
           _%path126656%_
           _%reload?126657%_
           _%eval?126659%_))))
    (define gx#import-module
      (lambda _g127685_
        (let ((_g127684_ (##length _g127685_)))
          (cond ((##fx= _g127684_ 1) (apply gx#import-module__0 _g127685_))
                ((##fx= _g127684_ 2) (apply gx#import-module__1 _g127685_))
                ((##fx= _g127684_ 3) (apply gx#import-module__% _g127685_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g127685_))))))
    (define gx#eval-module
      (lambda (_%mod126638%_)
        ((gx#current-expander-module-eval) _%mod126638%_)))
    (define gx#core-eval-module
      (lambda (_%obj126618%_)
        (letrec ((_%force-e126620%_
                  (lambda (_%getf126634%_ _%e126635%_)
                    (__call-with-parameters
                     (lambda () (force (_%getf126634%_ _%e126635%_)))
                     gx#current-expander-context
                     _%e126635%_
                     gx#current-expander-phi
                     '0))))
          (let _%recur126622%_ ((_%e126624%_ _%obj126618%_))
            (if (##structure-instance-of? _%e126624%_ 'gx#module-context::t)
                (let ()
                  (let ((_%$e126627%_
                         (gx#core-context-prelude__% _%e126624%_)))
                    (if _%$e126627%_ (_%recur126622%_ _%$e126627%_) '#!void))
                  (_%force-e126620%_ gx#module-context-e _%e126624%_))
                (if (##structure-instance-of?
                     _%e126624%_
                     'gx#prelude-context::t)
                    (_%force-e126620%_ gx#prelude-context-e _%e126624%_)
                    (if (gx#stx-string? _%e126624%_)
                        (_%recur126622%_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _%e126624%_)))
                        (if (gx#core-library-module-path? _%e126624%_)
                            (_%recur126622%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%e126624%_)))
                            (error '"cannot eval module" _%obj126618%_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_%ctx126598%_)
        (let _%lp126600%_ ((_%e126602%_ _%ctx126598%_))
          (if (or (##structure-instance-of? _%e126602%_ 'gx#module-context::t)
                  (##structure-instance-of? _%e126602%_ 'gx#local-context::t))
              (_%lp126600%_ (##unchecked-structure-ref _%e126602%_ '3 '#f '#f))
              (if (##structure-instance-of? _%e126602%_ 'gx#prelude-context::t)
                  _%e126602%_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_%ctx126614%_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _%ctx126614%_))))
    (define gx#core-context-prelude
      (lambda _g127687_
        (let ((_g127686_ (##length _g127687_)))
          (cond ((##fx= _g127686_ 0)
                 (apply gx#core-context-prelude__0 _g127687_))
                ((##fx= _g127686_ 1)
                 (apply gx#core-context-prelude__% _g127687_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g127687_))))))
    (define gx#core-module->prelude-context
      (lambda (_%ctx126589%_)
        (let ((_%$e126591%_ (__hash-get gx#__module-registry _%ctx126589%_)))
          (if _%$e126591%_
              _%$e126591%_
              (let ((_%pre126595%_
                     (let ((__obj127678
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
                        __obj127678
                        _%ctx126589%_)
                       __obj127678)))
                (__hash-put! gx#__module-registry _%ctx126589%_ _%pre126595%_)
                _%pre126595%_)))))
    (define gx#core-import-module__%
      (lambda (_%rpath126461%_ _%reload?126462%_)
        (letrec ((_%import-source126464%_
                  (lambda (_%path126553%_)
                    (if (member _%path126553%_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _%path126553%_)
                        '#!void)
                    (__call-with-parameters
                     (lambda ()
                       (let ((_g127688_ (gx#core-read-module _%path126553%_)))
                         (begin
                           (let ((_g127689_
                                  (if (##values? _g127688_)
                                      (##vector-length _g127688_)
                                      1)))
                             (if (not (##fx= _g127689_ 4))
                                 (error "Context expects 4 values" _g127689_)))
                           (let ((_%pre126556%_ (##vector-ref _g127688_ 0))
                                 (_%id126557%_ (##vector-ref _g127688_ 1))
                                 (_%ns126558%_ (##vector-ref _g127688_ 2))
                                 (_%body126559%_ (##vector-ref _g127688_ 3)))
                             (let* ((_%prelude126569%_
                                     (if (##structure-instance-of?
                                          _%pre126556%_
                                          'gx#prelude-context::t)
                                         _%pre126556%_
                                         (if (##structure-instance-of?
                                              _%pre126556%_
                                              'gx#module-context::t)
                                             (gx#core-module->prelude-context
                                              _%pre126556%_)
                                             (if (string? _%pre126556%_)
                                                 (gx#core-module->prelude-context
                                                  (gx#core-import-module__0
                                                   _%pre126556%_))
                                                 (if (not _%pre126556%_)
                                                     (let ((_%$e126565%_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _%$e126565%_
                                                           _%$e126565%_
                                                           (let ((__obj127679
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
                     (gx#prelude-context:::init!__0 __obj127679 '#f)
                     __obj127679)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error '"cannot import module; unknown prelude"
                                                            _%rpath126461%_
                                                            _%pre126556%_))))))
                                    (_%ctx126571%_
                                     (let ((__obj127680
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
                                        __obj127680
                                        _%id126557%_
                                        _%prelude126569%_
                                        _%ns126558%_
                                        _%path126553%_)
                                       __obj127680))
                                    (_%body126573%_
                                     (gx#core-expand-module-begin
                                      _%body126559%_
                                      _%ctx126571%_))
                                    (_%body126575%_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _%body126573%_)
                                      _%path126553%_
                                      _%ctx126571%_
                                      '())))
                               (##unchecked-structure-set!
                                _%ctx126571%_
                                (__make-promise
                                 (lambda () (gx#eval-syntax* _%body126575%_)))
                                '10
                                '#f
                                '#f)
                               (##unchecked-structure-set!
                                _%ctx126571%_
                                _%body126575%_
                                '11
                                '#f
                                '#f)
                               (__hash-put!
                                gx#__module-registry
                                _%path126553%_
                                _%ctx126571%_)
                               (__hash-put!
                                gx#__module-registry
                                _%id126557%_
                                _%ctx126571%_)
                               _%ctx126571%_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _%path126553%_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_%import-submodule126465%_
                  (lambda (_%rpath126481%_)
                    (let* ((_%rpath126482126489%_ _%rpath126481%_)
                           (_%E126484126493%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%rpath126482126489%_
                                     '([origin . refs]))
                              '#!void))
                           (_%K126485126541%_
                            (lambda (_%refs126496%_ _%origin126497%_)
                              (let ((_%ctx126499%_
                                     (if _%origin126497%_
                                         (gx#core-import-module__%
                                          _%origin126497%_
                                          _%reload?126462%_)
                                         (gx#current-expander-context))))
                                (let _%lp126501%_ ((_%rest126503%_
                                                    _%refs126496%_)
                                                   (_%ctx126504%_
                                                    _%ctx126499%_))
                                  (let* ((_%rest126505126513%_ _%rest126503%_)
                                         (_%else126507126521%_
                                          (lambda () _%ctx126504%_))
                                         (_%K126509126529%_
                                          (lambda (_%rest126524%_ _%id126525%_)
                                            (let ((_%bind126527%_
                                                   (gx#resolve-identifier__%
                                                    _%id126525%_
                                                    '0
                                                    _%ctx126504%_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _%bind126527%_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _%bind126527%_
                                                         '4
                                                         '#f
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_%lp126501%_
                                                   _%rest126524%_
                                                   (##unchecked-structure-ref
                                                    _%bind126527%_
                                                    '4
                                                    '#f
                                                    '#f))
                                                  (error '"cannot import submodule; not bound as a module"
                                                         _%rpath126481%_
                                                         _%id126525%_
                                                         _%bind126527%_))))))
                                    (if (##pair? _%rest126505126513%_)
                                        (let ((_%hd126510126532%_
                                               (##car _%rest126505126513%_))
                                              (_%tl126511126534%_
                                               (##cdr _%rest126505126513%_)))
                                          (let* ((_%id126537%_
                                                  _%hd126510126532%_)
                                                 (_%rest126539%_
                                                  _%tl126511126534%_))
                                            (_%K126509126529%_
                                             _%rest126539%_
                                             _%id126537%_)))
                                        (_%else126507126521%_))))))))
                      (if (##pair? _%rpath126482126489%_)
                          (let ((_%hd126486126544%_
                                 (##car _%rpath126482126489%_))
                                (_%tl126487126546%_
                                 (##cdr _%rpath126482126489%_)))
                            (let* ((_%origin126549%_ _%hd126486126544%_)
                                   (_%refs126551%_ _%tl126487126546%_))
                              (_%K126485126541%_
                               _%refs126551%_
                               _%origin126549%_)))
                          (_%E126484126493%_))))))
          (let ((_%$e126467%_
                 (if (not _%reload?126462%_)
                     (__hash-get gx#__module-registry _%rpath126461%_)
                     '#f)))
            (if _%$e126467%_
                _%$e126467%_
                (if (list? _%rpath126461%_)
                    (_%import-submodule126465%_ _%rpath126461%_)
                    (if (gx#core-library-module-path? _%rpath126461%_)
                        (let ((_%ctx126472%_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _%rpath126461%_)
                                _%reload?126462%_)))
                          (__hash-put!
                           gx#__module-registry
                           _%rpath126461%_
                           _%ctx126472%_)
                          _%ctx126472%_)
                        (let* ((_%npath126475%_
                                (path-normalize _%rpath126461%_))
                               (_%$e126477%_
                                (if (not _%reload?126462%_)
                                    (__hash-get
                                     gx#__module-registry
                                     _%npath126475%_)
                                    '#f)))
                          (if _%$e126477%_
                              _%$e126477%_
                              (_%import-source126464%_
                               _%npath126475%_))))))))))
    (define gx#core-import-module__0
      (lambda (_%rpath126582%_)
        (let ((_%reload?126584%_ '#f))
          (gx#core-import-module__% _%rpath126582%_ _%reload?126584%_))))
    (define gx#core-import-module
      (lambda _g127691_
        (let ((_g127690_ (##length _g127691_)))
          (cond ((##fx= _g127690_ 1)
                 (apply gx#core-import-module__0 _g127691_))
                ((##fx= _g127690_ 2)
                 (apply gx#core-import-module__% _g127691_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g127691_))))))
    (define gx#core-read-module
      (lambda (_%path126450%_)
        (__with-catch
         (lambda (_%exn126452%_)
           (if (and (datum-parsing-exception? _%exn126452%_)
                    (eq? (datum-parsing-exception-filepos _%exn126452%_) '0))
               (gx#core-read-module/lang _%path126450%_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _%path126450%_
                (__call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_%g126454126456%_)
                      (display-exception__% _%exn126452%_ _%g126454126456%_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _%path126450%_)))))
    (define gx#core-read-module/sexp
      (lambda (_%path126302%_)
        (let _%lp126304%_ ((_%body126306%_
                            (read-syntax-from-file _%path126302%_))
                           (_%pre126307%_ '#f)
                           (_%ns126308%_ '#f)
                           (_%pkg126309%_ '#f))
          (let* ((_%e126310126334%_ _%body126306%_)
                 (_%E126326126360%_
                  (lambda ()
                    (let ((_g127692_
                           (if _%pkg126309%_
                               (values _%pre126307%_
                                       _%ns126308%_
                                       _%pkg126309%_)
                               (gx#core-read-module-package
                                _%path126302%_
                                _%pre126307%_
                                _%ns126308%_))))
                      (begin
                        (let ((_g127693_
                               (if (##values? _g127692_)
                                   (##vector-length _g127692_)
                                   1)))
                          (if (not (##fx= _g127693_ 3))
                              (error "Context expects 3 values" _g127693_)))
                        (let ((_%pre126338%_ (##vector-ref _g127692_ 0))
                              (_%ns126339%_ (##vector-ref _g127692_ 1))
                              (_%pkg126340%_ (##vector-ref _g127692_ 2)))
                          (let* ((_%prelude126346%_
                                  (if (gx#core-bound-module-prelude?
                                       _%pre126338%_)
                                      (gx#syntax-local-e__0 _%pre126338%_)
                                      (if (gx#core-library-module-path?
                                           _%pre126338%_)
                                          (gx#core-resolve-library-module-path
                                           _%pre126338%_)
                                          (if (gx#stx-string? _%pre126338%_)
                                              (gx#core-resolve-module-path__%
                                               _%pre126338%_
                                               _%path126302%_)
                                              (gx#stx-e _%pre126338%_)))))
                                 (_%path-id126348%_
                                  (gx#core-module-path->namespace
                                   _%path126302%_))
                                 (_%pkg-id126350%_
                                  (if _%pkg126340%_
                                      (##string-append
                                       _%pkg126340%_
                                       '"/"
                                       _%path-id126348%_)
                                      _%path-id126348%_))
                                 (_%module-id126352%_
                                  (##string->symbol _%pkg-id126350%_))
                                 (_%module-ns126357%_
                                  (if (eq? _%ns126339%_ '#!void)
                                      '#f
                                      (let ((_%$e126354%_ _%ns126339%_))
                                        (if _%$e126354%_
                                            _%$e126354%_
                                            _%pkg-id126350%_)))))
                            (values _%prelude126346%_
                                    _%module-id126352%_
                                    _%module-ns126357%_
                                    _%body126306%_)))))))
                 (_%E126319126392%_
                  (lambda ()
                    (if (gx#stx-pair? _%e126310126334%_)
                        (let ((_%e126327126364%_
                               (gx#syntax-e _%e126310126334%_)))
                          (let ((_%hd126328126367%_ (##car _%e126327126364%_))
                                (_%tl126329126369%_ (##cdr _%e126327126364%_)))
                            (if (eq? (gx#stx-e _%hd126328126367%_) 'package:)
                                (if (gx#stx-pair? _%tl126329126369%_)
                                    (let ((_%e126330126372%_
                                           (gx#syntax-e _%tl126329126369%_)))
                                      (let ((_%hd126331126375%_
                                             (##car _%e126330126372%_))
                                            (_%tl126332126377%_
                                             (##cdr _%e126330126372%_)))
                                        (let* ((_%pkg126380%_
                                                _%hd126331126375%_)
                                               (_%rest126382%_
                                                _%tl126332126377%_)
                                               (_%pkg126390%_
                                                (if (gx#identifier?
                                                     _%pkg126380%_)
                                                    (symbol->string
                                                     (gx#stx-e _%pkg126380%_))
                                                    (if (or (gx#stx-string?
                                                             _%pkg126380%_)
                                                            (gx#stx-false?
                                                             _%pkg126380%_))
                                                        (gx#stx-e
                                                         _%pkg126380%_)
                                                        (gx#raise-syntax-error
                                                         'import
                                                         '"Bad syntax; Illegal package name"
                                                         _%pkg126380%_)))))
                                          (_%lp126304%_
                                           _%rest126382%_
                                           _%pre126307%_
                                           _%ns126308%_
                                           _%pkg126390%_))))
                                    (_%E126326126360%_))
                                (_%E126326126360%_))))
                        (_%E126326126360%_))))
                 (_%E126312126422%_
                  (lambda ()
                    (if (gx#stx-pair? _%e126310126334%_)
                        (let ((_%e126320126396%_
                               (gx#syntax-e _%e126310126334%_)))
                          (let ((_%hd126321126399%_ (##car _%e126320126396%_))
                                (_%tl126322126401%_ (##cdr _%e126320126396%_)))
                            (if (eq? (gx#stx-e _%hd126321126399%_) 'namespace:)
                                (if (gx#stx-pair? _%tl126322126401%_)
                                    (let ((_%e126323126404%_
                                           (gx#syntax-e _%tl126322126401%_)))
                                      (let ((_%hd126324126407%_
                                             (##car _%e126323126404%_))
                                            (_%tl126325126409%_
                                             (##cdr _%e126323126404%_)))
                                        (let* ((_%ns126412%_
                                                _%hd126324126407%_)
                                               (_%rest126414%_
                                                _%tl126325126409%_)
                                               (_%ns126420%_
                                                (if (gx#identifier?
                                                     _%ns126412%_)
                                                    (symbol->string
                                                     (gx#stx-e _%ns126412%_))
                                                    (if (gx#stx-string?
                                                         _%ns126412%_)
                                                        (gx#stx-e _%ns126412%_)
                                                        (if (gx#stx-false?
                                                             _%ns126412%_)
                                                            '#!void
                                                            (gx#raise-syntax-error
                                                             'import
                                                             '"Bad syntax; illegal namespace"
                                                             _%ns126412%_))))))
                                          (_%lp126304%_
                                           _%rest126414%_
                                           _%pre126307%_
                                           _%ns126420%_
                                           _%pkg126309%_))))
                                    (_%E126319126392%_))
                                (_%E126319126392%_))))
                        (_%E126319126392%_))))
                 (_%E126311126446%_
                  (lambda ()
                    (if (gx#stx-pair? _%e126310126334%_)
                        (let ((_%e126313126426%_
                               (gx#syntax-e _%e126310126334%_)))
                          (let ((_%hd126314126429%_ (##car _%e126313126426%_))
                                (_%tl126315126431%_ (##cdr _%e126313126426%_)))
                            (if (eq? (gx#stx-e _%hd126314126429%_) 'prelude:)
                                (if (gx#stx-pair? _%tl126315126431%_)
                                    (let ((_%e126316126434%_
                                           (gx#syntax-e _%tl126315126431%_)))
                                      (let ((_%hd126317126437%_
                                             (##car _%e126316126434%_))
                                            (_%tl126318126439%_
                                             (##cdr _%e126316126434%_)))
                                        (let* ((_%prelude126442%_
                                                _%hd126317126437%_)
                                               (_%rest126444%_
                                                _%tl126318126439%_))
                                          (_%lp126304%_
                                           _%rest126444%_
                                           _%prelude126442%_
                                           _%ns126308%_
                                           _%pkg126309%_))))
                                    (_%E126312126422%_))
                                (_%E126312126422%_))))
                        (_%E126312126422%_)))))
            (_%E126311126446%_)))))
    (define gx#core-read-module/lang
      (lambda (_%path126124%_)
        (letrec ((_%default-read-module-body126126%_
                  (lambda (_%inp126294%_)
                    (let _%lp126296%_ ((_%body126298%_ '()))
                      (let ((_%next126300%_ (read-syntax__% _%inp126294%_)))
                        (if (eof-object? _%next126300%_)
                            (reverse _%body126298%_)
                            (_%lp126296%_
                             (cons _%next126300%_ _%body126298%_)))))))
                 (_%read-body126127%_
                  (lambda (_%inp126212%_
                           _%pre126213%_
                           _%ns126214%_
                           _%pkg126215%_
                           _%args126216%_)
                    (let ((_g127694_
                           (if _%pkg126215%_
                               (values _%pre126213%_
                                       _%ns126214%_
                                       _%pkg126215%_)
                               (gx#core-read-module-package
                                _%path126124%_
                                _%pre126213%_
                                _%ns126214%_))))
                      (begin
                        (let ((_g127695_
                               (if (##values? _g127694_)
                                   (##vector-length _g127694_)
                                   1)))
                          (if (not (##fx= _g127695_ 3))
                              (error "Context expects 3 values" _g127695_)))
                        (let ((_%pre126218%_ (##vector-ref _g127694_ 0))
                              (_%ns126219%_ (##vector-ref _g127694_ 1))
                              (_%pkg126220%_ (##vector-ref _g127694_ 2)))
                          (let* ((_%prelude126222%_
                                  (gx#import-module__0 _%pre126218%_))
                                 (_%read-module-body126277%_
                                  (let ((_%$e126268%_
                                         (__find (lambda (_%e126223126225%_)
                                                   (let* ((_%g126227126237%_
                                                           _%e126223126225%_)
                                                          (_%else126229126245%_
                                                           (lambda () '#f))
                                                          (_%K126231126249%_
                                                           (lambda () '#t)))
                                                     (if (##structure-direct-instance-of?
                                                          _%g126227126237%_
                                                          'gx#module-export::t)
                                                         (let* ((_%e126232126252%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##unchecked-structure-ref
                          _%g126227126237%_
                          '1
                          '#f
                          '#f))
                        (_%e126233126255%_
                         (##unchecked-structure-ref
                          _%g126227126237%_
                          '2
                          '#f
                          '#f))
                        (_%e126234126258%_
                         (##unchecked-structure-ref
                          _%g126227126237%_
                          '3
                          '#f
                          '#f)))
                   (if (##eq? _%e126234126258%_ '1)
                       (let ((_%e126235126261%_
                              (##unchecked-structure-ref
                               _%g126227126237%_
                               '4
                               '#f
                               '#f)))
                         (if ((lambda (_%g126263126265%_)
                                (eq? _%g126263126265%_ 'read-module-body))
                              _%e126235126261%_)
                             (_%K126231126249%_)
                             (_%else126229126245%_)))
                       (_%else126229126245%_)))
                 (_%else126229126245%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (##unchecked-structure-ref
                                                  _%prelude126222%_
                                                  '9
                                                  '#f
                                                  '#f))))
                                    (if _%$e126268%_
                                        ((lambda (_%xport126271%_)
                                           (let ((_%proc126274%_
                                                  (__with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _%xport126271%_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _%proc126274%_)
                                                 _%proc126274%_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _%path126124%_
                                                  _%pre126218%_
                                                  _%proc126274%_))))
                                         _%$e126268%_)
                                        _%default-read-module-body126126%_)))
                                 (_%path-id126279%_
                                  (gx#core-module-path->namespace
                                   _%path126124%_))
                                 (_%pkg-id126281%_
                                  (if _%pkg126220%_
                                      (##string-append
                                       _%pkg126220%_
                                       '"/"
                                       _%path-id126279%_)
                                      _%path-id126279%_))
                                 (_%module-id126283%_
                                  (##string->symbol _%pkg-id126281%_))
                                 (_%module-ns126288%_
                                  (let ((_%$e126285%_ _%ns126219%_))
                                    (if _%$e126285%_
                                        _%$e126285%_
                                        _%pkg-id126281%_)))
                                 (_%body126291%_
                                  (__call-with-parameters
                                   (lambda ()
                                     (_%read-module-body126277%_
                                      _%inp126212%_))
                                   gx#current-module-reader-path
                                   _%path126124%_
                                   gx#current-module-reader-args
                                   _%args126216%_)))
                            (values _%prelude126222%_
                                    _%module-id126283%_
                                    _%module-ns126288%_
                                    _%body126291%_)))))))
                 (_%string-e126128%_
                  (lambda (_%obj126206%_ _%what126207%_)
                    (if (string? _%obj126206%_)
                        _%obj126206%_
                        (if (symbol? _%obj126206%_)
                            (##symbol->string _%obj126206%_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _%what126207%_)
                             _%path126124%_
                             _%obj126206%_)))))
                 (_%read-lang-args126129%_
                  (lambda (_%inp126161%_ _%args126162%_)
                    (let* ((_%args126163126171%_ _%args126162%_)
                           (_%else126165126179%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _%path126124%_)))
                           (_%K126167126194%_
                            (lambda (_%args126182%_ _%prelude126183%_)
                              (let* ((_%pkg126185%_
                                      (pgetq__0 'package: _%args126182%_))
                                     (_%pkg126187%_
                                      (if _%pkg126185%_
                                          (_%string-e126128%_
                                           _%pkg126185%_
                                           '"package")
                                          '#f))
                                     (_%ns126189%_
                                      (pgetq__0 'namespace: _%args126182%_))
                                     (_%ns126191%_
                                      (if _%ns126189%_
                                          (_%string-e126128%_
                                           _%ns126189%_
                                           '"namespace")
                                          '#f)))
                                (_%read-body126127%_
                                 _%inp126161%_
                                 _%prelude126183%_
                                 _%ns126191%_
                                 _%pkg126187%_
                                 _%args126182%_)))))
                      (if (##pair? _%args126163126171%_)
                          (let ((_%hd126168126197%_
                                 (##car _%args126163126171%_))
                                (_%tl126169126199%_
                                 (##cdr _%args126163126171%_)))
                            (let* ((_%prelude126202%_ _%hd126168126197%_)
                                   (_%args126204%_ _%tl126169126199%_))
                              (_%K126167126194%_
                               _%args126204%_
                               _%prelude126202%_)))
                          (_%else126165126179%_)))))
                 (_%read-lang126130%_
                  (lambda (_%inp126135%_)
                    (let* ((_%head126137%_ (read-line _%inp126135%_))
                           (_%$e126139%_
                            (string-index__0 _%head126137%_ '#\space)))
                      (if _%$e126139%_
                          ((lambda (_%ix126142%_)
                             (let ((_%lang126144%_
                                    (substring
                                     _%head126137%_
                                     '0
                                     _%ix126142%_)))
                               (if (equal? _%lang126144%_ '"#lang")
                                   (let* ((_%rest126146%_
                                           (substring
                                            _%head126137%_
                                            (##fx+ _%ix126142%_ '1)
                                            (string-length _%head126137%_)))
                                          (_%args126157%_
                                           (__with-catch
                                            (lambda (_%g126147126149%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _%path126124%_
                                               _%g126147126149%_))
                                            (lambda ()
                                              (call-with-input-string
                                               _%rest126146%_
                                               (lambda (_%g126152126154%_)
                                                 (read-all
                                                  _%g126152126154%_
                                                  read)))))))
                                     (_%read-lang-args126129%_
                                      _%inp126135%_
                                      _%args126157%_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _%path126124%_))))
                           _%$e126139%_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _%path126124%_)))))
                 (_%read-e126131%_
                  (lambda (_%inp126133%_)
                    (if (eq? (peek-char _%inp126133%_) '#\#)
                        (_%read-lang126130%_ _%inp126133%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _%path126124%_)))))
          (gx#call-with-input-source-file _%path126124%_ _%read-e126131%_))))
    (define gx#core-read-module-package
      (lambda (_%path126072%_ _%pre126073%_ _%ns126074%_)
        (letrec ((_%string-e126076%_
                  (lambda (_%e126119%_)
                    (if (symbol? _%e126119%_)
                        (##symbol->string _%e126119%_)
                        (if (string? _%e126119%_)
                            _%e126119%_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%e126119%_))))))
          (let _%lp126078%_ ((_%dir126080%_ (path-directory _%path126072%_))
                             (_%pkg-path126081%_ '()))
            (let ((_%gerbil.pkg126083%_
                   (path-expand '"gerbil.pkg" _%dir126080%_)))
              (if (##file-exists? _%gerbil.pkg126083%_)
                  (let ((_%plist126085%_
                         (gx#core-library-package-plist__% _%dir126080%_ '#t)))
                    (if (null? _%plist126085%_)
                        (let ((_%pkg126088%_
                               (if (null? _%pkg-path126081%_)
                                   '#f
                                   (string-join _%pkg-path126081%_ '"/"))))
                          (values _%pre126073%_ _%ns126074%_ _%pkg126088%_))
                        (if (list? _%plist126085%_)
                            (let* ((_%root126091%_
                                    (pgetq__0 'package: _%plist126085%_))
                                   (_%pkg126095%_
                                    (let ((_%pkg-path126093%_
                                           (if _%root126091%_
                                               (cons (_%string-e126076%_
                                                      _%root126091%_)
                                                     _%pkg-path126081%_)
                                               _%pkg-path126081%_)))
                                      (if (null? _%pkg-path126093%_)
                                          '#f
                                          (string-join
                                           _%pkg-path126093%_
                                           '"/"))))
                                   (_%ns126102%_
                                    (let ((_%ns126100%_
                                           (let ((_%$e126097%_ _%ns126074%_))
                                             (if _%$e126097%_
                                                 _%$e126097%_
                                                 (pgetq__0
                                                  'namespace:
                                                  _%plist126085%_)))))
                                      (if _%ns126100%_
                                          (_%string-e126076%_ _%ns126100%_)
                                          '#f)))
                                   (_%pre126107%_
                                    (let ((_%$e126104%_ _%pre126073%_))
                                      (if _%$e126104%_
                                          _%$e126104%_
                                          (pgetq__0
                                           'prelude:
                                           _%plist126085%_)))))
                              (values _%pre126107%_
                                      _%ns126102%_
                                      _%pkg126095%_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%plist126085%_))))
                  (let ((_%dir*126111%_
                         (path-strip-trailing-directory-separator
                          _%dir126080%_)))
                    (if (or (__string-empty? _%dir*126111%_)
                            (equal? _%dir126080%_ _%dir*126111%_))
                        (values _%pre126073%_ _%ns126074%_ '#f)
                        (let ((_%xpath126116%_
                               (path-strip-directory _%dir*126111%_))
                              (_%xdir126117%_ (path-directory _%dir*126111%_)))
                          (_%lp126078%_
                           _%xdir126117%_
                           (cons _%xpath126116%_ _%pkg-path126081%_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_%path126070%_)
        (path-strip-extension (path-strip-directory _%path126070%_))))
    (define gx#core-module-path->id
      (lambda (_%path126068%_)
        (##string->symbol (gx#core-module-path->namespace _%path126068%_))))
    (define gx#core-resolve-module-path__%
      (lambda (_%stx-path126047%_ _%rel126048%_)
        (let* ((_%path126050%_ (gx#stx-e _%stx-path126047%_))
               (_%path126052%_
                (if (__string-empty? (path-extension _%path126050%_))
                    (##string-append _%path126050%_ '".ss")
                    _%path126050%_)))
          (gx#core-resolve-path__%
           _%path126052%_
           (let ((_%$e126055%_ (gx#stx-source _%stx-path126047%_)))
             (if _%$e126055%_ _%$e126055%_ _%rel126048%_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_%stx-path126061%_)
        (let ((_%rel126063%_ '#f))
          (gx#core-resolve-module-path__% _%stx-path126061%_ _%rel126063%_))))
    (define gx#core-resolve-module-path
      (lambda _g127697_
        (let ((_g127696_ (##length _g127697_)))
          (cond ((##fx= _g127696_ 1)
                 (apply gx#core-resolve-module-path__0 _g127697_))
                ((##fx= _g127696_ 2)
                 (apply gx#core-resolve-module-path__% _g127697_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g127697_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_%libpath125932%_)
        (let* ((_%spath125934%_ (symbol->string (gx#stx-e _%libpath125932%_)))
               (_%spath125936%_
                (substring
                 _%spath125934%_
                 '1
                 (##string-length _%spath125934%_)))
               (_%ext125938%_ (path-extension _%spath125936%_))
               (_%ssi125940%_
                (if (__string-empty? _%ext125938%_)
                    (##string-append _%spath125936%_ '".ssi")
                    (##string-append
                     (path-strip-extension _%spath125936%_)
                     '".ssi")))
               (_%srcs125944%_
                (if (__string-empty? _%ext125938%_)
                    (##map (lambda (_%ext125942%_)
                             (string-append _%spath125936%_ _%ext125942%_))
                           '(".ss" ".sld" ".scm"))
                    (cons _%spath125936%_ '()))))
          (let _%lp125947%_ ((_%rest125949%_ (load-path)))
            (let* ((_%rest125950125959%_ _%rest125949%_)
                   (_%E125953125963%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rest125950125959%_
                             '([dir . rest])
                             '([]))
                      '#!void)))
              (let ((_%K125955126034%_
                     (lambda (_%rest125974%_ _%dir125975%_)
                       (letrec ((_%resolve125977%_
                                 (lambda (_%ssi125990%_ _%srcs125991%_)
                                   (let ((_%compiled-path125993%_
                                          (path-expand
                                           _%ssi125990%_
                                           _%dir125975%_)))
                                     (if (##file-exists?
                                          _%compiled-path125993%_)
                                         (path-normalize
                                          _%compiled-path125993%_)
                                         (let _%lpr125995%_ ((_%rest-src125997%_
                                                              _%srcs125991%_))
                                           (let* ((_%rest-src125998126006%_
                                                   _%rest-src125997%_)
                                                  (_%else126000126014%_
                                                   (lambda ()
                                                     (_%lp125947%_
                                                      _%rest125974%_)))
                                                  (_%K126002126022%_
                                                   (lambda (_%rest-src126017%_
                                                            _%src126018%_)
                                                     (let ((_%src-path126020%_
                                                            (path-expand
                                                             _%src126018%_
                                                             _%dir125975%_)))
                                                       (if (##file-exists?
                                                            _%src-path126020%_)
                                                           (path-normalize
                                                            _%src-path126020%_)
                                                           (_%lpr125995%_
                                                            _%rest-src126017%_))))))
                                             (if (##pair? _%rest-src125998126006%_)
                                                 (let ((_%hd126003126025%_
                                                        (##car _%rest-src125998126006%_))
                                                       (_%tl126004126027%_
                                                        (##cdr _%rest-src125998126006%_)))
                                                   (let* ((_%src126030%_
                                                           _%hd126003126025%_)
                                                          (_%rest-src126032%_
                                                           _%tl126004126027%_))
                                                     (_%K126002126022%_
                                                      _%rest-src126032%_
                                                      _%src126030%_)))
                                                 (_%else126000126014%_)))))))))
                         (let ((_%$e125979%_
                                (gx#core-library-package-path-prefix
                                 _%dir125975%_)))
                           (if _%$e125979%_
                               ((lambda (_%prefix125982%_)
                                  (if (string-prefix?
                                       _%prefix125982%_
                                       _%spath125936%_)
                                      (let ((_%ssi125986%_
                                             (substring
                                              _%ssi125940%_
                                              (string-length _%prefix125982%_)
                                              (##string-length _%ssi125940%_)))
                                            (_%srcs125987%_
                                             (##map (lambda (_%src125984%_)
                                                      (substring
                                                       _%src125984%_
                                                       (string-length
                                                        _%prefix125982%_)
                                                       (string-length
                                                        _%src125984%_)))
                                                    _%srcs125944%_)))
                                        (_%resolve125977%_
                                         _%ssi125986%_
                                         _%srcs125987%_))
                                      (_%lp125947%_ _%rest125974%_)))
                                _%$e125979%_)
                               (_%resolve125977%_
                                _%ssi125940%_
                                _%srcs125944%_))))))
                    (_%K125954125968%_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"cannot find library module"
                        _%libpath125932%_))))
                (let ((_%try-match125952125971%_
                       (lambda ()
                         (if (##null? _%rest125950125959%_)
                             (_%K125954125968%_)
                             (_%E125953125963%_)))))
                  (if (##pair? _%rest125950125959%_)
                      (let ((_%tl125957126039%_ (##cdr _%rest125950125959%_))
                            (_%hd125956126037%_ (##car _%rest125950125959%_)))
                        (let ((_%dir126042%_ _%hd125956126037%_)
                              (_%rest126044%_ _%tl125957126039%_))
                          (_%K125955126034%_ _%rest126044%_ _%dir126042%_)))
                      (_%try-match125952125971%_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_%modpath125900%_)
        (letrec ((_%resolve125902%_
                  (lambda (_%path125923%_ _%base125924%_)
                    (let ((_%$e125926%_
                           (string-rindex__0 _%base125924%_ '#\/)))
                      (if _%$e125926%_
                          ((lambda (_%idx125929%_)
                             (gx#core-resolve-library-module-path
                              (##string->symbol
                               (string-append
                                '":"
                                (substring _%base125924%_ '0 _%idx125929%_)
                                '"/"
                                _%path125923%_))))
                           _%$e125926%_)
                          (gx#core-resolve-library-module-path
                           (##string->symbol
                            (string-append '":" _%path125923%_))))))))
          (let ((_%spath125904%_ (symbol->string (gx#stx-e _%modpath125900%_)))
                (_%mod125905%_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _%mod125905%_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"cannot resolve relative module path; not in module context"
                 _%modpath125900%_))
            (let ((_%mpath125907%_
                   (symbol->string
                    (##structure-ref
                     _%mod125905%_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _%lp125909%_ ((_%spath125911%_ _%spath125904%_)
                                 (_%mpath125912%_ _%mpath125907%_))
                (if (string-prefix? '"../" _%spath125911%_)
                    (let ((_%$e125915%_
                           (string-rindex__0 _%mpath125912%_ '#\/)))
                      (if _%$e125915%_
                          ((lambda (_%idx125918%_)
                             (_%lp125909%_
                              (substring
                               _%spath125911%_
                               '3
                               (string-length _%spath125911%_))
                              (substring _%mpath125912%_ '0 _%idx125918%_)))
                           _%$e125915%_)
                          (gx#raise-syntax-error
                           '#f
                           '"cannot resolve relative module path; illegal traversal"
                           _%modpath125900%_)))
                    (if (string-prefix? '"./" _%spath125911%_)
                        (_%lp125909%_
                         (substring
                          _%spath125911%_
                          '2
                          (string-length _%spath125911%_))
                         _%mpath125912%_)
                        (_%resolve125902%_
                         _%spath125911%_
                         _%mpath125912%_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_%dir125892%_)
        (let ((_%$e125894%_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _%dir125892%_))))
          (if _%$e125894%_
              ((lambda (_%pkg125897%_)
                 (##string-append (symbol->string _%pkg125897%_) '"/"))
               _%$e125894%_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_%dir125862%_ _%exists?125863%_)
        (let ((_%$e125865%_ (__hash-get gx#__module-pkg-cache _%dir125862%_)))
          (if _%$e125865%_
              _%$e125865%_
              (let* ((_%gerbil.pkg125869%_
                      (path-expand '"gerbil.pkg" _%dir125862%_))
                     (_%plist125879%_
                      (if (or _%exists?125863%_
                              (##file-exists? _%gerbil.pkg125869%_))
                          (let ((_%e125874%_
                                 (gx#call-with-input-source-file
                                  _%gerbil.pkg125869%_
                                  read)))
                            (if (eof-object? _%e125874%_)
                                '()
                                (if (list? _%e125874%_)
                                    _%e125874%_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _%gerbil.pkg125869%_
                                     _%e125874%_))))
                          '())))
                (__hash-put!
                 gx#__module-pkg-cache
                 _%dir125862%_
                 _%plist125879%_)
                _%plist125879%_)))))
    (define gx#core-library-package-plist__0
      (lambda (_%dir125885%_)
        (let ((_%exists?125887%_ '#f))
          (gx#core-library-package-plist__% _%dir125885%_ _%exists?125887%_))))
    (define gx#core-library-package-plist
      (lambda _g127699_
        (let ((_g127698_ (##length _g127699_)))
          (cond ((##fx= _g127698_ 1)
                 (apply gx#core-library-package-plist__0 _g127699_))
                ((##fx= _g127698_ 2)
                 (apply gx#core-library-package-plist__% _g127699_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g127699_))))))
    (define gx#core-library-module-path?
      (lambda (_%stx125859%_)
        (gx#core-special-module-path? _%stx125859%_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_%stx125857%_)
        (gx#core-special-module-path? _%stx125857%_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_%stx125852%_ _%char125853%_)
        (if (gx#identifier? _%stx125852%_)
            (if (interned-symbol? (gx#stx-e _%stx125852%_))
                (let ((_%str125855%_
                       (symbol->string (gx#stx-e _%stx125852%_))))
                  (if (##fx> (##string-length _%str125855%_) '1)
                      (eq? (string-ref _%str125855%_ '0) _%char125853%_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_%stx125846%_)
        (gx#core-bound-identifier?__%
         _%stx125846%_
         (lambda (_%g125847125849%_)
           (gx#expander-binding?__% _%g125847125849%_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_%stx125840%_)
        (gx#core-bound-identifier?__%
         _%stx125840%_
         (lambda (_%g125841125843%_)
           (gx#expander-binding?__% _%g125841125843%_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_%stx125827%_)
        (letrec ((_%module-prelude?125829%_
                  (lambda (_%e125835%_)
                    (let ((_%$e125837%_
                           (##structure-instance-of?
                            _%e125835%_
                            'gx#module-context::t)))
                      (if _%$e125837%_
                          _%$e125837%_
                          (##structure-instance-of?
                           _%e125835%_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _%stx125827%_
           (lambda (_%g125830125832%_)
             (gx#expander-binding?__%
              _%g125830125832%_
              _%module-prelude?125829%_))))))
    (define gx#core-bind-import!__%
      (lambda (_%in125757%_ _%ctx125758%_ _%force-weak?125759%_)
        (let* ((_%in125760125769%_ _%in125757%_)
               (_%E125762125773%_
                (lambda ()
                  (error '"No clause matching"
                         _%in125760125769%_
                         '((module-import source key phi weak?)))
                  '#!void))
               (_%K125763125786%_
                (lambda (_%weak?125776%_
                         _%phi125777%_
                         _%key125778%_
                         _%source125779%_)
                  (gx#core-bind!__%
                   _%key125778%_
                   (let ((_%e125781%_
                          (gx#core-resolve-module-export _%source125779%_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref _%e125781%_ '1 '#f '#f)
                      _%key125778%_
                      _%phi125777%_
                      _%e125781%_
                      (##unchecked-structure-ref _%source125779%_ '1 '#f '#f)
                      (let ((_%$e125783%_ _%force-weak?125759%_))
                        (if _%$e125783%_ _%$e125783%_ _%weak?125776%_))))
                   gx#core-context-rebind?
                   _%phi125777%_
                   _%ctx125758%_))))
          (if (##structure-direct-instance-of?
               _%in125760125769%_
               'gx#module-import::t)
              (let* ((_%e125764125789%_
                      (##unchecked-structure-ref
                       _%in125760125769%_
                       '1
                       '#f
                       '#f))
                     (_%source125792%_ _%e125764125789%_)
                     (_%e125765125794%_
                      (##unchecked-structure-ref
                       _%in125760125769%_
                       '2
                       '#f
                       '#f))
                     (_%key125797%_ _%e125765125794%_)
                     (_%e125766125799%_
                      (##unchecked-structure-ref
                       _%in125760125769%_
                       '3
                       '#f
                       '#f))
                     (_%phi125802%_ _%e125766125799%_)
                     (_%e125767125804%_
                      (##unchecked-structure-ref
                       _%in125760125769%_
                       '4
                       '#f
                       '#f))
                     (_%weak?125807%_ _%e125767125804%_))
                (_%K125763125786%_
                 _%weak?125807%_
                 _%phi125802%_
                 _%key125797%_
                 _%source125792%_))
              (_%E125762125773%_)))))
    (define gx#core-bind-import!__0
      (lambda (_%in125812%_)
        (let* ((_%ctx125814%_ (gx#current-expander-context))
               (_%force-weak?125816%_ '#f))
          (gx#core-bind-import!__%
           _%in125812%_
           _%ctx125814%_
           _%force-weak?125816%_))))
    (define gx#core-bind-import!__1
      (lambda (_%in125818%_ _%ctx125819%_)
        (let ((_%force-weak?125821%_ '#f))
          (gx#core-bind-import!__%
           _%in125818%_
           _%ctx125819%_
           _%force-weak?125821%_))))
    (define gx#core-bind-import!
      (lambda _g127701_
        (let ((_g127700_ (##length _g127701_)))
          (cond ((##fx= _g127700_ 1) (apply gx#core-bind-import!__0 _g127701_))
                ((##fx= _g127700_ 2) (apply gx#core-bind-import!__1 _g127701_))
                ((##fx= _g127700_ 3) (apply gx#core-bind-import!__% _g127701_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g127701_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_%in125743%_ _%ctx125744%_)
        (gx#core-bind-import!__% _%in125743%_ _%ctx125744%_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_%in125749%_)
        (let ((_%ctx125751%_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _%in125749%_ _%ctx125751%_))))
    (define gx#core-bind-weak-import!
      (lambda _g127703_
        (let ((_g127702_ (##length _g127703_)))
          (cond ((##fx= _g127702_ 1)
                 (apply gx#core-bind-weak-import!__0 _g127703_))
                ((##fx= _g127702_ 2)
                 (apply gx#core-bind-weak-import!__% _g127703_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g127703_))))))
    (define gx#core-resolve-module-export
      (lambda (_%out125634%_)
        (letrec ((_%subst125636%_
                  (lambda (_%key125682%_)
                    (let* ((_%key125683125691%_ _%key125682%_)
                           (_%else125685125699%_ (lambda () _%key125682%_))
                           (_%K125687125730%_
                            (lambda (_%mark125702%_ _%id125703%_)
                              (let* ((_%mark125704125710%_ _%mark125702%_)
                                     (_%E125706125714%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark125704125710%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K125707125722%_
                                      (lambda (_%subst125717%_)
                                        (let ((_%$e125719%_
                                               (if _%subst125717%_
                                                   (hash-get
                                                    _%subst125717%_
                                                    _%id125703%_)
                                                   '#f)))
                                          (if _%$e125719%_
                                              _%$e125719%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _%key125682%_))))))
                                (if (##structure-instance-of?
                                     _%mark125704125710%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e125708125725%_
                                            (##unchecked-structure-ref
                                             _%mark125704125710%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst125728%_ _%e125708125725%_))
                                      (_%K125707125722%_ _%subst125728%_))
                                    (_%E125706125714%_))))))
                      (if (##pair? _%key125683125691%_)
                          (let ((_%hd125688125733%_
                                 (##car _%key125683125691%_))
                                (_%tl125689125735%_
                                 (##cdr _%key125683125691%_)))
                            (let* ((_%id125738%_ _%hd125688125733%_)
                                   (_%mark125740%_ _%tl125689125735%_))
                              (_%K125687125730%_ _%mark125740%_ _%id125738%_)))
                          (_%else125685125699%_))))))
          (let* ((_%out125637125647%_ _%out125634%_)
                 (_%E125639125651%_
                  (lambda ()
                    (error '"No clause matching"
                           _%out125637125647%_
                           '((module-export ctx key phi _ _)))
                    '#!void))
                 (_%K125640125658%_
                  (lambda (_%phi125654%_ _%key125655%_ _%ctx125656%_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _%ctx125656%_ _%phi125654%_)
                     (_%subst125636%_ _%key125655%_)))))
            (if (##structure-direct-instance-of?
                 _%out125637125647%_
                 'gx#module-export::t)
                (let* ((_%e125641125661%_
                        (##unchecked-structure-ref
                         _%out125637125647%_
                         '1
                         '#f
                         '#f))
                       (_%ctx125664%_ _%e125641125661%_)
                       (_%e125642125666%_
                        (##unchecked-structure-ref
                         _%out125637125647%_
                         '2
                         '#f
                         '#f))
                       (_%key125669%_ _%e125642125666%_)
                       (_%e125643125671%_
                        (##unchecked-structure-ref
                         _%out125637125647%_
                         '3
                         '#f
                         '#f))
                       (_%phi125674%_ _%e125643125671%_)
                       (_%e125644125676%_
                        (##unchecked-structure-ref
                         _%out125637125647%_
                         '4
                         '#f
                         '#f))
                       (_%e125645125679%_
                        (##unchecked-structure-ref
                         _%out125637125647%_
                         '5
                         '#f
                         '#f)))
                  (_%K125640125658%_
                   _%phi125674%_
                   _%key125669%_
                   _%ctx125664%_))
                (_%E125639125651%_))))))
    (define gx#core-module-export->import__%
      (lambda (_%out125559%_ _%rename125560%_ _%dphi125561%_)
        (let* ((_%out125562125572%_ _%out125559%_)
               (_%E125564125576%_
                (lambda ()
                  (error '"No clause matching"
                         _%out125562125572%_
                         '((module-export ctx key phi name weak?)))
                  '#!void))
               (_%K125565125588%_
                (lambda (_%weak?125579%_
                         _%name125580%_
                         _%phi125581%_
                         _%key125582%_
                         _%ctx125583%_)
                  (##structure
                   gx#module-import::t
                   _%out125559%_
                   (let ((_%$e125585%_ _%rename125560%_))
                     (if _%$e125585%_ _%$e125585%_ _%name125580%_))
                   (fx+ _%phi125581%_ _%dphi125561%_)
                   _%weak?125579%_))))
          (if (##structure-direct-instance-of?
               _%out125562125572%_
               'gx#module-export::t)
              (let* ((_%e125566125591%_
                      (##unchecked-structure-ref
                       _%out125562125572%_
                       '1
                       '#f
                       '#f))
                     (_%ctx125594%_ _%e125566125591%_)
                     (_%e125567125596%_
                      (##unchecked-structure-ref
                       _%out125562125572%_
                       '2
                       '#f
                       '#f))
                     (_%key125599%_ _%e125567125596%_)
                     (_%e125568125601%_
                      (##unchecked-structure-ref
                       _%out125562125572%_
                       '3
                       '#f
                       '#f))
                     (_%phi125604%_ _%e125568125601%_)
                     (_%e125569125606%_
                      (##unchecked-structure-ref
                       _%out125562125572%_
                       '4
                       '#f
                       '#f))
                     (_%name125609%_ _%e125569125606%_)
                     (_%e125570125611%_
                      (##unchecked-structure-ref
                       _%out125562125572%_
                       '5
                       '#f
                       '#f))
                     (_%weak?125614%_ _%e125570125611%_))
                (_%K125565125588%_
                 _%weak?125614%_
                 _%name125609%_
                 _%phi125604%_
                 _%key125599%_
                 _%ctx125594%_))
              (_%E125564125576%_)))))
    (define gx#core-module-export->import__0
      (lambda (_%out125619%_)
        (let* ((_%rename125621%_ '#f) (_%dphi125623%_ '0))
          (gx#core-module-export->import__%
           _%out125619%_
           _%rename125621%_
           _%dphi125623%_))))
    (define gx#core-module-export->import__1
      (lambda (_%out125625%_ _%rename125626%_)
        (let ((_%dphi125628%_ '0))
          (gx#core-module-export->import__%
           _%out125625%_
           _%rename125626%_
           _%dphi125628%_))))
    (define gx#core-module-export->import
      (lambda _g127705_
        (let ((_g127704_ (##length _g127705_)))
          (cond ((##fx= _g127704_ 1)
                 (apply gx#core-module-export->import__0 _g127705_))
                ((##fx= _g127704_ 2)
                 (apply gx#core-module-export->import__1 _g127705_))
                ((##fx= _g127704_ 3)
                 (apply gx#core-module-export->import__% _g127705_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g127705_))))))
    (define gx#core-expand-module%
      (lambda (_%stx125458%_)
        (letrec ((_%make-context125460%_
                  (lambda (_%id125537%_)
                    (let* ((_%super125539%_ (gx#current-expander-context))
                           (_%bind-id125541%_ (gx#stx-e _%id125537%_))
                           (_%mod-id125543%_
                            (if (##structure-instance-of?
                                 _%super125539%_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##unchecked-structure-ref
                                  _%super125539%_
                                  '1
                                  '#f
                                  '#f)
                                 '"~"
                                 _%bind-id125541%_)
                                _%bind-id125541%_))
                           (_%ns125545%_ (symbol->string _%mod-id125543%_))
                           (_%path125555%_
                            (if (##structure-instance-of?
                                 _%super125539%_
                                 'gx#module-context::t)
                                (let ((_%path125547%_
                                       (##unchecked-structure-ref
                                        _%super125539%_
                                        '7
                                        '#f
                                        '#f)))
                                  (if (or (pair? _%path125547%_)
                                          (null? _%path125547%_))
                                      (cons _%bind-id125541%_ _%path125547%_)
                                      (if (not _%path125547%_)
                                          _%bind-id125541%_
                                          (cons _%bind-id125541%_
                                                (cons _%path125547%_ '())))))
                                _%bind-id125541%_))
                           (__obj127681
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
                       __obj127681
                       _%mod-id125543%_
                       _%super125539%_
                       _%ns125545%_
                       _%path125555%_)
                      __obj127681)))
                 (_%valid-module-id?125461%_
                  (lambda (_%id125512%_)
                    (let* ((_%str125514%_ (symbol->string _%id125512%_))
                           (_%len125516%_ (##string-length _%str125514%_)))
                      (if (##fx>= _%len125516%_ '1)
                          (let _%loop125519%_ ((_%index125521%_
                                                (##fx- (##string-length
                                                        _%str125514%_)
                                                       '1)))
                            (if (##fx>= _%index125521%_ '0)
                                (let ((_%c125523%_
                                       (string-ref
                                        _%str125514%_
                                        _%index125521%_)))
                                  (if (or (and (##char>=? _%c125523%_ '#\a)
                                               (##char<=? _%c125523%_ '#\z))
                                          (and (##char>=? _%c125523%_ '#\A)
                                               (##char<=? _%c125523%_ '#\Z))
                                          (and (##char>=? _%c125523%_ '#\0)
                                               (##char<=? _%c125523%_ '#\9))
                                          (##char=? _%c125523%_ '#\_)
                                          (##char=? _%c125523%_ '#\-))
                                      (_%loop125519%_
                                       (##fx- _%index125521%_ '1))
                                      '#f))
                                '#t))
                          '#f)))))
          (let* ((_%e125462125472%_ _%stx125458%_)
                 (_%E125464125476%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e125462125472%_)))
                 (_%E125463125508%_
                  (lambda ()
                    (if (gx#stx-pair? _%e125462125472%_)
                        (let ((_%e125465125480%_
                               (gx#syntax-e _%e125462125472%_)))
                          (let ((_%hd125466125483%_ (##car _%e125465125480%_))
                                (_%tl125467125485%_ (##cdr _%e125465125480%_)))
                            (if (gx#stx-pair? _%tl125467125485%_)
                                (let ((_%e125468125488%_
                                       (gx#syntax-e _%tl125467125485%_)))
                                  (let ((_%hd125469125491%_
                                         (##car _%e125468125488%_))
                                        (_%tl125470125493%_
                                         (##cdr _%e125468125488%_)))
                                    (let* ((_%id125496%_ _%hd125469125491%_)
                                           (_%body125498%_ _%tl125470125493%_))
                                      (if (and (gx#identifier? _%id125496%_)
                                               (gx#stx-list? _%body125498%_))
                                          (if (_%valid-module-id?125461%_
                                               (gx#stx-e
                                                (gx#datum->syntax__0 '#f 'id)))
                                              (let* ((_%ctx125500%_
                                                      (_%make-context125460%_
                                                       _%id125496%_))
                                                     (_%body125502%_
                                                      (gx#core-expand-module-begin
                                                       _%body125498%_
                                                       _%ctx125500%_))
                                                     (_%body125504%_
                                                      (gx#core-quote-syntax__1
                                                       (gx#core-cons
                                                        '%#begin
                                                        _%body125502%_)
                                                       (gx#stx-source
                                                        _%stx125458%_))))
                                                (##unchecked-structure-set!
                                                 _%ctx125500%_
                                                 (__make-promise
                                                  (lambda ()
                                                    (gx#eval-syntax*
                                                     _%body125504%_)))
                                                 '10
                                                 '#f
                                                 '#f)
                                                (##unchecked-structure-set!
                                                 _%ctx125500%_
                                                 _%body125504%_
                                                 '11
                                                 '#f
                                                 '#f)
                                                (gx#core-bind-syntax!__0
                                                 _%id125496%_
                                                 _%ctx125500%_)
                                                (gx#core-quote-syntax__1
                                                 (gx#core-list
                                                  '%#module
                                                  (gx#core-quote-syntax__0
                                                   _%id125496%_)
                                                  _%body125504%_)
                                                 (gx#stx-source
                                                  _%stx125458%_)))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"invalid module id; allowed characters are A-Z,a-z,0-9,_,-"
                                               _%stx125458%_
                                               (gx#datum->syntax__0 '#f 'id)))
                                          (_%E125464125476%_)))))
                                (_%E125464125476%_))))
                        (_%E125464125476%_)))))
            (_%E125463125508%_)))))
    (define gx#core-expand-module-begin
      (lambda (_%body125424%_ _%ctx125425%_)
        (__call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_%stx125428%_
                   (gx#core-expand-head (cons '%%begin-module _%body125424%_)))
                  (_%e125429125436%_ _%stx125428%_)
                  (_%E125431125440%_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _%stx125428%_)))
                  (_%E125430125454%_
                   (lambda ()
                     (if (gx#stx-pair? _%e125429125436%_)
                         (let ((_%e125432125444%_
                                (gx#syntax-e _%e125429125436%_)))
                           (let ((_%hd125433125447%_ (##car _%e125432125444%_))
                                 (_%tl125434125449%_
                                  (##cdr _%e125432125444%_)))
                             (if (and (gx#identifier? _%hd125433125447%_)
                                      (gx#core-identifier=?
                                       _%hd125433125447%_
                                       '%#begin-module))
                                 (let ((_%body125452%_ _%tl125434125449%_))
                                   (if (gx#sealed-syntax? _%stx125428%_)
                                       _%body125452%_
                                       (gx#core-expand-module-body
                                        _%body125452%_)))
                                 (_%E125431125440%_))))
                         (_%E125431125440%_)))))
             (_%E125430125454%_)))
         gx#current-expander-context
         _%ctx125425%_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_%body125220%_)
        (letrec ((_%expand-special125222%_
                  (lambda (_%hd125351%_ _%K125352%_ _%rest125353%_ _%r125354%_)
                    (let* ((_%e125355125372%_ _%hd125351%_)
                           (_%E125367125376%_
                            (lambda ()
                              (_%K125352%_
                               _%rest125353%_
                               (cons (gx#core-expand-top _%hd125351%_)
                                     _%r125354%_))))
                           (_%E125357125388%_
                            (lambda ()
                              (if (gx#stx-pair? _%e125355125372%_)
                                  (let ((_%e125368125380%_
                                         (gx#syntax-e _%e125355125372%_)))
                                    (let ((_%hd125369125383%_
                                           (##car _%e125368125380%_))
                                          (_%tl125370125385%_
                                           (##cdr _%e125368125380%_)))
                                      (if (and (gx#identifier?
                                                _%hd125369125383%_)
                                               (gx#core-identifier=?
                                                _%hd125369125383%_
                                                '%#export))
                                          (_%K125352%_
                                           _%rest125353%_
                                           (cons _%hd125351%_ _%r125354%_))
                                          (_%E125367125376%_))))
                                  (_%E125367125376%_))))
                           (_%E125356125420%_
                            (lambda ()
                              (if (gx#stx-pair? _%e125355125372%_)
                                  (let ((_%e125358125392%_
                                         (gx#syntax-e _%e125355125372%_)))
                                    (let ((_%hd125359125395%_
                                           (##car _%e125358125392%_))
                                          (_%tl125360125397%_
                                           (##cdr _%e125358125392%_)))
                                      (if (and (gx#identifier?
                                                _%hd125359125395%_)
                                               (gx#core-identifier=?
                                                _%hd125359125395%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl125360125397%_)
                                              (let ((_%e125361125400%_
                                                     (gx#syntax-e
                                                      _%tl125360125397%_)))
                                                (let ((_%hd125362125403%_
                                                       (##car _%e125361125400%_))
                                                      (_%tl125363125405%_
                                                       (##cdr _%e125361125400%_)))
                                                  (let ((_%hd-bind125408%_
                                                         _%hd125362125403%_))
                                                    (if (gx#stx-pair?
                                                         _%tl125363125405%_)
                                                        (let ((_%e125364125410%_
                                                               (gx#syntax-e
                                                                _%tl125363125405%_)))
                                                          (let ((_%hd125365125413%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e125364125410%_))
                        (_%tl125366125415%_ (##cdr _%e125364125410%_)))
                    (let ((_%expr125418%_ _%hd125365125413%_))
                      (if (gx#stx-null? _%tl125366125415%_)
                          (if (gx#core-bind-values? _%hd-bind125408%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind125408%_)
                                (_%K125352%_
                                 _%rest125353%_
                                 (cons _%hd125351%_ _%r125354%_)))
                              (_%E125357125388%_))
                          (_%E125357125388%_)))))
                (_%E125357125388%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E125357125388%_))
                                          (_%E125357125388%_))))
                                  (_%E125357125388%_)))))
                      (_%E125356125420%_))))
                 (_%expand-body125223%_
                  (lambda (_%rbody125225%_)
                    (let _%lp125227%_ ((_%rest125229%_ _%rbody125225%_)
                                       (_%body125230%_ '()))
                      (let* ((_%rest125231125239%_ _%rest125229%_)
                             (_%else125233125247%_ (lambda () _%body125230%_))
                             (_%K125235125339%_
                              (lambda (_%rest125250%_ _%hd125251%_)
                                (let* ((_%e125252125273%_ _%hd125251%_)
                                       (_%E125268125277%_
                                        (lambda ()
                                          (_%lp125227%_
                                           _%rest125250%_
                                           (cons (gx#core-expand-expression
                                                  _%hd125251%_)
                                                 _%body125230%_))))
                                       (_%E125264125291%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e125252125273%_)
                                              (let ((_%e125269125281%_
                                                     (gx#syntax-e
                                                      _%e125252125273%_)))
                                                (let ((_%hd125270125284%_
                                                       (##car _%e125269125281%_))
                                                      (_%tl125271125286%_
                                                       (##cdr _%e125269125281%_)))
                                                  (let ((_%form125289%_
                                                         _%hd125270125284%_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _%form125289%_
                                                         gx#special-form-binding?)
                                                        (_%lp125227%_
                                                         _%rest125250%_
                                                         (cons _%hd125251%_
                                                               _%body125230%_))
                                                        (_%E125268125277%_)))))
                                              (_%E125268125277%_))))
                                       (_%E125254125303%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e125252125273%_)
                                              (let ((_%e125265125295%_
                                                     (gx#syntax-e
                                                      _%e125252125273%_)))
                                                (let ((_%hd125266125298%_
                                                       (##car _%e125265125295%_))
                                                      (_%tl125267125300%_
                                                       (##cdr _%e125265125295%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd125266125298%_)
                                                           (gx#core-identifier=?
                                                            _%hd125266125298%_
                                                            '%#export))
                                                      (_%lp125227%_
                                                       _%rest125250%_
                                                       (cons (gx#core-expand-export%__0
                                                              _%hd125251%_)
                                                             _%body125230%_))
                                                      (_%E125264125291%_))))
                                              (_%E125264125291%_))))
                                       (_%E125253125335%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e125252125273%_)
                                              (let ((_%e125255125307%_
                                                     (gx#syntax-e
                                                      _%e125252125273%_)))
                                                (let ((_%hd125256125310%_
                                                       (##car _%e125255125307%_))
                                                      (_%tl125257125312%_
                                                       (##cdr _%e125255125307%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd125256125310%_)
                                                           (gx#core-identifier=?
                                                            _%hd125256125310%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl125257125312%_)
                                                          (let ((_%e125258125315%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl125257125312%_)))
                    (let ((_%hd125259125318%_ (##car _%e125258125315%_))
                          (_%tl125260125320%_ (##cdr _%e125258125315%_)))
                      (let ((_%hd-bind125323%_ _%hd125259125318%_))
                        (if (gx#stx-pair? _%tl125260125320%_)
                            (let ((_%e125261125325%_
                                   (gx#syntax-e _%tl125260125320%_)))
                              (let ((_%hd125262125328%_
                                     (##car _%e125261125325%_))
                                    (_%tl125263125330%_
                                     (##cdr _%e125261125325%_)))
                                (let ((_%expr125333%_ _%hd125262125328%_))
                                  (if (gx#stx-null? _%tl125263125330%_)
                                      (_%lp125227%_
                                       _%rest125250%_
                                       (cons (gx#core-quote-syntax__1
                                              (gx#core-list
                                               '%#define-values
                                               (gx#core-quote-bind-values
                                                _%hd-bind125323%_)
                                               (gx#core-expand-expression
                                                _%expr125333%_))
                                              (gx#stx-source _%hd125251%_))
                                             _%body125230%_))
                                      (_%E125254125303%_)))))
                            (_%E125254125303%_)))))
                  (_%E125254125303%_))
              (_%E125254125303%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E125254125303%_)))))
                                  (_%E125253125335%_)))))
                        (if (##pair? _%rest125231125239%_)
                            (let ((_%hd125236125342%_
                                   (##car _%rest125231125239%_))
                                  (_%tl125237125344%_
                                   (##cdr _%rest125231125239%_)))
                              (let* ((_%hd125347%_ _%hd125236125342%_)
                                     (_%rest125349%_ _%tl125237125344%_))
                                (_%K125235125339%_
                                 _%rest125349%_
                                 _%hd125347%_)))
                            (_%else125233125247%_)))))))
          (_%expand-body125223%_
           (gx#core-expand-block__%
            (cons '%#begin-module _%body125220%_)
            _%expand-special125222%_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_%stx125061%_
               _%expanded?125062%_
               _%method125063%_
               _%current-phi125064%_
               _%expand1125065%_)
        (letrec ((_%K125067%_
                  (lambda (_%rest125187%_ _%r125188%_)
                    (let* ((_%e125189125196%_ _%rest125187%_)
                           (_%E125191125200%_ (lambda () _%r125188%_))
                           (_%E125190125216%_
                            (lambda ()
                              (if (gx#stx-pair? _%e125189125196%_)
                                  (let ((_%e125192125204%_
                                         (gx#syntax-e _%e125189125196%_)))
                                    (let ((_%hd125193125207%_
                                           (##car _%e125192125204%_))
                                          (_%tl125194125209%_
                                           (##cdr _%e125192125204%_)))
                                      (let* ((_%hd125212%_ _%hd125193125207%_)
                                             (_%rest125214%_
                                              _%tl125194125209%_))
                                        (_%step125068%_
                                         _%hd125212%_
                                         _%rest125214%_
                                         _%r125188%_))))
                                  (_%E125191125200%_)))))
                      (_%E125190125216%_))))
                 (_%step125068%_
                  (lambda (_%hd125101%_ _%rest125102%_ _%r125103%_)
                    (let* ((_%e125104125122%_ _%hd125101%_)
                           (_%E125117125126%_
                            (lambda ()
                              (if (_%expanded?125062%_ (gx#stx-e _%hd125101%_))
                                  (_%K125067%_
                                   _%rest125102%_
                                   (cons (gx#stx-e _%hd125101%_) _%r125103%_))
                                  (_%expand1125065%_
                                   _%hd125101%_
                                   _%K125067%_
                                   _%rest125102%_
                                   _%r125103%_))))
                           (_%E125113125142%_
                            (lambda ()
                              (if (gx#stx-pair? _%e125104125122%_)
                                  (let ((_%e125118125130%_
                                         (gx#syntax-e _%e125104125122%_)))
                                    (let ((_%hd125119125133%_
                                           (##car _%e125118125130%_))
                                          (_%tl125120125135%_
                                           (##cdr _%e125118125130%_)))
                                      (let* ((_%macro125138%_
                                              _%hd125119125133%_)
                                             (_%body125140%_
                                              _%tl125120125135%_))
                                        (if (gx#core-bound-identifier?__%
                                             _%macro125138%_
                                             gx#syntax-binding?)
                                            (_%K125067%_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _%macro125138%_)
                                                    _%hd125101%_
                                                    _%method125063%_)
                                                   _%rest125102%_)
                                             _%r125103%_)
                                            (_%E125117125126%_)))))
                                  (_%E125117125126%_))))
                           (_%E125106125156%_
                            (lambda ()
                              (if (gx#stx-pair? _%e125104125122%_)
                                  (let ((_%e125114125146%_
                                         (gx#syntax-e _%e125104125122%_)))
                                    (let ((_%hd125115125149%_
                                           (##car _%e125114125146%_))
                                          (_%tl125116125151%_
                                           (##cdr _%e125114125146%_)))
                                      (if (eq? (gx#stx-e _%hd125115125149%_)
                                               'begin:)
                                          (let ((_%body125154%_
                                                 _%tl125116125151%_))
                                            (_%K125067%_
                                             (gx#stx-foldr
                                              cons
                                              _%rest125102%_
                                              _%body125154%_)
                                             _%r125103%_))
                                          (_%E125113125142%_))))
                                  (_%E125113125142%_))))
                           (_%E125105125183%_
                            (lambda ()
                              (if (gx#stx-pair? _%e125104125122%_)
                                  (let ((_%e125107125160%_
                                         (gx#syntax-e _%e125104125122%_)))
                                    (let ((_%hd125108125163%_
                                           (##car _%e125107125160%_))
                                          (_%tl125109125165%_
                                           (##cdr _%e125107125160%_)))
                                      (if (eq? (gx#stx-e _%hd125108125163%_)
                                               'phi:)
                                          (if (gx#stx-pair? _%tl125109125165%_)
                                              (let ((_%e125110125168%_
                                                     (gx#syntax-e
                                                      _%tl125109125165%_)))
                                                (let ((_%hd125111125171%_
                                                       (##car _%e125110125168%_))
                                                      (_%tl125112125173%_
                                                       (##cdr _%e125110125168%_)))
                                                  (let* ((_%dphi125176%_
                                                          _%hd125111125171%_)
                                                         (_%body125178%_
                                                          _%tl125112125173%_))
                                                    (if (gx#stx-fixnum?
                                                         _%dphi125176%_)
                                                        (let ((_%rbody125181%_
                                                               (__call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%K125067%_ _%body125178%_ '()))
                        _%current-phi125064%_
                        (fx+ (gx#stx-e _%dphi125176%_)
                             (_%current-phi125064%_)))))
                  (_%K125067%_
                   _%rest125102%_
                   (__foldr1 cons _%r125103%_ _%rbody125181%_)))
                (_%E125106125156%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E125106125156%_))
                                          (_%E125106125156%_))))
                                  (_%E125106125156%_)))))
                      (_%E125105125183%_)))))
          (let* ((_%e125069125076%_ _%stx125061%_)
                 (_%E125071125080%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e125069125076%_)))
                 (_%E125070125097%_
                  (lambda ()
                    (if (gx#stx-pair? _%e125069125076%_)
                        (let ((_%e125072125084%_
                               (gx#syntax-e _%e125069125076%_)))
                          (let ((_%hd125073125087%_ (##car _%e125072125084%_))
                                (_%tl125074125089%_ (##cdr _%e125072125084%_)))
                            (let ((_%body125092%_ _%tl125074125089%_))
                              (if (_%current-phi125064%_)
                                  (_%K125067%_ _%body125092%_ '())
                                  (__call-with-parameters
                                   (lambda () (_%K125067%_ _%body125092%_ '()))
                                   _%current-phi125064%_
                                   (gx#current-expander-phi))))))
                        (_%E125071125080%_)))))
            (_%E125070125097%_)))))
    (define gx#core-expand-import%__%
      (lambda (_%stx124715%_ _%internal-expand?124716%_)
        (letrec ((_%expand1124718%_
                  (lambda (_%hd125033%_ _%K125034%_ _%rest125035%_ _%r125036%_)
                    (if (gx#core-bound-module? _%hd125033%_)
                        (_%import1124719%_
                         (gx#syntax-local-e__0 _%hd125033%_)
                         _%K125034%_
                         _%rest125035%_
                         _%r125036%_)
                        (if (gx#core-library-module-path? _%hd125033%_)
                            (_%import1124719%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%hd125033%_))
                             _%K125034%_
                             _%rest125035%_
                             _%r125036%_)
                            (if (gx#core-library-relative-module-path?
                                 _%hd125033%_)
                                (_%import1124719%_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _%hd125033%_))
                                 _%K125034%_
                                 _%rest125035%_
                                 _%r125036%_)
                                (let ((_%e125042%_ (gx#stx-e _%hd125033%_)))
                                  (if (pair? _%e125042%_)
                                      (let ((_%$e125045%_
                                             (gx#stx-e (##car _%e125042%_))))
                                        (if (eq? 'spec: _%$e125045%_)
                                            (_%import-spec124722%_
                                             _%hd125033%_
                                             _%K125034%_
                                             _%rest125035%_
                                             _%r125036%_)
                                            (if (eq? 'in: _%$e125045%_)
                                                (_%import-submodule124720%_
                                                 _%hd125033%_
                                                 _%K125034%_
                                                 _%rest125035%_
                                                 _%r125036%_)
                                                (if (eq? 'runtime:
                                                         _%$e125045%_)
                                                    (_%import-runtime124721%_
                                                     _%hd125033%_
                                                     _%K125034%_
                                                     _%rest125035%_
                                                     _%r125036%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _%stx124715%_
                                                     _%hd125033%_)))))
                                      (if (string? _%e125042%_)
                                          (_%import1124719%_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _%hd125033%_
                                             (gx#stx-source _%stx124715%_)))
                                           _%K125034%_
                                           _%rest125035%_
                                           _%r125036%_)
                                          (if (##structure-instance-of?
                                               _%e125042%_
                                               'gx#module-context::t)
                                              (_%K125034%_
                                               _%rest125035%_
                                               (cons _%e125042%_ _%r125036%_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _%stx124715%_
                                               _%hd125033%_))))))))))
                 (_%import1124719%_
                  (lambda (_%ctx125022%_
                           _%K125023%_
                           _%rest125024%_
                           _%r125025%_)
                    (let ((_%dphi125027%_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_%K125023%_
                       _%rest125024%_
                       (cons (##structure
                              gx#import-set::t
                              _%ctx125022%_
                              _%dphi125027%_
                              (map (lambda (_%g125028125030%_)
                                     (gx#core-module-export->import__%
                                      _%g125028125030%_
                                      '#f
                                      _%dphi125027%_))
                                   (##unchecked-structure-ref
                                    _%ctx125022%_
                                    '9
                                    '#f
                                    '#f)))
                             _%r125025%_)))))
                 (_%import-submodule124720%_
                  (lambda (_%hd124989%_ _%K124990%_ _%rest124991%_ _%r124992%_)
                    (let* ((_%e124993125000%_ _%hd124989%_)
                           (_%E124995125004%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e124993125000%_)))
                           (_%E124994125018%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124993125000%_)
                                  (let ((_%e124996125008%_
                                         (gx#syntax-e _%e124993125000%_)))
                                    (let ((_%hd124997125011%_
                                           (##car _%e124996125008%_))
                                          (_%tl124998125013%_
                                           (##cdr _%e124996125008%_)))
                                      (let ((_%spath125016%_
                                             _%tl124998125013%_))
                                        (_%import1124719%_
                                         (_%import-spec-source124723%_
                                          _%spath125016%_)
                                         _%K124990%_
                                         _%rest124991%_
                                         _%r124992%_))))
                                  (_%E124995125004%_)))))
                      (_%E124994125018%_))))
                 (_%import-runtime124721%_
                  (lambda (_%hd124956%_ _%K124957%_ _%rest124958%_ _%r124959%_)
                    (let* ((_%e124960124967%_ _%hd124956%_)
                           (_%E124962124971%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e124960124967%_)))
                           (_%E124961124985%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124960124967%_)
                                  (let ((_%e124963124975%_
                                         (gx#syntax-e _%e124960124967%_)))
                                    (let ((_%hd124964124978%_
                                           (##car _%e124963124975%_))
                                          (_%tl124965124980%_
                                           (##cdr _%e124963124975%_)))
                                      (let ((_%spath124983%_
                                             _%tl124965124980%_))
                                        (_%K124957%_
                                         _%rest124958%_
                                         (cons (_%import-spec-source124723%_
                                                _%spath124983%_)
                                               _%r124959%_)))))
                                  (_%E124962124971%_)))))
                      (_%E124961124985%_))))
                 (_%import-spec124722%_
                  (lambda (_%hd124794%_ _%K124795%_ _%rest124796%_ _%r124797%_)
                    (let* ((_%e124798124815%_ _%hd124794%_)
                           (_%E124807124819%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e124798124815%_)))
                           (_%E124800124930%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124798124815%_)
                                  (let ((_%e124808124823%_
                                         (gx#syntax-e _%e124798124815%_)))
                                    (let ((_%hd124809124826%_
                                           (##car _%e124808124823%_))
                                          (_%tl124810124828%_
                                           (##cdr _%e124808124823%_)))
                                      (if (gx#stx-pair? _%tl124810124828%_)
                                          (let ((_%e124811124831%_
                                                 (gx#syntax-e
                                                  _%tl124810124828%_)))
                                            (let ((_%hd124812124834%_
                                                   (##car _%e124811124831%_))
                                                  (_%tl124813124836%_
                                                   (##cdr _%e124811124831%_)))
                                              (let* ((_%path124839%_
                                                      _%hd124812124834%_)
                                                     (_%specs124841%_
                                                      _%tl124813124836%_))
                                                (let ((_%src-ctx124843%_
                                                       (_%import-spec-source124723%_
                                                        _%path124839%_))
                                                      (_%exports124844%_
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
                                                      (_%specs124845%_
                                                       (gx#syntax->list
                                                        _%specs124841%_)))
                                                  (for-each
                                                   (lambda (_%out124847%_)
                                                     (__hash-put!
                                                      _%exports124844%_
                                                      (cons (##unchecked-structure-ref
                                                             _%out124847%_
                                                             '3
                                                             '#f
                                                             '#f)
                                                            (##unchecked-structure-ref
                                                             _%out124847%_
                                                             '4
                                                             '#f
                                                             '#f))
                                                      _%out124847%_))
                                                   (##unchecked-structure-ref
                                                    _%src-ctx124843%_
                                                    '9
                                                    '#f
                                                    '#f))
                                                  (_%K124795%_
                                                   _%rest124796%_
                                                   (__foldl1
                                                    (lambda (_%spec124849%_
                                                             _%r124850%_)
                                                      (let* ((_%e124851124867%_
                                                              _%spec124849%_)
                                                             (_%E124853124871%_
                                                              (lambda ()
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid syntax-case clause"
                         _%e124851124867%_)))
                     (_%E124852124926%_
                      (lambda ()
                        (if (gx#stx-pair? _%e124851124867%_)
                            (let ((_%e124854124875%_
                                   (gx#syntax-e _%e124851124867%_)))
                              (let ((_%hd124855124878%_
                                     (##car _%e124854124875%_))
                                    (_%tl124856124880%_
                                     (##cdr _%e124854124875%_)))
                                (let ((_%phi124883%_ _%hd124855124878%_))
                                  (if (gx#stx-pair? _%tl124856124880%_)
                                      (let ((_%e124857124885%_
                                             (gx#syntax-e _%tl124856124880%_)))
                                        (let ((_%hd124858124888%_
                                               (##car _%e124857124885%_))
                                              (_%tl124859124890%_
                                               (##cdr _%e124857124885%_)))
                                          (let ((_%name124893%_
                                                 _%hd124858124888%_))
                                            (if (gx#stx-pair?
                                                 _%tl124859124890%_)
                                                (let ((_%e124860124895%_
                                                       (gx#syntax-e
                                                        _%tl124859124890%_)))
                                                  (let ((_%hd124861124898%_
                                                         (##car _%e124860124895%_))
                                                        (_%tl124862124900%_
                                                         (##cdr _%e124860124895%_)))
                                                    (let ((_%src-phi124903%_
                                                           _%hd124861124898%_))
                                                      (if (gx#stx-pair?
                                                           _%tl124862124900%_)
                                                          (let ((_%e124863124905%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl124862124900%_)))
                    (let ((_%hd124864124908%_ (##car _%e124863124905%_))
                          (_%tl124865124910%_ (##cdr _%e124863124905%_)))
                      (let ((_%src-name124913%_ _%hd124864124908%_))
                        (if (gx#stx-null? _%tl124865124910%_)
                            (if (and (gx#stx-fixnum? _%src-phi124903%_)
                                     (gx#identifier? _%src-name124913%_)
                                     (gx#stx-fixnum? _%phi124883%_)
                                     (gx#identifier? _%name124893%_))
                                (let ((_%src-phi124915%_
                                       (gx#stx-e _%src-phi124903%_))
                                      (_%src-name124916%_
                                       (gx#core-identifier-key
                                        _%src-name124913%_))
                                      (_%phi124917%_ (gx#stx-e _%phi124883%_))
                                      (_%name124918%_
                                       (gx#core-identifier-key
                                        _%name124893%_)))
                                  (let ((_%$e124920%_
                                         (__hash-get
                                          _%exports124844%_
                                          (cons _%src-phi124915%_
                                                _%src-name124916%_))))
                                    (if _%$e124920%_
                                        ((lambda (_%out124923%_)
                                           (cons (gx#core-module-export->import__%
                                                  _%out124923%_
                                                  _%name124918%_
                                                  (fx- _%phi124917%_
                                                       _%src-phi124915%_))
                                                 _%r124850%_))
                                         _%$e124920%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; no matching export"
                                         _%stx124715%_
                                         _%hd124794%_))))
                                (_%E124853124871%_))
                            (_%E124853124871%_)))))
                  (_%E124853124871%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E124853124871%_)))))
                                      (_%E124853124871%_)))))
                            (_%E124853124871%_)))))
                (_%E124852124926%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r124797%_
                                                    _%specs124845%_))))))
                                          (_%E124807124819%_))))
                                  (_%E124807124819%_))))
                           (_%E124799124952%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124798124815%_)
                                  (let ((_%e124801124934%_
                                         (gx#syntax-e _%e124798124815%_)))
                                    (let ((_%hd124802124937%_
                                           (##car _%e124801124934%_))
                                          (_%tl124803124939%_
                                           (##cdr _%e124801124934%_)))
                                      (if (gx#stx-pair? _%tl124803124939%_)
                                          (let ((_%e124804124942%_
                                                 (gx#syntax-e
                                                  _%tl124803124939%_)))
                                            (let ((_%hd124805124945%_
                                                   (##car _%e124804124942%_))
                                                  (_%tl124806124947%_
                                                   (##cdr _%e124804124942%_)))
                                              (let ((_%path124950%_
                                                     _%hd124805124945%_))
                                                (if (gx#stx-null?
                                                     _%tl124806124947%_)
                                                    (_%K124795%_
                                                     _%rest124796%_
                                                     (cons (_%import-spec-source124723%_
                                                            _%path124950%_)
                                                           _%r124797%_))
                                                    (_%E124800124930%_)))))
                                          (_%E124800124930%_))))
                                  (_%E124800124930%_)))))
                      (_%E124799124952%_))))
                 (_%import-spec-source124723%_
                  (lambda (_%spath124792%_)
                    (gx#core-import-nested-module
                     _%spath124792%_
                     _%stx124715%_)))
                 (_%import!124724%_
                  (lambda (_%rbody124737%_)
                    (letrec* ((_%current-ctx124739%_
                               (gx#current-expander-context))
                              (_%deps124740%_ (make-hash-table-eq))
                              (_%bind!124741%_
                               (lambda (_%hd124790%_)
                                 (gx#core-bind-import!__1
                                  _%hd124790%_
                                  _%current-ctx124739%_))))
                      (let _%lp124743%_ ((_%rest124745%_ _%rbody124737%_)
                                         (_%body124746%_ '()))
                        (let* ((_%rest124747124755%_ _%rest124745%_)
                               (_%else124749124766%_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _%current-ctx124739%_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _%current-ctx124739%_
                                       (__foldl1
                                        cons
                                        (##unchecked-structure-ref
                                         _%current-ctx124739%_
                                         '8
                                         '#f
                                         '#f)
                                        _%body124746%_)
                                       '8
                                       '#f
                                       '#f)
                                      '#!void)
                                  (__hash-for-each
                                   (lambda (_%ctx124763%_ _%_124764%_)
                                     (gx#eval-module _%ctx124763%_))
                                   _%deps124740%_)
                                  _%body124746%_))
                               (_%K124751124778%_
                                (lambda (_%rest124769%_ _%hd124770%_)
                                  (if (##structure-direct-instance-of?
                                       _%hd124770%_
                                       'gx#module-import::t)
                                      (let ()
                                        (_%bind!124741%_ _%hd124770%_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _%hd124770%_
                                                   '3
                                                   '#f
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _%hd124770%_
                                                            '1
                                                            '#f
                                                            '#f)
                                                           '3
                                                           '#f
                                                           '#f)))
                                            (__hash-put!
                                             _%deps124740%_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _%hd124770%_
                                               '1
                                               '#f
                                               '#f)
                                              '1
                                              '#f
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _%hd124770%_
                                           'gx#import-set::t)
                                          (let ()
                                            (for-each
                                             _%bind!124741%_
                                             (##unchecked-structure-ref
                                              _%hd124770%_
                                              '3
                                              '#f
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _%hd124770%_
                                                  '2
                                                  '#f
                                                  '#f))
                                                (__hash-put!
                                                 _%deps124740%_
                                                 (##unchecked-structure-ref
                                                  _%hd124770%_
                                                  '1
                                                  '#f
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_%$e124774%_
                                                 (##structure-instance-of?
                                                  _%hd124770%_
                                                  'gx#module-context::t)))
                                            (if _%$e124774%_
                                                _%$e124774%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _%stx124715%_
                                                 _%hd124770%_)))))
                                  (_%lp124743%_
                                   _%rest124769%_
                                   (cons _%hd124770%_ _%body124746%_)))))
                          (if (##pair? _%rest124747124755%_)
                              (let ((_%hd124752124781%_
                                     (##car _%rest124747124755%_))
                                    (_%tl124753124783%_
                                     (##cdr _%rest124747124755%_)))
                                (let* ((_%hd124786%_ _%hd124752124781%_)
                                       (_%rest124788%_ _%tl124753124783%_))
                                  (_%K124751124778%_
                                   _%rest124788%_
                                   _%hd124786%_)))
                              (_%else124749124766%_)))))))
                 (_%expanded-import?124725%_
                  (lambda (_%e124729%_)
                    (let ((_%$e124731%_
                           (##structure-direct-instance-of?
                            _%e124729%_
                            'gx#import-set::t)))
                      (if _%$e124731%_
                          _%$e124731%_
                          (let ((_%$e124734%_
                                 (##structure-direct-instance-of?
                                  _%e124729%_
                                  'gx#module-import::t)))
                            (if _%$e124734%_
                                _%$e124734%_
                                (##structure-instance-of?
                                 _%e124729%_
                                 'gx#module-context::t))))))))
          (let ((_%rbody124727%_
                 (gx#core-expand-import/export
                  _%stx124715%_
                  _%expanded-import?124725%_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _%expand1124718%_)))
            (if _%internal-expand?124716%_
                (reverse _%rbody124727%_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_%import!124724%_ _%rbody124727%_))
                 (gx#stx-source _%stx124715%_)))))))
    (define gx#core-expand-import%__0
      (lambda (_%stx125054%_)
        (let ((_%internal-expand?125056%_ '#f))
          (gx#core-expand-import%__%
           _%stx125054%_
           _%internal-expand?125056%_))))
    (define gx#core-expand-import%
      (lambda _g127707_
        (let ((_g127706_ (##length _g127707_)))
          (cond ((##fx= _g127706_ 1)
                 (apply gx#core-expand-import%__0 _g127707_))
                ((##fx= _g127706_ 2)
                 (apply gx#core-expand-import%__% _g127707_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g127707_))))))
    (define gx#core-import-nested-module
      (lambda (_%spath124642%_ _%where124643%_)
        (let* ((_%e124644124651%_ _%spath124642%_)
               (_%E124646124655%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124644124651%_)))
               (_%E124645124710%_
                (lambda ()
                  (if (gx#stx-pair? _%e124644124651%_)
                      (let ((_%e124647124659%_
                             (gx#syntax-e _%e124644124651%_)))
                        (let ((_%hd124648124662%_ (##car _%e124647124659%_))
                              (_%tl124649124664%_ (##cdr _%e124647124659%_)))
                          (let* ((_%origin124667%_ _%hd124648124662%_)
                                 (_%sub124669%_ _%tl124649124664%_)
                                 (_%origin-ctx124671%_
                                  (if (gx#stx-false? _%origin124667%_)
                                      (gx#current-expander-context)
                                      (gx#import-module__0 _%origin124667%_))))
                            (let _%lp124673%_ ((_%rest124675%_ _%sub124669%_)
                                               (_%ctx124676%_
                                                _%origin-ctx124671%_))
                              (let* ((_%e124677124684%_ _%rest124675%_)
                                     (_%E124679124688%_
                                      (lambda () _%ctx124676%_))
                                     (_%E124678124706%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e124677124684%_)
                                            (let ((_%e124680124692%_
                                                   (gx#syntax-e
                                                    _%e124677124684%_)))
                                              (let ((_%hd124681124695%_
                                                     (##car _%e124680124692%_))
                                                    (_%tl124682124697%_
                                                     (##cdr _%e124680124692%_)))
                                                (let* ((_%id124700%_
                                                        _%hd124681124695%_)
                                                       (_%rest124702%_
                                                        _%tl124682124697%_)
                                                       (_%bind124704%_
                                                        (gx#resolve-identifier__%
                                                         _%id124700%_
                                                         '0
                                                         _%ctx124676%_)))
                                                  (if (and (##structure-direct-instance-of?
                                                            _%bind124704%_
                                                            'gx#syntax-binding::t)
                                                           (##structure-instance-of?
                                                            (##unchecked-structure-ref
                                                             _%bind124704%_
                                                             '4
                                                             '#f
                                                             '#f)
                                                            'gx#module-context::t))
                                                      '#!void
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; not bound as module"
                                                       _%where124643%_
                                                       _%spath124642%_
                                                       _%id124700%_))
                                                  (_%lp124673%_
                                                   _%rest124702%_
                                                   (##unchecked-structure-ref
                                                    _%bind124704%_
                                                    '4
                                                    '#f
                                                    '#f)))))
                                            (_%E124679124688%_)))))
                                (_%E124678124706%_))))))
                      (_%E124646124655%_)))))
          (_%E124645124710%_))))
    (define gx#core-expand-import-source
      (lambda (_%hd124640%_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _%hd124640%_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_%stx124134%_ _%internal-expand?124135%_)
        (letrec* ((_%make-export__127635127636%_
                   (lambda (_%bind124588%_
                            _%phi124589%_
                            _%ctx124590%_
                            _%name124591%_)
                     (let* ((_%key124593%_
                             (##unchecked-structure-ref
                              _%bind124588%_
                              '2
                              '#f
                              '#f))
                            (_%export-key124595%_
                             (if _%name124591%_
                                 (gx#core-identifier-key _%name124591%_)
                                 _%key124593%_)))
                       (##structure
                        gx#module-export::t
                        _%ctx124590%_
                        _%key124593%_
                        _%phi124589%_
                        _%export-key124595%_
                        (let ((_%$e124598%_
                               (##structure-instance-of?
                                _%bind124588%_
                                'gx#extern-binding::t)))
                          (if _%$e124598%_
                              _%$e124598%_
                              (##structure-direct-instance-of?
                               _%bind124588%_
                               'gx#import-binding::t)))))))
                  (_%make-export__0__127637127640%_
                   (lambda (_%bind124604%_)
                     (let* ((_%phi124606%_ (gx#current-export-expander-phi))
                            (_%ctx124608%_ (gx#current-expander-context))
                            (_%name124610%_ '#f))
                       (_%make-export__127635127636%_
                        _%bind124604%_
                        _%phi124606%_
                        _%ctx124608%_
                        _%name124610%_))))
                  (_%make-export__1__127638127641%_
                   (lambda (_%bind124612%_ _%phi124613%_)
                     (let* ((_%ctx124615%_ (gx#current-expander-context))
                            (_%name124617%_ '#f))
                       (_%make-export__127635127636%_
                        _%bind124612%_
                        _%phi124613%_
                        _%ctx124615%_
                        _%name124617%_))))
                  (_%make-export__2__127639127642%_
                   (lambda (_%bind124619%_ _%phi124620%_ _%ctx124621%_)
                     (let ((_%name124623%_ '#f))
                       (_%make-export__127635127636%_
                        _%bind124619%_
                        _%phi124620%_
                        _%ctx124621%_
                        _%name124623%_))))
                  (_%make-export124137%_
                   (lambda _g127709_
                     (let ((_g127708_ (##length _g127709_)))
                       (cond ((##fx= _g127708_ 1)
                              (apply _%make-export__0__127637127640%_
                                     _g127709_))
                             ((##fx= _g127708_ 2)
                              (apply _%make-export__1__127638127641%_
                                     _g127709_))
                             ((##fx= _g127708_ 3)
                              (apply _%make-export__2__127639127642%_
                                     _g127709_))
                             ((##fx= _g127708_ 4)
                              (apply _%make-export__127635127636%_ _g127709_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g127709_))))))
                  (_%expand1124138%_
                   (lambda (_%hd124293%_
                            _%K124294%_
                            _%rest124295%_
                            _%r124296%_)
                     (let* ((_%e124297124329%_ _%hd124293%_)
                            (_%E124324124333%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _%stx124134%_
                                _%hd124293%_)))
                            (_%E124314124417%_
                             (lambda ()
                               (if (gx#stx-pair? _%e124297124329%_)
                                   (let ((_%e124325124337%_
                                          (gx#syntax-e _%e124297124329%_)))
                                     (let ((_%hd124326124340%_
                                            (##car _%e124325124337%_))
                                           (_%tl124327124342%_
                                            (##cdr _%e124325124337%_)))
                                       (if (eq? (gx#stx-e _%hd124326124340%_)
                                                'import:)
                                           (let ((_%in124345%_
                                                  _%tl124327124342%_))
                                             (if (gx#stx-list? _%in124345%_)
                                                 (let _%lp124347%_ ((_%in-rest124349%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%in124345%_)
                            (_%r124350%_ _%r124296%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%e124351124358%_
                                                           _%in-rest124349%_)
                                                          (_%E124353124362%_
                                                           (lambda ()
                                                             (_%K124294%_
                                                              _%rest124295%_
                                                              _%r124350%_)))
                                                          (_%E124352124413%_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%e124351124358%_)
                         (let ((_%e124354124366%_
                                (gx#syntax-e _%e124351124358%_)))
                           (let ((_%hd124355124369%_ (##car _%e124354124366%_))
                                 (_%tl124356124371%_
                                  (##cdr _%e124354124366%_)))
                             (let* ((_%hd124374%_ _%hd124355124369%_)
                                    (_%in-rest124376%_ _%tl124356124371%_)
                                    (_%src124411%_
                                     (if (gx#core-bound-module? _%hd124374%_)
                                         (gx#syntax-local-e__0 _%hd124374%_)
                                         (if (gx#core-library-module-path?
                                              _%hd124374%_)
                                             (gx#import-module__0
                                              (gx#core-resolve-library-module-path
                                               _%hd124374%_))
                                             (if (gx#core-library-relative-module-path?
                                                  _%hd124374%_)
                                                 (gx#import-module__0
                                                  (gx#core-resolve-library-relative-module-path
                                                   _%hd124374%_))
                                                 (if (gx#stx-string?
                                                      _%hd124374%_)
                                                     (gx#import-module__0
                                                      (gx#core-resolve-module-path__%
                                                       _%hd124374%_
                                                       (gx#stx-source
                                                        _%stx124134%_)))
                                                     (let* ((_%e124382124389%_
                                                             _%hd124374%_)
                                                            (_%E124384124393%_
                                                             (lambda ()
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; illegal re-export"
                                                                _%stx124134%_
                                                                _%hd124374%_)))
                                                            (_%E124383124407%_
                                                             (lambda ()
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%e124382124389%_)
                           (let ((_%e124385124397%_
                                  (gx#syntax-e _%e124382124389%_)))
                             (let ((_%hd124386124400%_
                                    (##car _%e124385124397%_))
                                   (_%tl124387124402%_
                                    (##cdr _%e124385124397%_)))
                               (if (eq? (gx#stx-e _%hd124386124400%_) 'in:)
                                   (let ((_%spath124405%_ _%tl124387124402%_))
                                     (gx#core-import-nested-module
                                      _%spath124405%_
                                      _%stx124134%_))
                                   (_%E124384124393%_))))
                           (_%E124384124393%_)))))
               (_%E124383124407%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (_%lp124347%_
                                _%in-rest124376%_
                                (_%export-imports124139%_
                                 _%src124411%_
                                 _%r124350%_)))))
                         (_%E124353124362%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E124352124413%_)))
                                                 (_%E124324124333%_)))
                                           (_%E124324124333%_))))
                                   (_%E124324124333%_))))
                            (_%E124301124457%_
                             (lambda ()
                               (if (gx#stx-pair? _%e124297124329%_)
                                   (let ((_%e124315124421%_
                                          (gx#syntax-e _%e124297124329%_)))
                                     (let ((_%hd124316124424%_
                                            (##car _%e124315124421%_))
                                           (_%tl124317124426%_
                                            (##cdr _%e124315124421%_)))
                                       (if (eq? (gx#stx-e _%hd124316124424%_)
                                                'rename:)
                                           (if (gx#stx-pair?
                                                _%tl124317124426%_)
                                               (let ((_%e124318124429%_
                                                      (gx#syntax-e
                                                       _%tl124317124426%_)))
                                                 (let ((_%hd124319124432%_
                                                        (##car _%e124318124429%_))
                                                       (_%tl124320124434%_
                                                        (##cdr _%e124318124429%_)))
                                                   (let ((_%id124437%_
                                                          _%hd124319124432%_))
                                                     (if (gx#stx-pair?
                                                          _%tl124320124434%_)
                                                         (let ((_%e124321124439%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl124320124434%_)))
                   (let ((_%hd124322124442%_ (##car _%e124321124439%_))
                         (_%tl124323124444%_ (##cdr _%e124321124439%_)))
                     (let ((_%name124447%_ _%hd124322124442%_))
                       (if (gx#stx-null? _%tl124323124444%_)
                           (let* ((_%phi124449%_
                                   (gx#current-export-expander-phi))
                                  (_%$e124451%_
                                   (gx#core-resolve-identifier__1
                                    _%id124437%_
                                    _%phi124449%_)))
                             (if _%$e124451%_
                                 ((lambda (_%bind124454%_)
                                    (_%K124294%_
                                     _%rest124295%_
                                     (cons (_%make-export__127635127636%_
                                            _%bind124454%_
                                            _%phi124449%_
                                            (gx#current-expander-context)
                                            _%name124447%_)
                                           _%r124296%_)))
                                  _%$e124451%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Reference to unbound identifier"
                                  _%stx124134%_
                                  _%hd124293%_
                                  _%id124437%_)))
                           (_%E124314124417%_)))))
                 (_%E124314124417%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E124314124417%_))
                                           (_%E124314124417%_))))
                                   (_%E124314124417%_))))
                            (_%E124300124507%_
                             (lambda ()
                               (if (gx#stx-pair? _%e124297124329%_)
                                   (let ((_%e124302124461%_
                                          (gx#syntax-e _%e124297124329%_)))
                                     (let ((_%hd124303124464%_
                                            (##car _%e124302124461%_))
                                           (_%tl124304124466%_
                                            (##cdr _%e124302124461%_)))
                                       (if (eq? (gx#stx-e _%hd124303124464%_)
                                                'spec:)
                                           (if (gx#stx-pair?
                                                _%tl124304124466%_)
                                               (let ((_%e124305124469%_
                                                      (gx#syntax-e
                                                       _%tl124304124466%_)))
                                                 (let ((_%hd124306124472%_
                                                        (##car _%e124305124469%_))
                                                       (_%tl124307124474%_
                                                        (##cdr _%e124305124469%_)))
                                                   (let ((_%phi124477%_
                                                          _%hd124306124472%_))
                                                     (if (gx#stx-pair?
                                                          _%tl124307124474%_)
                                                         (let ((_%e124308124479%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl124307124474%_)))
                   (let ((_%hd124309124482%_ (##car _%e124308124479%_))
                         (_%tl124310124484%_ (##cdr _%e124308124479%_)))
                     (let ((_%id124487%_ _%hd124309124482%_))
                       (if (gx#stx-pair? _%tl124310124484%_)
                           (let ((_%e124311124489%_
                                  (gx#syntax-e _%tl124310124484%_)))
                             (let ((_%hd124312124492%_
                                    (##car _%e124311124489%_))
                                   (_%tl124313124494%_
                                    (##cdr _%e124311124489%_)))
                               (let ((_%name124497%_ _%hd124312124492%_))
                                 (if (gx#stx-null? _%tl124313124494%_)
                                     (if (and (gx#stx-fixnum? _%phi124477%_)
                                              (gx#identifier? _%id124487%_)
                                              (gx#identifier? _%name124497%_))
                                         (let* ((_%phi124499%_
                                                 (gx#stx-e _%phi124477%_))
                                                (_%$e124501%_
                                                 (gx#core-resolve-identifier__1
                                                  _%id124487%_
                                                  _%phi124499%_)))
                                           (if _%$e124501%_
                                               ((lambda (_%bind124504%_)
                                                  (_%K124294%_
                                                   _%rest124295%_
                                                   (cons (_%make-export__127635127636%_
                                                          _%bind124504%_
                                                          _%phi124499%_
                                                          (gx#current-expander-context)
                                                          _%name124497%_)
                                                         _%r124296%_)))
                                                _%$e124501%_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _%stx124134%_
                                                _%hd124293%_
                                                _%id124487%_)))
                                         (_%E124301124457%_))
                                     (_%E124301124457%_)))))
                           (_%E124301124457%_)))))
                 (_%E124301124457%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E124301124457%_))
                                           (_%E124301124457%_))))
                                   (_%E124301124457%_))))
                            (_%E124299124519%_
                             (lambda ()
                               (let ((_%id124511%_ _%e124297124329%_))
                                 (if (gx#identifier? _%id124511%_)
                                     (let ((_%$e124513%_
                                            (gx#core-resolve-identifier__1
                                             _%id124511%_
                                             (gx#current-export-expander-phi))))
                                       (if _%$e124513%_
                                           ((lambda (_%bind124516%_)
                                              (_%K124294%_
                                               _%rest124295%_
                                               (cons (_%make-export__0__127637127640%_
                                                      _%bind124516%_)
                                                     _%r124296%_)))
                                            _%$e124513%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _%stx124134%_
                                            _%hd124293%_)))
                                     (_%E124300124507%_)))))
                            (_%E124298124583%_
                             (lambda ()
                               (if (eq? (gx#stx-e _%e124297124329%_) '#t)
                                   (let* ((_%current-ctx124523%_
                                           (gx#current-expander-context))
                                          (_%current-phi124525%_
                                           (gx#current-export-expander-phi))
                                          (_%phi-ctx124527%_
                                           (gx#core-context-shift
                                            _%current-ctx124523%_
                                            _%current-phi124525%_))
                                          (_%phi-bind124529%_
                                           (hash->list
                                            (##unchecked-structure-ref
                                             _%phi-ctx124527%_
                                             '2
                                             '#f
                                             '#f))))
                                     (let _%lp124532%_ ((_%bind-rest124534%_
                                                         _%phi-bind124529%_)
                                                        (_%set124535%_ '()))
                                       (let* ((_%bind-rest124536124546%_
                                               _%bind-rest124534%_)
                                              (_%else124538124554%_
                                               (lambda ()
                                                 (_%K124294%_
                                                  _%rest124295%_
                                                  (cons (##structure
                                                         gx#export-set::t
                                                         '#f
                                                         _%current-phi124525%_
                                                         _%set124535%_)
                                                        _%r124296%_))))
                                              (_%K124540124564%_
                                               (lambda (_%bind-rest124557%_
                                                        _%bind124558%_
                                                        _%key124559%_)
                                                 (if (or (##structure-direct-instance-of?
                                                          _%bind124558%_
                                                          'gx#import-binding::t)
                                                         (gx#private-feature-binding?
                                                          _%bind124558%_))
                                                     (_%lp124532%_
                                                      _%bind-rest124557%_
                                                      _%set124535%_)
                                                     (_%lp124532%_
                                                      _%bind-rest124557%_
                                                      (cons (_%make-export__2__127639127642%_
                                                             _%bind124558%_
                                                             _%current-phi124525%_
                                                             _%current-ctx124523%_)
                                                            _%set124535%_))))))
                                         (if (##pair? _%bind-rest124536124546%_)
                                             (let ((_%hd124541124567%_
                                                    (##car _%bind-rest124536124546%_))
                                                   (_%tl124542124569%_
                                                    (##cdr _%bind-rest124536124546%_)))
                                               (if (##pair? _%hd124541124567%_)
                                                   (let ((_%hd124543124572%_
                                                          (##car _%hd124541124567%_))
                                                         (_%tl124544124574%_
                                                          (##cdr _%hd124541124567%_)))
                                                     (let* ((_%key124577%_
                                                             _%hd124543124572%_)
                                                            (_%bind124579%_
                                                             _%tl124544124574%_)
                                                            (_%bind-rest124581%_
                                                             _%tl124542124569%_))
                                                       (_%K124540124564%_
                                                        _%bind-rest124581%_
                                                        _%bind124579%_
                                                        _%key124577%_)))
                                                   (_%else124538124554%_)))
                                             (_%else124538124554%_)))))
                                   (_%E124299124519%_)))))
                       (_%E124298124583%_))))
                  (_%export-imports124139%_
                   (lambda (_%src124169%_ _%r124170%_)
                     (letrec* ((_%current-ctx124172%_
                                (gx#current-expander-context))
                               (_%current-phi124173%_
                                (gx#current-export-expander-phi))
                               (_%import->export124174%_
                                (lambda (_%in124255%_)
                                  (let* ((_%in124256124264%_ _%in124255%_)
                                         (_%E124258124268%_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _%in124256124264%_
                                                   '((module-import
                                                      out
                                                      key
                                                      phi)))
                                            '#!void))
                                         (_%K124259124275%_
                                          (lambda (_%phi124271%_
                                                   _%key124272%_
                                                   _%out124273%_)
                                            (##structure
                                             gx#module-export::t
                                             _%current-ctx124172%_
                                             _%key124272%_
                                             _%phi124271%_
                                             _%key124272%_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _%in124256124264%_
                                         'gx#module-import::t)
                                        (let* ((_%e124260124278%_
                                                (##unchecked-structure-ref
                                                 _%in124256124264%_
                                                 '1
                                                 '#f
                                                 '#f))
                                               (_%out124281%_
                                                _%e124260124278%_)
                                               (_%e124261124283%_
                                                (##unchecked-structure-ref
                                                 _%in124256124264%_
                                                 '2
                                                 '#f
                                                 '#f))
                                               (_%key124286%_
                                                _%e124261124283%_)
                                               (_%e124262124288%_
                                                (##unchecked-structure-ref
                                                 _%in124256124264%_
                                                 '3
                                                 '#f
                                                 '#f))
                                               (_%phi124291%_
                                                _%e124262124288%_))
                                          (_%K124259124275%_
                                           _%phi124291%_
                                           _%key124286%_
                                           _%out124281%_))
                                        (_%E124258124268%_)))))
                               (_%fold-e124175%_
                                (lambda (_%in124177%_ _%r124178%_)
                                  (let* ((_%in124179124193%_ _%in124177%_)
                                         (_%else124182124201%_
                                          (lambda () _%r124178%_)))
                                    (let ((_%K124188124237%_
                                           (lambda (_%phi124233%_
                                                    _%key124234%_
                                                    _%out124235%_)
                                             (if (and (fx= _%phi124233%_
                                                           _%current-phi124173%_)
                                                      (eq? _%src124169%_
                                                           (##unchecked-structure-ref
                                                            _%out124235%_
                                                            '1
                                                            '#f
                                                            '#f)))
                                                 (cons (_%import->export124174%_
                                                        _%in124177%_)
                                                       _%r124178%_)
                                                 _%r124178%_)))
                                          (_%K124184124212%_
                                           (lambda (_%imports124205%_
                                                    _%phi124206%_
                                                    _%ctx124207%_)
                                             (if (and (fx= _%phi124206%_
                                                           _%current-phi124173%_)
                                                      (eq? _%src124169%_
                                                           _%ctx124207%_))
                                                 (__foldl1
                                                  (lambda (_%in124209%_
                                                           _%r124210%_)
                                                    (cons (_%import->export124174%_
                                                           _%in124209%_)
                                                          _%r124210%_))
                                                  _%r124178%_
                                                  _%imports124205%_)
                                                 _%r124178%_))))
                                      (let ((_%try-match124181124230%_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _%in124179124193%_
                                                    'gx#import-set::t)
                                                   (let* ((_%e124185124215%_
                                                           (##unchecked-structure-ref
                                                            _%in124179124193%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                          (_%e124186124220%_
                                                           (##unchecked-structure-ref
                                                            _%in124179124193%_
                                                            '2
                                                            '#f
                                                            '#f))
                                                          (_%e124187124225%_
                                                           (##unchecked-structure-ref
                                                            _%in124179124193%_
                                                            '3
                                                            '#f
                                                            '#f)))
                                                     (let ((_%ctx124218%_
                                                            _%e124185124215%_)
                                                           (_%phi124223%_
                                                            _%e124186124220%_)
                                                           (_%imports124228%_
                                                            _%e124187124225%_))
                                                       (_%K124184124212%_
                                                        _%imports124228%_
                                                        _%phi124223%_
                                                        _%ctx124218%_)))
                                                   (_%else124182124201%_)))))
                                        (if (##structure-direct-instance-of?
                                             _%in124179124193%_
                                             'gx#module-import::t)
                                            (let* ((_%e124189124240%_
                                                    (##unchecked-structure-ref
                                                     _%in124179124193%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                   (_%e124190124245%_
                                                    (##unchecked-structure-ref
                                                     _%in124179124193%_
                                                     '2
                                                     '#f
                                                     '#f))
                                                   (_%e124191124250%_
                                                    (##unchecked-structure-ref
                                                     _%in124179124193%_
                                                     '3
                                                     '#f
                                                     '#f)))
                                              (let ((_%out124243%_
                                                     _%e124189124240%_)
                                                    (_%key124248%_
                                                     _%e124190124245%_)
                                                    (_%phi124253%_
                                                     _%e124191124250%_))
                                                (_%K124188124237%_
                                                 _%phi124253%_
                                                 _%key124248%_
                                                 _%out124243%_)))
                                            (_%try-match124181124230%_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _%src124169%_
                              _%current-phi124173%_
                              (__foldl1
                               _%fold-e124175%_
                               '()
                               (##unchecked-structure-ref
                                _%current-ctx124172%_
                                '8
                                '#f
                                '#f)))
                             _%r124170%_))))
                  (_%export!124140%_
                   (lambda (_%rbody124156%_)
                     (letrec* ((_%current-ctx124158%_
                                (gx#current-expander-context))
                               (_%fold-e124159%_
                                (lambda (_%out124163%_ _%r124164%_)
                                  (if (##structure-direct-instance-of?
                                       _%out124163%_
                                       'gx#module-export::t)
                                      (cons _%out124163%_ _%r124164%_)
                                      (if (##structure-direct-instance-of?
                                           _%out124163%_
                                           'gx#export-set::t)
                                          (__foldl1
                                           cons
                                           _%r124164%_
                                           (##unchecked-structure-ref
                                            _%out124163%_
                                            '3
                                            '#f
                                            '#f))
                                          _%r124164%_)))))
                       (let ((_%body124161%_ (reverse _%rbody124156%_)))
                         (##unchecked-structure-set!
                          _%current-ctx124158%_
                          (__foldl1
                           _%fold-e124159%_
                           (##unchecked-structure-ref
                            _%current-ctx124158%_
                            '9
                            '#f
                            '#f)
                           _%body124161%_)
                          '9
                          '#f
                          '#f)
                         _%body124161%_))))
                  (_%expanded-export?124141%_
                   (lambda (_%e124151%_)
                     (let ((_%$e124153%_
                            (##structure-direct-instance-of?
                             _%e124151%_
                             'gx#module-export::t)))
                       (if _%$e124153%_
                           _%$e124153%_
                           (##structure-direct-instance-of?
                            _%e124151%_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _%internal-expand?124135%_)
              (let ((_%rbody124147%_
                     (gx#core-expand-import/export
                      _%stx124134%_
                      _%expanded-export?124141%_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _%expand1124138%_)))
                (if _%internal-expand?124135%_
                    (reverse _%rbody124147%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons
                      '%#export
                      (_%export!124140%_ _%rbody124147%_))
                     (gx#stx-source _%stx124134%_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _%stx124134%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _%stx124134%_))))))
    (define gx#core-expand-export%__0
      (lambda (_%stx124633%_)
        (let ((_%internal-expand?124635%_ '#f))
          (gx#core-expand-export%__%
           _%stx124633%_
           _%internal-expand?124635%_))))
    (define gx#core-expand-export%
      (lambda _g127711_
        (let ((_g127710_ (##length _g127711_)))
          (cond ((##fx= _g127710_ 1)
                 (apply gx#core-expand-export%__0 _g127711_))
                ((##fx= _g127710_ 2)
                 (apply gx#core-expand-export%__% _g127711_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g127711_))))))
    (define gx#core-expand-export-source
      (lambda (_%hd124131%_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _%hd124131%_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_%stx124101%_)
        (let* ((_%e124102124109%_ _%stx124101%_)
               (_%E124104124113%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124102124109%_)))
               (_%E124103124127%_
                (lambda ()
                  (if (gx#stx-pair? _%e124102124109%_)
                      (let ((_%e124105124117%_
                             (gx#syntax-e _%e124102124109%_)))
                        (let ((_%hd124106124120%_ (##car _%e124105124117%_))
                              (_%tl124107124122%_ (##cdr _%e124105124117%_)))
                          (let ((_%body124125%_ _%tl124107124122%_))
                            (if (gx#identifier-list? _%body124125%_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _%body124125%_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _%body124125%_))
                                   (gx#stx-source _%stx124101%_)))
                                (_%E124104124113%_)))))
                      (_%E124104124113%_)))))
          (_%E124103124127%_))))
    (define gx#core-bind-feature!__%
      (lambda (_%id124067%_ _%private?124068%_ _%phi124069%_ _%ctx124070%_)
        (gx#core-bind-syntax!__%
         _%id124067%_
         ((if _%private?124068%_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _%id124067%_))
         _%private?124068%_
         _%phi124069%_
         _%ctx124070%_)))
    (define gx#core-bind-feature!__0
      (lambda (_%id124075%_)
        (let* ((_%private?124077%_ '#f)
               (_%phi124079%_ (gx#current-expander-phi))
               (_%ctx124081%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id124075%_
           _%private?124077%_
           _%phi124079%_
           _%ctx124081%_))))
    (define gx#core-bind-feature!__1
      (lambda (_%id124083%_ _%private?124084%_)
        (let* ((_%phi124086%_ (gx#current-expander-phi))
               (_%ctx124088%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id124083%_
           _%private?124084%_
           _%phi124086%_
           _%ctx124088%_))))
    (define gx#core-bind-feature!__2
      (lambda (_%id124090%_ _%private?124091%_ _%phi124092%_)
        (let ((_%ctx124094%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id124090%_
           _%private?124091%_
           _%phi124092%_
           _%ctx124094%_))))
    (define gx#core-bind-feature!
      (lambda _g127713_
        (let ((_g127712_ (##length _g127713_)))
          (cond ((##fx= _g127712_ 1)
                 (apply gx#core-bind-feature!__0 _g127713_))
                ((##fx= _g127712_ 2)
                 (apply gx#core-bind-feature!__1 _g127713_))
                ((##fx= _g127712_ 3)
                 (apply gx#core-bind-feature!__2 _g127713_))
                ((##fx= _g127712_ 4)
                 (apply gx#core-bind-feature!__% _g127713_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g127713_))))))))
