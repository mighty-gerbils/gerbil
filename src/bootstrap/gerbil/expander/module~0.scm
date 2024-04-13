(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1713001408)
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
      (lambda _%$args127299%_
        (apply make-instance gx#module-import::t _%$args127299%_)))
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
      (lambda _%$args127296%_
        (apply make-instance gx#module-export::t _%$args127296%_)))
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
      (lambda _%$args127293%_
        (apply make-instance gx#import-set::t _%$args127293%_)))
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
      (lambda _%$args127290%_
        (apply make-instance gx#export-set::t _%$args127290%_)))
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
      (lambda _%$args127287%_
        (apply make-instance gx#import-expander::t _%$args127287%_)))
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
      (lambda _%$args127284%_
        (apply make-instance gx#export-expander::t _%$args127284%_)))
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
      (lambda _%$args127281%_
        (apply make-instance gx#import-export-expander::t _%$args127281%_)))
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
      (lambda (_%path127278%_ _%fun127279%_)
        (call-with-input-file
         (cons 'path: (cons _%path127278%_ gx#source-file-settings))
         _%fun127279%_)))
    (define gx#module-context:::init!
      (lambda (_%self123730127259%_
               _%id127261%_
               _%super127262%_
               _%ns127263%_
               _%path127264%_)
        (let* ((_%self127266%_ _%self123730127259%_)
               (_%self127268%_ _%self127266%_))
          (if (##fx< '11 (##structure-length _%self127268%_))
              (begin
                (##unchecked-structure-set!
                 _%self127268%_
                 _%id127261%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self127268%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self127268%_
                 _%super127262%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self127268%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self127268%_ '#f '5 '#f '#f)
                (##unchecked-structure-set!
                 _%self127268%_
                 _%ns127263%_
                 '6
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self127268%_
                 _%path127264%_
                 '7
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self127268%_ '() '8 '#f '#f)
                (##unchecked-structure-set! _%self127268%_ '() '9 '#f '#f)
                (##unchecked-structure-set! _%self127268%_ '#f '10 '#f '#f)
                (##unchecked-structure-set! _%self127268%_ '#f '11 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self127268%_
                     '11
                     (##vector-length _%self127268%_))))))
    (__bind-method!__%
     gx#module-context::t
     ':init!
     gx#module-context:::init!
     '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_%self123731127090%_ _%ctx127092%_ _%root127093%_)
        (let* ((_%self127095%_ _%self123731127090%_)
               (_%self127097%_ _%self127095%_)
               (_%super127113%_
                (let ((_%$e127107%_ _%root127093%_))
                  (if _%$e127107%_
                      _%$e127107%_
                      (let ((_%$e127110%_ (gx#core-context-root__0)))
                        (if _%$e127110%_
                            _%$e127110%_
                            (let ((__obj127343
                                   (##structure gx#root-context::t '#f '#f)))
                              (let ((__constructor127344
                                     (direct-method-ref
                                      gx#root-context::t
                                      __obj127343
                                      ':init!)))
                                (if __constructor127344
                                    (__constructor127344 __obj127343)
                                    (error '"missing constructor method implementation"
                                           'class:
                                           gx#root-context::t
                                           'method:
                                           ':init!)))
                              __obj127343)))))))
          (if _%ctx127092%_
              (let ((_%id127116%_
                     (##structure-ref
                      _%ctx127092%_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_%path127117%_
                     (##structure-ref
                      _%ctx127092%_
                      '7
                      gx#module-context::t
                      '#f))
                    (_%in127118%_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _%ctx127092%_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_%e127119%_
                     (__make-promise
                      (lambda () (gx#eval-module _%ctx127092%_)))))
                (if (##fx< '8 (##structure-length _%self127097%_))
                    (begin
                      (##unchecked-structure-set!
                       _%self127097%_
                       _%id127116%_
                       '1
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self127097%_
                       (make-hash-table-eq 'size: (##length _%in127118%_))
                       '2
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self127097%_
                       _%super127113%_
                       '3
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self127097%_
                       '#f
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self127097%_
                       '#f
                       '5
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self127097%_
                       _%path127117%_
                       '6
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self127097%_
                       _%in127118%_
                       '7
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self127097%_
                       _%e127119%_
                       '8
                       '#f
                       '#f)
                      '#!void)
                    (error '"struct-instance-init!: too many arguments for struct"
                           _%self127097%_
                           '8
                           (##vector-length _%self127097%_)))
                (##for-each
                 (lambda (_%g127120127122%_)
                   (gx#core-bind-weak-import!__%
                    _%g127120127122%_
                    _%self127097%_))
                 _%in127118%_))
              (if (##fx< '8 (##structure-length _%self127097%_))
                  (begin
                    (##unchecked-structure-set! _%self127097%_ '#f '1 '#f '#f)
                    (##unchecked-structure-set!
                     _%self127097%_
                     (make-hash-table-eq)
                     '2
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self127097%_
                     _%super127113%_
                     '3
                     '#f
                     '#f)
                    (##unchecked-structure-set! _%self127097%_ '#f '4 '#f '#f)
                    (##unchecked-structure-set! _%self127097%_ '#f '5 '#f '#f)
                    (##unchecked-structure-set! _%self127097%_ '#f '6 '#f '#f)
                    (##unchecked-structure-set! _%self127097%_ '() '7 '#f '#f)
                    (##unchecked-structure-set! _%self127097%_ '#f '8 '#f '#f)
                    '#!void)
                  (error '"struct-instance-init!: too many arguments for struct"
                         _%self127097%_
                         '8
                         (##vector-length _%self127097%_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_%self123731127128%_ _%ctx127129%_)
        (let ((_%root127131%_ '#f))
          (gx#prelude-context:::init!__%
           _%self123731127128%_
           _%ctx127129%_
           _%root127131%_))))
    (define gx#prelude-context:::init!
      (lambda _g127350_
        (let ((_g127349_ (##length _g127350_)))
          (cond ((##fx= _g127349_ 2)
                 (apply gx#prelude-context:::init!__0 _g127350_))
                ((##fx= _g127349_ 3)
                 (apply gx#prelude-context:::init!__% _g127350_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g127350_))))))
    (__bind-method!__%
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_%self126964%_ _%e126965%_)
        (if (##fx< '3 (##structure-length _%self126964%_))
            (begin
              (##unchecked-structure-set!
               _%self126964%_
               _%e126965%_
               '1
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self126964%_
               (gx#current-expander-context)
               '2
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self126964%_
               (##fx- (gx#current-expander-phi) '1)
               '3
               '#f
               '#f)
              '#!void)
            (error '"struct-instance-init!: too many arguments for struct"
                   _%self126964%_
                   '3
                   (##vector-length _%self126964%_)))))
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
      (lambda (_%g126590126593%_ _%g126591126595%_)
        (gx#core-apply-user-expander__%
         _%g126590126593%_
         _%g126591126595%_
         'apply-import-expander)))
    (__bind-method!__%
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_%g126461126464%_ _%g126462126466%_)
        (gx#core-apply-user-expander__%
         _%g126461126464%_
         _%g126462126466%_
         'apply-export-expander)))
    (__bind-method!__%
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_%ctx126332%_)
        (let* ((_%path126334%_
                (##structure-ref _%ctx126332%_ '7 gx#module-context::t '#f))
               (_%path126336%_
                (if (pair? _%path126334%_)
                    (##last _%path126334%_)
                    _%path126334%_)))
          (if (string? _%path126336%_) _%path126336%_ '#f))))
    (define gx#import-module__%
      (lambda (_%path126308%_ _%reload?126309%_ _%eval?126310%_)
        (let ((_%ctx126312%_
               ((gx#current-expander-module-import)
                _%path126308%_
                _%reload?126309%_)))
          (if (and _%ctx126312%_ _%eval?126310%_)
              (gx#eval-module _%ctx126312%_)
              '#!void)
          _%ctx126312%_)))
    (define gx#import-module__0
      (lambda (_%path126317%_)
        (let* ((_%reload?126319%_ '#f) (_%eval?126321%_ '#f))
          (gx#import-module__%
           _%path126317%_
           _%reload?126319%_
           _%eval?126321%_))))
    (define gx#import-module__1
      (lambda (_%path126323%_ _%reload?126324%_)
        (let ((_%eval?126326%_ '#f))
          (gx#import-module__%
           _%path126323%_
           _%reload?126324%_
           _%eval?126326%_))))
    (define gx#import-module
      (lambda _g127352_
        (let ((_g127351_ (##length _g127352_)))
          (cond ((##fx= _g127351_ 1) (apply gx#import-module__0 _g127352_))
                ((##fx= _g127351_ 2) (apply gx#import-module__1 _g127352_))
                ((##fx= _g127351_ 3) (apply gx#import-module__% _g127352_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g127352_))))))
    (define gx#eval-module
      (lambda (_%mod126305%_)
        ((gx#current-expander-module-eval) _%mod126305%_)))
    (define gx#core-eval-module
      (lambda (_%obj126285%_)
        (letrec ((_%force-e126287%_
                  (lambda (_%getf126301%_ _%e126302%_)
                    (__call-with-parameters
                     (lambda () (force (_%getf126301%_ _%e126302%_)))
                     gx#current-expander-context
                     _%e126302%_
                     gx#current-expander-phi
                     '0))))
          (let _%recur126289%_ ((_%e126291%_ _%obj126285%_))
            (if (##structure-instance-of? _%e126291%_ 'gx#module-context::t)
                (let ()
                  (let ((_%$e126294%_
                         (gx#core-context-prelude__% _%e126291%_)))
                    (if _%$e126294%_ (_%recur126289%_ _%$e126294%_) '#!void))
                  (_%force-e126287%_ gx#module-context-e _%e126291%_))
                (if (##structure-instance-of?
                     _%e126291%_
                     'gx#prelude-context::t)
                    (_%force-e126287%_ gx#prelude-context-e _%e126291%_)
                    (if (gx#stx-string? _%e126291%_)
                        (_%recur126289%_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _%e126291%_)))
                        (if (gx#core-library-module-path? _%e126291%_)
                            (_%recur126289%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%e126291%_)))
                            (error '"cannot eval module" _%obj126285%_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_%ctx126265%_)
        (let _%lp126267%_ ((_%e126269%_ _%ctx126265%_))
          (if (or (##structure-instance-of? _%e126269%_ 'gx#module-context::t)
                  (##structure-instance-of? _%e126269%_ 'gx#local-context::t))
              (_%lp126267%_ (##unchecked-structure-ref _%e126269%_ '3 '#f '#f))
              (if (##structure-instance-of? _%e126269%_ 'gx#prelude-context::t)
                  _%e126269%_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_%ctx126281%_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _%ctx126281%_))))
    (define gx#core-context-prelude
      (lambda _g127354_
        (let ((_g127353_ (##length _g127354_)))
          (cond ((##fx= _g127353_ 0)
                 (apply gx#core-context-prelude__0 _g127354_))
                ((##fx= _g127353_ 1)
                 (apply gx#core-context-prelude__% _g127354_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g127354_))))))
    (define gx#core-module->prelude-context
      (lambda (_%ctx126256%_)
        (let ((_%$e126258%_ (__hash-get gx#__module-registry _%ctx126256%_)))
          (if _%$e126258%_
              _%$e126258%_
              (let ((_%pre126262%_
                     (let ((__obj127345
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
                        __obj127345
                        _%ctx126256%_)
                       __obj127345)))
                (__hash-put! gx#__module-registry _%ctx126256%_ _%pre126262%_)
                _%pre126262%_)))))
    (define gx#core-import-module__%
      (lambda (_%rpath126128%_ _%reload?126129%_)
        (letrec ((_%import-source126131%_
                  (lambda (_%path126220%_)
                    (if (member _%path126220%_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _%path126220%_)
                        '#!void)
                    (__call-with-parameters
                     (lambda ()
                       (let ((_g127355_ (gx#core-read-module _%path126220%_)))
                         (begin
                           (let ((_g127356_
                                  (if (##values? _g127355_)
                                      (##vector-length _g127355_)
                                      1)))
                             (if (not (##fx= _g127356_ 4))
                                 (error "Context expects 4 values" _g127356_)))
                           (let ((_%pre126223%_ (##vector-ref _g127355_ 0))
                                 (_%id126224%_ (##vector-ref _g127355_ 1))
                                 (_%ns126225%_ (##vector-ref _g127355_ 2))
                                 (_%body126226%_ (##vector-ref _g127355_ 3)))
                             (let* ((_%prelude126236%_
                                     (if (##structure-instance-of?
                                          _%pre126223%_
                                          'gx#prelude-context::t)
                                         _%pre126223%_
                                         (if (##structure-instance-of?
                                              _%pre126223%_
                                              'gx#module-context::t)
                                             (gx#core-module->prelude-context
                                              _%pre126223%_)
                                             (if (string? _%pre126223%_)
                                                 (gx#core-module->prelude-context
                                                  (gx#core-import-module__0
                                                   _%pre126223%_))
                                                 (if (not _%pre126223%_)
                                                     (let ((_%$e126232%_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _%$e126232%_
                                                           _%$e126232%_
                                                           (let ((__obj127346
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
                     (gx#prelude-context:::init!__0 __obj127346 '#f)
                     __obj127346)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error '"cannot import module; unknown prelude"
                                                            _%rpath126128%_
                                                            _%pre126223%_))))))
                                    (_%ctx126238%_
                                     (let ((__obj127347
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
                                        __obj127347
                                        _%id126224%_
                                        _%prelude126236%_
                                        _%ns126225%_
                                        _%path126220%_)
                                       __obj127347))
                                    (_%body126240%_
                                     (gx#core-expand-module-begin
                                      _%body126226%_
                                      _%ctx126238%_))
                                    (_%body126242%_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _%body126240%_)
                                      _%path126220%_
                                      _%ctx126238%_
                                      '())))
                               (##unchecked-structure-set!
                                _%ctx126238%_
                                (__make-promise
                                 (lambda () (gx#eval-syntax* _%body126242%_)))
                                '10
                                '#f
                                '#f)
                               (##unchecked-structure-set!
                                _%ctx126238%_
                                _%body126242%_
                                '11
                                '#f
                                '#f)
                               (__hash-put!
                                gx#__module-registry
                                _%path126220%_
                                _%ctx126238%_)
                               (__hash-put!
                                gx#__module-registry
                                _%id126224%_
                                _%ctx126238%_)
                               _%ctx126238%_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _%path126220%_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_%import-submodule126132%_
                  (lambda (_%rpath126148%_)
                    (let* ((_%rpath126149126156%_ _%rpath126148%_)
                           (_%E126151126160%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%rpath126149126156%_
                                     '([origin . refs]))
                              '#!void))
                           (_%K126152126208%_
                            (lambda (_%refs126163%_ _%origin126164%_)
                              (let ((_%ctx126166%_
                                     (if _%origin126164%_
                                         (gx#core-import-module__%
                                          _%origin126164%_
                                          _%reload?126129%_)
                                         (gx#current-expander-context))))
                                (let _%lp126168%_ ((_%rest126170%_
                                                    _%refs126163%_)
                                                   (_%ctx126171%_
                                                    _%ctx126166%_))
                                  (let* ((_%rest126172126180%_ _%rest126170%_)
                                         (_%else126174126188%_
                                          (lambda () _%ctx126171%_))
                                         (_%K126176126196%_
                                          (lambda (_%rest126191%_ _%id126192%_)
                                            (let ((_%bind126194%_
                                                   (gx#resolve-identifier__%
                                                    _%id126192%_
                                                    '0
                                                    _%ctx126171%_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _%bind126194%_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _%bind126194%_
                                                         '4
                                                         '#f
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_%lp126168%_
                                                   _%rest126191%_
                                                   (##unchecked-structure-ref
                                                    _%bind126194%_
                                                    '4
                                                    '#f
                                                    '#f))
                                                  (error '"cannot import submodule; not bound as a module"
                                                         _%rpath126148%_
                                                         _%id126192%_
                                                         _%bind126194%_))))))
                                    (if (##pair? _%rest126172126180%_)
                                        (let ((_%hd126177126199%_
                                               (##car _%rest126172126180%_))
                                              (_%tl126178126201%_
                                               (##cdr _%rest126172126180%_)))
                                          (let* ((_%id126204%_
                                                  _%hd126177126199%_)
                                                 (_%rest126206%_
                                                  _%tl126178126201%_))
                                            (_%K126176126196%_
                                             _%rest126206%_
                                             _%id126204%_)))
                                        (_%else126174126188%_))))))))
                      (if (##pair? _%rpath126149126156%_)
                          (let ((_%hd126153126211%_
                                 (##car _%rpath126149126156%_))
                                (_%tl126154126213%_
                                 (##cdr _%rpath126149126156%_)))
                            (let* ((_%origin126216%_ _%hd126153126211%_)
                                   (_%refs126218%_ _%tl126154126213%_))
                              (_%K126152126208%_
                               _%refs126218%_
                               _%origin126216%_)))
                          (_%E126151126160%_))))))
          (let ((_%$e126134%_
                 (if (not _%reload?126129%_)
                     (__hash-get gx#__module-registry _%rpath126128%_)
                     '#f)))
            (if _%$e126134%_
                _%$e126134%_
                (if (list? _%rpath126128%_)
                    (_%import-submodule126132%_ _%rpath126128%_)
                    (if (gx#core-library-module-path? _%rpath126128%_)
                        (let ((_%ctx126139%_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _%rpath126128%_)
                                _%reload?126129%_)))
                          (__hash-put!
                           gx#__module-registry
                           _%rpath126128%_
                           _%ctx126139%_)
                          _%ctx126139%_)
                        (let* ((_%npath126142%_
                                (path-normalize _%rpath126128%_))
                               (_%$e126144%_
                                (if (not _%reload?126129%_)
                                    (__hash-get
                                     gx#__module-registry
                                     _%npath126142%_)
                                    '#f)))
                          (if _%$e126144%_
                              _%$e126144%_
                              (_%import-source126131%_
                               _%npath126142%_))))))))))
    (define gx#core-import-module__0
      (lambda (_%rpath126249%_)
        (let ((_%reload?126251%_ '#f))
          (gx#core-import-module__% _%rpath126249%_ _%reload?126251%_))))
    (define gx#core-import-module
      (lambda _g127358_
        (let ((_g127357_ (##length _g127358_)))
          (cond ((##fx= _g127357_ 1)
                 (apply gx#core-import-module__0 _g127358_))
                ((##fx= _g127357_ 2)
                 (apply gx#core-import-module__% _g127358_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g127358_))))))
    (define gx#core-read-module
      (lambda (_%path126117%_)
        (__with-catch
         (lambda (_%exn126119%_)
           (if (and (datum-parsing-exception? _%exn126119%_)
                    (eq? (datum-parsing-exception-filepos _%exn126119%_) '0))
               (gx#core-read-module/lang _%path126117%_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _%path126117%_
                (__call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_%g126121126123%_)
                      (display-exception__% _%exn126119%_ _%g126121126123%_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _%path126117%_)))))
    (define gx#core-read-module/sexp
      (lambda (_%path125969%_)
        (let _%lp125971%_ ((_%body125973%_
                            (read-syntax-from-file _%path125969%_))
                           (_%pre125974%_ '#f)
                           (_%ns125975%_ '#f)
                           (_%pkg125976%_ '#f))
          (let* ((_%e125977126001%_ _%body125973%_)
                 (_%E125993126027%_
                  (lambda ()
                    (let ((_g127359_
                           (if _%pkg125976%_
                               (values _%pre125974%_
                                       _%ns125975%_
                                       _%pkg125976%_)
                               (gx#core-read-module-package
                                _%path125969%_
                                _%pre125974%_
                                _%ns125975%_))))
                      (begin
                        (let ((_g127360_
                               (if (##values? _g127359_)
                                   (##vector-length _g127359_)
                                   1)))
                          (if (not (##fx= _g127360_ 3))
                              (error "Context expects 3 values" _g127360_)))
                        (let ((_%pre126005%_ (##vector-ref _g127359_ 0))
                              (_%ns126006%_ (##vector-ref _g127359_ 1))
                              (_%pkg126007%_ (##vector-ref _g127359_ 2)))
                          (let* ((_%prelude126013%_
                                  (if (gx#core-bound-module-prelude?
                                       _%pre126005%_)
                                      (gx#syntax-local-e__0 _%pre126005%_)
                                      (if (gx#core-library-module-path?
                                           _%pre126005%_)
                                          (gx#core-resolve-library-module-path
                                           _%pre126005%_)
                                          (if (gx#stx-string? _%pre126005%_)
                                              (gx#core-resolve-module-path__%
                                               _%pre126005%_
                                               _%path125969%_)
                                              (gx#stx-e _%pre126005%_)))))
                                 (_%path-id126015%_
                                  (gx#core-module-path->namespace
                                   _%path125969%_))
                                 (_%pkg-id126017%_
                                  (if _%pkg126007%_
                                      (##string-append
                                       _%pkg126007%_
                                       '"/"
                                       _%path-id126015%_)
                                      _%path-id126015%_))
                                 (_%module-id126019%_
                                  (##string->symbol _%pkg-id126017%_))
                                 (_%module-ns126024%_
                                  (if (eq? _%ns126006%_ '#!void)
                                      '#f
                                      (let ((_%$e126021%_ _%ns126006%_))
                                        (if _%$e126021%_
                                            _%$e126021%_
                                            _%pkg-id126017%_)))))
                            (values _%prelude126013%_
                                    _%module-id126019%_
                                    _%module-ns126024%_
                                    _%body125973%_)))))))
                 (_%E125986126059%_
                  (lambda ()
                    (if (gx#stx-pair? _%e125977126001%_)
                        (let ((_%e125994126031%_
                               (gx#syntax-e _%e125977126001%_)))
                          (let ((_%hd125995126034%_ (##car _%e125994126031%_))
                                (_%tl125996126036%_ (##cdr _%e125994126031%_)))
                            (if (eq? (gx#stx-e _%hd125995126034%_) 'package:)
                                (if (gx#stx-pair? _%tl125996126036%_)
                                    (let ((_%e125997126039%_
                                           (gx#syntax-e _%tl125996126036%_)))
                                      (let ((_%hd125998126042%_
                                             (##car _%e125997126039%_))
                                            (_%tl125999126044%_
                                             (##cdr _%e125997126039%_)))
                                        (let* ((_%pkg126047%_
                                                _%hd125998126042%_)
                                               (_%rest126049%_
                                                _%tl125999126044%_)
                                               (_%pkg126057%_
                                                (if (gx#identifier?
                                                     _%pkg126047%_)
                                                    (symbol->string
                                                     (gx#stx-e _%pkg126047%_))
                                                    (if (or (gx#stx-string?
                                                             _%pkg126047%_)
                                                            (gx#stx-false?
                                                             _%pkg126047%_))
                                                        (gx#stx-e
                                                         _%pkg126047%_)
                                                        (gx#raise-syntax-error
                                                         'import
                                                         '"Bad syntax; Illegal package name"
                                                         _%pkg126047%_)))))
                                          (_%lp125971%_
                                           _%rest126049%_
                                           _%pre125974%_
                                           _%ns125975%_
                                           _%pkg126057%_))))
                                    (_%E125993126027%_))
                                (_%E125993126027%_))))
                        (_%E125993126027%_))))
                 (_%E125979126089%_
                  (lambda ()
                    (if (gx#stx-pair? _%e125977126001%_)
                        (let ((_%e125987126063%_
                               (gx#syntax-e _%e125977126001%_)))
                          (let ((_%hd125988126066%_ (##car _%e125987126063%_))
                                (_%tl125989126068%_ (##cdr _%e125987126063%_)))
                            (if (eq? (gx#stx-e _%hd125988126066%_) 'namespace:)
                                (if (gx#stx-pair? _%tl125989126068%_)
                                    (let ((_%e125990126071%_
                                           (gx#syntax-e _%tl125989126068%_)))
                                      (let ((_%hd125991126074%_
                                             (##car _%e125990126071%_))
                                            (_%tl125992126076%_
                                             (##cdr _%e125990126071%_)))
                                        (let* ((_%ns126079%_
                                                _%hd125991126074%_)
                                               (_%rest126081%_
                                                _%tl125992126076%_)
                                               (_%ns126087%_
                                                (if (gx#identifier?
                                                     _%ns126079%_)
                                                    (symbol->string
                                                     (gx#stx-e _%ns126079%_))
                                                    (if (gx#stx-string?
                                                         _%ns126079%_)
                                                        (gx#stx-e _%ns126079%_)
                                                        (if (gx#stx-false?
                                                             _%ns126079%_)
                                                            '#!void
                                                            (gx#raise-syntax-error
                                                             'import
                                                             '"Bad syntax; illegal namespace"
                                                             _%ns126079%_))))))
                                          (_%lp125971%_
                                           _%rest126081%_
                                           _%pre125974%_
                                           _%ns126087%_
                                           _%pkg125976%_))))
                                    (_%E125986126059%_))
                                (_%E125986126059%_))))
                        (_%E125986126059%_))))
                 (_%E125978126113%_
                  (lambda ()
                    (if (gx#stx-pair? _%e125977126001%_)
                        (let ((_%e125980126093%_
                               (gx#syntax-e _%e125977126001%_)))
                          (let ((_%hd125981126096%_ (##car _%e125980126093%_))
                                (_%tl125982126098%_ (##cdr _%e125980126093%_)))
                            (if (eq? (gx#stx-e _%hd125981126096%_) 'prelude:)
                                (if (gx#stx-pair? _%tl125982126098%_)
                                    (let ((_%e125983126101%_
                                           (gx#syntax-e _%tl125982126098%_)))
                                      (let ((_%hd125984126104%_
                                             (##car _%e125983126101%_))
                                            (_%tl125985126106%_
                                             (##cdr _%e125983126101%_)))
                                        (let* ((_%prelude126109%_
                                                _%hd125984126104%_)
                                               (_%rest126111%_
                                                _%tl125985126106%_))
                                          (_%lp125971%_
                                           _%rest126111%_
                                           _%prelude126109%_
                                           _%ns125975%_
                                           _%pkg125976%_))))
                                    (_%E125979126089%_))
                                (_%E125979126089%_))))
                        (_%E125979126089%_)))))
            (_%E125978126113%_)))))
    (define gx#core-read-module/lang
      (lambda (_%path125791%_)
        (letrec ((_%default-read-module-body125793%_
                  (lambda (_%inp125961%_)
                    (let _%lp125963%_ ((_%body125965%_ '()))
                      (let ((_%next125967%_ (read-syntax__% _%inp125961%_)))
                        (if (eof-object? _%next125967%_)
                            (reverse _%body125965%_)
                            (_%lp125963%_
                             (cons _%next125967%_ _%body125965%_)))))))
                 (_%read-body125794%_
                  (lambda (_%inp125879%_
                           _%pre125880%_
                           _%ns125881%_
                           _%pkg125882%_
                           _%args125883%_)
                    (let ((_g127361_
                           (if _%pkg125882%_
                               (values _%pre125880%_
                                       _%ns125881%_
                                       _%pkg125882%_)
                               (gx#core-read-module-package
                                _%path125791%_
                                _%pre125880%_
                                _%ns125881%_))))
                      (begin
                        (let ((_g127362_
                               (if (##values? _g127361_)
                                   (##vector-length _g127361_)
                                   1)))
                          (if (not (##fx= _g127362_ 3))
                              (error "Context expects 3 values" _g127362_)))
                        (let ((_%pre125885%_ (##vector-ref _g127361_ 0))
                              (_%ns125886%_ (##vector-ref _g127361_ 1))
                              (_%pkg125887%_ (##vector-ref _g127361_ 2)))
                          (let* ((_%prelude125889%_
                                  (gx#import-module__0 _%pre125885%_))
                                 (_%read-module-body125944%_
                                  (let ((_%$e125935%_
                                         (__find (lambda (_%e125890125892%_)
                                                   (let* ((_%g125894125904%_
                                                           _%e125890125892%_)
                                                          (_%else125896125912%_
                                                           (lambda () '#f))
                                                          (_%K125898125916%_
                                                           (lambda () '#t)))
                                                     (if (##structure-direct-instance-of?
                                                          _%g125894125904%_
                                                          'gx#module-export::t)
                                                         (let* ((_%e125899125919%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##unchecked-structure-ref
                          _%g125894125904%_
                          '1
                          '#f
                          '#f))
                        (_%e125900125922%_
                         (##unchecked-structure-ref
                          _%g125894125904%_
                          '2
                          '#f
                          '#f))
                        (_%e125901125925%_
                         (##unchecked-structure-ref
                          _%g125894125904%_
                          '3
                          '#f
                          '#f)))
                   (if (##eq? _%e125901125925%_ '1)
                       (let ((_%e125902125928%_
                              (##unchecked-structure-ref
                               _%g125894125904%_
                               '4
                               '#f
                               '#f)))
                         (if ((lambda (_%g125930125932%_)
                                (eq? _%g125930125932%_ 'read-module-body))
                              _%e125902125928%_)
                             (_%K125898125916%_)
                             (_%else125896125912%_)))
                       (_%else125896125912%_)))
                 (_%else125896125912%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (##unchecked-structure-ref
                                                  _%prelude125889%_
                                                  '9
                                                  '#f
                                                  '#f))))
                                    (if _%$e125935%_
                                        ((lambda (_%xport125938%_)
                                           (let ((_%proc125941%_
                                                  (__with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _%xport125938%_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _%proc125941%_)
                                                 _%proc125941%_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _%path125791%_
                                                  _%pre125885%_
                                                  _%proc125941%_))))
                                         _%$e125935%_)
                                        _%default-read-module-body125793%_)))
                                 (_%path-id125946%_
                                  (gx#core-module-path->namespace
                                   _%path125791%_))
                                 (_%pkg-id125948%_
                                  (if _%pkg125887%_
                                      (##string-append
                                       _%pkg125887%_
                                       '"/"
                                       _%path-id125946%_)
                                      _%path-id125946%_))
                                 (_%module-id125950%_
                                  (##string->symbol _%pkg-id125948%_))
                                 (_%module-ns125955%_
                                  (let ((_%$e125952%_ _%ns125886%_))
                                    (if _%$e125952%_
                                        _%$e125952%_
                                        _%pkg-id125948%_)))
                                 (_%body125958%_
                                  (__call-with-parameters
                                   (lambda ()
                                     (_%read-module-body125944%_
                                      _%inp125879%_))
                                   gx#current-module-reader-path
                                   _%path125791%_
                                   gx#current-module-reader-args
                                   _%args125883%_)))
                            (values _%prelude125889%_
                                    _%module-id125950%_
                                    _%module-ns125955%_
                                    _%body125958%_)))))))
                 (_%string-e125795%_
                  (lambda (_%obj125873%_ _%what125874%_)
                    (if (string? _%obj125873%_)
                        _%obj125873%_
                        (if (symbol? _%obj125873%_)
                            (##symbol->string _%obj125873%_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _%what125874%_)
                             _%path125791%_
                             _%obj125873%_)))))
                 (_%read-lang-args125796%_
                  (lambda (_%inp125828%_ _%args125829%_)
                    (let* ((_%args125830125838%_ _%args125829%_)
                           (_%else125832125846%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _%path125791%_)))
                           (_%K125834125861%_
                            (lambda (_%args125849%_ _%prelude125850%_)
                              (let* ((_%pkg125852%_
                                      (pgetq__0 'package: _%args125849%_))
                                     (_%pkg125854%_
                                      (if _%pkg125852%_
                                          (_%string-e125795%_
                                           _%pkg125852%_
                                           '"package")
                                          '#f))
                                     (_%ns125856%_
                                      (pgetq__0 'namespace: _%args125849%_))
                                     (_%ns125858%_
                                      (if _%ns125856%_
                                          (_%string-e125795%_
                                           _%ns125856%_
                                           '"namespace")
                                          '#f)))
                                (_%read-body125794%_
                                 _%inp125828%_
                                 _%prelude125850%_
                                 _%ns125858%_
                                 _%pkg125854%_
                                 _%args125849%_)))))
                      (if (##pair? _%args125830125838%_)
                          (let ((_%hd125835125864%_
                                 (##car _%args125830125838%_))
                                (_%tl125836125866%_
                                 (##cdr _%args125830125838%_)))
                            (let* ((_%prelude125869%_ _%hd125835125864%_)
                                   (_%args125871%_ _%tl125836125866%_))
                              (_%K125834125861%_
                               _%args125871%_
                               _%prelude125869%_)))
                          (_%else125832125846%_)))))
                 (_%read-lang125797%_
                  (lambda (_%inp125802%_)
                    (let* ((_%head125804%_ (read-line _%inp125802%_))
                           (_%$e125806%_
                            (string-index__0 _%head125804%_ '#\space)))
                      (if _%$e125806%_
                          ((lambda (_%ix125809%_)
                             (let ((_%lang125811%_
                                    (substring
                                     _%head125804%_
                                     '0
                                     _%ix125809%_)))
                               (if (equal? _%lang125811%_ '"#lang")
                                   (let* ((_%rest125813%_
                                           (substring
                                            _%head125804%_
                                            (##fx+ _%ix125809%_ '1)
                                            (string-length _%head125804%_)))
                                          (_%args125824%_
                                           (__with-catch
                                            (lambda (_%g125814125816%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _%path125791%_
                                               _%g125814125816%_))
                                            (lambda ()
                                              (call-with-input-string
                                               _%rest125813%_
                                               (lambda (_%g125819125821%_)
                                                 (read-all
                                                  _%g125819125821%_
                                                  read)))))))
                                     (_%read-lang-args125796%_
                                      _%inp125802%_
                                      _%args125824%_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _%path125791%_))))
                           _%$e125806%_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _%path125791%_)))))
                 (_%read-e125798%_
                  (lambda (_%inp125800%_)
                    (if (eq? (peek-char _%inp125800%_) '#\#)
                        (_%read-lang125797%_ _%inp125800%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _%path125791%_)))))
          (gx#call-with-input-source-file _%path125791%_ _%read-e125798%_))))
    (define gx#core-read-module-package
      (lambda (_%path125739%_ _%pre125740%_ _%ns125741%_)
        (letrec ((_%string-e125743%_
                  (lambda (_%e125786%_)
                    (if (symbol? _%e125786%_)
                        (##symbol->string _%e125786%_)
                        (if (string? _%e125786%_)
                            _%e125786%_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%e125786%_))))))
          (let _%lp125745%_ ((_%dir125747%_ (path-directory _%path125739%_))
                             (_%pkg-path125748%_ '()))
            (let ((_%gerbil.pkg125750%_
                   (path-expand '"gerbil.pkg" _%dir125747%_)))
              (if (##file-exists? _%gerbil.pkg125750%_)
                  (let ((_%plist125752%_
                         (gx#core-library-package-plist__% _%dir125747%_ '#t)))
                    (if (null? _%plist125752%_)
                        (let ((_%pkg125755%_
                               (if (null? _%pkg-path125748%_)
                                   '#f
                                   (string-join _%pkg-path125748%_ '"/"))))
                          (values _%pre125740%_ _%ns125741%_ _%pkg125755%_))
                        (if (list? _%plist125752%_)
                            (let* ((_%root125758%_
                                    (pgetq__0 'package: _%plist125752%_))
                                   (_%pkg125762%_
                                    (let ((_%pkg-path125760%_
                                           (if _%root125758%_
                                               (cons (_%string-e125743%_
                                                      _%root125758%_)
                                                     _%pkg-path125748%_)
                                               _%pkg-path125748%_)))
                                      (if (null? _%pkg-path125760%_)
                                          '#f
                                          (string-join
                                           _%pkg-path125760%_
                                           '"/"))))
                                   (_%ns125769%_
                                    (let ((_%ns125767%_
                                           (let ((_%$e125764%_ _%ns125741%_))
                                             (if _%$e125764%_
                                                 _%$e125764%_
                                                 (pgetq__0
                                                  'namespace:
                                                  _%plist125752%_)))))
                                      (if _%ns125767%_
                                          (_%string-e125743%_ _%ns125767%_)
                                          '#f)))
                                   (_%pre125774%_
                                    (let ((_%$e125771%_ _%pre125740%_))
                                      (if _%$e125771%_
                                          _%$e125771%_
                                          (pgetq__0
                                           'prelude:
                                           _%plist125752%_)))))
                              (values _%pre125774%_
                                      _%ns125769%_
                                      _%pkg125762%_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%plist125752%_))))
                  (let ((_%dir*125778%_
                         (path-strip-trailing-directory-separator
                          _%dir125747%_)))
                    (if (or (__string-empty? _%dir*125778%_)
                            (equal? _%dir125747%_ _%dir*125778%_))
                        (values _%pre125740%_ _%ns125741%_ '#f)
                        (let ((_%xpath125783%_
                               (path-strip-directory _%dir*125778%_))
                              (_%xdir125784%_ (path-directory _%dir*125778%_)))
                          (_%lp125745%_
                           _%xdir125784%_
                           (cons _%xpath125783%_ _%pkg-path125748%_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_%path125737%_)
        (path-strip-extension (path-strip-directory _%path125737%_))))
    (define gx#core-module-path->id
      (lambda (_%path125735%_)
        (##string->symbol (gx#core-module-path->namespace _%path125735%_))))
    (define gx#core-resolve-module-path__%
      (lambda (_%stx-path125714%_ _%rel125715%_)
        (let* ((_%path125717%_ (gx#stx-e _%stx-path125714%_))
               (_%path125719%_
                (if (__string-empty? (path-extension _%path125717%_))
                    (##string-append _%path125717%_ '".ss")
                    _%path125717%_)))
          (gx#core-resolve-path__%
           _%path125719%_
           (let ((_%$e125722%_ (gx#stx-source _%stx-path125714%_)))
             (if _%$e125722%_ _%$e125722%_ _%rel125715%_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_%stx-path125728%_)
        (let ((_%rel125730%_ '#f))
          (gx#core-resolve-module-path__% _%stx-path125728%_ _%rel125730%_))))
    (define gx#core-resolve-module-path
      (lambda _g127364_
        (let ((_g127363_ (##length _g127364_)))
          (cond ((##fx= _g127363_ 1)
                 (apply gx#core-resolve-module-path__0 _g127364_))
                ((##fx= _g127363_ 2)
                 (apply gx#core-resolve-module-path__% _g127364_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g127364_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_%libpath125599%_)
        (let* ((_%spath125601%_ (symbol->string (gx#stx-e _%libpath125599%_)))
               (_%spath125603%_
                (substring
                 _%spath125601%_
                 '1
                 (##string-length _%spath125601%_)))
               (_%ext125605%_ (path-extension _%spath125603%_))
               (_%ssi125607%_
                (if (__string-empty? _%ext125605%_)
                    (##string-append _%spath125603%_ '".ssi")
                    (##string-append
                     (path-strip-extension _%spath125603%_)
                     '".ssi")))
               (_%srcs125611%_
                (if (__string-empty? _%ext125605%_)
                    (##map (lambda (_%ext125609%_)
                             (string-append _%spath125603%_ _%ext125609%_))
                           '(".ss" ".sld" ".scm"))
                    (cons _%spath125603%_ '()))))
          (let _%lp125614%_ ((_%rest125616%_ (load-path)))
            (let* ((_%rest125617125626%_ _%rest125616%_)
                   (_%E125620125630%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rest125617125626%_
                             '([dir . rest])
                             '([]))
                      '#!void)))
              (let ((_%K125622125701%_
                     (lambda (_%rest125641%_ _%dir125642%_)
                       (letrec ((_%resolve125644%_
                                 (lambda (_%ssi125657%_ _%srcs125658%_)
                                   (let ((_%compiled-path125660%_
                                          (path-expand
                                           _%ssi125657%_
                                           _%dir125642%_)))
                                     (if (##file-exists?
                                          _%compiled-path125660%_)
                                         (path-normalize
                                          _%compiled-path125660%_)
                                         (let _%lpr125662%_ ((_%rest-src125664%_
                                                              _%srcs125658%_))
                                           (let* ((_%rest-src125665125673%_
                                                   _%rest-src125664%_)
                                                  (_%else125667125681%_
                                                   (lambda ()
                                                     (_%lp125614%_
                                                      _%rest125641%_)))
                                                  (_%K125669125689%_
                                                   (lambda (_%rest-src125684%_
                                                            _%src125685%_)
                                                     (let ((_%src-path125687%_
                                                            (path-expand
                                                             _%src125685%_
                                                             _%dir125642%_)))
                                                       (if (##file-exists?
                                                            _%src-path125687%_)
                                                           (path-normalize
                                                            _%src-path125687%_)
                                                           (_%lpr125662%_
                                                            _%rest-src125684%_))))))
                                             (if (##pair? _%rest-src125665125673%_)
                                                 (let ((_%hd125670125692%_
                                                        (##car _%rest-src125665125673%_))
                                                       (_%tl125671125694%_
                                                        (##cdr _%rest-src125665125673%_)))
                                                   (let* ((_%src125697%_
                                                           _%hd125670125692%_)
                                                          (_%rest-src125699%_
                                                           _%tl125671125694%_))
                                                     (_%K125669125689%_
                                                      _%rest-src125699%_
                                                      _%src125697%_)))
                                                 (_%else125667125681%_)))))))))
                         (let ((_%$e125646%_
                                (gx#core-library-package-path-prefix
                                 _%dir125642%_)))
                           (if _%$e125646%_
                               ((lambda (_%prefix125649%_)
                                  (if (string-prefix?
                                       _%prefix125649%_
                                       _%spath125603%_)
                                      (let ((_%ssi125653%_
                                             (substring
                                              _%ssi125607%_
                                              (string-length _%prefix125649%_)
                                              (##string-length _%ssi125607%_)))
                                            (_%srcs125654%_
                                             (##map (lambda (_%src125651%_)
                                                      (substring
                                                       _%src125651%_
                                                       (string-length
                                                        _%prefix125649%_)
                                                       (string-length
                                                        _%src125651%_)))
                                                    _%srcs125611%_)))
                                        (_%resolve125644%_
                                         _%ssi125653%_
                                         _%srcs125654%_))
                                      (_%lp125614%_ _%rest125641%_)))
                                _%$e125646%_)
                               (_%resolve125644%_
                                _%ssi125607%_
                                _%srcs125611%_))))))
                    (_%K125621125635%_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"cannot find library module"
                        _%libpath125599%_))))
                (let ((_%try-match125619125638%_
                       (lambda ()
                         (if (##null? _%rest125617125626%_)
                             (_%K125621125635%_)
                             (_%E125620125630%_)))))
                  (if (##pair? _%rest125617125626%_)
                      (let ((_%tl125624125706%_ (##cdr _%rest125617125626%_))
                            (_%hd125623125704%_ (##car _%rest125617125626%_)))
                        (let ((_%dir125709%_ _%hd125623125704%_)
                              (_%rest125711%_ _%tl125624125706%_))
                          (_%K125622125701%_ _%rest125711%_ _%dir125709%_)))
                      (_%try-match125619125638%_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_%modpath125567%_)
        (letrec ((_%resolve125569%_
                  (lambda (_%path125590%_ _%base125591%_)
                    (let ((_%$e125593%_
                           (string-rindex__0 _%base125591%_ '#\/)))
                      (if _%$e125593%_
                          ((lambda (_%idx125596%_)
                             (gx#core-resolve-library-module-path
                              (##string->symbol
                               (string-append
                                '":"
                                (substring _%base125591%_ '0 _%idx125596%_)
                                '"/"
                                _%path125590%_))))
                           _%$e125593%_)
                          (gx#core-resolve-library-module-path
                           (##string->symbol
                            (string-append '":" _%path125590%_))))))))
          (let ((_%spath125571%_ (symbol->string (gx#stx-e _%modpath125567%_)))
                (_%mod125572%_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _%mod125572%_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"cannot resolve relative module path; not in module context"
                 _%modpath125567%_))
            (let ((_%mpath125574%_
                   (symbol->string
                    (##structure-ref
                     _%mod125572%_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _%lp125576%_ ((_%spath125578%_ _%spath125571%_)
                                 (_%mpath125579%_ _%mpath125574%_))
                (if (string-prefix? '"../" _%spath125578%_)
                    (let ((_%$e125582%_
                           (string-rindex__0 _%mpath125579%_ '#\/)))
                      (if _%$e125582%_
                          ((lambda (_%idx125585%_)
                             (_%lp125576%_
                              (substring
                               _%spath125578%_
                               '3
                               (string-length _%spath125578%_))
                              (substring _%mpath125579%_ '0 _%idx125585%_)))
                           _%$e125582%_)
                          (gx#raise-syntax-error
                           '#f
                           '"cannot resolve relative module path; illegal traversal"
                           _%modpath125567%_)))
                    (if (string-prefix? '"./" _%spath125578%_)
                        (_%lp125576%_
                         (substring
                          _%spath125578%_
                          '2
                          (string-length _%spath125578%_))
                         _%mpath125579%_)
                        (_%resolve125569%_
                         _%spath125578%_
                         _%mpath125579%_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_%dir125559%_)
        (let ((_%$e125561%_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _%dir125559%_))))
          (if _%$e125561%_
              ((lambda (_%pkg125564%_)
                 (##string-append (symbol->string _%pkg125564%_) '"/"))
               _%$e125561%_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_%dir125529%_ _%exists?125530%_)
        (let ((_%$e125532%_ (__hash-get gx#__module-pkg-cache _%dir125529%_)))
          (if _%$e125532%_
              _%$e125532%_
              (let* ((_%gerbil.pkg125536%_
                      (path-expand '"gerbil.pkg" _%dir125529%_))
                     (_%plist125546%_
                      (if (or _%exists?125530%_
                              (##file-exists? _%gerbil.pkg125536%_))
                          (let ((_%e125541%_
                                 (gx#call-with-input-source-file
                                  _%gerbil.pkg125536%_
                                  read)))
                            (if (eof-object? _%e125541%_)
                                '()
                                (if (list? _%e125541%_)
                                    _%e125541%_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _%gerbil.pkg125536%_
                                     _%e125541%_))))
                          '())))
                (__hash-put!
                 gx#__module-pkg-cache
                 _%dir125529%_
                 _%plist125546%_)
                _%plist125546%_)))))
    (define gx#core-library-package-plist__0
      (lambda (_%dir125552%_)
        (let ((_%exists?125554%_ '#f))
          (gx#core-library-package-plist__% _%dir125552%_ _%exists?125554%_))))
    (define gx#core-library-package-plist
      (lambda _g127366_
        (let ((_g127365_ (##length _g127366_)))
          (cond ((##fx= _g127365_ 1)
                 (apply gx#core-library-package-plist__0 _g127366_))
                ((##fx= _g127365_ 2)
                 (apply gx#core-library-package-plist__% _g127366_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g127366_))))))
    (define gx#core-library-module-path?
      (lambda (_%stx125526%_)
        (gx#core-special-module-path? _%stx125526%_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_%stx125524%_)
        (gx#core-special-module-path? _%stx125524%_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_%stx125519%_ _%char125520%_)
        (if (gx#identifier? _%stx125519%_)
            (if (interned-symbol? (gx#stx-e _%stx125519%_))
                (let ((_%str125522%_
                       (symbol->string (gx#stx-e _%stx125519%_))))
                  (if (##fx> (##string-length _%str125522%_) '1)
                      (eq? (string-ref _%str125522%_ '0) _%char125520%_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_%stx125513%_)
        (gx#core-bound-identifier?__%
         _%stx125513%_
         (lambda (_%g125514125516%_)
           (gx#expander-binding?__% _%g125514125516%_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_%stx125507%_)
        (gx#core-bound-identifier?__%
         _%stx125507%_
         (lambda (_%g125508125510%_)
           (gx#expander-binding?__% _%g125508125510%_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_%stx125494%_)
        (letrec ((_%module-prelude?125496%_
                  (lambda (_%e125502%_)
                    (let ((_%$e125504%_
                           (##structure-instance-of?
                            _%e125502%_
                            'gx#module-context::t)))
                      (if _%$e125504%_
                          _%$e125504%_
                          (##structure-instance-of?
                           _%e125502%_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _%stx125494%_
           (lambda (_%g125497125499%_)
             (gx#expander-binding?__%
              _%g125497125499%_
              _%module-prelude?125496%_))))))
    (define gx#core-bind-import!__%
      (lambda (_%in125424%_ _%ctx125425%_ _%force-weak?125426%_)
        (let* ((_%in125427125436%_ _%in125424%_)
               (_%E125429125440%_
                (lambda ()
                  (error '"No clause matching"
                         _%in125427125436%_
                         '((module-import source key phi weak?)))
                  '#!void))
               (_%K125430125453%_
                (lambda (_%weak?125443%_
                         _%phi125444%_
                         _%key125445%_
                         _%source125446%_)
                  (gx#core-bind!__%
                   _%key125445%_
                   (let ((_%e125448%_
                          (gx#core-resolve-module-export _%source125446%_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref _%e125448%_ '1 '#f '#f)
                      _%key125445%_
                      _%phi125444%_
                      _%e125448%_
                      (##unchecked-structure-ref _%source125446%_ '1 '#f '#f)
                      (let ((_%$e125450%_ _%force-weak?125426%_))
                        (if _%$e125450%_ _%$e125450%_ _%weak?125443%_))))
                   gx#core-context-rebind?
                   _%phi125444%_
                   _%ctx125425%_))))
          (if (##structure-direct-instance-of?
               _%in125427125436%_
               'gx#module-import::t)
              (let* ((_%e125431125456%_
                      (##unchecked-structure-ref
                       _%in125427125436%_
                       '1
                       '#f
                       '#f))
                     (_%source125459%_ _%e125431125456%_)
                     (_%e125432125461%_
                      (##unchecked-structure-ref
                       _%in125427125436%_
                       '2
                       '#f
                       '#f))
                     (_%key125464%_ _%e125432125461%_)
                     (_%e125433125466%_
                      (##unchecked-structure-ref
                       _%in125427125436%_
                       '3
                       '#f
                       '#f))
                     (_%phi125469%_ _%e125433125466%_)
                     (_%e125434125471%_
                      (##unchecked-structure-ref
                       _%in125427125436%_
                       '4
                       '#f
                       '#f))
                     (_%weak?125474%_ _%e125434125471%_))
                (_%K125430125453%_
                 _%weak?125474%_
                 _%phi125469%_
                 _%key125464%_
                 _%source125459%_))
              (_%E125429125440%_)))))
    (define gx#core-bind-import!__0
      (lambda (_%in125479%_)
        (let* ((_%ctx125481%_ (gx#current-expander-context))
               (_%force-weak?125483%_ '#f))
          (gx#core-bind-import!__%
           _%in125479%_
           _%ctx125481%_
           _%force-weak?125483%_))))
    (define gx#core-bind-import!__1
      (lambda (_%in125485%_ _%ctx125486%_)
        (let ((_%force-weak?125488%_ '#f))
          (gx#core-bind-import!__%
           _%in125485%_
           _%ctx125486%_
           _%force-weak?125488%_))))
    (define gx#core-bind-import!
      (lambda _g127368_
        (let ((_g127367_ (##length _g127368_)))
          (cond ((##fx= _g127367_ 1) (apply gx#core-bind-import!__0 _g127368_))
                ((##fx= _g127367_ 2) (apply gx#core-bind-import!__1 _g127368_))
                ((##fx= _g127367_ 3) (apply gx#core-bind-import!__% _g127368_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g127368_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_%in125410%_ _%ctx125411%_)
        (gx#core-bind-import!__% _%in125410%_ _%ctx125411%_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_%in125416%_)
        (let ((_%ctx125418%_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _%in125416%_ _%ctx125418%_))))
    (define gx#core-bind-weak-import!
      (lambda _g127370_
        (let ((_g127369_ (##length _g127370_)))
          (cond ((##fx= _g127369_ 1)
                 (apply gx#core-bind-weak-import!__0 _g127370_))
                ((##fx= _g127369_ 2)
                 (apply gx#core-bind-weak-import!__% _g127370_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g127370_))))))
    (define gx#core-resolve-module-export
      (lambda (_%out125301%_)
        (letrec ((_%subst125303%_
                  (lambda (_%key125349%_)
                    (let* ((_%key125350125358%_ _%key125349%_)
                           (_%else125352125366%_ (lambda () _%key125349%_))
                           (_%K125354125397%_
                            (lambda (_%mark125369%_ _%id125370%_)
                              (let* ((_%mark125371125377%_ _%mark125369%_)
                                     (_%E125373125381%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark125371125377%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K125374125389%_
                                      (lambda (_%subst125384%_)
                                        (let ((_%$e125386%_
                                               (if _%subst125384%_
                                                   (hash-get
                                                    _%subst125384%_
                                                    _%id125370%_)
                                                   '#f)))
                                          (if _%$e125386%_
                                              _%$e125386%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _%key125349%_))))))
                                (if (##structure-instance-of?
                                     _%mark125371125377%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e125375125392%_
                                            (##unchecked-structure-ref
                                             _%mark125371125377%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst125395%_ _%e125375125392%_))
                                      (_%K125374125389%_ _%subst125395%_))
                                    (_%E125373125381%_))))))
                      (if (##pair? _%key125350125358%_)
                          (let ((_%hd125355125400%_
                                 (##car _%key125350125358%_))
                                (_%tl125356125402%_
                                 (##cdr _%key125350125358%_)))
                            (let* ((_%id125405%_ _%hd125355125400%_)
                                   (_%mark125407%_ _%tl125356125402%_))
                              (_%K125354125397%_ _%mark125407%_ _%id125405%_)))
                          (_%else125352125366%_))))))
          (let* ((_%out125304125314%_ _%out125301%_)
                 (_%E125306125318%_
                  (lambda ()
                    (error '"No clause matching"
                           _%out125304125314%_
                           '((module-export ctx key phi _ _)))
                    '#!void))
                 (_%K125307125325%_
                  (lambda (_%phi125321%_ _%key125322%_ _%ctx125323%_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _%ctx125323%_ _%phi125321%_)
                     (_%subst125303%_ _%key125322%_)))))
            (if (##structure-direct-instance-of?
                 _%out125304125314%_
                 'gx#module-export::t)
                (let* ((_%e125308125328%_
                        (##unchecked-structure-ref
                         _%out125304125314%_
                         '1
                         '#f
                         '#f))
                       (_%ctx125331%_ _%e125308125328%_)
                       (_%e125309125333%_
                        (##unchecked-structure-ref
                         _%out125304125314%_
                         '2
                         '#f
                         '#f))
                       (_%key125336%_ _%e125309125333%_)
                       (_%e125310125338%_
                        (##unchecked-structure-ref
                         _%out125304125314%_
                         '3
                         '#f
                         '#f))
                       (_%phi125341%_ _%e125310125338%_)
                       (_%e125311125343%_
                        (##unchecked-structure-ref
                         _%out125304125314%_
                         '4
                         '#f
                         '#f))
                       (_%e125312125346%_
                        (##unchecked-structure-ref
                         _%out125304125314%_
                         '5
                         '#f
                         '#f)))
                  (_%K125307125325%_
                   _%phi125341%_
                   _%key125336%_
                   _%ctx125331%_))
                (_%E125306125318%_))))))
    (define gx#core-module-export->import__%
      (lambda (_%out125226%_ _%rename125227%_ _%dphi125228%_)
        (let* ((_%out125229125239%_ _%out125226%_)
               (_%E125231125243%_
                (lambda ()
                  (error '"No clause matching"
                         _%out125229125239%_
                         '((module-export ctx key phi name weak?)))
                  '#!void))
               (_%K125232125255%_
                (lambda (_%weak?125246%_
                         _%name125247%_
                         _%phi125248%_
                         _%key125249%_
                         _%ctx125250%_)
                  (##structure
                   gx#module-import::t
                   _%out125226%_
                   (let ((_%$e125252%_ _%rename125227%_))
                     (if _%$e125252%_ _%$e125252%_ _%name125247%_))
                   (fx+ _%phi125248%_ _%dphi125228%_)
                   _%weak?125246%_))))
          (if (##structure-direct-instance-of?
               _%out125229125239%_
               'gx#module-export::t)
              (let* ((_%e125233125258%_
                      (##unchecked-structure-ref
                       _%out125229125239%_
                       '1
                       '#f
                       '#f))
                     (_%ctx125261%_ _%e125233125258%_)
                     (_%e125234125263%_
                      (##unchecked-structure-ref
                       _%out125229125239%_
                       '2
                       '#f
                       '#f))
                     (_%key125266%_ _%e125234125263%_)
                     (_%e125235125268%_
                      (##unchecked-structure-ref
                       _%out125229125239%_
                       '3
                       '#f
                       '#f))
                     (_%phi125271%_ _%e125235125268%_)
                     (_%e125236125273%_
                      (##unchecked-structure-ref
                       _%out125229125239%_
                       '4
                       '#f
                       '#f))
                     (_%name125276%_ _%e125236125273%_)
                     (_%e125237125278%_
                      (##unchecked-structure-ref
                       _%out125229125239%_
                       '5
                       '#f
                       '#f))
                     (_%weak?125281%_ _%e125237125278%_))
                (_%K125232125255%_
                 _%weak?125281%_
                 _%name125276%_
                 _%phi125271%_
                 _%key125266%_
                 _%ctx125261%_))
              (_%E125231125243%_)))))
    (define gx#core-module-export->import__0
      (lambda (_%out125286%_)
        (let* ((_%rename125288%_ '#f) (_%dphi125290%_ '0))
          (gx#core-module-export->import__%
           _%out125286%_
           _%rename125288%_
           _%dphi125290%_))))
    (define gx#core-module-export->import__1
      (lambda (_%out125292%_ _%rename125293%_)
        (let ((_%dphi125295%_ '0))
          (gx#core-module-export->import__%
           _%out125292%_
           _%rename125293%_
           _%dphi125295%_))))
    (define gx#core-module-export->import
      (lambda _g127372_
        (let ((_g127371_ (##length _g127372_)))
          (cond ((##fx= _g127371_ 1)
                 (apply gx#core-module-export->import__0 _g127372_))
                ((##fx= _g127371_ 2)
                 (apply gx#core-module-export->import__1 _g127372_))
                ((##fx= _g127371_ 3)
                 (apply gx#core-module-export->import__% _g127372_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g127372_))))))
    (define gx#core-expand-module%
      (lambda (_%stx125125%_)
        (letrec ((_%make-context125127%_
                  (lambda (_%id125204%_)
                    (let* ((_%super125206%_ (gx#current-expander-context))
                           (_%bind-id125208%_ (gx#stx-e _%id125204%_))
                           (_%mod-id125210%_
                            (if (##structure-instance-of?
                                 _%super125206%_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##unchecked-structure-ref
                                  _%super125206%_
                                  '1
                                  '#f
                                  '#f)
                                 '"~"
                                 _%bind-id125208%_)
                                _%bind-id125208%_))
                           (_%ns125212%_ (symbol->string _%mod-id125210%_))
                           (_%path125222%_
                            (if (##structure-instance-of?
                                 _%super125206%_
                                 'gx#module-context::t)
                                (let ((_%path125214%_
                                       (##unchecked-structure-ref
                                        _%super125206%_
                                        '7
                                        '#f
                                        '#f)))
                                  (if (or (pair? _%path125214%_)
                                          (null? _%path125214%_))
                                      (cons _%bind-id125208%_ _%path125214%_)
                                      (if (not _%path125214%_)
                                          _%bind-id125208%_
                                          (cons _%bind-id125208%_
                                                (cons _%path125214%_ '())))))
                                _%bind-id125208%_))
                           (__obj127348
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
                       __obj127348
                       _%mod-id125210%_
                       _%super125206%_
                       _%ns125212%_
                       _%path125222%_)
                      __obj127348)))
                 (_%valid-module-id?125128%_
                  (lambda (_%id125179%_)
                    (let* ((_%str125181%_ (symbol->string _%id125179%_))
                           (_%len125183%_ (##string-length _%str125181%_)))
                      (if (##fx>= _%len125183%_ '1)
                          (let _%loop125186%_ ((_%index125188%_
                                                (##fx- (##string-length
                                                        _%str125181%_)
                                                       '1)))
                            (if (##fx>= _%index125188%_ '0)
                                (let ((_%c125190%_
                                       (string-ref
                                        _%str125181%_
                                        _%index125188%_)))
                                  (if (or (and (##char>=? _%c125190%_ '#\a)
                                               (##char<=? _%c125190%_ '#\z))
                                          (and (##char>=? _%c125190%_ '#\A)
                                               (##char<=? _%c125190%_ '#\Z))
                                          (and (##char>=? _%c125190%_ '#\0)
                                               (##char<=? _%c125190%_ '#\9))
                                          (##char=? _%c125190%_ '#\_)
                                          (##char=? _%c125190%_ '#\-))
                                      (_%loop125186%_
                                       (##fx- _%index125188%_ '1))
                                      '#f))
                                '#t))
                          '#f)))))
          (let* ((_%e125129125139%_ _%stx125125%_)
                 (_%E125131125143%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e125129125139%_)))
                 (_%E125130125175%_
                  (lambda ()
                    (if (gx#stx-pair? _%e125129125139%_)
                        (let ((_%e125132125147%_
                               (gx#syntax-e _%e125129125139%_)))
                          (let ((_%hd125133125150%_ (##car _%e125132125147%_))
                                (_%tl125134125152%_ (##cdr _%e125132125147%_)))
                            (if (gx#stx-pair? _%tl125134125152%_)
                                (let ((_%e125135125155%_
                                       (gx#syntax-e _%tl125134125152%_)))
                                  (let ((_%hd125136125158%_
                                         (##car _%e125135125155%_))
                                        (_%tl125137125160%_
                                         (##cdr _%e125135125155%_)))
                                    (let* ((_%id125163%_ _%hd125136125158%_)
                                           (_%body125165%_ _%tl125137125160%_))
                                      (if (and (gx#identifier? _%id125163%_)
                                               (gx#stx-list? _%body125165%_))
                                          (if (_%valid-module-id?125128%_
                                               (gx#stx-e
                                                (gx#datum->syntax__0 '#f 'id)))
                                              (let* ((_%ctx125167%_
                                                      (_%make-context125127%_
                                                       _%id125163%_))
                                                     (_%body125169%_
                                                      (gx#core-expand-module-begin
                                                       _%body125165%_
                                                       _%ctx125167%_))
                                                     (_%body125171%_
                                                      (gx#core-quote-syntax__1
                                                       (gx#core-cons
                                                        '%#begin
                                                        _%body125169%_)
                                                       (gx#stx-source
                                                        _%stx125125%_))))
                                                (##unchecked-structure-set!
                                                 _%ctx125167%_
                                                 (__make-promise
                                                  (lambda ()
                                                    (gx#eval-syntax*
                                                     _%body125171%_)))
                                                 '10
                                                 '#f
                                                 '#f)
                                                (##unchecked-structure-set!
                                                 _%ctx125167%_
                                                 _%body125171%_
                                                 '11
                                                 '#f
                                                 '#f)
                                                (gx#core-bind-syntax!__0
                                                 _%id125163%_
                                                 _%ctx125167%_)
                                                (gx#core-quote-syntax__1
                                                 (gx#core-list
                                                  '%#module
                                                  (gx#core-quote-syntax__0
                                                   _%id125163%_)
                                                  _%body125171%_)
                                                 (gx#stx-source
                                                  _%stx125125%_)))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"invalid module id; allowed characters are A-Z,a-z,0-9,_,-"
                                               _%stx125125%_
                                               (gx#datum->syntax__0 '#f 'id)))
                                          (_%E125131125143%_)))))
                                (_%E125131125143%_))))
                        (_%E125131125143%_)))))
            (_%E125130125175%_)))))
    (define gx#core-expand-module-begin
      (lambda (_%body125091%_ _%ctx125092%_)
        (__call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_%stx125095%_
                   (gx#core-expand-head (cons '%%begin-module _%body125091%_)))
                  (_%e125096125103%_ _%stx125095%_)
                  (_%E125098125107%_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _%stx125095%_)))
                  (_%E125097125121%_
                   (lambda ()
                     (if (gx#stx-pair? _%e125096125103%_)
                         (let ((_%e125099125111%_
                                (gx#syntax-e _%e125096125103%_)))
                           (let ((_%hd125100125114%_ (##car _%e125099125111%_))
                                 (_%tl125101125116%_
                                  (##cdr _%e125099125111%_)))
                             (if (and (gx#identifier? _%hd125100125114%_)
                                      (gx#core-identifier=?
                                       _%hd125100125114%_
                                       '%#begin-module))
                                 (let ((_%body125119%_ _%tl125101125116%_))
                                   (if (gx#sealed-syntax? _%stx125095%_)
                                       _%body125119%_
                                       (gx#core-expand-module-body
                                        _%body125119%_)))
                                 (_%E125098125107%_))))
                         (_%E125098125107%_)))))
             (_%E125097125121%_)))
         gx#current-expander-context
         _%ctx125092%_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_%body124887%_)
        (letrec ((_%expand-special124889%_
                  (lambda (_%hd125018%_ _%K125019%_ _%rest125020%_ _%r125021%_)
                    (let* ((_%e125022125039%_ _%hd125018%_)
                           (_%E125034125043%_
                            (lambda ()
                              (_%K125019%_
                               _%rest125020%_
                               (cons (gx#core-expand-top _%hd125018%_)
                                     _%r125021%_))))
                           (_%E125024125055%_
                            (lambda ()
                              (if (gx#stx-pair? _%e125022125039%_)
                                  (let ((_%e125035125047%_
                                         (gx#syntax-e _%e125022125039%_)))
                                    (let ((_%hd125036125050%_
                                           (##car _%e125035125047%_))
                                          (_%tl125037125052%_
                                           (##cdr _%e125035125047%_)))
                                      (if (and (gx#identifier?
                                                _%hd125036125050%_)
                                               (gx#core-identifier=?
                                                _%hd125036125050%_
                                                '%#export))
                                          (_%K125019%_
                                           _%rest125020%_
                                           (cons _%hd125018%_ _%r125021%_))
                                          (_%E125034125043%_))))
                                  (_%E125034125043%_))))
                           (_%E125023125087%_
                            (lambda ()
                              (if (gx#stx-pair? _%e125022125039%_)
                                  (let ((_%e125025125059%_
                                         (gx#syntax-e _%e125022125039%_)))
                                    (let ((_%hd125026125062%_
                                           (##car _%e125025125059%_))
                                          (_%tl125027125064%_
                                           (##cdr _%e125025125059%_)))
                                      (if (and (gx#identifier?
                                                _%hd125026125062%_)
                                               (gx#core-identifier=?
                                                _%hd125026125062%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl125027125064%_)
                                              (let ((_%e125028125067%_
                                                     (gx#syntax-e
                                                      _%tl125027125064%_)))
                                                (let ((_%hd125029125070%_
                                                       (##car _%e125028125067%_))
                                                      (_%tl125030125072%_
                                                       (##cdr _%e125028125067%_)))
                                                  (let ((_%hd-bind125075%_
                                                         _%hd125029125070%_))
                                                    (if (gx#stx-pair?
                                                         _%tl125030125072%_)
                                                        (let ((_%e125031125077%_
                                                               (gx#syntax-e
                                                                _%tl125030125072%_)))
                                                          (let ((_%hd125032125080%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e125031125077%_))
                        (_%tl125033125082%_ (##cdr _%e125031125077%_)))
                    (let ((_%expr125085%_ _%hd125032125080%_))
                      (if (gx#stx-null? _%tl125033125082%_)
                          (if (gx#core-bind-values? _%hd-bind125075%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind125075%_)
                                (_%K125019%_
                                 _%rest125020%_
                                 (cons _%hd125018%_ _%r125021%_)))
                              (_%E125024125055%_))
                          (_%E125024125055%_)))))
                (_%E125024125055%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E125024125055%_))
                                          (_%E125024125055%_))))
                                  (_%E125024125055%_)))))
                      (_%E125023125087%_))))
                 (_%expand-body124890%_
                  (lambda (_%rbody124892%_)
                    (let _%lp124894%_ ((_%rest124896%_ _%rbody124892%_)
                                       (_%body124897%_ '()))
                      (let* ((_%rest124898124906%_ _%rest124896%_)
                             (_%else124900124914%_ (lambda () _%body124897%_))
                             (_%K124902125006%_
                              (lambda (_%rest124917%_ _%hd124918%_)
                                (let* ((_%e124919124940%_ _%hd124918%_)
                                       (_%E124935124944%_
                                        (lambda ()
                                          (_%lp124894%_
                                           _%rest124917%_
                                           (cons (gx#core-expand-expression
                                                  _%hd124918%_)
                                                 _%body124897%_))))
                                       (_%E124931124958%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e124919124940%_)
                                              (let ((_%e124936124948%_
                                                     (gx#syntax-e
                                                      _%e124919124940%_)))
                                                (let ((_%hd124937124951%_
                                                       (##car _%e124936124948%_))
                                                      (_%tl124938124953%_
                                                       (##cdr _%e124936124948%_)))
                                                  (let ((_%form124956%_
                                                         _%hd124937124951%_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _%form124956%_
                                                         gx#special-form-binding?)
                                                        (_%lp124894%_
                                                         _%rest124917%_
                                                         (cons _%hd124918%_
                                                               _%body124897%_))
                                                        (_%E124935124944%_)))))
                                              (_%E124935124944%_))))
                                       (_%E124921124970%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e124919124940%_)
                                              (let ((_%e124932124962%_
                                                     (gx#syntax-e
                                                      _%e124919124940%_)))
                                                (let ((_%hd124933124965%_
                                                       (##car _%e124932124962%_))
                                                      (_%tl124934124967%_
                                                       (##cdr _%e124932124962%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd124933124965%_)
                                                           (gx#core-identifier=?
                                                            _%hd124933124965%_
                                                            '%#export))
                                                      (_%lp124894%_
                                                       _%rest124917%_
                                                       (cons (gx#core-expand-export%__0
                                                              _%hd124918%_)
                                                             _%body124897%_))
                                                      (_%E124931124958%_))))
                                              (_%E124931124958%_))))
                                       (_%E124920125002%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e124919124940%_)
                                              (let ((_%e124922124974%_
                                                     (gx#syntax-e
                                                      _%e124919124940%_)))
                                                (let ((_%hd124923124977%_
                                                       (##car _%e124922124974%_))
                                                      (_%tl124924124979%_
                                                       (##cdr _%e124922124974%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd124923124977%_)
                                                           (gx#core-identifier=?
                                                            _%hd124923124977%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl124924124979%_)
                                                          (let ((_%e124925124982%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl124924124979%_)))
                    (let ((_%hd124926124985%_ (##car _%e124925124982%_))
                          (_%tl124927124987%_ (##cdr _%e124925124982%_)))
                      (let ((_%hd-bind124990%_ _%hd124926124985%_))
                        (if (gx#stx-pair? _%tl124927124987%_)
                            (let ((_%e124928124992%_
                                   (gx#syntax-e _%tl124927124987%_)))
                              (let ((_%hd124929124995%_
                                     (##car _%e124928124992%_))
                                    (_%tl124930124997%_
                                     (##cdr _%e124928124992%_)))
                                (let ((_%expr125000%_ _%hd124929124995%_))
                                  (if (gx#stx-null? _%tl124930124997%_)
                                      (_%lp124894%_
                                       _%rest124917%_
                                       (cons (gx#core-quote-syntax__1
                                              (gx#core-list
                                               '%#define-values
                                               (gx#core-quote-bind-values
                                                _%hd-bind124990%_)
                                               (gx#core-expand-expression
                                                _%expr125000%_))
                                              (gx#stx-source _%hd124918%_))
                                             _%body124897%_))
                                      (_%E124921124970%_)))))
                            (_%E124921124970%_)))))
                  (_%E124921124970%_))
              (_%E124921124970%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E124921124970%_)))))
                                  (_%E124920125002%_)))))
                        (if (##pair? _%rest124898124906%_)
                            (let ((_%hd124903125009%_
                                   (##car _%rest124898124906%_))
                                  (_%tl124904125011%_
                                   (##cdr _%rest124898124906%_)))
                              (let* ((_%hd125014%_ _%hd124903125009%_)
                                     (_%rest125016%_ _%tl124904125011%_))
                                (_%K124902125006%_
                                 _%rest125016%_
                                 _%hd125014%_)))
                            (_%else124900124914%_)))))))
          (_%expand-body124890%_
           (gx#core-expand-block__%
            (cons '%#begin-module _%body124887%_)
            _%expand-special124889%_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_%stx124728%_
               _%expanded?124729%_
               _%method124730%_
               _%current-phi124731%_
               _%expand1124732%_)
        (letrec ((_%K124734%_
                  (lambda (_%rest124854%_ _%r124855%_)
                    (let* ((_%e124856124863%_ _%rest124854%_)
                           (_%E124858124867%_ (lambda () _%r124855%_))
                           (_%E124857124883%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124856124863%_)
                                  (let ((_%e124859124871%_
                                         (gx#syntax-e _%e124856124863%_)))
                                    (let ((_%hd124860124874%_
                                           (##car _%e124859124871%_))
                                          (_%tl124861124876%_
                                           (##cdr _%e124859124871%_)))
                                      (let* ((_%hd124879%_ _%hd124860124874%_)
                                             (_%rest124881%_
                                              _%tl124861124876%_))
                                        (_%step124735%_
                                         _%hd124879%_
                                         _%rest124881%_
                                         _%r124855%_))))
                                  (_%E124858124867%_)))))
                      (_%E124857124883%_))))
                 (_%step124735%_
                  (lambda (_%hd124768%_ _%rest124769%_ _%r124770%_)
                    (let* ((_%e124771124789%_ _%hd124768%_)
                           (_%E124784124793%_
                            (lambda ()
                              (if (_%expanded?124729%_ (gx#stx-e _%hd124768%_))
                                  (_%K124734%_
                                   _%rest124769%_
                                   (cons (gx#stx-e _%hd124768%_) _%r124770%_))
                                  (_%expand1124732%_
                                   _%hd124768%_
                                   _%K124734%_
                                   _%rest124769%_
                                   _%r124770%_))))
                           (_%E124780124809%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124771124789%_)
                                  (let ((_%e124785124797%_
                                         (gx#syntax-e _%e124771124789%_)))
                                    (let ((_%hd124786124800%_
                                           (##car _%e124785124797%_))
                                          (_%tl124787124802%_
                                           (##cdr _%e124785124797%_)))
                                      (let* ((_%macro124805%_
                                              _%hd124786124800%_)
                                             (_%body124807%_
                                              _%tl124787124802%_))
                                        (if (gx#core-bound-identifier?__%
                                             _%macro124805%_
                                             gx#syntax-binding?)
                                            (_%K124734%_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _%macro124805%_)
                                                    _%hd124768%_
                                                    _%method124730%_)
                                                   _%rest124769%_)
                                             _%r124770%_)
                                            (_%E124784124793%_)))))
                                  (_%E124784124793%_))))
                           (_%E124773124823%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124771124789%_)
                                  (let ((_%e124781124813%_
                                         (gx#syntax-e _%e124771124789%_)))
                                    (let ((_%hd124782124816%_
                                           (##car _%e124781124813%_))
                                          (_%tl124783124818%_
                                           (##cdr _%e124781124813%_)))
                                      (if (eq? (gx#stx-e _%hd124782124816%_)
                                               'begin:)
                                          (let ((_%body124821%_
                                                 _%tl124783124818%_))
                                            (_%K124734%_
                                             (gx#stx-foldr
                                              cons
                                              _%rest124769%_
                                              _%body124821%_)
                                             _%r124770%_))
                                          (_%E124780124809%_))))
                                  (_%E124780124809%_))))
                           (_%E124772124850%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124771124789%_)
                                  (let ((_%e124774124827%_
                                         (gx#syntax-e _%e124771124789%_)))
                                    (let ((_%hd124775124830%_
                                           (##car _%e124774124827%_))
                                          (_%tl124776124832%_
                                           (##cdr _%e124774124827%_)))
                                      (if (eq? (gx#stx-e _%hd124775124830%_)
                                               'phi:)
                                          (if (gx#stx-pair? _%tl124776124832%_)
                                              (let ((_%e124777124835%_
                                                     (gx#syntax-e
                                                      _%tl124776124832%_)))
                                                (let ((_%hd124778124838%_
                                                       (##car _%e124777124835%_))
                                                      (_%tl124779124840%_
                                                       (##cdr _%e124777124835%_)))
                                                  (let* ((_%dphi124843%_
                                                          _%hd124778124838%_)
                                                         (_%body124845%_
                                                          _%tl124779124840%_))
                                                    (if (gx#stx-fixnum?
                                                         _%dphi124843%_)
                                                        (let ((_%rbody124848%_
                                                               (__call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%K124734%_ _%body124845%_ '()))
                        _%current-phi124731%_
                        (fx+ (gx#stx-e _%dphi124843%_)
                             (_%current-phi124731%_)))))
                  (_%K124734%_
                   _%rest124769%_
                   (__foldr1 cons _%r124770%_ _%rbody124848%_)))
                (_%E124773124823%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E124773124823%_))
                                          (_%E124773124823%_))))
                                  (_%E124773124823%_)))))
                      (_%E124772124850%_)))))
          (let* ((_%e124736124743%_ _%stx124728%_)
                 (_%E124738124747%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e124736124743%_)))
                 (_%E124737124764%_
                  (lambda ()
                    (if (gx#stx-pair? _%e124736124743%_)
                        (let ((_%e124739124751%_
                               (gx#syntax-e _%e124736124743%_)))
                          (let ((_%hd124740124754%_ (##car _%e124739124751%_))
                                (_%tl124741124756%_ (##cdr _%e124739124751%_)))
                            (let ((_%body124759%_ _%tl124741124756%_))
                              (if (_%current-phi124731%_)
                                  (_%K124734%_ _%body124759%_ '())
                                  (__call-with-parameters
                                   (lambda () (_%K124734%_ _%body124759%_ '()))
                                   _%current-phi124731%_
                                   (gx#current-expander-phi))))))
                        (_%E124738124747%_)))))
            (_%E124737124764%_)))))
    (define gx#core-expand-import%__%
      (lambda (_%stx124382%_ _%internal-expand?124383%_)
        (letrec ((_%expand1124385%_
                  (lambda (_%hd124700%_ _%K124701%_ _%rest124702%_ _%r124703%_)
                    (if (gx#core-bound-module? _%hd124700%_)
                        (_%import1124386%_
                         (gx#syntax-local-e__0 _%hd124700%_)
                         _%K124701%_
                         _%rest124702%_
                         _%r124703%_)
                        (if (gx#core-library-module-path? _%hd124700%_)
                            (_%import1124386%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%hd124700%_))
                             _%K124701%_
                             _%rest124702%_
                             _%r124703%_)
                            (if (gx#core-library-relative-module-path?
                                 _%hd124700%_)
                                (_%import1124386%_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _%hd124700%_))
                                 _%K124701%_
                                 _%rest124702%_
                                 _%r124703%_)
                                (let ((_%e124709%_ (gx#stx-e _%hd124700%_)))
                                  (if (pair? _%e124709%_)
                                      (let ((_%$e124712%_
                                             (gx#stx-e (##car _%e124709%_))))
                                        (if (eq? 'spec: _%$e124712%_)
                                            (_%import-spec124389%_
                                             _%hd124700%_
                                             _%K124701%_
                                             _%rest124702%_
                                             _%r124703%_)
                                            (if (eq? 'in: _%$e124712%_)
                                                (_%import-submodule124387%_
                                                 _%hd124700%_
                                                 _%K124701%_
                                                 _%rest124702%_
                                                 _%r124703%_)
                                                (if (eq? 'runtime:
                                                         _%$e124712%_)
                                                    (_%import-runtime124388%_
                                                     _%hd124700%_
                                                     _%K124701%_
                                                     _%rest124702%_
                                                     _%r124703%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _%stx124382%_
                                                     _%hd124700%_)))))
                                      (if (string? _%e124709%_)
                                          (_%import1124386%_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _%hd124700%_
                                             (gx#stx-source _%stx124382%_)))
                                           _%K124701%_
                                           _%rest124702%_
                                           _%r124703%_)
                                          (if (##structure-instance-of?
                                               _%e124709%_
                                               'gx#module-context::t)
                                              (_%K124701%_
                                               _%rest124702%_
                                               (cons _%e124709%_ _%r124703%_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _%stx124382%_
                                               _%hd124700%_))))))))))
                 (_%import1124386%_
                  (lambda (_%ctx124689%_
                           _%K124690%_
                           _%rest124691%_
                           _%r124692%_)
                    (let ((_%dphi124694%_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_%K124690%_
                       _%rest124691%_
                       (cons (##structure
                              gx#import-set::t
                              _%ctx124689%_
                              _%dphi124694%_
                              (map (lambda (_%g124695124697%_)
                                     (gx#core-module-export->import__%
                                      _%g124695124697%_
                                      '#f
                                      _%dphi124694%_))
                                   (##unchecked-structure-ref
                                    _%ctx124689%_
                                    '9
                                    '#f
                                    '#f)))
                             _%r124692%_)))))
                 (_%import-submodule124387%_
                  (lambda (_%hd124656%_ _%K124657%_ _%rest124658%_ _%r124659%_)
                    (let* ((_%e124660124667%_ _%hd124656%_)
                           (_%E124662124671%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e124660124667%_)))
                           (_%E124661124685%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124660124667%_)
                                  (let ((_%e124663124675%_
                                         (gx#syntax-e _%e124660124667%_)))
                                    (let ((_%hd124664124678%_
                                           (##car _%e124663124675%_))
                                          (_%tl124665124680%_
                                           (##cdr _%e124663124675%_)))
                                      (let ((_%spath124683%_
                                             _%tl124665124680%_))
                                        (_%import1124386%_
                                         (_%import-spec-source124390%_
                                          _%spath124683%_)
                                         _%K124657%_
                                         _%rest124658%_
                                         _%r124659%_))))
                                  (_%E124662124671%_)))))
                      (_%E124661124685%_))))
                 (_%import-runtime124388%_
                  (lambda (_%hd124623%_ _%K124624%_ _%rest124625%_ _%r124626%_)
                    (let* ((_%e124627124634%_ _%hd124623%_)
                           (_%E124629124638%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e124627124634%_)))
                           (_%E124628124652%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124627124634%_)
                                  (let ((_%e124630124642%_
                                         (gx#syntax-e _%e124627124634%_)))
                                    (let ((_%hd124631124645%_
                                           (##car _%e124630124642%_))
                                          (_%tl124632124647%_
                                           (##cdr _%e124630124642%_)))
                                      (let ((_%spath124650%_
                                             _%tl124632124647%_))
                                        (_%K124624%_
                                         _%rest124625%_
                                         (cons (_%import-spec-source124390%_
                                                _%spath124650%_)
                                               _%r124626%_)))))
                                  (_%E124629124638%_)))))
                      (_%E124628124652%_))))
                 (_%import-spec124389%_
                  (lambda (_%hd124461%_ _%K124462%_ _%rest124463%_ _%r124464%_)
                    (let* ((_%e124465124482%_ _%hd124461%_)
                           (_%E124474124486%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e124465124482%_)))
                           (_%E124467124597%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124465124482%_)
                                  (let ((_%e124475124490%_
                                         (gx#syntax-e _%e124465124482%_)))
                                    (let ((_%hd124476124493%_
                                           (##car _%e124475124490%_))
                                          (_%tl124477124495%_
                                           (##cdr _%e124475124490%_)))
                                      (if (gx#stx-pair? _%tl124477124495%_)
                                          (let ((_%e124478124498%_
                                                 (gx#syntax-e
                                                  _%tl124477124495%_)))
                                            (let ((_%hd124479124501%_
                                                   (##car _%e124478124498%_))
                                                  (_%tl124480124503%_
                                                   (##cdr _%e124478124498%_)))
                                              (let* ((_%path124506%_
                                                      _%hd124479124501%_)
                                                     (_%specs124508%_
                                                      _%tl124480124503%_))
                                                (let ((_%src-ctx124510%_
                                                       (_%import-spec-source124390%_
                                                        _%path124506%_))
                                                      (_%exports124511%_
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
                                                      (_%specs124512%_
                                                       (gx#syntax->list
                                                        _%specs124508%_)))
                                                  (for-each
                                                   (lambda (_%out124514%_)
                                                     (__hash-put!
                                                      _%exports124511%_
                                                      (cons (##unchecked-structure-ref
                                                             _%out124514%_
                                                             '3
                                                             '#f
                                                             '#f)
                                                            (##unchecked-structure-ref
                                                             _%out124514%_
                                                             '4
                                                             '#f
                                                             '#f))
                                                      _%out124514%_))
                                                   (##unchecked-structure-ref
                                                    _%src-ctx124510%_
                                                    '9
                                                    '#f
                                                    '#f))
                                                  (_%K124462%_
                                                   _%rest124463%_
                                                   (__foldl1
                                                    (lambda (_%spec124516%_
                                                             _%r124517%_)
                                                      (let* ((_%e124518124534%_
                                                              _%spec124516%_)
                                                             (_%E124520124538%_
                                                              (lambda ()
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid syntax-case clause"
                         _%e124518124534%_)))
                     (_%E124519124593%_
                      (lambda ()
                        (if (gx#stx-pair? _%e124518124534%_)
                            (let ((_%e124521124542%_
                                   (gx#syntax-e _%e124518124534%_)))
                              (let ((_%hd124522124545%_
                                     (##car _%e124521124542%_))
                                    (_%tl124523124547%_
                                     (##cdr _%e124521124542%_)))
                                (let ((_%phi124550%_ _%hd124522124545%_))
                                  (if (gx#stx-pair? _%tl124523124547%_)
                                      (let ((_%e124524124552%_
                                             (gx#syntax-e _%tl124523124547%_)))
                                        (let ((_%hd124525124555%_
                                               (##car _%e124524124552%_))
                                              (_%tl124526124557%_
                                               (##cdr _%e124524124552%_)))
                                          (let ((_%name124560%_
                                                 _%hd124525124555%_))
                                            (if (gx#stx-pair?
                                                 _%tl124526124557%_)
                                                (let ((_%e124527124562%_
                                                       (gx#syntax-e
                                                        _%tl124526124557%_)))
                                                  (let ((_%hd124528124565%_
                                                         (##car _%e124527124562%_))
                                                        (_%tl124529124567%_
                                                         (##cdr _%e124527124562%_)))
                                                    (let ((_%src-phi124570%_
                                                           _%hd124528124565%_))
                                                      (if (gx#stx-pair?
                                                           _%tl124529124567%_)
                                                          (let ((_%e124530124572%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl124529124567%_)))
                    (let ((_%hd124531124575%_ (##car _%e124530124572%_))
                          (_%tl124532124577%_ (##cdr _%e124530124572%_)))
                      (let ((_%src-name124580%_ _%hd124531124575%_))
                        (if (gx#stx-null? _%tl124532124577%_)
                            (if (and (gx#stx-fixnum? _%src-phi124570%_)
                                     (gx#identifier? _%src-name124580%_)
                                     (gx#stx-fixnum? _%phi124550%_)
                                     (gx#identifier? _%name124560%_))
                                (let ((_%src-phi124582%_
                                       (gx#stx-e _%src-phi124570%_))
                                      (_%src-name124583%_
                                       (gx#core-identifier-key
                                        _%src-name124580%_))
                                      (_%phi124584%_ (gx#stx-e _%phi124550%_))
                                      (_%name124585%_
                                       (gx#core-identifier-key
                                        _%name124560%_)))
                                  (let ((_%$e124587%_
                                         (__hash-get
                                          _%exports124511%_
                                          (cons _%src-phi124582%_
                                                _%src-name124583%_))))
                                    (if _%$e124587%_
                                        ((lambda (_%out124590%_)
                                           (cons (gx#core-module-export->import__%
                                                  _%out124590%_
                                                  _%name124585%_
                                                  (fx- _%phi124584%_
                                                       _%src-phi124582%_))
                                                 _%r124517%_))
                                         _%$e124587%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; no matching export"
                                         _%stx124382%_
                                         _%hd124461%_))))
                                (_%E124520124538%_))
                            (_%E124520124538%_)))))
                  (_%E124520124538%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E124520124538%_)))))
                                      (_%E124520124538%_)))))
                            (_%E124520124538%_)))))
                (_%E124519124593%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r124464%_
                                                    _%specs124512%_))))))
                                          (_%E124474124486%_))))
                                  (_%E124474124486%_))))
                           (_%E124466124619%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124465124482%_)
                                  (let ((_%e124468124601%_
                                         (gx#syntax-e _%e124465124482%_)))
                                    (let ((_%hd124469124604%_
                                           (##car _%e124468124601%_))
                                          (_%tl124470124606%_
                                           (##cdr _%e124468124601%_)))
                                      (if (gx#stx-pair? _%tl124470124606%_)
                                          (let ((_%e124471124609%_
                                                 (gx#syntax-e
                                                  _%tl124470124606%_)))
                                            (let ((_%hd124472124612%_
                                                   (##car _%e124471124609%_))
                                                  (_%tl124473124614%_
                                                   (##cdr _%e124471124609%_)))
                                              (let ((_%path124617%_
                                                     _%hd124472124612%_))
                                                (if (gx#stx-null?
                                                     _%tl124473124614%_)
                                                    (_%K124462%_
                                                     _%rest124463%_
                                                     (cons (_%import-spec-source124390%_
                                                            _%path124617%_)
                                                           _%r124464%_))
                                                    (_%E124467124597%_)))))
                                          (_%E124467124597%_))))
                                  (_%E124467124597%_)))))
                      (_%E124466124619%_))))
                 (_%import-spec-source124390%_
                  (lambda (_%spath124459%_)
                    (gx#core-import-nested-module
                     _%spath124459%_
                     _%stx124382%_)))
                 (_%import!124391%_
                  (lambda (_%rbody124404%_)
                    (letrec* ((_%current-ctx124406%_
                               (gx#current-expander-context))
                              (_%deps124407%_ (make-hash-table-eq))
                              (_%bind!124408%_
                               (lambda (_%hd124457%_)
                                 (gx#core-bind-import!__1
                                  _%hd124457%_
                                  _%current-ctx124406%_))))
                      (let _%lp124410%_ ((_%rest124412%_ _%rbody124404%_)
                                         (_%body124413%_ '()))
                        (let* ((_%rest124414124422%_ _%rest124412%_)
                               (_%else124416124433%_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _%current-ctx124406%_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _%current-ctx124406%_
                                       (__foldl1
                                        cons
                                        (##unchecked-structure-ref
                                         _%current-ctx124406%_
                                         '8
                                         '#f
                                         '#f)
                                        _%body124413%_)
                                       '8
                                       '#f
                                       '#f)
                                      '#!void)
                                  (__hash-for-each
                                   (lambda (_%ctx124430%_ _%_124431%_)
                                     (gx#eval-module _%ctx124430%_))
                                   _%deps124407%_)
                                  _%body124413%_))
                               (_%K124418124445%_
                                (lambda (_%rest124436%_ _%hd124437%_)
                                  (if (##structure-direct-instance-of?
                                       _%hd124437%_
                                       'gx#module-import::t)
                                      (let ()
                                        (_%bind!124408%_ _%hd124437%_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _%hd124437%_
                                                   '3
                                                   '#f
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _%hd124437%_
                                                            '1
                                                            '#f
                                                            '#f)
                                                           '3
                                                           '#f
                                                           '#f)))
                                            (__hash-put!
                                             _%deps124407%_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _%hd124437%_
                                               '1
                                               '#f
                                               '#f)
                                              '1
                                              '#f
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _%hd124437%_
                                           'gx#import-set::t)
                                          (let ()
                                            (for-each
                                             _%bind!124408%_
                                             (##unchecked-structure-ref
                                              _%hd124437%_
                                              '3
                                              '#f
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _%hd124437%_
                                                  '2
                                                  '#f
                                                  '#f))
                                                (__hash-put!
                                                 _%deps124407%_
                                                 (##unchecked-structure-ref
                                                  _%hd124437%_
                                                  '1
                                                  '#f
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_%$e124441%_
                                                 (##structure-instance-of?
                                                  _%hd124437%_
                                                  'gx#module-context::t)))
                                            (if _%$e124441%_
                                                _%$e124441%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _%stx124382%_
                                                 _%hd124437%_)))))
                                  (_%lp124410%_
                                   _%rest124436%_
                                   (cons _%hd124437%_ _%body124413%_)))))
                          (if (##pair? _%rest124414124422%_)
                              (let ((_%hd124419124448%_
                                     (##car _%rest124414124422%_))
                                    (_%tl124420124450%_
                                     (##cdr _%rest124414124422%_)))
                                (let* ((_%hd124453%_ _%hd124419124448%_)
                                       (_%rest124455%_ _%tl124420124450%_))
                                  (_%K124418124445%_
                                   _%rest124455%_
                                   _%hd124453%_)))
                              (_%else124416124433%_)))))))
                 (_%expanded-import?124392%_
                  (lambda (_%e124396%_)
                    (let ((_%$e124398%_
                           (##structure-direct-instance-of?
                            _%e124396%_
                            'gx#import-set::t)))
                      (if _%$e124398%_
                          _%$e124398%_
                          (let ((_%$e124401%_
                                 (##structure-direct-instance-of?
                                  _%e124396%_
                                  'gx#module-import::t)))
                            (if _%$e124401%_
                                _%$e124401%_
                                (##structure-instance-of?
                                 _%e124396%_
                                 'gx#module-context::t))))))))
          (let ((_%rbody124394%_
                 (gx#core-expand-import/export
                  _%stx124382%_
                  _%expanded-import?124392%_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _%expand1124385%_)))
            (if _%internal-expand?124383%_
                (reverse _%rbody124394%_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_%import!124391%_ _%rbody124394%_))
                 (gx#stx-source _%stx124382%_)))))))
    (define gx#core-expand-import%__0
      (lambda (_%stx124721%_)
        (let ((_%internal-expand?124723%_ '#f))
          (gx#core-expand-import%__%
           _%stx124721%_
           _%internal-expand?124723%_))))
    (define gx#core-expand-import%
      (lambda _g127374_
        (let ((_g127373_ (##length _g127374_)))
          (cond ((##fx= _g127373_ 1)
                 (apply gx#core-expand-import%__0 _g127374_))
                ((##fx= _g127373_ 2)
                 (apply gx#core-expand-import%__% _g127374_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g127374_))))))
    (define gx#core-import-nested-module
      (lambda (_%spath124309%_ _%where124310%_)
        (let* ((_%e124311124318%_ _%spath124309%_)
               (_%E124313124322%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124311124318%_)))
               (_%E124312124377%_
                (lambda ()
                  (if (gx#stx-pair? _%e124311124318%_)
                      (let ((_%e124314124326%_
                             (gx#syntax-e _%e124311124318%_)))
                        (let ((_%hd124315124329%_ (##car _%e124314124326%_))
                              (_%tl124316124331%_ (##cdr _%e124314124326%_)))
                          (let* ((_%origin124334%_ _%hd124315124329%_)
                                 (_%sub124336%_ _%tl124316124331%_)
                                 (_%origin-ctx124338%_
                                  (if (gx#stx-false? _%origin124334%_)
                                      (gx#current-expander-context)
                                      (gx#import-module__0 _%origin124334%_))))
                            (let _%lp124340%_ ((_%rest124342%_ _%sub124336%_)
                                               (_%ctx124343%_
                                                _%origin-ctx124338%_))
                              (let* ((_%e124344124351%_ _%rest124342%_)
                                     (_%E124346124355%_
                                      (lambda () _%ctx124343%_))
                                     (_%E124345124373%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e124344124351%_)
                                            (let ((_%e124347124359%_
                                                   (gx#syntax-e
                                                    _%e124344124351%_)))
                                              (let ((_%hd124348124362%_
                                                     (##car _%e124347124359%_))
                                                    (_%tl124349124364%_
                                                     (##cdr _%e124347124359%_)))
                                                (let* ((_%id124367%_
                                                        _%hd124348124362%_)
                                                       (_%rest124369%_
                                                        _%tl124349124364%_)
                                                       (_%bind124371%_
                                                        (gx#resolve-identifier__%
                                                         _%id124367%_
                                                         '0
                                                         _%ctx124343%_)))
                                                  (if (and (##structure-direct-instance-of?
                                                            _%bind124371%_
                                                            'gx#syntax-binding::t)
                                                           (##structure-instance-of?
                                                            (##unchecked-structure-ref
                                                             _%bind124371%_
                                                             '4
                                                             '#f
                                                             '#f)
                                                            'gx#module-context::t))
                                                      '#!void
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; not bound as module"
                                                       _%where124310%_
                                                       _%spath124309%_
                                                       _%id124367%_))
                                                  (_%lp124340%_
                                                   _%rest124369%_
                                                   (##unchecked-structure-ref
                                                    _%bind124371%_
                                                    '4
                                                    '#f
                                                    '#f)))))
                                            (_%E124346124355%_)))))
                                (_%E124345124373%_))))))
                      (_%E124313124322%_)))))
          (_%E124312124377%_))))
    (define gx#core-expand-import-source
      (lambda (_%hd124307%_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _%hd124307%_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_%stx123801%_ _%internal-expand?123802%_)
        (letrec* ((_%make-export__127302127303%_
                   (lambda (_%bind124255%_
                            _%phi124256%_
                            _%ctx124257%_
                            _%name124258%_)
                     (let* ((_%key124260%_
                             (##unchecked-structure-ref
                              _%bind124255%_
                              '2
                              '#f
                              '#f))
                            (_%export-key124262%_
                             (if _%name124258%_
                                 (gx#core-identifier-key _%name124258%_)
                                 _%key124260%_)))
                       (##structure
                        gx#module-export::t
                        _%ctx124257%_
                        _%key124260%_
                        _%phi124256%_
                        _%export-key124262%_
                        (let ((_%$e124265%_
                               (##structure-instance-of?
                                _%bind124255%_
                                'gx#extern-binding::t)))
                          (if _%$e124265%_
                              _%$e124265%_
                              (##structure-direct-instance-of?
                               _%bind124255%_
                               'gx#import-binding::t)))))))
                  (_%make-export__0__127304127307%_
                   (lambda (_%bind124271%_)
                     (let* ((_%phi124273%_ (gx#current-export-expander-phi))
                            (_%ctx124275%_ (gx#current-expander-context))
                            (_%name124277%_ '#f))
                       (_%make-export__127302127303%_
                        _%bind124271%_
                        _%phi124273%_
                        _%ctx124275%_
                        _%name124277%_))))
                  (_%make-export__1__127305127308%_
                   (lambda (_%bind124279%_ _%phi124280%_)
                     (let* ((_%ctx124282%_ (gx#current-expander-context))
                            (_%name124284%_ '#f))
                       (_%make-export__127302127303%_
                        _%bind124279%_
                        _%phi124280%_
                        _%ctx124282%_
                        _%name124284%_))))
                  (_%make-export__2__127306127309%_
                   (lambda (_%bind124286%_ _%phi124287%_ _%ctx124288%_)
                     (let ((_%name124290%_ '#f))
                       (_%make-export__127302127303%_
                        _%bind124286%_
                        _%phi124287%_
                        _%ctx124288%_
                        _%name124290%_))))
                  (_%make-export123804%_
                   (lambda _g127376_
                     (let ((_g127375_ (##length _g127376_)))
                       (cond ((##fx= _g127375_ 1)
                              (apply _%make-export__0__127304127307%_
                                     _g127376_))
                             ((##fx= _g127375_ 2)
                              (apply _%make-export__1__127305127308%_
                                     _g127376_))
                             ((##fx= _g127375_ 3)
                              (apply _%make-export__2__127306127309%_
                                     _g127376_))
                             ((##fx= _g127375_ 4)
                              (apply _%make-export__127302127303%_ _g127376_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g127376_))))))
                  (_%expand1123805%_
                   (lambda (_%hd123960%_
                            _%K123961%_
                            _%rest123962%_
                            _%r123963%_)
                     (let* ((_%e123964123996%_ _%hd123960%_)
                            (_%E123991124000%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _%stx123801%_
                                _%hd123960%_)))
                            (_%E123981124084%_
                             (lambda ()
                               (if (gx#stx-pair? _%e123964123996%_)
                                   (let ((_%e123992124004%_
                                          (gx#syntax-e _%e123964123996%_)))
                                     (let ((_%hd123993124007%_
                                            (##car _%e123992124004%_))
                                           (_%tl123994124009%_
                                            (##cdr _%e123992124004%_)))
                                       (if (eq? (gx#stx-e _%hd123993124007%_)
                                                'import:)
                                           (let ((_%in124012%_
                                                  _%tl123994124009%_))
                                             (if (gx#stx-list? _%in124012%_)
                                                 (let _%lp124014%_ ((_%in-rest124016%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%in124012%_)
                            (_%r124017%_ _%r123963%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%e124018124025%_
                                                           _%in-rest124016%_)
                                                          (_%E124020124029%_
                                                           (lambda ()
                                                             (_%K123961%_
                                                              _%rest123962%_
                                                              _%r124017%_)))
                                                          (_%E124019124080%_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%e124018124025%_)
                         (let ((_%e124021124033%_
                                (gx#syntax-e _%e124018124025%_)))
                           (let ((_%hd124022124036%_ (##car _%e124021124033%_))
                                 (_%tl124023124038%_
                                  (##cdr _%e124021124033%_)))
                             (let* ((_%hd124041%_ _%hd124022124036%_)
                                    (_%in-rest124043%_ _%tl124023124038%_)
                                    (_%src124078%_
                                     (if (gx#core-bound-module? _%hd124041%_)
                                         (gx#syntax-local-e__0 _%hd124041%_)
                                         (if (gx#core-library-module-path?
                                              _%hd124041%_)
                                             (gx#import-module__0
                                              (gx#core-resolve-library-module-path
                                               _%hd124041%_))
                                             (if (gx#core-library-relative-module-path?
                                                  _%hd124041%_)
                                                 (gx#import-module__0
                                                  (gx#core-resolve-library-relative-module-path
                                                   _%hd124041%_))
                                                 (if (gx#stx-string?
                                                      _%hd124041%_)
                                                     (gx#import-module__0
                                                      (gx#core-resolve-module-path__%
                                                       _%hd124041%_
                                                       (gx#stx-source
                                                        _%stx123801%_)))
                                                     (let* ((_%e124049124056%_
                                                             _%hd124041%_)
                                                            (_%E124051124060%_
                                                             (lambda ()
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; illegal re-export"
                                                                _%stx123801%_
                                                                _%hd124041%_)))
                                                            (_%E124050124074%_
                                                             (lambda ()
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%e124049124056%_)
                           (let ((_%e124052124064%_
                                  (gx#syntax-e _%e124049124056%_)))
                             (let ((_%hd124053124067%_
                                    (##car _%e124052124064%_))
                                   (_%tl124054124069%_
                                    (##cdr _%e124052124064%_)))
                               (if (eq? (gx#stx-e _%hd124053124067%_) 'in:)
                                   (let ((_%spath124072%_ _%tl124054124069%_))
                                     (gx#core-import-nested-module
                                      _%spath124072%_
                                      _%stx123801%_))
                                   (_%E124051124060%_))))
                           (_%E124051124060%_)))))
               (_%E124050124074%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (_%lp124014%_
                                _%in-rest124043%_
                                (_%export-imports123806%_
                                 _%src124078%_
                                 _%r124017%_)))))
                         (_%E124020124029%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E124019124080%_)))
                                                 (_%E123991124000%_)))
                                           (_%E123991124000%_))))
                                   (_%E123991124000%_))))
                            (_%E123968124124%_
                             (lambda ()
                               (if (gx#stx-pair? _%e123964123996%_)
                                   (let ((_%e123982124088%_
                                          (gx#syntax-e _%e123964123996%_)))
                                     (let ((_%hd123983124091%_
                                            (##car _%e123982124088%_))
                                           (_%tl123984124093%_
                                            (##cdr _%e123982124088%_)))
                                       (if (eq? (gx#stx-e _%hd123983124091%_)
                                                'rename:)
                                           (if (gx#stx-pair?
                                                _%tl123984124093%_)
                                               (let ((_%e123985124096%_
                                                      (gx#syntax-e
                                                       _%tl123984124093%_)))
                                                 (let ((_%hd123986124099%_
                                                        (##car _%e123985124096%_))
                                                       (_%tl123987124101%_
                                                        (##cdr _%e123985124096%_)))
                                                   (let ((_%id124104%_
                                                          _%hd123986124099%_))
                                                     (if (gx#stx-pair?
                                                          _%tl123987124101%_)
                                                         (let ((_%e123988124106%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl123987124101%_)))
                   (let ((_%hd123989124109%_ (##car _%e123988124106%_))
                         (_%tl123990124111%_ (##cdr _%e123988124106%_)))
                     (let ((_%name124114%_ _%hd123989124109%_))
                       (if (gx#stx-null? _%tl123990124111%_)
                           (let* ((_%phi124116%_
                                   (gx#current-export-expander-phi))
                                  (_%$e124118%_
                                   (gx#core-resolve-identifier__1
                                    _%id124104%_
                                    _%phi124116%_)))
                             (if _%$e124118%_
                                 ((lambda (_%bind124121%_)
                                    (_%K123961%_
                                     _%rest123962%_
                                     (cons (_%make-export__127302127303%_
                                            _%bind124121%_
                                            _%phi124116%_
                                            (gx#current-expander-context)
                                            _%name124114%_)
                                           _%r123963%_)))
                                  _%$e124118%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Reference to unbound identifier"
                                  _%stx123801%_
                                  _%hd123960%_
                                  _%id124104%_)))
                           (_%E123981124084%_)))))
                 (_%E123981124084%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E123981124084%_))
                                           (_%E123981124084%_))))
                                   (_%E123981124084%_))))
                            (_%E123967124174%_
                             (lambda ()
                               (if (gx#stx-pair? _%e123964123996%_)
                                   (let ((_%e123969124128%_
                                          (gx#syntax-e _%e123964123996%_)))
                                     (let ((_%hd123970124131%_
                                            (##car _%e123969124128%_))
                                           (_%tl123971124133%_
                                            (##cdr _%e123969124128%_)))
                                       (if (eq? (gx#stx-e _%hd123970124131%_)
                                                'spec:)
                                           (if (gx#stx-pair?
                                                _%tl123971124133%_)
                                               (let ((_%e123972124136%_
                                                      (gx#syntax-e
                                                       _%tl123971124133%_)))
                                                 (let ((_%hd123973124139%_
                                                        (##car _%e123972124136%_))
                                                       (_%tl123974124141%_
                                                        (##cdr _%e123972124136%_)))
                                                   (let ((_%phi124144%_
                                                          _%hd123973124139%_))
                                                     (if (gx#stx-pair?
                                                          _%tl123974124141%_)
                                                         (let ((_%e123975124146%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl123974124141%_)))
                   (let ((_%hd123976124149%_ (##car _%e123975124146%_))
                         (_%tl123977124151%_ (##cdr _%e123975124146%_)))
                     (let ((_%id124154%_ _%hd123976124149%_))
                       (if (gx#stx-pair? _%tl123977124151%_)
                           (let ((_%e123978124156%_
                                  (gx#syntax-e _%tl123977124151%_)))
                             (let ((_%hd123979124159%_
                                    (##car _%e123978124156%_))
                                   (_%tl123980124161%_
                                    (##cdr _%e123978124156%_)))
                               (let ((_%name124164%_ _%hd123979124159%_))
                                 (if (gx#stx-null? _%tl123980124161%_)
                                     (if (and (gx#stx-fixnum? _%phi124144%_)
                                              (gx#identifier? _%id124154%_)
                                              (gx#identifier? _%name124164%_))
                                         (let* ((_%phi124166%_
                                                 (gx#stx-e _%phi124144%_))
                                                (_%$e124168%_
                                                 (gx#core-resolve-identifier__1
                                                  _%id124154%_
                                                  _%phi124166%_)))
                                           (if _%$e124168%_
                                               ((lambda (_%bind124171%_)
                                                  (_%K123961%_
                                                   _%rest123962%_
                                                   (cons (_%make-export__127302127303%_
                                                          _%bind124171%_
                                                          _%phi124166%_
                                                          (gx#current-expander-context)
                                                          _%name124164%_)
                                                         _%r123963%_)))
                                                _%$e124168%_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _%stx123801%_
                                                _%hd123960%_
                                                _%id124154%_)))
                                         (_%E123968124124%_))
                                     (_%E123968124124%_)))))
                           (_%E123968124124%_)))))
                 (_%E123968124124%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E123968124124%_))
                                           (_%E123968124124%_))))
                                   (_%E123968124124%_))))
                            (_%E123966124186%_
                             (lambda ()
                               (let ((_%id124178%_ _%e123964123996%_))
                                 (if (gx#identifier? _%id124178%_)
                                     (let ((_%$e124180%_
                                            (gx#core-resolve-identifier__1
                                             _%id124178%_
                                             (gx#current-export-expander-phi))))
                                       (if _%$e124180%_
                                           ((lambda (_%bind124183%_)
                                              (_%K123961%_
                                               _%rest123962%_
                                               (cons (_%make-export__0__127304127307%_
                                                      _%bind124183%_)
                                                     _%r123963%_)))
                                            _%$e124180%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _%stx123801%_
                                            _%hd123960%_)))
                                     (_%E123967124174%_)))))
                            (_%E123965124250%_
                             (lambda ()
                               (if (eq? (gx#stx-e _%e123964123996%_) '#t)
                                   (let* ((_%current-ctx124190%_
                                           (gx#current-expander-context))
                                          (_%current-phi124192%_
                                           (gx#current-export-expander-phi))
                                          (_%phi-ctx124194%_
                                           (gx#core-context-shift
                                            _%current-ctx124190%_
                                            _%current-phi124192%_))
                                          (_%phi-bind124196%_
                                           (hash->list
                                            (##unchecked-structure-ref
                                             _%phi-ctx124194%_
                                             '2
                                             '#f
                                             '#f))))
                                     (let _%lp124199%_ ((_%bind-rest124201%_
                                                         _%phi-bind124196%_)
                                                        (_%set124202%_ '()))
                                       (let* ((_%bind-rest124203124213%_
                                               _%bind-rest124201%_)
                                              (_%else124205124221%_
                                               (lambda ()
                                                 (_%K123961%_
                                                  _%rest123962%_
                                                  (cons (##structure
                                                         gx#export-set::t
                                                         '#f
                                                         _%current-phi124192%_
                                                         _%set124202%_)
                                                        _%r123963%_))))
                                              (_%K124207124231%_
                                               (lambda (_%bind-rest124224%_
                                                        _%bind124225%_
                                                        _%key124226%_)
                                                 (if (or (##structure-direct-instance-of?
                                                          _%bind124225%_
                                                          'gx#import-binding::t)
                                                         (gx#private-feature-binding?
                                                          _%bind124225%_))
                                                     (_%lp124199%_
                                                      _%bind-rest124224%_
                                                      _%set124202%_)
                                                     (_%lp124199%_
                                                      _%bind-rest124224%_
                                                      (cons (_%make-export__2__127306127309%_
                                                             _%bind124225%_
                                                             _%current-phi124192%_
                                                             _%current-ctx124190%_)
                                                            _%set124202%_))))))
                                         (if (##pair? _%bind-rest124203124213%_)
                                             (let ((_%hd124208124234%_
                                                    (##car _%bind-rest124203124213%_))
                                                   (_%tl124209124236%_
                                                    (##cdr _%bind-rest124203124213%_)))
                                               (if (##pair? _%hd124208124234%_)
                                                   (let ((_%hd124210124239%_
                                                          (##car _%hd124208124234%_))
                                                         (_%tl124211124241%_
                                                          (##cdr _%hd124208124234%_)))
                                                     (let* ((_%key124244%_
                                                             _%hd124210124239%_)
                                                            (_%bind124246%_
                                                             _%tl124211124241%_)
                                                            (_%bind-rest124248%_
                                                             _%tl124209124236%_))
                                                       (_%K124207124231%_
                                                        _%bind-rest124248%_
                                                        _%bind124246%_
                                                        _%key124244%_)))
                                                   (_%else124205124221%_)))
                                             (_%else124205124221%_)))))
                                   (_%E123966124186%_)))))
                       (_%E123965124250%_))))
                  (_%export-imports123806%_
                   (lambda (_%src123836%_ _%r123837%_)
                     (letrec* ((_%current-ctx123839%_
                                (gx#current-expander-context))
                               (_%current-phi123840%_
                                (gx#current-export-expander-phi))
                               (_%import->export123841%_
                                (lambda (_%in123922%_)
                                  (let* ((_%in123923123931%_ _%in123922%_)
                                         (_%E123925123935%_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _%in123923123931%_
                                                   '((module-import
                                                      out
                                                      key
                                                      phi)))
                                            '#!void))
                                         (_%K123926123942%_
                                          (lambda (_%phi123938%_
                                                   _%key123939%_
                                                   _%out123940%_)
                                            (##structure
                                             gx#module-export::t
                                             _%current-ctx123839%_
                                             _%key123939%_
                                             _%phi123938%_
                                             _%key123939%_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _%in123923123931%_
                                         'gx#module-import::t)
                                        (let* ((_%e123927123945%_
                                                (##unchecked-structure-ref
                                                 _%in123923123931%_
                                                 '1
                                                 '#f
                                                 '#f))
                                               (_%out123948%_
                                                _%e123927123945%_)
                                               (_%e123928123950%_
                                                (##unchecked-structure-ref
                                                 _%in123923123931%_
                                                 '2
                                                 '#f
                                                 '#f))
                                               (_%key123953%_
                                                _%e123928123950%_)
                                               (_%e123929123955%_
                                                (##unchecked-structure-ref
                                                 _%in123923123931%_
                                                 '3
                                                 '#f
                                                 '#f))
                                               (_%phi123958%_
                                                _%e123929123955%_))
                                          (_%K123926123942%_
                                           _%phi123958%_
                                           _%key123953%_
                                           _%out123948%_))
                                        (_%E123925123935%_)))))
                               (_%fold-e123842%_
                                (lambda (_%in123844%_ _%r123845%_)
                                  (let* ((_%in123846123860%_ _%in123844%_)
                                         (_%else123849123868%_
                                          (lambda () _%r123845%_)))
                                    (let ((_%K123855123904%_
                                           (lambda (_%phi123900%_
                                                    _%key123901%_
                                                    _%out123902%_)
                                             (if (and (fx= _%phi123900%_
                                                           _%current-phi123840%_)
                                                      (eq? _%src123836%_
                                                           (##unchecked-structure-ref
                                                            _%out123902%_
                                                            '1
                                                            '#f
                                                            '#f)))
                                                 (cons (_%import->export123841%_
                                                        _%in123844%_)
                                                       _%r123845%_)
                                                 _%r123845%_)))
                                          (_%K123851123879%_
                                           (lambda (_%imports123872%_
                                                    _%phi123873%_
                                                    _%ctx123874%_)
                                             (if (and (fx= _%phi123873%_
                                                           _%current-phi123840%_)
                                                      (eq? _%src123836%_
                                                           _%ctx123874%_))
                                                 (__foldl1
                                                  (lambda (_%in123876%_
                                                           _%r123877%_)
                                                    (cons (_%import->export123841%_
                                                           _%in123876%_)
                                                          _%r123877%_))
                                                  _%r123845%_
                                                  _%imports123872%_)
                                                 _%r123845%_))))
                                      (let ((_%try-match123848123897%_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _%in123846123860%_
                                                    'gx#import-set::t)
                                                   (let* ((_%e123852123882%_
                                                           (##unchecked-structure-ref
                                                            _%in123846123860%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                          (_%e123853123887%_
                                                           (##unchecked-structure-ref
                                                            _%in123846123860%_
                                                            '2
                                                            '#f
                                                            '#f))
                                                          (_%e123854123892%_
                                                           (##unchecked-structure-ref
                                                            _%in123846123860%_
                                                            '3
                                                            '#f
                                                            '#f)))
                                                     (let ((_%ctx123885%_
                                                            _%e123852123882%_)
                                                           (_%phi123890%_
                                                            _%e123853123887%_)
                                                           (_%imports123895%_
                                                            _%e123854123892%_))
                                                       (_%K123851123879%_
                                                        _%imports123895%_
                                                        _%phi123890%_
                                                        _%ctx123885%_)))
                                                   (_%else123849123868%_)))))
                                        (if (##structure-direct-instance-of?
                                             _%in123846123860%_
                                             'gx#module-import::t)
                                            (let* ((_%e123856123907%_
                                                    (##unchecked-structure-ref
                                                     _%in123846123860%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                   (_%e123857123912%_
                                                    (##unchecked-structure-ref
                                                     _%in123846123860%_
                                                     '2
                                                     '#f
                                                     '#f))
                                                   (_%e123858123917%_
                                                    (##unchecked-structure-ref
                                                     _%in123846123860%_
                                                     '3
                                                     '#f
                                                     '#f)))
                                              (let ((_%out123910%_
                                                     _%e123856123907%_)
                                                    (_%key123915%_
                                                     _%e123857123912%_)
                                                    (_%phi123920%_
                                                     _%e123858123917%_))
                                                (_%K123855123904%_
                                                 _%phi123920%_
                                                 _%key123915%_
                                                 _%out123910%_)))
                                            (_%try-match123848123897%_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _%src123836%_
                              _%current-phi123840%_
                              (__foldl1
                               _%fold-e123842%_
                               '()
                               (##unchecked-structure-ref
                                _%current-ctx123839%_
                                '8
                                '#f
                                '#f)))
                             _%r123837%_))))
                  (_%export!123807%_
                   (lambda (_%rbody123823%_)
                     (letrec* ((_%current-ctx123825%_
                                (gx#current-expander-context))
                               (_%fold-e123826%_
                                (lambda (_%out123830%_ _%r123831%_)
                                  (if (##structure-direct-instance-of?
                                       _%out123830%_
                                       'gx#module-export::t)
                                      (cons _%out123830%_ _%r123831%_)
                                      (if (##structure-direct-instance-of?
                                           _%out123830%_
                                           'gx#export-set::t)
                                          (__foldl1
                                           cons
                                           _%r123831%_
                                           (##unchecked-structure-ref
                                            _%out123830%_
                                            '3
                                            '#f
                                            '#f))
                                          _%r123831%_)))))
                       (let ((_%body123828%_ (reverse _%rbody123823%_)))
                         (##unchecked-structure-set!
                          _%current-ctx123825%_
                          (__foldl1
                           _%fold-e123826%_
                           (##unchecked-structure-ref
                            _%current-ctx123825%_
                            '9
                            '#f
                            '#f)
                           _%body123828%_)
                          '9
                          '#f
                          '#f)
                         _%body123828%_))))
                  (_%expanded-export?123808%_
                   (lambda (_%e123818%_)
                     (let ((_%$e123820%_
                            (##structure-direct-instance-of?
                             _%e123818%_
                             'gx#module-export::t)))
                       (if _%$e123820%_
                           _%$e123820%_
                           (##structure-direct-instance-of?
                            _%e123818%_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _%internal-expand?123802%_)
              (let ((_%rbody123814%_
                     (gx#core-expand-import/export
                      _%stx123801%_
                      _%expanded-export?123808%_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _%expand1123805%_)))
                (if _%internal-expand?123802%_
                    (reverse _%rbody123814%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons
                      '%#export
                      (_%export!123807%_ _%rbody123814%_))
                     (gx#stx-source _%stx123801%_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _%stx123801%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _%stx123801%_))))))
    (define gx#core-expand-export%__0
      (lambda (_%stx124300%_)
        (let ((_%internal-expand?124302%_ '#f))
          (gx#core-expand-export%__%
           _%stx124300%_
           _%internal-expand?124302%_))))
    (define gx#core-expand-export%
      (lambda _g127378_
        (let ((_g127377_ (##length _g127378_)))
          (cond ((##fx= _g127377_ 1)
                 (apply gx#core-expand-export%__0 _g127378_))
                ((##fx= _g127377_ 2)
                 (apply gx#core-expand-export%__% _g127378_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g127378_))))))
    (define gx#core-expand-export-source
      (lambda (_%hd123798%_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _%hd123798%_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_%stx123768%_)
        (let* ((_%e123769123776%_ _%stx123768%_)
               (_%E123771123780%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123769123776%_)))
               (_%E123770123794%_
                (lambda ()
                  (if (gx#stx-pair? _%e123769123776%_)
                      (let ((_%e123772123784%_
                             (gx#syntax-e _%e123769123776%_)))
                        (let ((_%hd123773123787%_ (##car _%e123772123784%_))
                              (_%tl123774123789%_ (##cdr _%e123772123784%_)))
                          (let ((_%body123792%_ _%tl123774123789%_))
                            (if (gx#identifier-list? _%body123792%_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _%body123792%_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _%body123792%_))
                                   (gx#stx-source _%stx123768%_)))
                                (_%E123771123780%_)))))
                      (_%E123771123780%_)))))
          (_%E123770123794%_))))
    (define gx#core-bind-feature!__%
      (lambda (_%id123734%_ _%private?123735%_ _%phi123736%_ _%ctx123737%_)
        (gx#core-bind-syntax!__%
         _%id123734%_
         ((if _%private?123735%_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _%id123734%_))
         _%private?123735%_
         _%phi123736%_
         _%ctx123737%_)))
    (define gx#core-bind-feature!__0
      (lambda (_%id123742%_)
        (let* ((_%private?123744%_ '#f)
               (_%phi123746%_ (gx#current-expander-phi))
               (_%ctx123748%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id123742%_
           _%private?123744%_
           _%phi123746%_
           _%ctx123748%_))))
    (define gx#core-bind-feature!__1
      (lambda (_%id123750%_ _%private?123751%_)
        (let* ((_%phi123753%_ (gx#current-expander-phi))
               (_%ctx123755%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id123750%_
           _%private?123751%_
           _%phi123753%_
           _%ctx123755%_))))
    (define gx#core-bind-feature!__2
      (lambda (_%id123757%_ _%private?123758%_ _%phi123759%_)
        (let ((_%ctx123761%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id123757%_
           _%private?123758%_
           _%phi123759%_
           _%ctx123761%_))))
    (define gx#core-bind-feature!
      (lambda _g127380_
        (let ((_g127379_ (##length _g127380_)))
          (cond ((##fx= _g127379_ 1)
                 (apply gx#core-bind-feature!__0 _g127380_))
                ((##fx= _g127379_ 2)
                 (apply gx#core-bind-feature!__1 _g127380_))
                ((##fx= _g127379_ 3)
                 (apply gx#core-bind-feature!__2 _g127380_))
                ((##fx= _g127379_ 4)
                 (apply gx#core-bind-feature!__% _g127380_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g127380_))))))))
