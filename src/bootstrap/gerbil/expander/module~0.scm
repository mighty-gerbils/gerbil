(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1713004411)
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
      (lambda _%$args127410%_
        (apply make-instance gx#module-import::t _%$args127410%_)))
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
      (lambda _%$args127407%_
        (apply make-instance gx#module-export::t _%$args127407%_)))
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
      (lambda _%$args127404%_
        (apply make-instance gx#import-set::t _%$args127404%_)))
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
      (lambda _%$args127401%_
        (apply make-instance gx#export-set::t _%$args127401%_)))
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
      (lambda _%$args127398%_
        (apply make-instance gx#import-expander::t _%$args127398%_)))
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
      (lambda _%$args127395%_
        (apply make-instance gx#export-expander::t _%$args127395%_)))
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
      (lambda _%$args127392%_
        (apply make-instance gx#import-export-expander::t _%$args127392%_)))
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
      (lambda (_%path127389%_ _%fun127390%_)
        (call-with-input-file
         (cons 'path: (cons _%path127389%_ gx#source-file-settings))
         _%fun127390%_)))
    (define gx#module-context:::init!
      (lambda (_%self123841127370%_
               _%id127372%_
               _%super127373%_
               _%ns127374%_
               _%path127375%_)
        (let* ((_%self127377%_ _%self123841127370%_)
               (_%self127379%_ _%self127377%_))
          (if (##fx< '11 (##structure-length _%self127379%_))
              (begin
                (##unchecked-structure-set!
                 _%self127379%_
                 _%id127372%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self127379%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self127379%_
                 _%super127373%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self127379%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self127379%_ '#f '5 '#f '#f)
                (##unchecked-structure-set!
                 _%self127379%_
                 _%ns127374%_
                 '6
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self127379%_
                 _%path127375%_
                 '7
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self127379%_ '() '8 '#f '#f)
                (##unchecked-structure-set! _%self127379%_ '() '9 '#f '#f)
                (##unchecked-structure-set! _%self127379%_ '#f '10 '#f '#f)
                (##unchecked-structure-set! _%self127379%_ '#f '11 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self127379%_
                     '11
                     (##vector-length _%self127379%_))))))
    (__bind-method!__%
     gx#module-context::t
     ':init!
     gx#module-context:::init!
     '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_%self123842127201%_ _%ctx127203%_ _%root127204%_)
        (let* ((_%self127206%_ _%self123842127201%_)
               (_%self127208%_ _%self127206%_)
               (_%super127224%_
                (let ((_%$e127218%_ _%root127204%_))
                  (if _%$e127218%_
                      _%$e127218%_
                      (let ((_%$e127221%_ (gx#core-context-root__0)))
                        (if _%$e127221%_
                            _%$e127221%_
                            (let ((__obj127454
                                   (##structure gx#root-context::t '#f '#f)))
                              (let ((__constructor127455
                                     (direct-method-ref
                                      gx#root-context::t
                                      __obj127454
                                      ':init!)))
                                (if __constructor127455
                                    (__constructor127455 __obj127454)
                                    (error '"missing constructor method implementation"
                                           'class:
                                           gx#root-context::t
                                           'method:
                                           ':init!)))
                              __obj127454)))))))
          (if _%ctx127203%_
              (let ((_%id127227%_
                     (##structure-ref
                      _%ctx127203%_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_%path127228%_
                     (##structure-ref
                      _%ctx127203%_
                      '7
                      gx#module-context::t
                      '#f))
                    (_%in127229%_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _%ctx127203%_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_%e127230%_
                     (__make-promise
                      (lambda () (gx#eval-module _%ctx127203%_)))))
                (if (##fx< '8 (##structure-length _%self127208%_))
                    (begin
                      (##unchecked-structure-set!
                       _%self127208%_
                       _%id127227%_
                       '1
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self127208%_
                       (make-hash-table-eq 'size: (##length _%in127229%_))
                       '2
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self127208%_
                       _%super127224%_
                       '3
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self127208%_
                       '#f
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self127208%_
                       '#f
                       '5
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self127208%_
                       _%path127228%_
                       '6
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self127208%_
                       _%in127229%_
                       '7
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self127208%_
                       _%e127230%_
                       '8
                       '#f
                       '#f)
                      '#!void)
                    (error '"struct-instance-init!: too many arguments for struct"
                           _%self127208%_
                           '8
                           (##vector-length _%self127208%_)))
                (##for-each
                 (lambda (_%g127231127233%_)
                   (gx#core-bind-weak-import!__%
                    _%g127231127233%_
                    _%self127208%_))
                 _%in127229%_))
              (if (##fx< '8 (##structure-length _%self127208%_))
                  (begin
                    (##unchecked-structure-set! _%self127208%_ '#f '1 '#f '#f)
                    (##unchecked-structure-set!
                     _%self127208%_
                     (make-hash-table-eq)
                     '2
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self127208%_
                     _%super127224%_
                     '3
                     '#f
                     '#f)
                    (##unchecked-structure-set! _%self127208%_ '#f '4 '#f '#f)
                    (##unchecked-structure-set! _%self127208%_ '#f '5 '#f '#f)
                    (##unchecked-structure-set! _%self127208%_ '#f '6 '#f '#f)
                    (##unchecked-structure-set! _%self127208%_ '() '7 '#f '#f)
                    (##unchecked-structure-set! _%self127208%_ '#f '8 '#f '#f)
                    '#!void)
                  (error '"struct-instance-init!: too many arguments for struct"
                         _%self127208%_
                         '8
                         (##vector-length _%self127208%_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_%self123842127239%_ _%ctx127240%_)
        (let ((_%root127242%_ '#f))
          (gx#prelude-context:::init!__%
           _%self123842127239%_
           _%ctx127240%_
           _%root127242%_))))
    (define gx#prelude-context:::init!
      (lambda _g127461_
        (let ((_g127460_ (##length _g127461_)))
          (cond ((##fx= _g127460_ 2)
                 (apply gx#prelude-context:::init!__0 _g127461_))
                ((##fx= _g127460_ 3)
                 (apply gx#prelude-context:::init!__% _g127461_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g127461_))))))
    (__bind-method!__%
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_%self127075%_ _%e127076%_)
        (if (##fx< '3 (##structure-length _%self127075%_))
            (begin
              (##unchecked-structure-set!
               _%self127075%_
               _%e127076%_
               '1
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self127075%_
               (gx#current-expander-context)
               '2
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self127075%_
               (##fx- (gx#current-expander-phi) '1)
               '3
               '#f
               '#f)
              '#!void)
            (error '"struct-instance-init!: too many arguments for struct"
                   _%self127075%_
                   '3
                   (##vector-length _%self127075%_)))))
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
      (lambda (_%g126701126704%_ _%g126702126706%_)
        (gx#core-apply-user-expander__%
         _%g126701126704%_
         _%g126702126706%_
         'apply-import-expander)))
    (__bind-method!__%
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_%g126572126575%_ _%g126573126577%_)
        (gx#core-apply-user-expander__%
         _%g126572126575%_
         _%g126573126577%_
         'apply-export-expander)))
    (__bind-method!__%
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_%ctx126443%_)
        (let* ((_%path126445%_
                (##structure-ref _%ctx126443%_ '7 gx#module-context::t '#f))
               (_%path126447%_
                (if (pair? _%path126445%_)
                    (##last _%path126445%_)
                    _%path126445%_)))
          (if (string? _%path126447%_) _%path126447%_ '#f))))
    (define gx#import-module__%
      (lambda (_%path126419%_ _%reload?126420%_ _%eval?126421%_)
        (let ((_%ctx126423%_
               ((gx#current-expander-module-import)
                _%path126419%_
                _%reload?126420%_)))
          (if (and _%ctx126423%_ _%eval?126421%_)
              (gx#eval-module _%ctx126423%_)
              '#!void)
          _%ctx126423%_)))
    (define gx#import-module__0
      (lambda (_%path126428%_)
        (let* ((_%reload?126430%_ '#f) (_%eval?126432%_ '#f))
          (gx#import-module__%
           _%path126428%_
           _%reload?126430%_
           _%eval?126432%_))))
    (define gx#import-module__1
      (lambda (_%path126434%_ _%reload?126435%_)
        (let ((_%eval?126437%_ '#f))
          (gx#import-module__%
           _%path126434%_
           _%reload?126435%_
           _%eval?126437%_))))
    (define gx#import-module
      (lambda _g127463_
        (let ((_g127462_ (##length _g127463_)))
          (cond ((##fx= _g127462_ 1) (apply gx#import-module__0 _g127463_))
                ((##fx= _g127462_ 2) (apply gx#import-module__1 _g127463_))
                ((##fx= _g127462_ 3) (apply gx#import-module__% _g127463_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g127463_))))))
    (define gx#eval-module
      (lambda (_%mod126416%_)
        ((gx#current-expander-module-eval) _%mod126416%_)))
    (define gx#core-eval-module
      (lambda (_%obj126396%_)
        (letrec ((_%force-e126398%_
                  (lambda (_%getf126412%_ _%e126413%_)
                    (__call-with-parameters
                     (lambda () (force (_%getf126412%_ _%e126413%_)))
                     gx#current-expander-context
                     _%e126413%_
                     gx#current-expander-phi
                     '0))))
          (let _%recur126400%_ ((_%e126402%_ _%obj126396%_))
            (if (##structure-instance-of? _%e126402%_ 'gx#module-context::t)
                (let ()
                  (let ((_%$e126405%_
                         (gx#core-context-prelude__% _%e126402%_)))
                    (if _%$e126405%_ (_%recur126400%_ _%$e126405%_) '#!void))
                  (_%force-e126398%_ gx#module-context-e _%e126402%_))
                (if (##structure-instance-of?
                     _%e126402%_
                     'gx#prelude-context::t)
                    (_%force-e126398%_ gx#prelude-context-e _%e126402%_)
                    (if (gx#stx-string? _%e126402%_)
                        (_%recur126400%_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _%e126402%_)))
                        (if (gx#core-library-module-path? _%e126402%_)
                            (_%recur126400%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%e126402%_)))
                            (error '"cannot eval module" _%obj126396%_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_%ctx126376%_)
        (let _%lp126378%_ ((_%e126380%_ _%ctx126376%_))
          (if (or (##structure-instance-of? _%e126380%_ 'gx#module-context::t)
                  (##structure-instance-of? _%e126380%_ 'gx#local-context::t))
              (_%lp126378%_ (##unchecked-structure-ref _%e126380%_ '3 '#f '#f))
              (if (##structure-instance-of? _%e126380%_ 'gx#prelude-context::t)
                  _%e126380%_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_%ctx126392%_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _%ctx126392%_))))
    (define gx#core-context-prelude
      (lambda _g127465_
        (let ((_g127464_ (##length _g127465_)))
          (cond ((##fx= _g127464_ 0)
                 (apply gx#core-context-prelude__0 _g127465_))
                ((##fx= _g127464_ 1)
                 (apply gx#core-context-prelude__% _g127465_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g127465_))))))
    (define gx#core-module->prelude-context
      (lambda (_%ctx126367%_)
        (let ((_%$e126369%_ (__hash-get gx#__module-registry _%ctx126367%_)))
          (if _%$e126369%_
              _%$e126369%_
              (let ((_%pre126373%_
                     (let ((__obj127456
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
                        __obj127456
                        _%ctx126367%_)
                       __obj127456)))
                (__hash-put! gx#__module-registry _%ctx126367%_ _%pre126373%_)
                _%pre126373%_)))))
    (define gx#core-import-module__%
      (lambda (_%rpath126239%_ _%reload?126240%_)
        (letrec ((_%import-source126242%_
                  (lambda (_%path126331%_)
                    (if (member _%path126331%_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _%path126331%_)
                        '#!void)
                    (__call-with-parameters
                     (lambda ()
                       (let ((_g127466_ (gx#core-read-module _%path126331%_)))
                         (begin
                           (let ((_g127467_
                                  (if (##values? _g127466_)
                                      (##vector-length _g127466_)
                                      1)))
                             (if (not (##fx= _g127467_ 4))
                                 (error "Context expects 4 values" _g127467_)))
                           (let ((_%pre126334%_ (##vector-ref _g127466_ 0))
                                 (_%id126335%_ (##vector-ref _g127466_ 1))
                                 (_%ns126336%_ (##vector-ref _g127466_ 2))
                                 (_%body126337%_ (##vector-ref _g127466_ 3)))
                             (let* ((_%prelude126347%_
                                     (if (##structure-instance-of?
                                          _%pre126334%_
                                          'gx#prelude-context::t)
                                         _%pre126334%_
                                         (if (##structure-instance-of?
                                              _%pre126334%_
                                              'gx#module-context::t)
                                             (gx#core-module->prelude-context
                                              _%pre126334%_)
                                             (if (string? _%pre126334%_)
                                                 (gx#core-module->prelude-context
                                                  (gx#core-import-module__0
                                                   _%pre126334%_))
                                                 (if (not _%pre126334%_)
                                                     (let ((_%$e126343%_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _%$e126343%_
                                                           _%$e126343%_
                                                           (let ((__obj127457
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
                     (gx#prelude-context:::init!__0 __obj127457 '#f)
                     __obj127457)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error '"cannot import module; unknown prelude"
                                                            _%rpath126239%_
                                                            _%pre126334%_))))))
                                    (_%ctx126349%_
                                     (let ((__obj127458
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
                                        __obj127458
                                        _%id126335%_
                                        _%prelude126347%_
                                        _%ns126336%_
                                        _%path126331%_)
                                       __obj127458))
                                    (_%body126351%_
                                     (gx#core-expand-module-begin
                                      _%body126337%_
                                      _%ctx126349%_))
                                    (_%body126353%_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _%body126351%_)
                                      _%path126331%_
                                      _%ctx126349%_
                                      '())))
                               (##unchecked-structure-set!
                                _%ctx126349%_
                                (__make-promise
                                 (lambda () (gx#eval-syntax* _%body126353%_)))
                                '10
                                '#f
                                '#f)
                               (##unchecked-structure-set!
                                _%ctx126349%_
                                _%body126353%_
                                '11
                                '#f
                                '#f)
                               (__hash-put!
                                gx#__module-registry
                                _%path126331%_
                                _%ctx126349%_)
                               (__hash-put!
                                gx#__module-registry
                                _%id126335%_
                                _%ctx126349%_)
                               _%ctx126349%_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _%path126331%_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_%import-submodule126243%_
                  (lambda (_%rpath126259%_)
                    (let* ((_%rpath126260126267%_ _%rpath126259%_)
                           (_%E126262126271%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%rpath126260126267%_
                                     '([origin . refs]))
                              '#!void))
                           (_%K126263126319%_
                            (lambda (_%refs126274%_ _%origin126275%_)
                              (let ((_%ctx126277%_
                                     (if _%origin126275%_
                                         (gx#core-import-module__%
                                          _%origin126275%_
                                          _%reload?126240%_)
                                         (gx#current-expander-context))))
                                (let _%lp126279%_ ((_%rest126281%_
                                                    _%refs126274%_)
                                                   (_%ctx126282%_
                                                    _%ctx126277%_))
                                  (let* ((_%rest126283126291%_ _%rest126281%_)
                                         (_%else126285126299%_
                                          (lambda () _%ctx126282%_))
                                         (_%K126287126307%_
                                          (lambda (_%rest126302%_ _%id126303%_)
                                            (let ((_%bind126305%_
                                                   (gx#resolve-identifier__%
                                                    _%id126303%_
                                                    '0
                                                    _%ctx126282%_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _%bind126305%_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _%bind126305%_
                                                         '4
                                                         '#f
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_%lp126279%_
                                                   _%rest126302%_
                                                   (##unchecked-structure-ref
                                                    _%bind126305%_
                                                    '4
                                                    '#f
                                                    '#f))
                                                  (error '"cannot import submodule; not bound as a module"
                                                         _%rpath126259%_
                                                         _%id126303%_
                                                         _%bind126305%_))))))
                                    (if (##pair? _%rest126283126291%_)
                                        (let ((_%hd126288126310%_
                                               (##car _%rest126283126291%_))
                                              (_%tl126289126312%_
                                               (##cdr _%rest126283126291%_)))
                                          (let* ((_%id126315%_
                                                  _%hd126288126310%_)
                                                 (_%rest126317%_
                                                  _%tl126289126312%_))
                                            (_%K126287126307%_
                                             _%rest126317%_
                                             _%id126315%_)))
                                        (_%else126285126299%_))))))))
                      (if (##pair? _%rpath126260126267%_)
                          (let ((_%hd126264126322%_
                                 (##car _%rpath126260126267%_))
                                (_%tl126265126324%_
                                 (##cdr _%rpath126260126267%_)))
                            (let* ((_%origin126327%_ _%hd126264126322%_)
                                   (_%refs126329%_ _%tl126265126324%_))
                              (_%K126263126319%_
                               _%refs126329%_
                               _%origin126327%_)))
                          (_%E126262126271%_))))))
          (let ((_%$e126245%_
                 (if (not _%reload?126240%_)
                     (__hash-get gx#__module-registry _%rpath126239%_)
                     '#f)))
            (if _%$e126245%_
                _%$e126245%_
                (if (list? _%rpath126239%_)
                    (_%import-submodule126243%_ _%rpath126239%_)
                    (if (gx#core-library-module-path? _%rpath126239%_)
                        (let ((_%ctx126250%_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _%rpath126239%_)
                                _%reload?126240%_)))
                          (__hash-put!
                           gx#__module-registry
                           _%rpath126239%_
                           _%ctx126250%_)
                          _%ctx126250%_)
                        (let* ((_%npath126253%_
                                (path-normalize _%rpath126239%_))
                               (_%$e126255%_
                                (if (not _%reload?126240%_)
                                    (__hash-get
                                     gx#__module-registry
                                     _%npath126253%_)
                                    '#f)))
                          (if _%$e126255%_
                              _%$e126255%_
                              (_%import-source126242%_
                               _%npath126253%_))))))))))
    (define gx#core-import-module__0
      (lambda (_%rpath126360%_)
        (let ((_%reload?126362%_ '#f))
          (gx#core-import-module__% _%rpath126360%_ _%reload?126362%_))))
    (define gx#core-import-module
      (lambda _g127469_
        (let ((_g127468_ (##length _g127469_)))
          (cond ((##fx= _g127468_ 1)
                 (apply gx#core-import-module__0 _g127469_))
                ((##fx= _g127468_ 2)
                 (apply gx#core-import-module__% _g127469_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g127469_))))))
    (define gx#core-read-module
      (lambda (_%path126228%_)
        (__with-catch
         (lambda (_%exn126230%_)
           (if (and (datum-parsing-exception? _%exn126230%_)
                    (eq? (datum-parsing-exception-filepos _%exn126230%_) '0))
               (gx#core-read-module/lang _%path126228%_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _%path126228%_
                (__call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_%g126232126234%_)
                      (display-exception__% _%exn126230%_ _%g126232126234%_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _%path126228%_)))))
    (define gx#core-read-module/sexp
      (lambda (_%path126080%_)
        (let _%lp126082%_ ((_%body126084%_
                            (read-syntax-from-file _%path126080%_))
                           (_%pre126085%_ '#f)
                           (_%ns126086%_ '#f)
                           (_%pkg126087%_ '#f))
          (let* ((_%e126088126112%_ _%body126084%_)
                 (_%E126104126138%_
                  (lambda ()
                    (let ((_g127470_
                           (if _%pkg126087%_
                               (values _%pre126085%_
                                       _%ns126086%_
                                       _%pkg126087%_)
                               (gx#core-read-module-package
                                _%path126080%_
                                _%pre126085%_
                                _%ns126086%_))))
                      (begin
                        (let ((_g127471_
                               (if (##values? _g127470_)
                                   (##vector-length _g127470_)
                                   1)))
                          (if (not (##fx= _g127471_ 3))
                              (error "Context expects 3 values" _g127471_)))
                        (let ((_%pre126116%_ (##vector-ref _g127470_ 0))
                              (_%ns126117%_ (##vector-ref _g127470_ 1))
                              (_%pkg126118%_ (##vector-ref _g127470_ 2)))
                          (let* ((_%prelude126124%_
                                  (if (gx#core-bound-module-prelude?
                                       _%pre126116%_)
                                      (gx#syntax-local-e__0 _%pre126116%_)
                                      (if (gx#core-library-module-path?
                                           _%pre126116%_)
                                          (gx#core-resolve-library-module-path
                                           _%pre126116%_)
                                          (if (gx#stx-string? _%pre126116%_)
                                              (gx#core-resolve-module-path__%
                                               _%pre126116%_
                                               _%path126080%_)
                                              (gx#stx-e _%pre126116%_)))))
                                 (_%path-id126126%_
                                  (gx#core-module-path->namespace
                                   _%path126080%_))
                                 (_%pkg-id126128%_
                                  (if _%pkg126118%_
                                      (##string-append
                                       _%pkg126118%_
                                       '"/"
                                       _%path-id126126%_)
                                      _%path-id126126%_))
                                 (_%module-id126130%_
                                  (##string->symbol _%pkg-id126128%_))
                                 (_%module-ns126135%_
                                  (if (eq? _%ns126117%_ '#!void)
                                      '#f
                                      (let ((_%$e126132%_ _%ns126117%_))
                                        (if _%$e126132%_
                                            _%$e126132%_
                                            _%pkg-id126128%_)))))
                            (values _%prelude126124%_
                                    _%module-id126130%_
                                    _%module-ns126135%_
                                    _%body126084%_)))))))
                 (_%E126097126170%_
                  (lambda ()
                    (if (gx#stx-pair? _%e126088126112%_)
                        (let ((_%e126105126142%_
                               (gx#syntax-e _%e126088126112%_)))
                          (let ((_%hd126106126145%_ (##car _%e126105126142%_))
                                (_%tl126107126147%_ (##cdr _%e126105126142%_)))
                            (if (eq? (gx#stx-e _%hd126106126145%_) 'package:)
                                (if (gx#stx-pair? _%tl126107126147%_)
                                    (let ((_%e126108126150%_
                                           (gx#syntax-e _%tl126107126147%_)))
                                      (let ((_%hd126109126153%_
                                             (##car _%e126108126150%_))
                                            (_%tl126110126155%_
                                             (##cdr _%e126108126150%_)))
                                        (let* ((_%pkg126158%_
                                                _%hd126109126153%_)
                                               (_%rest126160%_
                                                _%tl126110126155%_)
                                               (_%pkg126168%_
                                                (if (gx#identifier?
                                                     _%pkg126158%_)
                                                    (symbol->string
                                                     (gx#stx-e _%pkg126158%_))
                                                    (if (or (gx#stx-string?
                                                             _%pkg126158%_)
                                                            (gx#stx-false?
                                                             _%pkg126158%_))
                                                        (gx#stx-e
                                                         _%pkg126158%_)
                                                        (gx#raise-syntax-error
                                                         'import
                                                         '"Bad syntax; Illegal package name"
                                                         _%pkg126158%_)))))
                                          (_%lp126082%_
                                           _%rest126160%_
                                           _%pre126085%_
                                           _%ns126086%_
                                           _%pkg126168%_))))
                                    (_%E126104126138%_))
                                (_%E126104126138%_))))
                        (_%E126104126138%_))))
                 (_%E126090126200%_
                  (lambda ()
                    (if (gx#stx-pair? _%e126088126112%_)
                        (let ((_%e126098126174%_
                               (gx#syntax-e _%e126088126112%_)))
                          (let ((_%hd126099126177%_ (##car _%e126098126174%_))
                                (_%tl126100126179%_ (##cdr _%e126098126174%_)))
                            (if (eq? (gx#stx-e _%hd126099126177%_) 'namespace:)
                                (if (gx#stx-pair? _%tl126100126179%_)
                                    (let ((_%e126101126182%_
                                           (gx#syntax-e _%tl126100126179%_)))
                                      (let ((_%hd126102126185%_
                                             (##car _%e126101126182%_))
                                            (_%tl126103126187%_
                                             (##cdr _%e126101126182%_)))
                                        (let* ((_%ns126190%_
                                                _%hd126102126185%_)
                                               (_%rest126192%_
                                                _%tl126103126187%_)
                                               (_%ns126198%_
                                                (if (gx#identifier?
                                                     _%ns126190%_)
                                                    (symbol->string
                                                     (gx#stx-e _%ns126190%_))
                                                    (if (gx#stx-string?
                                                         _%ns126190%_)
                                                        (gx#stx-e _%ns126190%_)
                                                        (if (gx#stx-false?
                                                             _%ns126190%_)
                                                            '#!void
                                                            (gx#raise-syntax-error
                                                             'import
                                                             '"Bad syntax; illegal namespace"
                                                             _%ns126190%_))))))
                                          (_%lp126082%_
                                           _%rest126192%_
                                           _%pre126085%_
                                           _%ns126198%_
                                           _%pkg126087%_))))
                                    (_%E126097126170%_))
                                (_%E126097126170%_))))
                        (_%E126097126170%_))))
                 (_%E126089126224%_
                  (lambda ()
                    (if (gx#stx-pair? _%e126088126112%_)
                        (let ((_%e126091126204%_
                               (gx#syntax-e _%e126088126112%_)))
                          (let ((_%hd126092126207%_ (##car _%e126091126204%_))
                                (_%tl126093126209%_ (##cdr _%e126091126204%_)))
                            (if (eq? (gx#stx-e _%hd126092126207%_) 'prelude:)
                                (if (gx#stx-pair? _%tl126093126209%_)
                                    (let ((_%e126094126212%_
                                           (gx#syntax-e _%tl126093126209%_)))
                                      (let ((_%hd126095126215%_
                                             (##car _%e126094126212%_))
                                            (_%tl126096126217%_
                                             (##cdr _%e126094126212%_)))
                                        (let* ((_%prelude126220%_
                                                _%hd126095126215%_)
                                               (_%rest126222%_
                                                _%tl126096126217%_))
                                          (_%lp126082%_
                                           _%rest126222%_
                                           _%prelude126220%_
                                           _%ns126086%_
                                           _%pkg126087%_))))
                                    (_%E126090126200%_))
                                (_%E126090126200%_))))
                        (_%E126090126200%_)))))
            (_%E126089126224%_)))))
    (define gx#core-read-module/lang
      (lambda (_%path125902%_)
        (letrec ((_%default-read-module-body125904%_
                  (lambda (_%inp126072%_)
                    (let _%lp126074%_ ((_%body126076%_ '()))
                      (let ((_%next126078%_ (read-syntax__% _%inp126072%_)))
                        (if (eof-object? _%next126078%_)
                            (reverse _%body126076%_)
                            (_%lp126074%_
                             (cons _%next126078%_ _%body126076%_)))))))
                 (_%read-body125905%_
                  (lambda (_%inp125990%_
                           _%pre125991%_
                           _%ns125992%_
                           _%pkg125993%_
                           _%args125994%_)
                    (let ((_g127472_
                           (if _%pkg125993%_
                               (values _%pre125991%_
                                       _%ns125992%_
                                       _%pkg125993%_)
                               (gx#core-read-module-package
                                _%path125902%_
                                _%pre125991%_
                                _%ns125992%_))))
                      (begin
                        (let ((_g127473_
                               (if (##values? _g127472_)
                                   (##vector-length _g127472_)
                                   1)))
                          (if (not (##fx= _g127473_ 3))
                              (error "Context expects 3 values" _g127473_)))
                        (let ((_%pre125996%_ (##vector-ref _g127472_ 0))
                              (_%ns125997%_ (##vector-ref _g127472_ 1))
                              (_%pkg125998%_ (##vector-ref _g127472_ 2)))
                          (let* ((_%prelude126000%_
                                  (gx#import-module__0 _%pre125996%_))
                                 (_%read-module-body126055%_
                                  (let ((_%$e126046%_
                                         (__find (lambda (_%e126001126003%_)
                                                   (let* ((_%g126005126015%_
                                                           _%e126001126003%_)
                                                          (_%else126007126023%_
                                                           (lambda () '#f))
                                                          (_%K126009126027%_
                                                           (lambda () '#t)))
                                                     (if (##structure-direct-instance-of?
                                                          _%g126005126015%_
                                                          'gx#module-export::t)
                                                         (let* ((_%e126010126030%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##unchecked-structure-ref
                          _%g126005126015%_
                          '1
                          '#f
                          '#f))
                        (_%e126011126033%_
                         (##unchecked-structure-ref
                          _%g126005126015%_
                          '2
                          '#f
                          '#f))
                        (_%e126012126036%_
                         (##unchecked-structure-ref
                          _%g126005126015%_
                          '3
                          '#f
                          '#f)))
                   (if (##eq? _%e126012126036%_ '1)
                       (let ((_%e126013126039%_
                              (##unchecked-structure-ref
                               _%g126005126015%_
                               '4
                               '#f
                               '#f)))
                         (if ((lambda (_%g126041126043%_)
                                (eq? _%g126041126043%_ 'read-module-body))
                              _%e126013126039%_)
                             (_%K126009126027%_)
                             (_%else126007126023%_)))
                       (_%else126007126023%_)))
                 (_%else126007126023%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (##unchecked-structure-ref
                                                  _%prelude126000%_
                                                  '9
                                                  '#f
                                                  '#f))))
                                    (if _%$e126046%_
                                        ((lambda (_%xport126049%_)
                                           (let ((_%proc126052%_
                                                  (__with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _%xport126049%_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _%proc126052%_)
                                                 _%proc126052%_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _%path125902%_
                                                  _%pre125996%_
                                                  _%proc126052%_))))
                                         _%$e126046%_)
                                        _%default-read-module-body125904%_)))
                                 (_%path-id126057%_
                                  (gx#core-module-path->namespace
                                   _%path125902%_))
                                 (_%pkg-id126059%_
                                  (if _%pkg125998%_
                                      (##string-append
                                       _%pkg125998%_
                                       '"/"
                                       _%path-id126057%_)
                                      _%path-id126057%_))
                                 (_%module-id126061%_
                                  (##string->symbol _%pkg-id126059%_))
                                 (_%module-ns126066%_
                                  (let ((_%$e126063%_ _%ns125997%_))
                                    (if _%$e126063%_
                                        _%$e126063%_
                                        _%pkg-id126059%_)))
                                 (_%body126069%_
                                  (__call-with-parameters
                                   (lambda ()
                                     (_%read-module-body126055%_
                                      _%inp125990%_))
                                   gx#current-module-reader-path
                                   _%path125902%_
                                   gx#current-module-reader-args
                                   _%args125994%_)))
                            (values _%prelude126000%_
                                    _%module-id126061%_
                                    _%module-ns126066%_
                                    _%body126069%_)))))))
                 (_%string-e125906%_
                  (lambda (_%obj125984%_ _%what125985%_)
                    (if (string? _%obj125984%_)
                        _%obj125984%_
                        (if (symbol? _%obj125984%_)
                            (##symbol->string _%obj125984%_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _%what125985%_)
                             _%path125902%_
                             _%obj125984%_)))))
                 (_%read-lang-args125907%_
                  (lambda (_%inp125939%_ _%args125940%_)
                    (let* ((_%args125941125949%_ _%args125940%_)
                           (_%else125943125957%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _%path125902%_)))
                           (_%K125945125972%_
                            (lambda (_%args125960%_ _%prelude125961%_)
                              (let* ((_%pkg125963%_
                                      (pgetq__0 'package: _%args125960%_))
                                     (_%pkg125965%_
                                      (if _%pkg125963%_
                                          (_%string-e125906%_
                                           _%pkg125963%_
                                           '"package")
                                          '#f))
                                     (_%ns125967%_
                                      (pgetq__0 'namespace: _%args125960%_))
                                     (_%ns125969%_
                                      (if _%ns125967%_
                                          (_%string-e125906%_
                                           _%ns125967%_
                                           '"namespace")
                                          '#f)))
                                (_%read-body125905%_
                                 _%inp125939%_
                                 _%prelude125961%_
                                 _%ns125969%_
                                 _%pkg125965%_
                                 _%args125960%_)))))
                      (if (##pair? _%args125941125949%_)
                          (let ((_%hd125946125975%_
                                 (##car _%args125941125949%_))
                                (_%tl125947125977%_
                                 (##cdr _%args125941125949%_)))
                            (let* ((_%prelude125980%_ _%hd125946125975%_)
                                   (_%args125982%_ _%tl125947125977%_))
                              (_%K125945125972%_
                               _%args125982%_
                               _%prelude125980%_)))
                          (_%else125943125957%_)))))
                 (_%read-lang125908%_
                  (lambda (_%inp125913%_)
                    (let* ((_%head125915%_ (read-line _%inp125913%_))
                           (_%$e125917%_
                            (string-index__0 _%head125915%_ '#\space)))
                      (if _%$e125917%_
                          ((lambda (_%ix125920%_)
                             (let ((_%lang125922%_
                                    (substring
                                     _%head125915%_
                                     '0
                                     _%ix125920%_)))
                               (if (equal? _%lang125922%_ '"#lang")
                                   (let* ((_%rest125924%_
                                           (substring
                                            _%head125915%_
                                            (##fx+ _%ix125920%_ '1)
                                            (string-length _%head125915%_)))
                                          (_%args125935%_
                                           (__with-catch
                                            (lambda (_%g125925125927%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _%path125902%_
                                               _%g125925125927%_))
                                            (lambda ()
                                              (call-with-input-string
                                               _%rest125924%_
                                               (lambda (_%g125930125932%_)
                                                 (read-all
                                                  _%g125930125932%_
                                                  read)))))))
                                     (_%read-lang-args125907%_
                                      _%inp125913%_
                                      _%args125935%_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _%path125902%_))))
                           _%$e125917%_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _%path125902%_)))))
                 (_%read-e125909%_
                  (lambda (_%inp125911%_)
                    (if (eq? (peek-char _%inp125911%_) '#\#)
                        (_%read-lang125908%_ _%inp125911%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _%path125902%_)))))
          (gx#call-with-input-source-file _%path125902%_ _%read-e125909%_))))
    (define gx#core-read-module-package
      (lambda (_%path125850%_ _%pre125851%_ _%ns125852%_)
        (letrec ((_%string-e125854%_
                  (lambda (_%e125897%_)
                    (if (symbol? _%e125897%_)
                        (##symbol->string _%e125897%_)
                        (if (string? _%e125897%_)
                            _%e125897%_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%e125897%_))))))
          (let _%lp125856%_ ((_%dir125858%_ (path-directory _%path125850%_))
                             (_%pkg-path125859%_ '()))
            (let ((_%gerbil.pkg125861%_
                   (path-expand '"gerbil.pkg" _%dir125858%_)))
              (if (##file-exists? _%gerbil.pkg125861%_)
                  (let ((_%plist125863%_
                         (gx#core-library-package-plist__% _%dir125858%_ '#t)))
                    (if (null? _%plist125863%_)
                        (let ((_%pkg125866%_
                               (if (null? _%pkg-path125859%_)
                                   '#f
                                   (string-join _%pkg-path125859%_ '"/"))))
                          (values _%pre125851%_ _%ns125852%_ _%pkg125866%_))
                        (if (list? _%plist125863%_)
                            (let* ((_%root125869%_
                                    (pgetq__0 'package: _%plist125863%_))
                                   (_%pkg125873%_
                                    (let ((_%pkg-path125871%_
                                           (if _%root125869%_
                                               (cons (_%string-e125854%_
                                                      _%root125869%_)
                                                     _%pkg-path125859%_)
                                               _%pkg-path125859%_)))
                                      (if (null? _%pkg-path125871%_)
                                          '#f
                                          (string-join
                                           _%pkg-path125871%_
                                           '"/"))))
                                   (_%ns125880%_
                                    (let ((_%ns125878%_
                                           (let ((_%$e125875%_ _%ns125852%_))
                                             (if _%$e125875%_
                                                 _%$e125875%_
                                                 (pgetq__0
                                                  'namespace:
                                                  _%plist125863%_)))))
                                      (if _%ns125878%_
                                          (_%string-e125854%_ _%ns125878%_)
                                          '#f)))
                                   (_%pre125885%_
                                    (let ((_%$e125882%_ _%pre125851%_))
                                      (if _%$e125882%_
                                          _%$e125882%_
                                          (pgetq__0
                                           'prelude:
                                           _%plist125863%_)))))
                              (values _%pre125885%_
                                      _%ns125880%_
                                      _%pkg125873%_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%plist125863%_))))
                  (let ((_%dir*125889%_
                         (path-strip-trailing-directory-separator
                          _%dir125858%_)))
                    (if (or (__string-empty? _%dir*125889%_)
                            (equal? _%dir125858%_ _%dir*125889%_))
                        (values _%pre125851%_ _%ns125852%_ '#f)
                        (let ((_%xpath125894%_
                               (path-strip-directory _%dir*125889%_))
                              (_%xdir125895%_ (path-directory _%dir*125889%_)))
                          (_%lp125856%_
                           _%xdir125895%_
                           (cons _%xpath125894%_ _%pkg-path125859%_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_%path125848%_)
        (path-strip-extension (path-strip-directory _%path125848%_))))
    (define gx#core-module-path->id
      (lambda (_%path125846%_)
        (##string->symbol (gx#core-module-path->namespace _%path125846%_))))
    (define gx#core-resolve-module-path__%
      (lambda (_%stx-path125825%_ _%rel125826%_)
        (let* ((_%path125828%_ (gx#stx-e _%stx-path125825%_))
               (_%path125830%_
                (if (__string-empty? (path-extension _%path125828%_))
                    (##string-append _%path125828%_ '".ss")
                    _%path125828%_)))
          (gx#core-resolve-path__%
           _%path125830%_
           (let ((_%$e125833%_ (gx#stx-source _%stx-path125825%_)))
             (if _%$e125833%_ _%$e125833%_ _%rel125826%_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_%stx-path125839%_)
        (let ((_%rel125841%_ '#f))
          (gx#core-resolve-module-path__% _%stx-path125839%_ _%rel125841%_))))
    (define gx#core-resolve-module-path
      (lambda _g127475_
        (let ((_g127474_ (##length _g127475_)))
          (cond ((##fx= _g127474_ 1)
                 (apply gx#core-resolve-module-path__0 _g127475_))
                ((##fx= _g127474_ 2)
                 (apply gx#core-resolve-module-path__% _g127475_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g127475_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_%libpath125710%_)
        (let* ((_%spath125712%_ (symbol->string (gx#stx-e _%libpath125710%_)))
               (_%spath125714%_
                (substring
                 _%spath125712%_
                 '1
                 (##string-length _%spath125712%_)))
               (_%ext125716%_ (path-extension _%spath125714%_))
               (_%ssi125718%_
                (if (__string-empty? _%ext125716%_)
                    (##string-append _%spath125714%_ '".ssi")
                    (##string-append
                     (path-strip-extension _%spath125714%_)
                     '".ssi")))
               (_%srcs125722%_
                (if (__string-empty? _%ext125716%_)
                    (##map (lambda (_%ext125720%_)
                             (string-append _%spath125714%_ _%ext125720%_))
                           '(".ss" ".sld" ".scm"))
                    (cons _%spath125714%_ '()))))
          (let _%lp125725%_ ((_%rest125727%_ (load-path)))
            (let* ((_%rest125728125737%_ _%rest125727%_)
                   (_%E125731125741%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rest125728125737%_
                             '([dir . rest])
                             '([]))
                      '#!void)))
              (let ((_%K125733125812%_
                     (lambda (_%rest125752%_ _%dir125753%_)
                       (letrec ((_%resolve125755%_
                                 (lambda (_%ssi125768%_ _%srcs125769%_)
                                   (let ((_%compiled-path125771%_
                                          (path-expand
                                           _%ssi125768%_
                                           _%dir125753%_)))
                                     (if (##file-exists?
                                          _%compiled-path125771%_)
                                         (path-normalize
                                          _%compiled-path125771%_)
                                         (let _%lpr125773%_ ((_%rest-src125775%_
                                                              _%srcs125769%_))
                                           (let* ((_%rest-src125776125784%_
                                                   _%rest-src125775%_)
                                                  (_%else125778125792%_
                                                   (lambda ()
                                                     (_%lp125725%_
                                                      _%rest125752%_)))
                                                  (_%K125780125800%_
                                                   (lambda (_%rest-src125795%_
                                                            _%src125796%_)
                                                     (let ((_%src-path125798%_
                                                            (path-expand
                                                             _%src125796%_
                                                             _%dir125753%_)))
                                                       (if (##file-exists?
                                                            _%src-path125798%_)
                                                           (path-normalize
                                                            _%src-path125798%_)
                                                           (_%lpr125773%_
                                                            _%rest-src125795%_))))))
                                             (if (##pair? _%rest-src125776125784%_)
                                                 (let ((_%hd125781125803%_
                                                        (##car _%rest-src125776125784%_))
                                                       (_%tl125782125805%_
                                                        (##cdr _%rest-src125776125784%_)))
                                                   (let* ((_%src125808%_
                                                           _%hd125781125803%_)
                                                          (_%rest-src125810%_
                                                           _%tl125782125805%_))
                                                     (_%K125780125800%_
                                                      _%rest-src125810%_
                                                      _%src125808%_)))
                                                 (_%else125778125792%_)))))))))
                         (let ((_%$e125757%_
                                (gx#core-library-package-path-prefix
                                 _%dir125753%_)))
                           (if _%$e125757%_
                               ((lambda (_%prefix125760%_)
                                  (if (string-prefix?
                                       _%prefix125760%_
                                       _%spath125714%_)
                                      (let ((_%ssi125764%_
                                             (substring
                                              _%ssi125718%_
                                              (string-length _%prefix125760%_)
                                              (##string-length _%ssi125718%_)))
                                            (_%srcs125765%_
                                             (##map (lambda (_%src125762%_)
                                                      (substring
                                                       _%src125762%_
                                                       (string-length
                                                        _%prefix125760%_)
                                                       (string-length
                                                        _%src125762%_)))
                                                    _%srcs125722%_)))
                                        (_%resolve125755%_
                                         _%ssi125764%_
                                         _%srcs125765%_))
                                      (_%lp125725%_ _%rest125752%_)))
                                _%$e125757%_)
                               (_%resolve125755%_
                                _%ssi125718%_
                                _%srcs125722%_))))))
                    (_%K125732125746%_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"cannot find library module"
                        _%libpath125710%_))))
                (let ((_%try-match125730125749%_
                       (lambda ()
                         (if (##null? _%rest125728125737%_)
                             (_%K125732125746%_)
                             (_%E125731125741%_)))))
                  (if (##pair? _%rest125728125737%_)
                      (let ((_%tl125735125817%_ (##cdr _%rest125728125737%_))
                            (_%hd125734125815%_ (##car _%rest125728125737%_)))
                        (let ((_%dir125820%_ _%hd125734125815%_)
                              (_%rest125822%_ _%tl125735125817%_))
                          (_%K125733125812%_ _%rest125822%_ _%dir125820%_)))
                      (_%try-match125730125749%_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_%modpath125678%_)
        (letrec ((_%resolve125680%_
                  (lambda (_%path125701%_ _%base125702%_)
                    (let ((_%$e125704%_
                           (string-rindex__0 _%base125702%_ '#\/)))
                      (if _%$e125704%_
                          ((lambda (_%idx125707%_)
                             (gx#core-resolve-library-module-path
                              (##string->symbol
                               (string-append
                                '":"
                                (substring _%base125702%_ '0 _%idx125707%_)
                                '"/"
                                _%path125701%_))))
                           _%$e125704%_)
                          (gx#core-resolve-library-module-path
                           (##string->symbol
                            (string-append '":" _%path125701%_))))))))
          (let ((_%spath125682%_ (symbol->string (gx#stx-e _%modpath125678%_)))
                (_%mod125683%_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _%mod125683%_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"cannot resolve relative module path; not in module context"
                 _%modpath125678%_))
            (let ((_%mpath125685%_
                   (symbol->string
                    (##structure-ref
                     _%mod125683%_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _%lp125687%_ ((_%spath125689%_ _%spath125682%_)
                                 (_%mpath125690%_ _%mpath125685%_))
                (if (string-prefix? '"../" _%spath125689%_)
                    (let ((_%$e125693%_
                           (string-rindex__0 _%mpath125690%_ '#\/)))
                      (if _%$e125693%_
                          ((lambda (_%idx125696%_)
                             (_%lp125687%_
                              (substring
                               _%spath125689%_
                               '3
                               (string-length _%spath125689%_))
                              (substring _%mpath125690%_ '0 _%idx125696%_)))
                           _%$e125693%_)
                          (gx#raise-syntax-error
                           '#f
                           '"cannot resolve relative module path; illegal traversal"
                           _%modpath125678%_)))
                    (if (string-prefix? '"./" _%spath125689%_)
                        (_%lp125687%_
                         (substring
                          _%spath125689%_
                          '2
                          (string-length _%spath125689%_))
                         _%mpath125690%_)
                        (_%resolve125680%_
                         _%spath125689%_
                         _%mpath125690%_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_%dir125670%_)
        (let ((_%$e125672%_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _%dir125670%_))))
          (if _%$e125672%_
              ((lambda (_%pkg125675%_)
                 (##string-append (symbol->string _%pkg125675%_) '"/"))
               _%$e125672%_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_%dir125640%_ _%exists?125641%_)
        (let ((_%$e125643%_ (__hash-get gx#__module-pkg-cache _%dir125640%_)))
          (if _%$e125643%_
              _%$e125643%_
              (let* ((_%gerbil.pkg125647%_
                      (path-expand '"gerbil.pkg" _%dir125640%_))
                     (_%plist125657%_
                      (if (or _%exists?125641%_
                              (##file-exists? _%gerbil.pkg125647%_))
                          (let ((_%e125652%_
                                 (gx#call-with-input-source-file
                                  _%gerbil.pkg125647%_
                                  read)))
                            (if (eof-object? _%e125652%_)
                                '()
                                (if (list? _%e125652%_)
                                    _%e125652%_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _%gerbil.pkg125647%_
                                     _%e125652%_))))
                          '())))
                (__hash-put!
                 gx#__module-pkg-cache
                 _%dir125640%_
                 _%plist125657%_)
                _%plist125657%_)))))
    (define gx#core-library-package-plist__0
      (lambda (_%dir125663%_)
        (let ((_%exists?125665%_ '#f))
          (gx#core-library-package-plist__% _%dir125663%_ _%exists?125665%_))))
    (define gx#core-library-package-plist
      (lambda _g127477_
        (let ((_g127476_ (##length _g127477_)))
          (cond ((##fx= _g127476_ 1)
                 (apply gx#core-library-package-plist__0 _g127477_))
                ((##fx= _g127476_ 2)
                 (apply gx#core-library-package-plist__% _g127477_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g127477_))))))
    (define gx#core-library-module-path?
      (lambda (_%stx125637%_)
        (gx#core-special-module-path? _%stx125637%_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_%stx125635%_)
        (gx#core-special-module-path? _%stx125635%_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_%stx125630%_ _%char125631%_)
        (if (gx#identifier? _%stx125630%_)
            (if (interned-symbol? (gx#stx-e _%stx125630%_))
                (let ((_%str125633%_
                       (symbol->string (gx#stx-e _%stx125630%_))))
                  (if (##fx> (##string-length _%str125633%_) '1)
                      (eq? (string-ref _%str125633%_ '0) _%char125631%_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_%stx125624%_)
        (gx#core-bound-identifier?__%
         _%stx125624%_
         (lambda (_%g125625125627%_)
           (gx#expander-binding?__% _%g125625125627%_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_%stx125618%_)
        (gx#core-bound-identifier?__%
         _%stx125618%_
         (lambda (_%g125619125621%_)
           (gx#expander-binding?__% _%g125619125621%_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_%stx125605%_)
        (letrec ((_%module-prelude?125607%_
                  (lambda (_%e125613%_)
                    (let ((_%$e125615%_
                           (##structure-instance-of?
                            _%e125613%_
                            'gx#module-context::t)))
                      (if _%$e125615%_
                          _%$e125615%_
                          (##structure-instance-of?
                           _%e125613%_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _%stx125605%_
           (lambda (_%g125608125610%_)
             (gx#expander-binding?__%
              _%g125608125610%_
              _%module-prelude?125607%_))))))
    (define gx#core-bind-import!__%
      (lambda (_%in125535%_ _%ctx125536%_ _%force-weak?125537%_)
        (let* ((_%in125538125547%_ _%in125535%_)
               (_%E125540125551%_
                (lambda ()
                  (error '"No clause matching"
                         _%in125538125547%_
                         '((module-import source key phi weak?)))
                  '#!void))
               (_%K125541125564%_
                (lambda (_%weak?125554%_
                         _%phi125555%_
                         _%key125556%_
                         _%source125557%_)
                  (gx#core-bind!__%
                   _%key125556%_
                   (let ((_%e125559%_
                          (gx#core-resolve-module-export _%source125557%_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref _%e125559%_ '1 '#f '#f)
                      _%key125556%_
                      _%phi125555%_
                      _%e125559%_
                      (##unchecked-structure-ref _%source125557%_ '1 '#f '#f)
                      (let ((_%$e125561%_ _%force-weak?125537%_))
                        (if _%$e125561%_ _%$e125561%_ _%weak?125554%_))))
                   gx#core-context-rebind?
                   _%phi125555%_
                   _%ctx125536%_))))
          (if (##structure-direct-instance-of?
               _%in125538125547%_
               'gx#module-import::t)
              (let* ((_%e125542125567%_
                      (##unchecked-structure-ref
                       _%in125538125547%_
                       '1
                       '#f
                       '#f))
                     (_%source125570%_ _%e125542125567%_)
                     (_%e125543125572%_
                      (##unchecked-structure-ref
                       _%in125538125547%_
                       '2
                       '#f
                       '#f))
                     (_%key125575%_ _%e125543125572%_)
                     (_%e125544125577%_
                      (##unchecked-structure-ref
                       _%in125538125547%_
                       '3
                       '#f
                       '#f))
                     (_%phi125580%_ _%e125544125577%_)
                     (_%e125545125582%_
                      (##unchecked-structure-ref
                       _%in125538125547%_
                       '4
                       '#f
                       '#f))
                     (_%weak?125585%_ _%e125545125582%_))
                (_%K125541125564%_
                 _%weak?125585%_
                 _%phi125580%_
                 _%key125575%_
                 _%source125570%_))
              (_%E125540125551%_)))))
    (define gx#core-bind-import!__0
      (lambda (_%in125590%_)
        (let* ((_%ctx125592%_ (gx#current-expander-context))
               (_%force-weak?125594%_ '#f))
          (gx#core-bind-import!__%
           _%in125590%_
           _%ctx125592%_
           _%force-weak?125594%_))))
    (define gx#core-bind-import!__1
      (lambda (_%in125596%_ _%ctx125597%_)
        (let ((_%force-weak?125599%_ '#f))
          (gx#core-bind-import!__%
           _%in125596%_
           _%ctx125597%_
           _%force-weak?125599%_))))
    (define gx#core-bind-import!
      (lambda _g127479_
        (let ((_g127478_ (##length _g127479_)))
          (cond ((##fx= _g127478_ 1) (apply gx#core-bind-import!__0 _g127479_))
                ((##fx= _g127478_ 2) (apply gx#core-bind-import!__1 _g127479_))
                ((##fx= _g127478_ 3) (apply gx#core-bind-import!__% _g127479_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g127479_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_%in125521%_ _%ctx125522%_)
        (gx#core-bind-import!__% _%in125521%_ _%ctx125522%_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_%in125527%_)
        (let ((_%ctx125529%_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _%in125527%_ _%ctx125529%_))))
    (define gx#core-bind-weak-import!
      (lambda _g127481_
        (let ((_g127480_ (##length _g127481_)))
          (cond ((##fx= _g127480_ 1)
                 (apply gx#core-bind-weak-import!__0 _g127481_))
                ((##fx= _g127480_ 2)
                 (apply gx#core-bind-weak-import!__% _g127481_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g127481_))))))
    (define gx#core-resolve-module-export
      (lambda (_%out125412%_)
        (letrec ((_%subst125414%_
                  (lambda (_%key125460%_)
                    (let* ((_%key125461125469%_ _%key125460%_)
                           (_%else125463125477%_ (lambda () _%key125460%_))
                           (_%K125465125508%_
                            (lambda (_%mark125480%_ _%id125481%_)
                              (let* ((_%mark125482125488%_ _%mark125480%_)
                                     (_%E125484125492%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark125482125488%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K125485125500%_
                                      (lambda (_%subst125495%_)
                                        (let ((_%$e125497%_
                                               (if _%subst125495%_
                                                   (hash-get
                                                    _%subst125495%_
                                                    _%id125481%_)
                                                   '#f)))
                                          (if _%$e125497%_
                                              _%$e125497%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _%key125460%_))))))
                                (if (##structure-instance-of?
                                     _%mark125482125488%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e125486125503%_
                                            (##unchecked-structure-ref
                                             _%mark125482125488%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst125506%_ _%e125486125503%_))
                                      (_%K125485125500%_ _%subst125506%_))
                                    (_%E125484125492%_))))))
                      (if (##pair? _%key125461125469%_)
                          (let ((_%hd125466125511%_
                                 (##car _%key125461125469%_))
                                (_%tl125467125513%_
                                 (##cdr _%key125461125469%_)))
                            (let* ((_%id125516%_ _%hd125466125511%_)
                                   (_%mark125518%_ _%tl125467125513%_))
                              (_%K125465125508%_ _%mark125518%_ _%id125516%_)))
                          (_%else125463125477%_))))))
          (let* ((_%out125415125425%_ _%out125412%_)
                 (_%E125417125429%_
                  (lambda ()
                    (error '"No clause matching"
                           _%out125415125425%_
                           '((module-export ctx key phi _ _)))
                    '#!void))
                 (_%K125418125436%_
                  (lambda (_%phi125432%_ _%key125433%_ _%ctx125434%_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _%ctx125434%_ _%phi125432%_)
                     (_%subst125414%_ _%key125433%_)))))
            (if (##structure-direct-instance-of?
                 _%out125415125425%_
                 'gx#module-export::t)
                (let* ((_%e125419125439%_
                        (##unchecked-structure-ref
                         _%out125415125425%_
                         '1
                         '#f
                         '#f))
                       (_%ctx125442%_ _%e125419125439%_)
                       (_%e125420125444%_
                        (##unchecked-structure-ref
                         _%out125415125425%_
                         '2
                         '#f
                         '#f))
                       (_%key125447%_ _%e125420125444%_)
                       (_%e125421125449%_
                        (##unchecked-structure-ref
                         _%out125415125425%_
                         '3
                         '#f
                         '#f))
                       (_%phi125452%_ _%e125421125449%_)
                       (_%e125422125454%_
                        (##unchecked-structure-ref
                         _%out125415125425%_
                         '4
                         '#f
                         '#f))
                       (_%e125423125457%_
                        (##unchecked-structure-ref
                         _%out125415125425%_
                         '5
                         '#f
                         '#f)))
                  (_%K125418125436%_
                   _%phi125452%_
                   _%key125447%_
                   _%ctx125442%_))
                (_%E125417125429%_))))))
    (define gx#core-module-export->import__%
      (lambda (_%out125337%_ _%rename125338%_ _%dphi125339%_)
        (let* ((_%out125340125350%_ _%out125337%_)
               (_%E125342125354%_
                (lambda ()
                  (error '"No clause matching"
                         _%out125340125350%_
                         '((module-export ctx key phi name weak?)))
                  '#!void))
               (_%K125343125366%_
                (lambda (_%weak?125357%_
                         _%name125358%_
                         _%phi125359%_
                         _%key125360%_
                         _%ctx125361%_)
                  (##structure
                   gx#module-import::t
                   _%out125337%_
                   (let ((_%$e125363%_ _%rename125338%_))
                     (if _%$e125363%_ _%$e125363%_ _%name125358%_))
                   (fx+ _%phi125359%_ _%dphi125339%_)
                   _%weak?125357%_))))
          (if (##structure-direct-instance-of?
               _%out125340125350%_
               'gx#module-export::t)
              (let* ((_%e125344125369%_
                      (##unchecked-structure-ref
                       _%out125340125350%_
                       '1
                       '#f
                       '#f))
                     (_%ctx125372%_ _%e125344125369%_)
                     (_%e125345125374%_
                      (##unchecked-structure-ref
                       _%out125340125350%_
                       '2
                       '#f
                       '#f))
                     (_%key125377%_ _%e125345125374%_)
                     (_%e125346125379%_
                      (##unchecked-structure-ref
                       _%out125340125350%_
                       '3
                       '#f
                       '#f))
                     (_%phi125382%_ _%e125346125379%_)
                     (_%e125347125384%_
                      (##unchecked-structure-ref
                       _%out125340125350%_
                       '4
                       '#f
                       '#f))
                     (_%name125387%_ _%e125347125384%_)
                     (_%e125348125389%_
                      (##unchecked-structure-ref
                       _%out125340125350%_
                       '5
                       '#f
                       '#f))
                     (_%weak?125392%_ _%e125348125389%_))
                (_%K125343125366%_
                 _%weak?125392%_
                 _%name125387%_
                 _%phi125382%_
                 _%key125377%_
                 _%ctx125372%_))
              (_%E125342125354%_)))))
    (define gx#core-module-export->import__0
      (lambda (_%out125397%_)
        (let* ((_%rename125399%_ '#f) (_%dphi125401%_ '0))
          (gx#core-module-export->import__%
           _%out125397%_
           _%rename125399%_
           _%dphi125401%_))))
    (define gx#core-module-export->import__1
      (lambda (_%out125403%_ _%rename125404%_)
        (let ((_%dphi125406%_ '0))
          (gx#core-module-export->import__%
           _%out125403%_
           _%rename125404%_
           _%dphi125406%_))))
    (define gx#core-module-export->import
      (lambda _g127483_
        (let ((_g127482_ (##length _g127483_)))
          (cond ((##fx= _g127482_ 1)
                 (apply gx#core-module-export->import__0 _g127483_))
                ((##fx= _g127482_ 2)
                 (apply gx#core-module-export->import__1 _g127483_))
                ((##fx= _g127482_ 3)
                 (apply gx#core-module-export->import__% _g127483_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g127483_))))))
    (define gx#core-expand-module%
      (lambda (_%stx125236%_)
        (letrec ((_%make-context125238%_
                  (lambda (_%id125315%_)
                    (let* ((_%super125317%_ (gx#current-expander-context))
                           (_%bind-id125319%_ (gx#stx-e _%id125315%_))
                           (_%mod-id125321%_
                            (if (##structure-instance-of?
                                 _%super125317%_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##unchecked-structure-ref
                                  _%super125317%_
                                  '1
                                  '#f
                                  '#f)
                                 '"~"
                                 _%bind-id125319%_)
                                _%bind-id125319%_))
                           (_%ns125323%_ (symbol->string _%mod-id125321%_))
                           (_%path125333%_
                            (if (##structure-instance-of?
                                 _%super125317%_
                                 'gx#module-context::t)
                                (let ((_%path125325%_
                                       (##unchecked-structure-ref
                                        _%super125317%_
                                        '7
                                        '#f
                                        '#f)))
                                  (if (or (pair? _%path125325%_)
                                          (null? _%path125325%_))
                                      (cons _%bind-id125319%_ _%path125325%_)
                                      (if (not _%path125325%_)
                                          _%bind-id125319%_
                                          (cons _%bind-id125319%_
                                                (cons _%path125325%_ '())))))
                                _%bind-id125319%_))
                           (__obj127459
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
                       __obj127459
                       _%mod-id125321%_
                       _%super125317%_
                       _%ns125323%_
                       _%path125333%_)
                      __obj127459)))
                 (_%valid-module-id?125239%_
                  (lambda (_%id125290%_)
                    (let* ((_%str125292%_ (symbol->string _%id125290%_))
                           (_%len125294%_ (##string-length _%str125292%_)))
                      (if (##fx>= _%len125294%_ '1)
                          (let _%loop125297%_ ((_%index125299%_
                                                (##fx- (##string-length
                                                        _%str125292%_)
                                                       '1)))
                            (if (##fx>= _%index125299%_ '0)
                                (let ((_%c125301%_
                                       (string-ref
                                        _%str125292%_
                                        _%index125299%_)))
                                  (if (or (and (##char>=? _%c125301%_ '#\a)
                                               (##char<=? _%c125301%_ '#\z))
                                          (and (##char>=? _%c125301%_ '#\A)
                                               (##char<=? _%c125301%_ '#\Z))
                                          (and (##char>=? _%c125301%_ '#\0)
                                               (##char<=? _%c125301%_ '#\9))
                                          (##char=? _%c125301%_ '#\_)
                                          (##char=? _%c125301%_ '#\-))
                                      (_%loop125297%_
                                       (##fx- _%index125299%_ '1))
                                      '#f))
                                '#t))
                          '#f)))))
          (let* ((_%e125240125250%_ _%stx125236%_)
                 (_%E125242125254%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e125240125250%_)))
                 (_%E125241125286%_
                  (lambda ()
                    (if (gx#stx-pair? _%e125240125250%_)
                        (let ((_%e125243125258%_
                               (gx#syntax-e _%e125240125250%_)))
                          (let ((_%hd125244125261%_ (##car _%e125243125258%_))
                                (_%tl125245125263%_ (##cdr _%e125243125258%_)))
                            (if (gx#stx-pair? _%tl125245125263%_)
                                (let ((_%e125246125266%_
                                       (gx#syntax-e _%tl125245125263%_)))
                                  (let ((_%hd125247125269%_
                                         (##car _%e125246125266%_))
                                        (_%tl125248125271%_
                                         (##cdr _%e125246125266%_)))
                                    (let* ((_%id125274%_ _%hd125247125269%_)
                                           (_%body125276%_ _%tl125248125271%_))
                                      (if (and (gx#identifier? _%id125274%_)
                                               (gx#stx-list? _%body125276%_))
                                          (if (_%valid-module-id?125239%_
                                               (gx#stx-e
                                                (gx#datum->syntax__0 '#f 'id)))
                                              (let* ((_%ctx125278%_
                                                      (_%make-context125238%_
                                                       _%id125274%_))
                                                     (_%body125280%_
                                                      (gx#core-expand-module-begin
                                                       _%body125276%_
                                                       _%ctx125278%_))
                                                     (_%body125282%_
                                                      (gx#core-quote-syntax__1
                                                       (gx#core-cons
                                                        '%#begin
                                                        _%body125280%_)
                                                       (gx#stx-source
                                                        _%stx125236%_))))
                                                (##unchecked-structure-set!
                                                 _%ctx125278%_
                                                 (__make-promise
                                                  (lambda ()
                                                    (gx#eval-syntax*
                                                     _%body125282%_)))
                                                 '10
                                                 '#f
                                                 '#f)
                                                (##unchecked-structure-set!
                                                 _%ctx125278%_
                                                 _%body125282%_
                                                 '11
                                                 '#f
                                                 '#f)
                                                (gx#core-bind-syntax!__0
                                                 _%id125274%_
                                                 _%ctx125278%_)
                                                (gx#core-quote-syntax__1
                                                 (gx#core-list
                                                  '%#module
                                                  (gx#core-quote-syntax__0
                                                   _%id125274%_)
                                                  _%body125282%_)
                                                 (gx#stx-source
                                                  _%stx125236%_)))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"invalid module id; allowed characters are A-Z,a-z,0-9,_,-"
                                               _%stx125236%_
                                               (gx#datum->syntax__0 '#f 'id)))
                                          (_%E125242125254%_)))))
                                (_%E125242125254%_))))
                        (_%E125242125254%_)))))
            (_%E125241125286%_)))))
    (define gx#core-expand-module-begin
      (lambda (_%body125202%_ _%ctx125203%_)
        (__call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_%stx125206%_
                   (gx#core-expand-head (cons '%%begin-module _%body125202%_)))
                  (_%e125207125214%_ _%stx125206%_)
                  (_%E125209125218%_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _%stx125206%_)))
                  (_%E125208125232%_
                   (lambda ()
                     (if (gx#stx-pair? _%e125207125214%_)
                         (let ((_%e125210125222%_
                                (gx#syntax-e _%e125207125214%_)))
                           (let ((_%hd125211125225%_ (##car _%e125210125222%_))
                                 (_%tl125212125227%_
                                  (##cdr _%e125210125222%_)))
                             (if (and (gx#identifier? _%hd125211125225%_)
                                      (gx#core-identifier=?
                                       _%hd125211125225%_
                                       '%#begin-module))
                                 (let ((_%body125230%_ _%tl125212125227%_))
                                   (if (gx#sealed-syntax? _%stx125206%_)
                                       _%body125230%_
                                       (gx#core-expand-module-body
                                        _%body125230%_)))
                                 (_%E125209125218%_))))
                         (_%E125209125218%_)))))
             (_%E125208125232%_)))
         gx#current-expander-context
         _%ctx125203%_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_%body124998%_)
        (letrec ((_%expand-special125000%_
                  (lambda (_%hd125129%_ _%K125130%_ _%rest125131%_ _%r125132%_)
                    (let* ((_%e125133125150%_ _%hd125129%_)
                           (_%E125145125154%_
                            (lambda ()
                              (_%K125130%_
                               _%rest125131%_
                               (cons (gx#core-expand-top _%hd125129%_)
                                     _%r125132%_))))
                           (_%E125135125166%_
                            (lambda ()
                              (if (gx#stx-pair? _%e125133125150%_)
                                  (let ((_%e125146125158%_
                                         (gx#syntax-e _%e125133125150%_)))
                                    (let ((_%hd125147125161%_
                                           (##car _%e125146125158%_))
                                          (_%tl125148125163%_
                                           (##cdr _%e125146125158%_)))
                                      (if (and (gx#identifier?
                                                _%hd125147125161%_)
                                               (gx#core-identifier=?
                                                _%hd125147125161%_
                                                '%#export))
                                          (_%K125130%_
                                           _%rest125131%_
                                           (cons _%hd125129%_ _%r125132%_))
                                          (_%E125145125154%_))))
                                  (_%E125145125154%_))))
                           (_%E125134125198%_
                            (lambda ()
                              (if (gx#stx-pair? _%e125133125150%_)
                                  (let ((_%e125136125170%_
                                         (gx#syntax-e _%e125133125150%_)))
                                    (let ((_%hd125137125173%_
                                           (##car _%e125136125170%_))
                                          (_%tl125138125175%_
                                           (##cdr _%e125136125170%_)))
                                      (if (and (gx#identifier?
                                                _%hd125137125173%_)
                                               (gx#core-identifier=?
                                                _%hd125137125173%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl125138125175%_)
                                              (let ((_%e125139125178%_
                                                     (gx#syntax-e
                                                      _%tl125138125175%_)))
                                                (let ((_%hd125140125181%_
                                                       (##car _%e125139125178%_))
                                                      (_%tl125141125183%_
                                                       (##cdr _%e125139125178%_)))
                                                  (let ((_%hd-bind125186%_
                                                         _%hd125140125181%_))
                                                    (if (gx#stx-pair?
                                                         _%tl125141125183%_)
                                                        (let ((_%e125142125188%_
                                                               (gx#syntax-e
                                                                _%tl125141125183%_)))
                                                          (let ((_%hd125143125191%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e125142125188%_))
                        (_%tl125144125193%_ (##cdr _%e125142125188%_)))
                    (let ((_%expr125196%_ _%hd125143125191%_))
                      (if (gx#stx-null? _%tl125144125193%_)
                          (if (gx#core-bind-values? _%hd-bind125186%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind125186%_)
                                (_%K125130%_
                                 _%rest125131%_
                                 (cons _%hd125129%_ _%r125132%_)))
                              (_%E125135125166%_))
                          (_%E125135125166%_)))))
                (_%E125135125166%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E125135125166%_))
                                          (_%E125135125166%_))))
                                  (_%E125135125166%_)))))
                      (_%E125134125198%_))))
                 (_%expand-body125001%_
                  (lambda (_%rbody125003%_)
                    (let _%lp125005%_ ((_%rest125007%_ _%rbody125003%_)
                                       (_%body125008%_ '()))
                      (let* ((_%rest125009125017%_ _%rest125007%_)
                             (_%else125011125025%_ (lambda () _%body125008%_))
                             (_%K125013125117%_
                              (lambda (_%rest125028%_ _%hd125029%_)
                                (let* ((_%e125030125051%_ _%hd125029%_)
                                       (_%E125046125055%_
                                        (lambda ()
                                          (_%lp125005%_
                                           _%rest125028%_
                                           (cons (gx#core-expand-expression
                                                  _%hd125029%_)
                                                 _%body125008%_))))
                                       (_%E125042125069%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e125030125051%_)
                                              (let ((_%e125047125059%_
                                                     (gx#syntax-e
                                                      _%e125030125051%_)))
                                                (let ((_%hd125048125062%_
                                                       (##car _%e125047125059%_))
                                                      (_%tl125049125064%_
                                                       (##cdr _%e125047125059%_)))
                                                  (let ((_%form125067%_
                                                         _%hd125048125062%_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _%form125067%_
                                                         gx#special-form-binding?)
                                                        (_%lp125005%_
                                                         _%rest125028%_
                                                         (cons _%hd125029%_
                                                               _%body125008%_))
                                                        (_%E125046125055%_)))))
                                              (_%E125046125055%_))))
                                       (_%E125032125081%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e125030125051%_)
                                              (let ((_%e125043125073%_
                                                     (gx#syntax-e
                                                      _%e125030125051%_)))
                                                (let ((_%hd125044125076%_
                                                       (##car _%e125043125073%_))
                                                      (_%tl125045125078%_
                                                       (##cdr _%e125043125073%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd125044125076%_)
                                                           (gx#core-identifier=?
                                                            _%hd125044125076%_
                                                            '%#export))
                                                      (_%lp125005%_
                                                       _%rest125028%_
                                                       (cons (gx#core-expand-export%__0
                                                              _%hd125029%_)
                                                             _%body125008%_))
                                                      (_%E125042125069%_))))
                                              (_%E125042125069%_))))
                                       (_%E125031125113%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e125030125051%_)
                                              (let ((_%e125033125085%_
                                                     (gx#syntax-e
                                                      _%e125030125051%_)))
                                                (let ((_%hd125034125088%_
                                                       (##car _%e125033125085%_))
                                                      (_%tl125035125090%_
                                                       (##cdr _%e125033125085%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd125034125088%_)
                                                           (gx#core-identifier=?
                                                            _%hd125034125088%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl125035125090%_)
                                                          (let ((_%e125036125093%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl125035125090%_)))
                    (let ((_%hd125037125096%_ (##car _%e125036125093%_))
                          (_%tl125038125098%_ (##cdr _%e125036125093%_)))
                      (let ((_%hd-bind125101%_ _%hd125037125096%_))
                        (if (gx#stx-pair? _%tl125038125098%_)
                            (let ((_%e125039125103%_
                                   (gx#syntax-e _%tl125038125098%_)))
                              (let ((_%hd125040125106%_
                                     (##car _%e125039125103%_))
                                    (_%tl125041125108%_
                                     (##cdr _%e125039125103%_)))
                                (let ((_%expr125111%_ _%hd125040125106%_))
                                  (if (gx#stx-null? _%tl125041125108%_)
                                      (_%lp125005%_
                                       _%rest125028%_
                                       (cons (gx#core-quote-syntax__1
                                              (gx#core-list
                                               '%#define-values
                                               (gx#core-quote-bind-values
                                                _%hd-bind125101%_)
                                               (gx#core-expand-expression
                                                _%expr125111%_))
                                              (gx#stx-source _%hd125029%_))
                                             _%body125008%_))
                                      (_%E125032125081%_)))))
                            (_%E125032125081%_)))))
                  (_%E125032125081%_))
              (_%E125032125081%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E125032125081%_)))))
                                  (_%E125031125113%_)))))
                        (if (##pair? _%rest125009125017%_)
                            (let ((_%hd125014125120%_
                                   (##car _%rest125009125017%_))
                                  (_%tl125015125122%_
                                   (##cdr _%rest125009125017%_)))
                              (let* ((_%hd125125%_ _%hd125014125120%_)
                                     (_%rest125127%_ _%tl125015125122%_))
                                (_%K125013125117%_
                                 _%rest125127%_
                                 _%hd125125%_)))
                            (_%else125011125025%_)))))))
          (_%expand-body125001%_
           (gx#core-expand-block__%
            (cons '%#begin-module _%body124998%_)
            _%expand-special125000%_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_%stx124839%_
               _%expanded?124840%_
               _%method124841%_
               _%current-phi124842%_
               _%expand1124843%_)
        (letrec ((_%K124845%_
                  (lambda (_%rest124965%_ _%r124966%_)
                    (let* ((_%e124967124974%_ _%rest124965%_)
                           (_%E124969124978%_ (lambda () _%r124966%_))
                           (_%E124968124994%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124967124974%_)
                                  (let ((_%e124970124982%_
                                         (gx#syntax-e _%e124967124974%_)))
                                    (let ((_%hd124971124985%_
                                           (##car _%e124970124982%_))
                                          (_%tl124972124987%_
                                           (##cdr _%e124970124982%_)))
                                      (let* ((_%hd124990%_ _%hd124971124985%_)
                                             (_%rest124992%_
                                              _%tl124972124987%_))
                                        (_%step124846%_
                                         _%hd124990%_
                                         _%rest124992%_
                                         _%r124966%_))))
                                  (_%E124969124978%_)))))
                      (_%E124968124994%_))))
                 (_%step124846%_
                  (lambda (_%hd124879%_ _%rest124880%_ _%r124881%_)
                    (let* ((_%e124882124900%_ _%hd124879%_)
                           (_%E124895124904%_
                            (lambda ()
                              (if (_%expanded?124840%_ (gx#stx-e _%hd124879%_))
                                  (_%K124845%_
                                   _%rest124880%_
                                   (cons (gx#stx-e _%hd124879%_) _%r124881%_))
                                  (_%expand1124843%_
                                   _%hd124879%_
                                   _%K124845%_
                                   _%rest124880%_
                                   _%r124881%_))))
                           (_%E124891124920%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124882124900%_)
                                  (let ((_%e124896124908%_
                                         (gx#syntax-e _%e124882124900%_)))
                                    (let ((_%hd124897124911%_
                                           (##car _%e124896124908%_))
                                          (_%tl124898124913%_
                                           (##cdr _%e124896124908%_)))
                                      (let* ((_%macro124916%_
                                              _%hd124897124911%_)
                                             (_%body124918%_
                                              _%tl124898124913%_))
                                        (if (gx#core-bound-identifier?__%
                                             _%macro124916%_
                                             gx#syntax-binding?)
                                            (_%K124845%_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _%macro124916%_)
                                                    _%hd124879%_
                                                    _%method124841%_)
                                                   _%rest124880%_)
                                             _%r124881%_)
                                            (_%E124895124904%_)))))
                                  (_%E124895124904%_))))
                           (_%E124884124934%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124882124900%_)
                                  (let ((_%e124892124924%_
                                         (gx#syntax-e _%e124882124900%_)))
                                    (let ((_%hd124893124927%_
                                           (##car _%e124892124924%_))
                                          (_%tl124894124929%_
                                           (##cdr _%e124892124924%_)))
                                      (if (eq? (gx#stx-e _%hd124893124927%_)
                                               'begin:)
                                          (let ((_%body124932%_
                                                 _%tl124894124929%_))
                                            (_%K124845%_
                                             (gx#stx-foldr
                                              cons
                                              _%rest124880%_
                                              _%body124932%_)
                                             _%r124881%_))
                                          (_%E124891124920%_))))
                                  (_%E124891124920%_))))
                           (_%E124883124961%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124882124900%_)
                                  (let ((_%e124885124938%_
                                         (gx#syntax-e _%e124882124900%_)))
                                    (let ((_%hd124886124941%_
                                           (##car _%e124885124938%_))
                                          (_%tl124887124943%_
                                           (##cdr _%e124885124938%_)))
                                      (if (eq? (gx#stx-e _%hd124886124941%_)
                                               'phi:)
                                          (if (gx#stx-pair? _%tl124887124943%_)
                                              (let ((_%e124888124946%_
                                                     (gx#syntax-e
                                                      _%tl124887124943%_)))
                                                (let ((_%hd124889124949%_
                                                       (##car _%e124888124946%_))
                                                      (_%tl124890124951%_
                                                       (##cdr _%e124888124946%_)))
                                                  (let* ((_%dphi124954%_
                                                          _%hd124889124949%_)
                                                         (_%body124956%_
                                                          _%tl124890124951%_))
                                                    (if (gx#stx-fixnum?
                                                         _%dphi124954%_)
                                                        (let ((_%rbody124959%_
                                                               (__call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%K124845%_ _%body124956%_ '()))
                        _%current-phi124842%_
                        (fx+ (gx#stx-e _%dphi124954%_)
                             (_%current-phi124842%_)))))
                  (_%K124845%_
                   _%rest124880%_
                   (__foldr1 cons _%r124881%_ _%rbody124959%_)))
                (_%E124884124934%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E124884124934%_))
                                          (_%E124884124934%_))))
                                  (_%E124884124934%_)))))
                      (_%E124883124961%_)))))
          (let* ((_%e124847124854%_ _%stx124839%_)
                 (_%E124849124858%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e124847124854%_)))
                 (_%E124848124875%_
                  (lambda ()
                    (if (gx#stx-pair? _%e124847124854%_)
                        (let ((_%e124850124862%_
                               (gx#syntax-e _%e124847124854%_)))
                          (let ((_%hd124851124865%_ (##car _%e124850124862%_))
                                (_%tl124852124867%_ (##cdr _%e124850124862%_)))
                            (let ((_%body124870%_ _%tl124852124867%_))
                              (if (_%current-phi124842%_)
                                  (_%K124845%_ _%body124870%_ '())
                                  (__call-with-parameters
                                   (lambda () (_%K124845%_ _%body124870%_ '()))
                                   _%current-phi124842%_
                                   (gx#current-expander-phi))))))
                        (_%E124849124858%_)))))
            (_%E124848124875%_)))))
    (define gx#core-expand-import%__%
      (lambda (_%stx124493%_ _%internal-expand?124494%_)
        (letrec ((_%expand1124496%_
                  (lambda (_%hd124811%_ _%K124812%_ _%rest124813%_ _%r124814%_)
                    (if (gx#core-bound-module? _%hd124811%_)
                        (_%import1124497%_
                         (gx#syntax-local-e__0 _%hd124811%_)
                         _%K124812%_
                         _%rest124813%_
                         _%r124814%_)
                        (if (gx#core-library-module-path? _%hd124811%_)
                            (_%import1124497%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%hd124811%_))
                             _%K124812%_
                             _%rest124813%_
                             _%r124814%_)
                            (if (gx#core-library-relative-module-path?
                                 _%hd124811%_)
                                (_%import1124497%_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _%hd124811%_))
                                 _%K124812%_
                                 _%rest124813%_
                                 _%r124814%_)
                                (let ((_%e124820%_ (gx#stx-e _%hd124811%_)))
                                  (if (pair? _%e124820%_)
                                      (let ((_%$e124823%_
                                             (gx#stx-e (##car _%e124820%_))))
                                        (if (eq? 'spec: _%$e124823%_)
                                            (_%import-spec124500%_
                                             _%hd124811%_
                                             _%K124812%_
                                             _%rest124813%_
                                             _%r124814%_)
                                            (if (eq? 'in: _%$e124823%_)
                                                (_%import-submodule124498%_
                                                 _%hd124811%_
                                                 _%K124812%_
                                                 _%rest124813%_
                                                 _%r124814%_)
                                                (if (eq? 'runtime:
                                                         _%$e124823%_)
                                                    (_%import-runtime124499%_
                                                     _%hd124811%_
                                                     _%K124812%_
                                                     _%rest124813%_
                                                     _%r124814%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _%stx124493%_
                                                     _%hd124811%_)))))
                                      (if (string? _%e124820%_)
                                          (_%import1124497%_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _%hd124811%_
                                             (gx#stx-source _%stx124493%_)))
                                           _%K124812%_
                                           _%rest124813%_
                                           _%r124814%_)
                                          (if (##structure-instance-of?
                                               _%e124820%_
                                               'gx#module-context::t)
                                              (_%K124812%_
                                               _%rest124813%_
                                               (cons _%e124820%_ _%r124814%_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _%stx124493%_
                                               _%hd124811%_))))))))))
                 (_%import1124497%_
                  (lambda (_%ctx124800%_
                           _%K124801%_
                           _%rest124802%_
                           _%r124803%_)
                    (let ((_%dphi124805%_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_%K124801%_
                       _%rest124802%_
                       (cons (##structure
                              gx#import-set::t
                              _%ctx124800%_
                              _%dphi124805%_
                              (map (lambda (_%g124806124808%_)
                                     (gx#core-module-export->import__%
                                      _%g124806124808%_
                                      '#f
                                      _%dphi124805%_))
                                   (##unchecked-structure-ref
                                    _%ctx124800%_
                                    '9
                                    '#f
                                    '#f)))
                             _%r124803%_)))))
                 (_%import-submodule124498%_
                  (lambda (_%hd124767%_ _%K124768%_ _%rest124769%_ _%r124770%_)
                    (let* ((_%e124771124778%_ _%hd124767%_)
                           (_%E124773124782%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e124771124778%_)))
                           (_%E124772124796%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124771124778%_)
                                  (let ((_%e124774124786%_
                                         (gx#syntax-e _%e124771124778%_)))
                                    (let ((_%hd124775124789%_
                                           (##car _%e124774124786%_))
                                          (_%tl124776124791%_
                                           (##cdr _%e124774124786%_)))
                                      (let ((_%spath124794%_
                                             _%tl124776124791%_))
                                        (_%import1124497%_
                                         (_%import-spec-source124501%_
                                          _%spath124794%_)
                                         _%K124768%_
                                         _%rest124769%_
                                         _%r124770%_))))
                                  (_%E124773124782%_)))))
                      (_%E124772124796%_))))
                 (_%import-runtime124499%_
                  (lambda (_%hd124734%_ _%K124735%_ _%rest124736%_ _%r124737%_)
                    (let* ((_%e124738124745%_ _%hd124734%_)
                           (_%E124740124749%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e124738124745%_)))
                           (_%E124739124763%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124738124745%_)
                                  (let ((_%e124741124753%_
                                         (gx#syntax-e _%e124738124745%_)))
                                    (let ((_%hd124742124756%_
                                           (##car _%e124741124753%_))
                                          (_%tl124743124758%_
                                           (##cdr _%e124741124753%_)))
                                      (let ((_%spath124761%_
                                             _%tl124743124758%_))
                                        (_%K124735%_
                                         _%rest124736%_
                                         (cons (_%import-spec-source124501%_
                                                _%spath124761%_)
                                               _%r124737%_)))))
                                  (_%E124740124749%_)))))
                      (_%E124739124763%_))))
                 (_%import-spec124500%_
                  (lambda (_%hd124572%_ _%K124573%_ _%rest124574%_ _%r124575%_)
                    (let* ((_%e124576124593%_ _%hd124572%_)
                           (_%E124585124597%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e124576124593%_)))
                           (_%E124578124708%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124576124593%_)
                                  (let ((_%e124586124601%_
                                         (gx#syntax-e _%e124576124593%_)))
                                    (let ((_%hd124587124604%_
                                           (##car _%e124586124601%_))
                                          (_%tl124588124606%_
                                           (##cdr _%e124586124601%_)))
                                      (if (gx#stx-pair? _%tl124588124606%_)
                                          (let ((_%e124589124609%_
                                                 (gx#syntax-e
                                                  _%tl124588124606%_)))
                                            (let ((_%hd124590124612%_
                                                   (##car _%e124589124609%_))
                                                  (_%tl124591124614%_
                                                   (##cdr _%e124589124609%_)))
                                              (let* ((_%path124617%_
                                                      _%hd124590124612%_)
                                                     (_%specs124619%_
                                                      _%tl124591124614%_))
                                                (let ((_%src-ctx124621%_
                                                       (_%import-spec-source124501%_
                                                        _%path124617%_))
                                                      (_%exports124622%_
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
                                                      (_%specs124623%_
                                                       (gx#syntax->list
                                                        _%specs124619%_)))
                                                  (for-each
                                                   (lambda (_%out124625%_)
                                                     (__hash-put!
                                                      _%exports124622%_
                                                      (cons (##unchecked-structure-ref
                                                             _%out124625%_
                                                             '3
                                                             '#f
                                                             '#f)
                                                            (##unchecked-structure-ref
                                                             _%out124625%_
                                                             '4
                                                             '#f
                                                             '#f))
                                                      _%out124625%_))
                                                   (##unchecked-structure-ref
                                                    _%src-ctx124621%_
                                                    '9
                                                    '#f
                                                    '#f))
                                                  (_%K124573%_
                                                   _%rest124574%_
                                                   (__foldl1
                                                    (lambda (_%spec124627%_
                                                             _%r124628%_)
                                                      (let* ((_%e124629124645%_
                                                              _%spec124627%_)
                                                             (_%E124631124649%_
                                                              (lambda ()
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid syntax-case clause"
                         _%e124629124645%_)))
                     (_%E124630124704%_
                      (lambda ()
                        (if (gx#stx-pair? _%e124629124645%_)
                            (let ((_%e124632124653%_
                                   (gx#syntax-e _%e124629124645%_)))
                              (let ((_%hd124633124656%_
                                     (##car _%e124632124653%_))
                                    (_%tl124634124658%_
                                     (##cdr _%e124632124653%_)))
                                (let ((_%phi124661%_ _%hd124633124656%_))
                                  (if (gx#stx-pair? _%tl124634124658%_)
                                      (let ((_%e124635124663%_
                                             (gx#syntax-e _%tl124634124658%_)))
                                        (let ((_%hd124636124666%_
                                               (##car _%e124635124663%_))
                                              (_%tl124637124668%_
                                               (##cdr _%e124635124663%_)))
                                          (let ((_%name124671%_
                                                 _%hd124636124666%_))
                                            (if (gx#stx-pair?
                                                 _%tl124637124668%_)
                                                (let ((_%e124638124673%_
                                                       (gx#syntax-e
                                                        _%tl124637124668%_)))
                                                  (let ((_%hd124639124676%_
                                                         (##car _%e124638124673%_))
                                                        (_%tl124640124678%_
                                                         (##cdr _%e124638124673%_)))
                                                    (let ((_%src-phi124681%_
                                                           _%hd124639124676%_))
                                                      (if (gx#stx-pair?
                                                           _%tl124640124678%_)
                                                          (let ((_%e124641124683%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl124640124678%_)))
                    (let ((_%hd124642124686%_ (##car _%e124641124683%_))
                          (_%tl124643124688%_ (##cdr _%e124641124683%_)))
                      (let ((_%src-name124691%_ _%hd124642124686%_))
                        (if (gx#stx-null? _%tl124643124688%_)
                            (if (and (gx#stx-fixnum? _%src-phi124681%_)
                                     (gx#identifier? _%src-name124691%_)
                                     (gx#stx-fixnum? _%phi124661%_)
                                     (gx#identifier? _%name124671%_))
                                (let ((_%src-phi124693%_
                                       (gx#stx-e _%src-phi124681%_))
                                      (_%src-name124694%_
                                       (gx#core-identifier-key
                                        _%src-name124691%_))
                                      (_%phi124695%_ (gx#stx-e _%phi124661%_))
                                      (_%name124696%_
                                       (gx#core-identifier-key
                                        _%name124671%_)))
                                  (let ((_%$e124698%_
                                         (__hash-get
                                          _%exports124622%_
                                          (cons _%src-phi124693%_
                                                _%src-name124694%_))))
                                    (if _%$e124698%_
                                        ((lambda (_%out124701%_)
                                           (cons (gx#core-module-export->import__%
                                                  _%out124701%_
                                                  _%name124696%_
                                                  (fx- _%phi124695%_
                                                       _%src-phi124693%_))
                                                 _%r124628%_))
                                         _%$e124698%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; no matching export"
                                         _%stx124493%_
                                         _%hd124572%_))))
                                (_%E124631124649%_))
                            (_%E124631124649%_)))))
                  (_%E124631124649%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E124631124649%_)))))
                                      (_%E124631124649%_)))))
                            (_%E124631124649%_)))))
                (_%E124630124704%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r124575%_
                                                    _%specs124623%_))))))
                                          (_%E124585124597%_))))
                                  (_%E124585124597%_))))
                           (_%E124577124730%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124576124593%_)
                                  (let ((_%e124579124712%_
                                         (gx#syntax-e _%e124576124593%_)))
                                    (let ((_%hd124580124715%_
                                           (##car _%e124579124712%_))
                                          (_%tl124581124717%_
                                           (##cdr _%e124579124712%_)))
                                      (if (gx#stx-pair? _%tl124581124717%_)
                                          (let ((_%e124582124720%_
                                                 (gx#syntax-e
                                                  _%tl124581124717%_)))
                                            (let ((_%hd124583124723%_
                                                   (##car _%e124582124720%_))
                                                  (_%tl124584124725%_
                                                   (##cdr _%e124582124720%_)))
                                              (let ((_%path124728%_
                                                     _%hd124583124723%_))
                                                (if (gx#stx-null?
                                                     _%tl124584124725%_)
                                                    (_%K124573%_
                                                     _%rest124574%_
                                                     (cons (_%import-spec-source124501%_
                                                            _%path124728%_)
                                                           _%r124575%_))
                                                    (_%E124578124708%_)))))
                                          (_%E124578124708%_))))
                                  (_%E124578124708%_)))))
                      (_%E124577124730%_))))
                 (_%import-spec-source124501%_
                  (lambda (_%spath124570%_)
                    (gx#core-import-nested-module
                     _%spath124570%_
                     _%stx124493%_)))
                 (_%import!124502%_
                  (lambda (_%rbody124515%_)
                    (letrec* ((_%current-ctx124517%_
                               (gx#current-expander-context))
                              (_%deps124518%_ (make-hash-table-eq))
                              (_%bind!124519%_
                               (lambda (_%hd124568%_)
                                 (gx#core-bind-import!__1
                                  _%hd124568%_
                                  _%current-ctx124517%_))))
                      (let _%lp124521%_ ((_%rest124523%_ _%rbody124515%_)
                                         (_%body124524%_ '()))
                        (let* ((_%rest124525124533%_ _%rest124523%_)
                               (_%else124527124544%_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _%current-ctx124517%_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _%current-ctx124517%_
                                       (__foldl1
                                        cons
                                        (##unchecked-structure-ref
                                         _%current-ctx124517%_
                                         '8
                                         '#f
                                         '#f)
                                        _%body124524%_)
                                       '8
                                       '#f
                                       '#f)
                                      '#!void)
                                  (__hash-for-each
                                   (lambda (_%ctx124541%_ _%_124542%_)
                                     (gx#eval-module _%ctx124541%_))
                                   _%deps124518%_)
                                  _%body124524%_))
                               (_%K124529124556%_
                                (lambda (_%rest124547%_ _%hd124548%_)
                                  (if (##structure-direct-instance-of?
                                       _%hd124548%_
                                       'gx#module-import::t)
                                      (let ()
                                        (_%bind!124519%_ _%hd124548%_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _%hd124548%_
                                                   '3
                                                   '#f
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _%hd124548%_
                                                            '1
                                                            '#f
                                                            '#f)
                                                           '3
                                                           '#f
                                                           '#f)))
                                            (__hash-put!
                                             _%deps124518%_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _%hd124548%_
                                               '1
                                               '#f
                                               '#f)
                                              '1
                                              '#f
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _%hd124548%_
                                           'gx#import-set::t)
                                          (let ()
                                            (for-each
                                             _%bind!124519%_
                                             (##unchecked-structure-ref
                                              _%hd124548%_
                                              '3
                                              '#f
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _%hd124548%_
                                                  '2
                                                  '#f
                                                  '#f))
                                                (__hash-put!
                                                 _%deps124518%_
                                                 (##unchecked-structure-ref
                                                  _%hd124548%_
                                                  '1
                                                  '#f
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_%$e124552%_
                                                 (##structure-instance-of?
                                                  _%hd124548%_
                                                  'gx#module-context::t)))
                                            (if _%$e124552%_
                                                _%$e124552%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _%stx124493%_
                                                 _%hd124548%_)))))
                                  (_%lp124521%_
                                   _%rest124547%_
                                   (cons _%hd124548%_ _%body124524%_)))))
                          (if (##pair? _%rest124525124533%_)
                              (let ((_%hd124530124559%_
                                     (##car _%rest124525124533%_))
                                    (_%tl124531124561%_
                                     (##cdr _%rest124525124533%_)))
                                (let* ((_%hd124564%_ _%hd124530124559%_)
                                       (_%rest124566%_ _%tl124531124561%_))
                                  (_%K124529124556%_
                                   _%rest124566%_
                                   _%hd124564%_)))
                              (_%else124527124544%_)))))))
                 (_%expanded-import?124503%_
                  (lambda (_%e124507%_)
                    (let ((_%$e124509%_
                           (##structure-direct-instance-of?
                            _%e124507%_
                            'gx#import-set::t)))
                      (if _%$e124509%_
                          _%$e124509%_
                          (let ((_%$e124512%_
                                 (##structure-direct-instance-of?
                                  _%e124507%_
                                  'gx#module-import::t)))
                            (if _%$e124512%_
                                _%$e124512%_
                                (##structure-instance-of?
                                 _%e124507%_
                                 'gx#module-context::t))))))))
          (let ((_%rbody124505%_
                 (gx#core-expand-import/export
                  _%stx124493%_
                  _%expanded-import?124503%_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _%expand1124496%_)))
            (if _%internal-expand?124494%_
                (reverse _%rbody124505%_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_%import!124502%_ _%rbody124505%_))
                 (gx#stx-source _%stx124493%_)))))))
    (define gx#core-expand-import%__0
      (lambda (_%stx124832%_)
        (let ((_%internal-expand?124834%_ '#f))
          (gx#core-expand-import%__%
           _%stx124832%_
           _%internal-expand?124834%_))))
    (define gx#core-expand-import%
      (lambda _g127485_
        (let ((_g127484_ (##length _g127485_)))
          (cond ((##fx= _g127484_ 1)
                 (apply gx#core-expand-import%__0 _g127485_))
                ((##fx= _g127484_ 2)
                 (apply gx#core-expand-import%__% _g127485_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g127485_))))))
    (define gx#core-import-nested-module
      (lambda (_%spath124420%_ _%where124421%_)
        (let* ((_%e124422124429%_ _%spath124420%_)
               (_%E124424124433%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124422124429%_)))
               (_%E124423124488%_
                (lambda ()
                  (if (gx#stx-pair? _%e124422124429%_)
                      (let ((_%e124425124437%_
                             (gx#syntax-e _%e124422124429%_)))
                        (let ((_%hd124426124440%_ (##car _%e124425124437%_))
                              (_%tl124427124442%_ (##cdr _%e124425124437%_)))
                          (let* ((_%origin124445%_ _%hd124426124440%_)
                                 (_%sub124447%_ _%tl124427124442%_)
                                 (_%origin-ctx124449%_
                                  (if (gx#stx-false? _%origin124445%_)
                                      (gx#current-expander-context)
                                      (gx#import-module__0 _%origin124445%_))))
                            (let _%lp124451%_ ((_%rest124453%_ _%sub124447%_)
                                               (_%ctx124454%_
                                                _%origin-ctx124449%_))
                              (let* ((_%e124455124462%_ _%rest124453%_)
                                     (_%E124457124466%_
                                      (lambda () _%ctx124454%_))
                                     (_%E124456124484%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e124455124462%_)
                                            (let ((_%e124458124470%_
                                                   (gx#syntax-e
                                                    _%e124455124462%_)))
                                              (let ((_%hd124459124473%_
                                                     (##car _%e124458124470%_))
                                                    (_%tl124460124475%_
                                                     (##cdr _%e124458124470%_)))
                                                (let* ((_%id124478%_
                                                        _%hd124459124473%_)
                                                       (_%rest124480%_
                                                        _%tl124460124475%_)
                                                       (_%bind124482%_
                                                        (gx#resolve-identifier__%
                                                         _%id124478%_
                                                         '0
                                                         _%ctx124454%_)))
                                                  (if (and (##structure-direct-instance-of?
                                                            _%bind124482%_
                                                            'gx#syntax-binding::t)
                                                           (##structure-instance-of?
                                                            (##unchecked-structure-ref
                                                             _%bind124482%_
                                                             '4
                                                             '#f
                                                             '#f)
                                                            'gx#module-context::t))
                                                      '#!void
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; not bound as module"
                                                       _%where124421%_
                                                       _%spath124420%_
                                                       _%id124478%_))
                                                  (_%lp124451%_
                                                   _%rest124480%_
                                                   (##unchecked-structure-ref
                                                    _%bind124482%_
                                                    '4
                                                    '#f
                                                    '#f)))))
                                            (_%E124457124466%_)))))
                                (_%E124456124484%_))))))
                      (_%E124424124433%_)))))
          (_%E124423124488%_))))
    (define gx#core-expand-import-source
      (lambda (_%hd124418%_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _%hd124418%_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_%stx123912%_ _%internal-expand?123913%_)
        (letrec* ((_%make-export__127413127414%_
                   (lambda (_%bind124366%_
                            _%phi124367%_
                            _%ctx124368%_
                            _%name124369%_)
                     (let* ((_%key124371%_
                             (##unchecked-structure-ref
                              _%bind124366%_
                              '2
                              '#f
                              '#f))
                            (_%export-key124373%_
                             (if _%name124369%_
                                 (gx#core-identifier-key _%name124369%_)
                                 _%key124371%_)))
                       (##structure
                        gx#module-export::t
                        _%ctx124368%_
                        _%key124371%_
                        _%phi124367%_
                        _%export-key124373%_
                        (let ((_%$e124376%_
                               (##structure-instance-of?
                                _%bind124366%_
                                'gx#extern-binding::t)))
                          (if _%$e124376%_
                              _%$e124376%_
                              (##structure-direct-instance-of?
                               _%bind124366%_
                               'gx#import-binding::t)))))))
                  (_%make-export__0__127415127418%_
                   (lambda (_%bind124382%_)
                     (let* ((_%phi124384%_ (gx#current-export-expander-phi))
                            (_%ctx124386%_ (gx#current-expander-context))
                            (_%name124388%_ '#f))
                       (_%make-export__127413127414%_
                        _%bind124382%_
                        _%phi124384%_
                        _%ctx124386%_
                        _%name124388%_))))
                  (_%make-export__1__127416127419%_
                   (lambda (_%bind124390%_ _%phi124391%_)
                     (let* ((_%ctx124393%_ (gx#current-expander-context))
                            (_%name124395%_ '#f))
                       (_%make-export__127413127414%_
                        _%bind124390%_
                        _%phi124391%_
                        _%ctx124393%_
                        _%name124395%_))))
                  (_%make-export__2__127417127420%_
                   (lambda (_%bind124397%_ _%phi124398%_ _%ctx124399%_)
                     (let ((_%name124401%_ '#f))
                       (_%make-export__127413127414%_
                        _%bind124397%_
                        _%phi124398%_
                        _%ctx124399%_
                        _%name124401%_))))
                  (_%make-export123915%_
                   (lambda _g127487_
                     (let ((_g127486_ (##length _g127487_)))
                       (cond ((##fx= _g127486_ 1)
                              (apply _%make-export__0__127415127418%_
                                     _g127487_))
                             ((##fx= _g127486_ 2)
                              (apply _%make-export__1__127416127419%_
                                     _g127487_))
                             ((##fx= _g127486_ 3)
                              (apply _%make-export__2__127417127420%_
                                     _g127487_))
                             ((##fx= _g127486_ 4)
                              (apply _%make-export__127413127414%_ _g127487_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g127487_))))))
                  (_%expand1123916%_
                   (lambda (_%hd124071%_
                            _%K124072%_
                            _%rest124073%_
                            _%r124074%_)
                     (let* ((_%e124075124107%_ _%hd124071%_)
                            (_%E124102124111%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _%stx123912%_
                                _%hd124071%_)))
                            (_%E124092124195%_
                             (lambda ()
                               (if (gx#stx-pair? _%e124075124107%_)
                                   (let ((_%e124103124115%_
                                          (gx#syntax-e _%e124075124107%_)))
                                     (let ((_%hd124104124118%_
                                            (##car _%e124103124115%_))
                                           (_%tl124105124120%_
                                            (##cdr _%e124103124115%_)))
                                       (if (eq? (gx#stx-e _%hd124104124118%_)
                                                'import:)
                                           (let ((_%in124123%_
                                                  _%tl124105124120%_))
                                             (if (gx#stx-list? _%in124123%_)
                                                 (let _%lp124125%_ ((_%in-rest124127%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%in124123%_)
                            (_%r124128%_ _%r124074%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%e124129124136%_
                                                           _%in-rest124127%_)
                                                          (_%E124131124140%_
                                                           (lambda ()
                                                             (_%K124072%_
                                                              _%rest124073%_
                                                              _%r124128%_)))
                                                          (_%E124130124191%_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%e124129124136%_)
                         (let ((_%e124132124144%_
                                (gx#syntax-e _%e124129124136%_)))
                           (let ((_%hd124133124147%_ (##car _%e124132124144%_))
                                 (_%tl124134124149%_
                                  (##cdr _%e124132124144%_)))
                             (let* ((_%hd124152%_ _%hd124133124147%_)
                                    (_%in-rest124154%_ _%tl124134124149%_)
                                    (_%src124189%_
                                     (if (gx#core-bound-module? _%hd124152%_)
                                         (gx#syntax-local-e__0 _%hd124152%_)
                                         (if (gx#core-library-module-path?
                                              _%hd124152%_)
                                             (gx#import-module__0
                                              (gx#core-resolve-library-module-path
                                               _%hd124152%_))
                                             (if (gx#core-library-relative-module-path?
                                                  _%hd124152%_)
                                                 (gx#import-module__0
                                                  (gx#core-resolve-library-relative-module-path
                                                   _%hd124152%_))
                                                 (if (gx#stx-string?
                                                      _%hd124152%_)
                                                     (gx#import-module__0
                                                      (gx#core-resolve-module-path__%
                                                       _%hd124152%_
                                                       (gx#stx-source
                                                        _%stx123912%_)))
                                                     (let* ((_%e124160124167%_
                                                             _%hd124152%_)
                                                            (_%E124162124171%_
                                                             (lambda ()
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; illegal re-export"
                                                                _%stx123912%_
                                                                _%hd124152%_)))
                                                            (_%E124161124185%_
                                                             (lambda ()
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%e124160124167%_)
                           (let ((_%e124163124175%_
                                  (gx#syntax-e _%e124160124167%_)))
                             (let ((_%hd124164124178%_
                                    (##car _%e124163124175%_))
                                   (_%tl124165124180%_
                                    (##cdr _%e124163124175%_)))
                               (if (eq? (gx#stx-e _%hd124164124178%_) 'in:)
                                   (let ((_%spath124183%_ _%tl124165124180%_))
                                     (gx#core-import-nested-module
                                      _%spath124183%_
                                      _%stx123912%_))
                                   (_%E124162124171%_))))
                           (_%E124162124171%_)))))
               (_%E124161124185%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (_%lp124125%_
                                _%in-rest124154%_
                                (_%export-imports123917%_
                                 _%src124189%_
                                 _%r124128%_)))))
                         (_%E124131124140%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E124130124191%_)))
                                                 (_%E124102124111%_)))
                                           (_%E124102124111%_))))
                                   (_%E124102124111%_))))
                            (_%E124079124235%_
                             (lambda ()
                               (if (gx#stx-pair? _%e124075124107%_)
                                   (let ((_%e124093124199%_
                                          (gx#syntax-e _%e124075124107%_)))
                                     (let ((_%hd124094124202%_
                                            (##car _%e124093124199%_))
                                           (_%tl124095124204%_
                                            (##cdr _%e124093124199%_)))
                                       (if (eq? (gx#stx-e _%hd124094124202%_)
                                                'rename:)
                                           (if (gx#stx-pair?
                                                _%tl124095124204%_)
                                               (let ((_%e124096124207%_
                                                      (gx#syntax-e
                                                       _%tl124095124204%_)))
                                                 (let ((_%hd124097124210%_
                                                        (##car _%e124096124207%_))
                                                       (_%tl124098124212%_
                                                        (##cdr _%e124096124207%_)))
                                                   (let ((_%id124215%_
                                                          _%hd124097124210%_))
                                                     (if (gx#stx-pair?
                                                          _%tl124098124212%_)
                                                         (let ((_%e124099124217%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl124098124212%_)))
                   (let ((_%hd124100124220%_ (##car _%e124099124217%_))
                         (_%tl124101124222%_ (##cdr _%e124099124217%_)))
                     (let ((_%name124225%_ _%hd124100124220%_))
                       (if (gx#stx-null? _%tl124101124222%_)
                           (let* ((_%phi124227%_
                                   (gx#current-export-expander-phi))
                                  (_%$e124229%_
                                   (gx#core-resolve-identifier__1
                                    _%id124215%_
                                    _%phi124227%_)))
                             (if _%$e124229%_
                                 ((lambda (_%bind124232%_)
                                    (_%K124072%_
                                     _%rest124073%_
                                     (cons (_%make-export__127413127414%_
                                            _%bind124232%_
                                            _%phi124227%_
                                            (gx#current-expander-context)
                                            _%name124225%_)
                                           _%r124074%_)))
                                  _%$e124229%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Reference to unbound identifier"
                                  _%stx123912%_
                                  _%hd124071%_
                                  _%id124215%_)))
                           (_%E124092124195%_)))))
                 (_%E124092124195%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E124092124195%_))
                                           (_%E124092124195%_))))
                                   (_%E124092124195%_))))
                            (_%E124078124285%_
                             (lambda ()
                               (if (gx#stx-pair? _%e124075124107%_)
                                   (let ((_%e124080124239%_
                                          (gx#syntax-e _%e124075124107%_)))
                                     (let ((_%hd124081124242%_
                                            (##car _%e124080124239%_))
                                           (_%tl124082124244%_
                                            (##cdr _%e124080124239%_)))
                                       (if (eq? (gx#stx-e _%hd124081124242%_)
                                                'spec:)
                                           (if (gx#stx-pair?
                                                _%tl124082124244%_)
                                               (let ((_%e124083124247%_
                                                      (gx#syntax-e
                                                       _%tl124082124244%_)))
                                                 (let ((_%hd124084124250%_
                                                        (##car _%e124083124247%_))
                                                       (_%tl124085124252%_
                                                        (##cdr _%e124083124247%_)))
                                                   (let ((_%phi124255%_
                                                          _%hd124084124250%_))
                                                     (if (gx#stx-pair?
                                                          _%tl124085124252%_)
                                                         (let ((_%e124086124257%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl124085124252%_)))
                   (let ((_%hd124087124260%_ (##car _%e124086124257%_))
                         (_%tl124088124262%_ (##cdr _%e124086124257%_)))
                     (let ((_%id124265%_ _%hd124087124260%_))
                       (if (gx#stx-pair? _%tl124088124262%_)
                           (let ((_%e124089124267%_
                                  (gx#syntax-e _%tl124088124262%_)))
                             (let ((_%hd124090124270%_
                                    (##car _%e124089124267%_))
                                   (_%tl124091124272%_
                                    (##cdr _%e124089124267%_)))
                               (let ((_%name124275%_ _%hd124090124270%_))
                                 (if (gx#stx-null? _%tl124091124272%_)
                                     (if (and (gx#stx-fixnum? _%phi124255%_)
                                              (gx#identifier? _%id124265%_)
                                              (gx#identifier? _%name124275%_))
                                         (let* ((_%phi124277%_
                                                 (gx#stx-e _%phi124255%_))
                                                (_%$e124279%_
                                                 (gx#core-resolve-identifier__1
                                                  _%id124265%_
                                                  _%phi124277%_)))
                                           (if _%$e124279%_
                                               ((lambda (_%bind124282%_)
                                                  (_%K124072%_
                                                   _%rest124073%_
                                                   (cons (_%make-export__127413127414%_
                                                          _%bind124282%_
                                                          _%phi124277%_
                                                          (gx#current-expander-context)
                                                          _%name124275%_)
                                                         _%r124074%_)))
                                                _%$e124279%_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _%stx123912%_
                                                _%hd124071%_
                                                _%id124265%_)))
                                         (_%E124079124235%_))
                                     (_%E124079124235%_)))))
                           (_%E124079124235%_)))))
                 (_%E124079124235%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E124079124235%_))
                                           (_%E124079124235%_))))
                                   (_%E124079124235%_))))
                            (_%E124077124297%_
                             (lambda ()
                               (let ((_%id124289%_ _%e124075124107%_))
                                 (if (gx#identifier? _%id124289%_)
                                     (let ((_%$e124291%_
                                            (gx#core-resolve-identifier__1
                                             _%id124289%_
                                             (gx#current-export-expander-phi))))
                                       (if _%$e124291%_
                                           ((lambda (_%bind124294%_)
                                              (_%K124072%_
                                               _%rest124073%_
                                               (cons (_%make-export__0__127415127418%_
                                                      _%bind124294%_)
                                                     _%r124074%_)))
                                            _%$e124291%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _%stx123912%_
                                            _%hd124071%_)))
                                     (_%E124078124285%_)))))
                            (_%E124076124361%_
                             (lambda ()
                               (if (eq? (gx#stx-e _%e124075124107%_) '#t)
                                   (let* ((_%current-ctx124301%_
                                           (gx#current-expander-context))
                                          (_%current-phi124303%_
                                           (gx#current-export-expander-phi))
                                          (_%phi-ctx124305%_
                                           (gx#core-context-shift
                                            _%current-ctx124301%_
                                            _%current-phi124303%_))
                                          (_%phi-bind124307%_
                                           (hash->list
                                            (##unchecked-structure-ref
                                             _%phi-ctx124305%_
                                             '2
                                             '#f
                                             '#f))))
                                     (let _%lp124310%_ ((_%bind-rest124312%_
                                                         _%phi-bind124307%_)
                                                        (_%set124313%_ '()))
                                       (let* ((_%bind-rest124314124324%_
                                               _%bind-rest124312%_)
                                              (_%else124316124332%_
                                               (lambda ()
                                                 (_%K124072%_
                                                  _%rest124073%_
                                                  (cons (##structure
                                                         gx#export-set::t
                                                         '#f
                                                         _%current-phi124303%_
                                                         _%set124313%_)
                                                        _%r124074%_))))
                                              (_%K124318124342%_
                                               (lambda (_%bind-rest124335%_
                                                        _%bind124336%_
                                                        _%key124337%_)
                                                 (if (or (##structure-direct-instance-of?
                                                          _%bind124336%_
                                                          'gx#import-binding::t)
                                                         (gx#private-feature-binding?
                                                          _%bind124336%_))
                                                     (_%lp124310%_
                                                      _%bind-rest124335%_
                                                      _%set124313%_)
                                                     (_%lp124310%_
                                                      _%bind-rest124335%_
                                                      (cons (_%make-export__2__127417127420%_
                                                             _%bind124336%_
                                                             _%current-phi124303%_
                                                             _%current-ctx124301%_)
                                                            _%set124313%_))))))
                                         (if (##pair? _%bind-rest124314124324%_)
                                             (let ((_%hd124319124345%_
                                                    (##car _%bind-rest124314124324%_))
                                                   (_%tl124320124347%_
                                                    (##cdr _%bind-rest124314124324%_)))
                                               (if (##pair? _%hd124319124345%_)
                                                   (let ((_%hd124321124350%_
                                                          (##car _%hd124319124345%_))
                                                         (_%tl124322124352%_
                                                          (##cdr _%hd124319124345%_)))
                                                     (let* ((_%key124355%_
                                                             _%hd124321124350%_)
                                                            (_%bind124357%_
                                                             _%tl124322124352%_)
                                                            (_%bind-rest124359%_
                                                             _%tl124320124347%_))
                                                       (_%K124318124342%_
                                                        _%bind-rest124359%_
                                                        _%bind124357%_
                                                        _%key124355%_)))
                                                   (_%else124316124332%_)))
                                             (_%else124316124332%_)))))
                                   (_%E124077124297%_)))))
                       (_%E124076124361%_))))
                  (_%export-imports123917%_
                   (lambda (_%src123947%_ _%r123948%_)
                     (letrec* ((_%current-ctx123950%_
                                (gx#current-expander-context))
                               (_%current-phi123951%_
                                (gx#current-export-expander-phi))
                               (_%import->export123952%_
                                (lambda (_%in124033%_)
                                  (let* ((_%in124034124042%_ _%in124033%_)
                                         (_%E124036124046%_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _%in124034124042%_
                                                   '((module-import
                                                      out
                                                      key
                                                      phi)))
                                            '#!void))
                                         (_%K124037124053%_
                                          (lambda (_%phi124049%_
                                                   _%key124050%_
                                                   _%out124051%_)
                                            (##structure
                                             gx#module-export::t
                                             _%current-ctx123950%_
                                             _%key124050%_
                                             _%phi124049%_
                                             _%key124050%_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _%in124034124042%_
                                         'gx#module-import::t)
                                        (let* ((_%e124038124056%_
                                                (##unchecked-structure-ref
                                                 _%in124034124042%_
                                                 '1
                                                 '#f
                                                 '#f))
                                               (_%out124059%_
                                                _%e124038124056%_)
                                               (_%e124039124061%_
                                                (##unchecked-structure-ref
                                                 _%in124034124042%_
                                                 '2
                                                 '#f
                                                 '#f))
                                               (_%key124064%_
                                                _%e124039124061%_)
                                               (_%e124040124066%_
                                                (##unchecked-structure-ref
                                                 _%in124034124042%_
                                                 '3
                                                 '#f
                                                 '#f))
                                               (_%phi124069%_
                                                _%e124040124066%_))
                                          (_%K124037124053%_
                                           _%phi124069%_
                                           _%key124064%_
                                           _%out124059%_))
                                        (_%E124036124046%_)))))
                               (_%fold-e123953%_
                                (lambda (_%in123955%_ _%r123956%_)
                                  (let* ((_%in123957123971%_ _%in123955%_)
                                         (_%else123960123979%_
                                          (lambda () _%r123956%_)))
                                    (let ((_%K123966124015%_
                                           (lambda (_%phi124011%_
                                                    _%key124012%_
                                                    _%out124013%_)
                                             (if (and (fx= _%phi124011%_
                                                           _%current-phi123951%_)
                                                      (eq? _%src123947%_
                                                           (##unchecked-structure-ref
                                                            _%out124013%_
                                                            '1
                                                            '#f
                                                            '#f)))
                                                 (cons (_%import->export123952%_
                                                        _%in123955%_)
                                                       _%r123956%_)
                                                 _%r123956%_)))
                                          (_%K123962123990%_
                                           (lambda (_%imports123983%_
                                                    _%phi123984%_
                                                    _%ctx123985%_)
                                             (if (and (fx= _%phi123984%_
                                                           _%current-phi123951%_)
                                                      (eq? _%src123947%_
                                                           _%ctx123985%_))
                                                 (__foldl1
                                                  (lambda (_%in123987%_
                                                           _%r123988%_)
                                                    (cons (_%import->export123952%_
                                                           _%in123987%_)
                                                          _%r123988%_))
                                                  _%r123956%_
                                                  _%imports123983%_)
                                                 _%r123956%_))))
                                      (let ((_%try-match123959124008%_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _%in123957123971%_
                                                    'gx#import-set::t)
                                                   (let* ((_%e123963123993%_
                                                           (##unchecked-structure-ref
                                                            _%in123957123971%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                          (_%e123964123998%_
                                                           (##unchecked-structure-ref
                                                            _%in123957123971%_
                                                            '2
                                                            '#f
                                                            '#f))
                                                          (_%e123965124003%_
                                                           (##unchecked-structure-ref
                                                            _%in123957123971%_
                                                            '3
                                                            '#f
                                                            '#f)))
                                                     (let ((_%ctx123996%_
                                                            _%e123963123993%_)
                                                           (_%phi124001%_
                                                            _%e123964123998%_)
                                                           (_%imports124006%_
                                                            _%e123965124003%_))
                                                       (_%K123962123990%_
                                                        _%imports124006%_
                                                        _%phi124001%_
                                                        _%ctx123996%_)))
                                                   (_%else123960123979%_)))))
                                        (if (##structure-direct-instance-of?
                                             _%in123957123971%_
                                             'gx#module-import::t)
                                            (let* ((_%e123967124018%_
                                                    (##unchecked-structure-ref
                                                     _%in123957123971%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                   (_%e123968124023%_
                                                    (##unchecked-structure-ref
                                                     _%in123957123971%_
                                                     '2
                                                     '#f
                                                     '#f))
                                                   (_%e123969124028%_
                                                    (##unchecked-structure-ref
                                                     _%in123957123971%_
                                                     '3
                                                     '#f
                                                     '#f)))
                                              (let ((_%out124021%_
                                                     _%e123967124018%_)
                                                    (_%key124026%_
                                                     _%e123968124023%_)
                                                    (_%phi124031%_
                                                     _%e123969124028%_))
                                                (_%K123966124015%_
                                                 _%phi124031%_
                                                 _%key124026%_
                                                 _%out124021%_)))
                                            (_%try-match123959124008%_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _%src123947%_
                              _%current-phi123951%_
                              (__foldl1
                               _%fold-e123953%_
                               '()
                               (##unchecked-structure-ref
                                _%current-ctx123950%_
                                '8
                                '#f
                                '#f)))
                             _%r123948%_))))
                  (_%export!123918%_
                   (lambda (_%rbody123934%_)
                     (letrec* ((_%current-ctx123936%_
                                (gx#current-expander-context))
                               (_%fold-e123937%_
                                (lambda (_%out123941%_ _%r123942%_)
                                  (if (##structure-direct-instance-of?
                                       _%out123941%_
                                       'gx#module-export::t)
                                      (cons _%out123941%_ _%r123942%_)
                                      (if (##structure-direct-instance-of?
                                           _%out123941%_
                                           'gx#export-set::t)
                                          (__foldl1
                                           cons
                                           _%r123942%_
                                           (##unchecked-structure-ref
                                            _%out123941%_
                                            '3
                                            '#f
                                            '#f))
                                          _%r123942%_)))))
                       (let ((_%body123939%_ (reverse _%rbody123934%_)))
                         (##unchecked-structure-set!
                          _%current-ctx123936%_
                          (__foldl1
                           _%fold-e123937%_
                           (##unchecked-structure-ref
                            _%current-ctx123936%_
                            '9
                            '#f
                            '#f)
                           _%body123939%_)
                          '9
                          '#f
                          '#f)
                         _%body123939%_))))
                  (_%expanded-export?123919%_
                   (lambda (_%e123929%_)
                     (let ((_%$e123931%_
                            (##structure-direct-instance-of?
                             _%e123929%_
                             'gx#module-export::t)))
                       (if _%$e123931%_
                           _%$e123931%_
                           (##structure-direct-instance-of?
                            _%e123929%_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _%internal-expand?123913%_)
              (let ((_%rbody123925%_
                     (gx#core-expand-import/export
                      _%stx123912%_
                      _%expanded-export?123919%_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _%expand1123916%_)))
                (if _%internal-expand?123913%_
                    (reverse _%rbody123925%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons
                      '%#export
                      (_%export!123918%_ _%rbody123925%_))
                     (gx#stx-source _%stx123912%_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _%stx123912%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _%stx123912%_))))))
    (define gx#core-expand-export%__0
      (lambda (_%stx124411%_)
        (let ((_%internal-expand?124413%_ '#f))
          (gx#core-expand-export%__%
           _%stx124411%_
           _%internal-expand?124413%_))))
    (define gx#core-expand-export%
      (lambda _g127489_
        (let ((_g127488_ (##length _g127489_)))
          (cond ((##fx= _g127488_ 1)
                 (apply gx#core-expand-export%__0 _g127489_))
                ((##fx= _g127488_ 2)
                 (apply gx#core-expand-export%__% _g127489_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g127489_))))))
    (define gx#core-expand-export-source
      (lambda (_%hd123909%_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _%hd123909%_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_%stx123879%_)
        (let* ((_%e123880123887%_ _%stx123879%_)
               (_%E123882123891%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123880123887%_)))
               (_%E123881123905%_
                (lambda ()
                  (if (gx#stx-pair? _%e123880123887%_)
                      (let ((_%e123883123895%_
                             (gx#syntax-e _%e123880123887%_)))
                        (let ((_%hd123884123898%_ (##car _%e123883123895%_))
                              (_%tl123885123900%_ (##cdr _%e123883123895%_)))
                          (let ((_%body123903%_ _%tl123885123900%_))
                            (if (gx#identifier-list? _%body123903%_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _%body123903%_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _%body123903%_))
                                   (gx#stx-source _%stx123879%_)))
                                (_%E123882123891%_)))))
                      (_%E123882123891%_)))))
          (_%E123881123905%_))))
    (define gx#core-bind-feature!__%
      (lambda (_%id123845%_ _%private?123846%_ _%phi123847%_ _%ctx123848%_)
        (gx#core-bind-syntax!__%
         _%id123845%_
         ((if _%private?123846%_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _%id123845%_))
         _%private?123846%_
         _%phi123847%_
         _%ctx123848%_)))
    (define gx#core-bind-feature!__0
      (lambda (_%id123853%_)
        (let* ((_%private?123855%_ '#f)
               (_%phi123857%_ (gx#current-expander-phi))
               (_%ctx123859%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id123853%_
           _%private?123855%_
           _%phi123857%_
           _%ctx123859%_))))
    (define gx#core-bind-feature!__1
      (lambda (_%id123861%_ _%private?123862%_)
        (let* ((_%phi123864%_ (gx#current-expander-phi))
               (_%ctx123866%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id123861%_
           _%private?123862%_
           _%phi123864%_
           _%ctx123866%_))))
    (define gx#core-bind-feature!__2
      (lambda (_%id123868%_ _%private?123869%_ _%phi123870%_)
        (let ((_%ctx123872%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id123868%_
           _%private?123869%_
           _%phi123870%_
           _%ctx123872%_))))
    (define gx#core-bind-feature!
      (lambda _g127491_
        (let ((_g127490_ (##length _g127491_)))
          (cond ((##fx= _g127490_ 1)
                 (apply gx#core-bind-feature!__0 _g127491_))
                ((##fx= _g127490_ 2)
                 (apply gx#core-bind-feature!__1 _g127491_))
                ((##fx= _g127490_ 3)
                 (apply gx#core-bind-feature!__2 _g127491_))
                ((##fx= _g127490_ 4)
                 (apply gx#core-bind-feature!__% _g127491_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g127491_))))))))
