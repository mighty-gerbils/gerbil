(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1756224516)
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
      (lambda _%$args137035%_
        (apply make-instance gx#module-import::t _%$args137035%_)))
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
      (lambda _%$args137032%_
        (apply make-instance gx#module-export::t _%$args137032%_)))
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
      (lambda _%$args137029%_
        (apply make-instance gx#import-set::t _%$args137029%_)))
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
      (lambda _%$args137026%_
        (apply make-instance gx#export-set::t _%$args137026%_)))
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
      (lambda _%$args137023%_
        (apply make-instance gx#import-expander::t _%$args137023%_)))
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
      (lambda _%$args137020%_
        (apply make-instance gx#export-expander::t _%$args137020%_)))
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
      (lambda _%$args137017%_
        (apply make-instance gx#import-export-expander::t _%$args137017%_)))
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
      (lambda (_%path137014%_ _%fun137015%_)
        (call-with-input-file
         (cons 'path: (cons _%path137014%_ gx#source-file-settings))
         _%fun137015%_)))
    (define gx#module-context:::init!
      (lambda (_%self136997%_
               _%id136998%_
               _%super136999%_
               _%ns137000%_
               _%path137001%_)
        (let ((_%self137004%_ _%self136997%_))
          (if (##fx< '11 (##structure-length _%self137004%_))
              (begin
                (##unchecked-structure-set!
                 _%self137004%_
                 _%id136998%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self137004%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self137004%_
                 _%super136999%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self137004%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self137004%_ '#f '5 '#f '#f)
                (##unchecked-structure-set!
                 _%self137004%_
                 _%ns137000%_
                 '6
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self137004%_
                 _%path137001%_
                 '7
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self137004%_ '() '8 '#f '#f)
                (##unchecked-structure-set! _%self137004%_ '() '9 '#f '#f)
                (##unchecked-structure-set! _%self137004%_ '#f '10 '#f '#f)
                (##unchecked-structure-set! _%self137004%_ '#f '11 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self137004%_
                     '11
                     (##structure-length _%self137004%_))))))
    (__bind-method!__%
     gx#module-context::t
     ':init!
     gx#module-context:::init!
     '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_%self136830%_ _%ctx136831%_ _%root136832%_)
        (let* ((_%self136835%_ _%self136830%_)
               (_%super136851%_
                (let ((_%$e136845%_ _%root136832%_))
                  (if _%$e136845%_
                      _%$e136845%_
                      (let ((_%$e136848%_ (gx#core-context-root__0)))
                        (if _%$e136848%_
                            _%$e136848%_
                            (let ((__obj137079
                                   (##structure gx#root-context::t '#f '#f)))
                              (let ((__constructor137080
                                     (direct-method-ref
                                      gx#root-context::t
                                      __obj137079
                                      ':init!)))
                                (if __constructor137080
                                    (__constructor137080 __obj137079)
                                    (error '"missing constructor method implementation"
                                           'class:
                                           gx#root-context::t
                                           'method:
                                           ':init!)))
                              __obj137079)))))))
          (if _%ctx136831%_
              (let ((_%id136854%_
                     (##structure-ref
                      _%ctx136831%_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_%path136855%_
                     (##structure-ref
                      _%ctx136831%_
                      '7
                      gx#module-context::t
                      '#f))
                    (_%in136856%_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _%ctx136831%_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_%e136857%_
                     (__make-promise
                      (lambda () (gx#eval-module _%ctx136831%_)))))
                (if (##fx< '8 (##structure-length _%self136835%_))
                    (begin
                      (##unchecked-structure-set!
                       _%self136835%_
                       _%id136854%_
                       '1
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self136835%_
                       (make-hash-table-eq 'size: (##length _%in136856%_))
                       '2
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self136835%_
                       _%super136851%_
                       '3
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self136835%_
                       '#f
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self136835%_
                       '#f
                       '5
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self136835%_
                       _%path136855%_
                       '6
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self136835%_
                       _%in136856%_
                       '7
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self136835%_
                       _%e136857%_
                       '8
                       '#f
                       '#f)
                      '#!void)
                    (error '"struct-instance-init!: too many arguments for struct"
                           _%self136835%_
                           '8
                           (##structure-length _%self136835%_)))
                (##for-each
                 (lambda (_%g136858136860%_)
                   (gx#core-bind-weak-import!__%
                    _%g136858136860%_
                    _%self136835%_))
                 _%in136856%_))
              (if (##fx< '8 (##structure-length _%self136835%_))
                  (begin
                    (##unchecked-structure-set! _%self136835%_ '#f '1 '#f '#f)
                    (##unchecked-structure-set!
                     _%self136835%_
                     (make-hash-table-eq)
                     '2
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self136835%_
                     _%super136851%_
                     '3
                     '#f
                     '#f)
                    (##unchecked-structure-set! _%self136835%_ '#f '4 '#f '#f)
                    (##unchecked-structure-set! _%self136835%_ '#f '5 '#f '#f)
                    (##unchecked-structure-set! _%self136835%_ '#f '6 '#f '#f)
                    (##unchecked-structure-set! _%self136835%_ '() '7 '#f '#f)
                    (##unchecked-structure-set! _%self136835%_ '#f '8 '#f '#f)
                    '#!void)
                  (error '"struct-instance-init!: too many arguments for struct"
                         _%self136835%_
                         '8
                         (##structure-length _%self136835%_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_%self136866%_ _%ctx136867%_)
        (let ((_%root136869%_ '#f))
          (gx#prelude-context:::init!__%
           _%self136866%_
           _%ctx136867%_
           _%root136869%_))))
    (define gx#prelude-context:::init!
      (lambda _g137085_
        (let ((_g137086_ (##length _g137085_)))
          (cond ((##fx= _g137086_ 2)
                 (apply gx#prelude-context:::init!__0 _g137085_))
                ((##fx= _g137086_ 3)
                 (apply gx#prelude-context:::init!__% _g137085_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g137085_))))))
    (__bind-method!__%
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_%self136704%_ _%e136705%_)
        (if (##fx< '3 (##structure-length _%self136704%_))
            (begin
              (##unchecked-structure-set!
               _%self136704%_
               _%e136705%_
               '1
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self136704%_
               (gx#current-expander-context)
               '2
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self136704%_
               (##fx- (gx#current-expander-phi) '1)
               '3
               '#f
               '#f)
              '#!void)
            (error '"struct-instance-init!: too many arguments for struct"
                   _%self136704%_
                   '3
                   (##structure-length _%self136704%_)))))
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
      (lambda (_%g136330136333%_ _%g136331136335%_)
        (gx#core-apply-user-expander__%
         _%g136330136333%_
         _%g136331136335%_
         'apply-import-expander)))
    (__bind-method!__%
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_%g136201136204%_ _%g136202136206%_)
        (gx#core-apply-user-expander__%
         _%g136201136204%_
         _%g136202136206%_
         'apply-export-expander)))
    (__bind-method!__%
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_%ctx136072%_)
        (let* ((_%path136074%_
                (##structure-ref _%ctx136072%_ '7 gx#module-context::t '#f))
               (_%path136076%_
                (if (pair? _%path136074%_)
                    (##last _%path136074%_)
                    _%path136074%_)))
          (if (string? _%path136076%_) _%path136076%_ '#f))))
    (define gx#import-module__%
      (lambda (_%path136048%_ _%reload?136049%_ _%eval?136050%_)
        (let ((_%ctx136052%_
               ((gx#current-expander-module-import)
                _%path136048%_
                _%reload?136049%_)))
          (if (and _%ctx136052%_ _%eval?136050%_)
              (gx#eval-module _%ctx136052%_)
              '#!void)
          _%ctx136052%_)))
    (define gx#import-module__0
      (lambda (_%path136057%_)
        (let* ((_%reload?136059%_ '#f) (_%eval?136061%_ '#f))
          (gx#import-module__%
           _%path136057%_
           _%reload?136059%_
           _%eval?136061%_))))
    (define gx#import-module__1
      (lambda (_%path136063%_ _%reload?136064%_)
        (let ((_%eval?136066%_ '#f))
          (gx#import-module__%
           _%path136063%_
           _%reload?136064%_
           _%eval?136066%_))))
    (define gx#import-module
      (lambda _g137087_
        (let ((_g137088_ (##length _g137087_)))
          (cond ((##fx= _g137088_ 1) (apply gx#import-module__0 _g137087_))
                ((##fx= _g137088_ 2) (apply gx#import-module__1 _g137087_))
                ((##fx= _g137088_ 3) (apply gx#import-module__% _g137087_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g137087_))))))
    (define gx#eval-module
      (lambda (_%mod136045%_)
        ((gx#current-expander-module-eval) _%mod136045%_)))
    (define gx#core-eval-module
      (lambda (_%obj136024%_)
        (letrec ((_%force-e136026%_
                  (lambda (_%getf136040%_ _%e136041%_)
                    (call-with-parameters__1
                     (lambda ()
                       (call-with-parameters__1
                        (lambda () (force (_%getf136040%_ _%e136041%_)))
                        gx#current-expander-phi
                        '0))
                     gx#current-expander-context
                     _%e136041%_))))
          (let _%recur136028%_ ((_%e136030%_ _%obj136024%_))
            (if (##structure-instance-of? _%e136030%_ 'gx#module-context::t)
                (let ()
                  (let ((_%$e136033%_
                         (gx#core-context-prelude__% _%e136030%_)))
                    (if _%$e136033%_ (_%recur136028%_ _%$e136033%_) '#!void))
                  (_%force-e136026%_ gx#module-context-e _%e136030%_))
                (if (##structure-instance-of?
                     _%e136030%_
                     'gx#prelude-context::t)
                    (_%force-e136026%_ gx#prelude-context-e _%e136030%_)
                    (if (gx#stx-string? _%e136030%_)
                        (_%recur136028%_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _%e136030%_)))
                        (if (gx#core-library-module-path? _%e136030%_)
                            (_%recur136028%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%e136030%_)))
                            (error '"cannot eval module" _%obj136024%_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_%ctx136004%_)
        (let _%lp136006%_ ((_%e136008%_ _%ctx136004%_))
          (if (or (##structure-instance-of? _%e136008%_ 'gx#module-context::t)
                  (##structure-instance-of? _%e136008%_ 'gx#local-context::t))
              (_%lp136006%_ (##unchecked-structure-ref _%e136008%_ '3 '#f '#f))
              (if (##structure-instance-of? _%e136008%_ 'gx#prelude-context::t)
                  _%e136008%_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_%ctx136020%_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _%ctx136020%_))))
    (define gx#core-context-prelude
      (lambda _g137089_
        (let ((_g137090_ (##length _g137089_)))
          (cond ((##fx= _g137090_ 0)
                 (apply gx#core-context-prelude__0 _g137089_))
                ((##fx= _g137090_ 1)
                 (apply gx#core-context-prelude__% _g137089_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g137089_))))))
    (define gx#core-module->prelude-context
      (lambda (_%ctx135995%_)
        (let ((_%$e135997%_ (__hash-get gx#__module-registry _%ctx135995%_)))
          (if _%$e135997%_
              _%$e135997%_
              (let ((_%pre136001%_
                     (let ((__obj137081
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
                        __obj137081
                        _%ctx135995%_)
                       __obj137081)))
                (__hash-put! gx#__module-registry _%ctx135995%_ _%pre136001%_)
                _%pre136001%_)))))
    (define gx#core-import-module__%
      (lambda (_%rpath135862%_ _%reload?135863%_)
        (letrec ((_%import-source135865%_
                  (lambda (_%path135954%_)
                    (if (member _%path135954%_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _%path135954%_)
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
                                      (let ((_g137091_
                                             (gx#core-read-module
                                              _%path135954%_)))
                                        (begin
                                          (let ((_g137092_
                                                 (if (##values? _g137091_)
                                                     (##values-length
                                                      _g137091_)
                                                     1)))
                                            (if (not (##fx= _g137092_ 4))
                                                (error "Context expects 4 values"
                                                       _g137092_)))
                                          (let ((_%pre135962%_
                                                 (##values-ref _g137091_ 0))
                                                (_%id135963%_
                                                 (##values-ref _g137091_ 1))
                                                (_%ns135964%_
                                                 (##values-ref _g137091_ 2))
                                                (_%body135965%_
                                                 (##values-ref _g137091_ 3)))
                                            (let* ((_%prelude135975%_
                                                    (if (##structure-instance-of?
                                                         _%pre135962%_
                                                         'gx#prelude-context::t)
                                                        _%pre135962%_
                                                        (if (##structure-instance-of?
                                                             _%pre135962%_
                                                             'gx#module-context::t)
                                                            (gx#core-module->prelude-context
                                                             _%pre135962%_)
                                                            (if (string? _%pre135962%_)
                                                                (gx#core-module->prelude-context
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#core-import-module__0 _%pre135962%_))
                        (if (not _%pre135962%_)
                            (let ((_%$e135971%_
                                   (gx#current-expander-module-prelude)))
                              (if _%$e135971%_
                                  _%$e135971%_
                                  (let ((__obj137082
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
                                     __obj137082
                                     '#f)
                                    __obj137082)))
                            (error '"cannot import module; unknown prelude"
                                   _%rpath135862%_
                                   _%pre135962%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%ctx135977%_
                                                    (let ((__obj137083
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
                                                       __obj137083
                                                       _%id135963%_
                                                       _%prelude135975%_
                                                       _%ns135964%_
                                                       _%path135954%_)
                                                      __obj137083))
                                                   (_%body135979%_
                                                    (gx#core-expand-module-begin
                                                     _%body135965%_
                                                     _%ctx135977%_))
                                                   (_%body135981%_
                                                    (gx#core-quote-syntax__%
                                                     (gx#core-cons
                                                      '%#begin
                                                      _%body135979%_)
                                                     _%path135954%_
                                                     _%ctx135977%_
                                                     '())))
                                              (##unchecked-structure-set!
                                               _%ctx135977%_
                                               (__make-promise
                                                (lambda ()
                                                  (gx#eval-syntax*
                                                   _%body135981%_)))
                                               '10
                                               '#f
                                               '#f)
                                              (##unchecked-structure-set!
                                               _%ctx135977%_
                                               _%body135981%_
                                               '11
                                               '#f
                                               '#f)
                                              (__hash-put!
                                               gx#__module-registry
                                               _%path135954%_
                                               _%ctx135977%_)
                                              (__hash-put!
                                               gx#__module-registry
                                               _%id135963%_
                                               _%ctx135977%_)
                                              _%ctx135977%_)))))
                                    gx#current-export-expander-phi
                                    '#f))
                                 gx#current-import-expander-phi
                                 '#f))
                              gx#current-expander-path
                              (cons _%path135954%_
                                    (gx#current-expander-path))))
                           gx#current-expander-phi
                           '0))
                        gx#current-expander-marks
                        '()))
                     gx#current-expander-context
                     (gx#core-context-root__0))))
                 (_%import-submodule135866%_
                  (lambda (_%rpath135882%_)
                    (let* ((_%rpath135883135890%_ _%rpath135882%_)
                           (_%E135885135894%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%rpath135883135890%_
                                     '([origin . refs]))
                              '#!void))
                           (_%K135886135942%_
                            (lambda (_%refs135897%_ _%origin135898%_)
                              (let ((_%ctx135900%_
                                     (if _%origin135898%_
                                         (gx#core-import-module__%
                                          _%origin135898%_
                                          _%reload?135863%_)
                                         (gx#current-expander-context))))
                                (let _%lp135902%_ ((_%rest135904%_
                                                    _%refs135897%_)
                                                   (_%ctx135905%_
                                                    _%ctx135900%_))
                                  (let* ((_%rest135906135914%_ _%rest135904%_)
                                         (_%else135908135922%_
                                          (lambda () _%ctx135905%_))
                                         (_%K135910135930%_
                                          (lambda (_%rest135925%_ _%id135926%_)
                                            (let ((_%bind135928%_
                                                   (gx#resolve-identifier__%
                                                    _%id135926%_
                                                    '0
                                                    _%ctx135905%_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _%bind135928%_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _%bind135928%_
                                                         '4
                                                         '#f
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_%lp135902%_
                                                   _%rest135925%_
                                                   (##unchecked-structure-ref
                                                    _%bind135928%_
                                                    '4
                                                    '#f
                                                    '#f))
                                                  (error '"cannot import submodule; not bound as a module"
                                                         _%rpath135882%_
                                                         _%id135926%_
                                                         _%bind135928%_))))))
                                    (if (pair? _%rest135906135914%_)
                                        (let ((_%hd135911135933%_
                                               (##car _%rest135906135914%_))
                                              (_%tl135912135935%_
                                               (##cdr _%rest135906135914%_)))
                                          (let* ((_%id135938%_
                                                  _%hd135911135933%_)
                                                 (_%rest135940%_
                                                  _%tl135912135935%_))
                                            (_%K135910135930%_
                                             _%rest135940%_
                                             _%id135938%_)))
                                        (_%else135908135922%_))))))))
                      (if (pair? _%rpath135883135890%_)
                          (let ((_%hd135887135945%_
                                 (##car _%rpath135883135890%_))
                                (_%tl135888135947%_
                                 (##cdr _%rpath135883135890%_)))
                            (let* ((_%origin135950%_ _%hd135887135945%_)
                                   (_%refs135952%_ _%tl135888135947%_))
                              (_%K135886135942%_
                               _%refs135952%_
                               _%origin135950%_)))
                          (_%E135885135894%_))))))
          (let ((_%$e135868%_
                 (if (not _%reload?135863%_)
                     (__hash-get gx#__module-registry _%rpath135862%_)
                     '#f)))
            (if _%$e135868%_
                _%$e135868%_
                (if (list? _%rpath135862%_)
                    (_%import-submodule135866%_ _%rpath135862%_)
                    (if (gx#core-library-module-path? _%rpath135862%_)
                        (let ((_%ctx135873%_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _%rpath135862%_)
                                _%reload?135863%_)))
                          (__hash-put!
                           gx#__module-registry
                           _%rpath135862%_
                           _%ctx135873%_)
                          _%ctx135873%_)
                        (let* ((_%npath135876%_
                                (path-normalize _%rpath135862%_))
                               (_%$e135878%_
                                (if (not _%reload?135863%_)
                                    (__hash-get
                                     gx#__module-registry
                                     _%npath135876%_)
                                    '#f)))
                          (if _%$e135878%_
                              _%$e135878%_
                              (_%import-source135865%_
                               _%npath135876%_))))))))))
    (define gx#core-import-module__0
      (lambda (_%rpath135988%_)
        (let ((_%reload?135990%_ '#f))
          (gx#core-import-module__% _%rpath135988%_ _%reload?135990%_))))
    (define gx#core-import-module
      (lambda _g137093_
        (let ((_g137094_ (##length _g137093_)))
          (cond ((##fx= _g137094_ 1)
                 (apply gx#core-import-module__0 _g137093_))
                ((##fx= _g137094_ 2)
                 (apply gx#core-import-module__% _g137093_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g137093_))))))
    (define gx#core-read-module
      (lambda (_%path135851%_)
        (__with-catch
         (lambda (_%exn135853%_)
           (if (and (datum-parsing-exception? _%exn135853%_)
                    (eq? (datum-parsing-exception-filepos _%exn135853%_) '0))
               (gx#core-read-module/lang _%path135851%_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _%path135851%_
                (call-with-parameters__1
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_%g135855135857%_)
                      (display-exception__% _%exn135853%_ _%g135855135857%_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _%path135851%_)))))
    (define gx#core-read-module/sexp
      (lambda (_%path135703%_)
        (let _%lp135705%_ ((_%body135707%_
                            (read-syntax-from-file _%path135703%_))
                           (_%pre135708%_ '#f)
                           (_%ns135709%_ '#f)
                           (_%pkg135710%_ '#f))
          (let* ((_%e135711135735%_ _%body135707%_)
                 (_%E135727135761%_
                  (lambda ()
                    (let ((_g137095_
                           (if _%pkg135710%_
                               (values _%pre135708%_
                                       _%ns135709%_
                                       _%pkg135710%_)
                               (gx#core-read-module-package
                                _%path135703%_
                                _%pre135708%_
                                _%ns135709%_))))
                      (begin
                        (let ((_g137096_
                               (if (##values? _g137095_)
                                   (##values-length _g137095_)
                                   1)))
                          (if (not (##fx= _g137096_ 3))
                              (error "Context expects 3 values" _g137096_)))
                        (let ((_%pre135739%_ (##values-ref _g137095_ 0))
                              (_%ns135740%_ (##values-ref _g137095_ 1))
                              (_%pkg135741%_ (##values-ref _g137095_ 2)))
                          (let* ((_%prelude135747%_
                                  (if (gx#core-bound-module-prelude?
                                       _%pre135739%_)
                                      (gx#syntax-local-e__0 _%pre135739%_)
                                      (if (gx#core-library-module-path?
                                           _%pre135739%_)
                                          (gx#core-resolve-library-module-path
                                           _%pre135739%_)
                                          (if (gx#stx-string? _%pre135739%_)
                                              (gx#core-resolve-module-path__%
                                               _%pre135739%_
                                               _%path135703%_)
                                              (gx#stx-e _%pre135739%_)))))
                                 (_%path-id135749%_
                                  (gx#core-module-path->namespace
                                   _%path135703%_))
                                 (_%pkg-id135751%_
                                  (if _%pkg135741%_
                                      (##string-append
                                       _%pkg135741%_
                                       '"/"
                                       _%path-id135749%_)
                                      _%path-id135749%_))
                                 (_%module-id135753%_
                                  (##string->symbol _%pkg-id135751%_))
                                 (_%module-ns135758%_
                                  (if (eq? _%ns135740%_ '#!void)
                                      '#f
                                      (let ((_%$e135755%_ _%ns135740%_))
                                        (if _%$e135755%_
                                            _%$e135755%_
                                            _%pkg-id135751%_)))))
                            (values _%prelude135747%_
                                    _%module-id135753%_
                                    _%module-ns135758%_
                                    _%body135707%_)))))))
                 (_%E135720135793%_
                  (lambda ()
                    (if (gx#stx-pair? _%e135711135735%_)
                        (let ((_%e135728135765%_
                               (gx#syntax-e _%e135711135735%_)))
                          (let ((_%hd135729135768%_ (##car _%e135728135765%_))
                                (_%tl135730135770%_ (##cdr _%e135728135765%_)))
                            (if (eq? (gx#stx-e _%hd135729135768%_) 'package:)
                                (if (gx#stx-pair? _%tl135730135770%_)
                                    (let ((_%e135731135773%_
                                           (gx#syntax-e _%tl135730135770%_)))
                                      (let ((_%hd135732135776%_
                                             (##car _%e135731135773%_))
                                            (_%tl135733135778%_
                                             (##cdr _%e135731135773%_)))
                                        (let* ((_%pkg135781%_
                                                _%hd135732135776%_)
                                               (_%rest135783%_
                                                _%tl135733135778%_)
                                               (_%pkg135791%_
                                                (if (gx#identifier?
                                                     _%pkg135781%_)
                                                    (symbol->string
                                                     (gx#stx-e _%pkg135781%_))
                                                    (if (or (gx#stx-string?
                                                             _%pkg135781%_)
                                                            (gx#stx-false?
                                                             _%pkg135781%_))
                                                        (gx#stx-e
                                                         _%pkg135781%_)
                                                        (gx#raise-syntax-error
                                                         'import
                                                         '"Bad syntax; Illegal package name"
                                                         _%pkg135781%_)))))
                                          (_%lp135705%_
                                           _%rest135783%_
                                           _%pre135708%_
                                           _%ns135709%_
                                           _%pkg135791%_))))
                                    (_%E135727135761%_))
                                (_%E135727135761%_))))
                        (_%E135727135761%_))))
                 (_%E135713135823%_
                  (lambda ()
                    (if (gx#stx-pair? _%e135711135735%_)
                        (let ((_%e135721135797%_
                               (gx#syntax-e _%e135711135735%_)))
                          (let ((_%hd135722135800%_ (##car _%e135721135797%_))
                                (_%tl135723135802%_ (##cdr _%e135721135797%_)))
                            (if (eq? (gx#stx-e _%hd135722135800%_) 'namespace:)
                                (if (gx#stx-pair? _%tl135723135802%_)
                                    (let ((_%e135724135805%_
                                           (gx#syntax-e _%tl135723135802%_)))
                                      (let ((_%hd135725135808%_
                                             (##car _%e135724135805%_))
                                            (_%tl135726135810%_
                                             (##cdr _%e135724135805%_)))
                                        (let* ((_%ns135813%_
                                                _%hd135725135808%_)
                                               (_%rest135815%_
                                                _%tl135726135810%_)
                                               (_%ns135821%_
                                                (if (gx#identifier?
                                                     _%ns135813%_)
                                                    (symbol->string
                                                     (gx#stx-e _%ns135813%_))
                                                    (if (gx#stx-string?
                                                         _%ns135813%_)
                                                        (gx#stx-e _%ns135813%_)
                                                        (if (gx#stx-false?
                                                             _%ns135813%_)
                                                            '#!void
                                                            (gx#raise-syntax-error
                                                             'import
                                                             '"Bad syntax; illegal namespace"
                                                             _%ns135813%_))))))
                                          (_%lp135705%_
                                           _%rest135815%_
                                           _%pre135708%_
                                           _%ns135821%_
                                           _%pkg135710%_))))
                                    (_%E135720135793%_))
                                (_%E135720135793%_))))
                        (_%E135720135793%_))))
                 (_%E135712135847%_
                  (lambda ()
                    (if (gx#stx-pair? _%e135711135735%_)
                        (let ((_%e135714135827%_
                               (gx#syntax-e _%e135711135735%_)))
                          (let ((_%hd135715135830%_ (##car _%e135714135827%_))
                                (_%tl135716135832%_ (##cdr _%e135714135827%_)))
                            (if (eq? (gx#stx-e _%hd135715135830%_) 'prelude:)
                                (if (gx#stx-pair? _%tl135716135832%_)
                                    (let ((_%e135717135835%_
                                           (gx#syntax-e _%tl135716135832%_)))
                                      (let ((_%hd135718135838%_
                                             (##car _%e135717135835%_))
                                            (_%tl135719135840%_
                                             (##cdr _%e135717135835%_)))
                                        (let* ((_%prelude135843%_
                                                _%hd135718135838%_)
                                               (_%rest135845%_
                                                _%tl135719135840%_))
                                          (_%lp135705%_
                                           _%rest135845%_
                                           _%prelude135843%_
                                           _%ns135709%_
                                           _%pkg135710%_))))
                                    (_%E135713135823%_))
                                (_%E135713135823%_))))
                        (_%E135713135823%_)))))
            (_%E135712135847%_)))))
    (define gx#core-read-module/lang
      (lambda (_%path135524%_)
        (letrec ((_%default-read-module-body135526%_
                  (lambda (_%inp135695%_)
                    (let _%lp135697%_ ((_%body135699%_ '()))
                      (let ((_%next135701%_ (read-syntax__% _%inp135695%_)))
                        (if (eof-object? _%next135701%_)
                            (reverse _%body135699%_)
                            (_%lp135697%_
                             (cons _%next135701%_ _%body135699%_)))))))
                 (_%read-body135527%_
                  (lambda (_%inp135612%_
                           _%pre135613%_
                           _%ns135614%_
                           _%pkg135615%_
                           _%args135616%_)
                    (let ((_g137097_
                           (if _%pkg135615%_
                               (values _%pre135613%_
                                       _%ns135614%_
                                       _%pkg135615%_)
                               (gx#core-read-module-package
                                _%path135524%_
                                _%pre135613%_
                                _%ns135614%_))))
                      (begin
                        (let ((_g137098_
                               (if (##values? _g137097_)
                                   (##values-length _g137097_)
                                   1)))
                          (if (not (##fx= _g137098_ 3))
                              (error "Context expects 3 values" _g137098_)))
                        (let ((_%pre135618%_ (##values-ref _g137097_ 0))
                              (_%ns135619%_ (##values-ref _g137097_ 1))
                              (_%pkg135620%_ (##values-ref _g137097_ 2)))
                          (let* ((_%prelude135622%_
                                  (gx#import-module__0 _%pre135618%_))
                                 (_%read-module-body135677%_
                                  (let ((_%$e135668%_
                                         (__find (lambda (_%e135623135625%_)
                                                   (let* ((_%g135627135637%_
                                                           _%e135623135625%_)
                                                          (_%else135629135645%_
                                                           (lambda () '#f))
                                                          (_%K135631135649%_
                                                           (lambda () '#t)))
                                                     (if (##structure-direct-instance-of?
                                                          _%g135627135637%_
                                                          'gx#module-export::t)
                                                         (let* ((_%e135632135652%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##unchecked-structure-ref
                          _%g135627135637%_
                          '1
                          '#f
                          '#f))
                        (_%e135633135655%_
                         (##unchecked-structure-ref
                          _%g135627135637%_
                          '2
                          '#f
                          '#f))
                        (_%e135634135658%_
                         (##unchecked-structure-ref
                          _%g135627135637%_
                          '3
                          '#f
                          '#f)))
                   (if (##eq? _%e135634135658%_ '1)
                       (let ((_%e135635135661%_
                              (##unchecked-structure-ref
                               _%g135627135637%_
                               '4
                               '#f
                               '#f)))
                         (if ((lambda (_%g135663135665%_)
                                (eq? _%g135663135665%_ 'read-module-body))
                              _%e135635135661%_)
                             (_%K135631135649%_)
                             (_%else135629135645%_)))
                       (_%else135629135645%_)))
                 (_%else135629135645%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (##unchecked-structure-ref
                                                  _%prelude135622%_
                                                  '9
                                                  '#f
                                                  '#f))))
                                    (if _%$e135668%_
                                        ((lambda (_%xport135671%_)
                                           (let ((_%proc135674%_
                                                  (__with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _%xport135671%_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _%proc135674%_)
                                                 _%proc135674%_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _%path135524%_
                                                  _%pre135618%_
                                                  _%proc135674%_))))
                                         _%$e135668%_)
                                        _%default-read-module-body135526%_)))
                                 (_%path-id135679%_
                                  (gx#core-module-path->namespace
                                   _%path135524%_))
                                 (_%pkg-id135681%_
                                  (if _%pkg135620%_
                                      (##string-append
                                       _%pkg135620%_
                                       '"/"
                                       _%path-id135679%_)
                                      _%path-id135679%_))
                                 (_%module-id135683%_
                                  (##string->symbol _%pkg-id135681%_))
                                 (_%module-ns135688%_
                                  (let ((_%$e135685%_ _%ns135619%_))
                                    (if _%$e135685%_
                                        _%$e135685%_
                                        _%pkg-id135681%_)))
                                 (_%body135692%_
                                  (call-with-parameters__1
                                   (lambda ()
                                     (call-with-parameters__1
                                      (lambda ()
                                        (_%read-module-body135677%_
                                         _%inp135612%_))
                                      gx#current-module-reader-args
                                      _%args135616%_))
                                   gx#current-module-reader-path
                                   _%path135524%_)))
                            (values _%prelude135622%_
                                    _%module-id135683%_
                                    _%module-ns135688%_
                                    _%body135692%_)))))))
                 (_%string-e135528%_
                  (lambda (_%obj135606%_ _%what135607%_)
                    (if (string? _%obj135606%_)
                        _%obj135606%_
                        (if (symbol? _%obj135606%_)
                            (##symbol->string _%obj135606%_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _%what135607%_)
                             _%path135524%_
                             _%obj135606%_)))))
                 (_%read-lang-args135529%_
                  (lambda (_%inp135561%_ _%args135562%_)
                    (let* ((_%args135563135571%_ _%args135562%_)
                           (_%else135565135579%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _%path135524%_)))
                           (_%K135567135594%_
                            (lambda (_%args135582%_ _%prelude135583%_)
                              (let* ((_%pkg135585%_
                                      (pgetq__0 'package: _%args135582%_))
                                     (_%pkg135587%_
                                      (if _%pkg135585%_
                                          (_%string-e135528%_
                                           _%pkg135585%_
                                           '"package")
                                          '#f))
                                     (_%ns135589%_
                                      (pgetq__0 'namespace: _%args135582%_))
                                     (_%ns135591%_
                                      (if _%ns135589%_
                                          (_%string-e135528%_
                                           _%ns135589%_
                                           '"namespace")
                                          '#f)))
                                (_%read-body135527%_
                                 _%inp135561%_
                                 _%prelude135583%_
                                 _%ns135591%_
                                 _%pkg135587%_
                                 _%args135582%_)))))
                      (if (pair? _%args135563135571%_)
                          (let ((_%hd135568135597%_
                                 (##car _%args135563135571%_))
                                (_%tl135569135599%_
                                 (##cdr _%args135563135571%_)))
                            (let* ((_%prelude135602%_ _%hd135568135597%_)
                                   (_%args135604%_ _%tl135569135599%_))
                              (_%K135567135594%_
                               _%args135604%_
                               _%prelude135602%_)))
                          (_%else135565135579%_)))))
                 (_%read-lang135530%_
                  (lambda (_%inp135535%_)
                    (let* ((_%head135537%_ (read-line _%inp135535%_))
                           (_%$e135539%_
                            (string-index__0 _%head135537%_ '#\space)))
                      (if _%$e135539%_
                          ((lambda (_%ix135542%_)
                             (let ((_%lang135544%_
                                    (substring
                                     _%head135537%_
                                     '0
                                     _%ix135542%_)))
                               (if (equal? _%lang135544%_ '"#lang")
                                   (let* ((_%rest135546%_
                                           (substring
                                            _%head135537%_
                                            (##fx+ _%ix135542%_ '1)
                                            (string-length _%head135537%_)))
                                          (_%args135557%_
                                           (__with-catch
                                            (lambda (_%g135547135549%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _%path135524%_
                                               _%g135547135549%_))
                                            (lambda ()
                                              (call-with-input-string
                                               _%rest135546%_
                                               (lambda (_%g135552135554%_)
                                                 (read-all
                                                  _%g135552135554%_
                                                  read)))))))
                                     (_%read-lang-args135529%_
                                      _%inp135535%_
                                      _%args135557%_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _%path135524%_))))
                           _%$e135539%_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _%path135524%_)))))
                 (_%read-e135531%_
                  (lambda (_%inp135533%_)
                    (if (eq? (peek-char _%inp135533%_) '#\#)
                        (_%read-lang135530%_ _%inp135533%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _%path135524%_)))))
          (gx#call-with-input-source-file _%path135524%_ _%read-e135531%_))))
    (define gx#core-read-module-package
      (lambda (_%path135472%_ _%pre135473%_ _%ns135474%_)
        (letrec ((_%string-e135476%_
                  (lambda (_%e135519%_)
                    (if (symbol? _%e135519%_)
                        (##symbol->string _%e135519%_)
                        (if (string? _%e135519%_)
                            _%e135519%_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%e135519%_))))))
          (let _%lp135478%_ ((_%dir135480%_ (path-directory _%path135472%_))
                             (_%pkg-path135481%_ '()))
            (let ((_%gerbil.pkg135483%_
                   (path-expand '"gerbil.pkg" _%dir135480%_)))
              (if (##file-exists? _%gerbil.pkg135483%_)
                  (let ((_%plist135485%_
                         (gx#core-library-package-plist__% _%dir135480%_ '#t)))
                    (if (null? _%plist135485%_)
                        (let ((_%pkg135488%_
                               (if (null? _%pkg-path135481%_)
                                   '#f
                                   (string-join _%pkg-path135481%_ '"/"))))
                          (values _%pre135473%_ _%ns135474%_ _%pkg135488%_))
                        (if (list? _%plist135485%_)
                            (let* ((_%root135491%_
                                    (pgetq__0 'package: _%plist135485%_))
                                   (_%pkg135495%_
                                    (let ((_%pkg-path135493%_
                                           (if _%root135491%_
                                               (cons (_%string-e135476%_
                                                      _%root135491%_)
                                                     _%pkg-path135481%_)
                                               _%pkg-path135481%_)))
                                      (if (null? _%pkg-path135493%_)
                                          '#f
                                          (string-join
                                           _%pkg-path135493%_
                                           '"/"))))
                                   (_%ns135502%_
                                    (let ((_%ns135500%_
                                           (let ((_%$e135497%_ _%ns135474%_))
                                             (if _%$e135497%_
                                                 _%$e135497%_
                                                 (pgetq__0
                                                  'namespace:
                                                  _%plist135485%_)))))
                                      (if _%ns135500%_
                                          (_%string-e135476%_ _%ns135500%_)
                                          '#f)))
                                   (_%pre135507%_
                                    (let ((_%$e135504%_ _%pre135473%_))
                                      (if _%$e135504%_
                                          _%$e135504%_
                                          (pgetq__0
                                           'prelude:
                                           _%plist135485%_)))))
                              (values _%pre135507%_
                                      _%ns135502%_
                                      _%pkg135495%_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%plist135485%_))))
                  (let ((_%dir*135511%_
                         (path-strip-trailing-directory-separator
                          _%dir135480%_)))
                    (if (or (__string-empty? _%dir*135511%_)
                            (equal? _%dir135480%_ _%dir*135511%_))
                        (values _%pre135473%_ _%ns135474%_ '#f)
                        (let ((_%xpath135516%_
                               (path-strip-directory _%dir*135511%_))
                              (_%xdir135517%_ (path-directory _%dir*135511%_)))
                          (_%lp135478%_
                           _%xdir135517%_
                           (cons _%xpath135516%_ _%pkg-path135481%_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_%path135470%_)
        (path-strip-extension (path-strip-directory _%path135470%_))))
    (define gx#core-module-path->id
      (lambda (_%path135468%_)
        (##string->symbol (gx#core-module-path->namespace _%path135468%_))))
    (define gx#core-resolve-module-path__%
      (lambda (_%stx-path135447%_ _%rel135448%_)
        (let* ((_%path135450%_ (gx#stx-e _%stx-path135447%_))
               (_%path135452%_
                (if (__string-empty? (path-extension _%path135450%_))
                    (##string-append _%path135450%_ '".ss")
                    _%path135450%_)))
          (gx#core-resolve-path__%
           _%path135452%_
           (let ((_%$e135455%_ (gx#stx-source _%stx-path135447%_)))
             (if _%$e135455%_ _%$e135455%_ _%rel135448%_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_%stx-path135461%_)
        (let ((_%rel135463%_ '#f))
          (gx#core-resolve-module-path__% _%stx-path135461%_ _%rel135463%_))))
    (define gx#core-resolve-module-path
      (lambda _g137099_
        (let ((_g137100_ (##length _g137099_)))
          (cond ((##fx= _g137100_ 1)
                 (apply gx#core-resolve-module-path__0 _g137099_))
                ((##fx= _g137100_ 2)
                 (apply gx#core-resolve-module-path__% _g137099_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g137099_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_%libpath135332%_)
        (let* ((_%spath135334%_ (symbol->string (gx#stx-e _%libpath135332%_)))
               (_%spath135336%_
                (substring
                 _%spath135334%_
                 '1
                 (##string-length _%spath135334%_)))
               (_%ext135338%_ (path-extension _%spath135336%_))
               (_%ssi135340%_
                (if (__string-empty? _%ext135338%_)
                    (##string-append _%spath135336%_ '".ssi")
                    (##string-append
                     (path-strip-extension _%spath135336%_)
                     '".ssi")))
               (_%srcs135344%_
                (if (__string-empty? _%ext135338%_)
                    (##map (lambda (_%ext135342%_)
                             (string-append _%spath135336%_ _%ext135342%_))
                           '(".ss" ".sld" ".scm"))
                    (cons _%spath135336%_ '()))))
          (let _%lp135347%_ ((_%rest135349%_ (load-path)))
            (let* ((_%rest135350135359%_ _%rest135349%_)
                   (_%E135353135363%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rest135350135359%_
                             '([dir . rest])
                             '([]))
                      '#!void)))
              (let ((_%K135355135434%_
                     (lambda (_%rest135374%_ _%dir135375%_)
                       (letrec ((_%resolve135377%_
                                 (lambda (_%ssi135390%_ _%srcs135391%_)
                                   (let ((_%compiled-path135393%_
                                          (path-expand
                                           _%ssi135390%_
                                           _%dir135375%_)))
                                     (if (##file-exists?
                                          _%compiled-path135393%_)
                                         (path-normalize
                                          _%compiled-path135393%_)
                                         (let _%lpr135395%_ ((_%rest-src135397%_
                                                              _%srcs135391%_))
                                           (let* ((_%rest-src135398135406%_
                                                   _%rest-src135397%_)
                                                  (_%else135400135414%_
                                                   (lambda ()
                                                     (_%lp135347%_
                                                      _%rest135374%_)))
                                                  (_%K135402135422%_
                                                   (lambda (_%rest-src135417%_
                                                            _%src135418%_)
                                                     (let ((_%src-path135420%_
                                                            (path-expand
                                                             _%src135418%_
                                                             _%dir135375%_)))
                                                       (if (##file-exists?
                                                            _%src-path135420%_)
                                                           (path-normalize
                                                            _%src-path135420%_)
                                                           (_%lpr135395%_
                                                            _%rest-src135417%_))))))
                                             (if (pair? _%rest-src135398135406%_)
                                                 (let ((_%hd135403135425%_
                                                        (##car _%rest-src135398135406%_))
                                                       (_%tl135404135427%_
                                                        (##cdr _%rest-src135398135406%_)))
                                                   (let* ((_%src135430%_
                                                           _%hd135403135425%_)
                                                          (_%rest-src135432%_
                                                           _%tl135404135427%_))
                                                     (_%K135402135422%_
                                                      _%rest-src135432%_
                                                      _%src135430%_)))
                                                 (_%else135400135414%_)))))))))
                         (let ((_%$e135379%_
                                (gx#core-library-package-path-prefix
                                 _%dir135375%_)))
                           (if _%$e135379%_
                               ((lambda (_%prefix135382%_)
                                  (if (string-prefix?
                                       _%prefix135382%_
                                       _%spath135336%_)
                                      (let ((_%ssi135386%_
                                             (substring
                                              _%ssi135340%_
                                              (string-length _%prefix135382%_)
                                              (##string-length _%ssi135340%_)))
                                            (_%srcs135387%_
                                             (##map (lambda (_%src135384%_)
                                                      (substring
                                                       _%src135384%_
                                                       (string-length
                                                        _%prefix135382%_)
                                                       (string-length
                                                        _%src135384%_)))
                                                    _%srcs135344%_)))
                                        (_%resolve135377%_
                                         _%ssi135386%_
                                         _%srcs135387%_))
                                      (_%lp135347%_ _%rest135374%_)))
                                _%$e135379%_)
                               (_%resolve135377%_
                                _%ssi135340%_
                                _%srcs135344%_))))))
                    (_%K135354135368%_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"cannot find library module"
                        _%libpath135332%_))))
                (let ((_%try-match135352135371%_
                       (lambda ()
                         (if (null? _%rest135350135359%_)
                             (_%K135354135368%_)
                             (_%E135353135363%_)))))
                  (if (pair? _%rest135350135359%_)
                      (let ((_%tl135357135439%_ (##cdr _%rest135350135359%_))
                            (_%hd135356135437%_ (##car _%rest135350135359%_)))
                        (let ((_%dir135442%_ _%hd135356135437%_)
                              (_%rest135444%_ _%tl135357135439%_))
                          (_%K135355135434%_ _%rest135444%_ _%dir135442%_)))
                      (_%try-match135352135371%_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_%modpath135300%_)
        (letrec ((_%resolve135302%_
                  (lambda (_%path135323%_ _%base135324%_)
                    (let ((_%$e135326%_
                           (string-rindex__0 _%base135324%_ '#\/)))
                      (if _%$e135326%_
                          ((lambda (_%idx135329%_)
                             (gx#core-resolve-library-module-path
                              (##string->symbol
                               (string-append
                                '":"
                                (substring _%base135324%_ '0 _%idx135329%_)
                                '"/"
                                _%path135323%_))))
                           _%$e135326%_)
                          (gx#core-resolve-library-module-path
                           (##string->symbol
                            (string-append '":" _%path135323%_))))))))
          (let ((_%spath135304%_ (symbol->string (gx#stx-e _%modpath135300%_)))
                (_%mod135305%_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _%mod135305%_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"cannot resolve relative module path; not in module context"
                 _%modpath135300%_))
            (let ((_%mpath135307%_
                   (symbol->string
                    (##structure-ref
                     _%mod135305%_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _%lp135309%_ ((_%spath135311%_ _%spath135304%_)
                                 (_%mpath135312%_ _%mpath135307%_))
                (if (string-prefix? '"../" _%spath135311%_)
                    (let ((_%$e135315%_
                           (string-rindex__0 _%mpath135312%_ '#\/)))
                      (if _%$e135315%_
                          ((lambda (_%idx135318%_)
                             (_%lp135309%_
                              (substring
                               _%spath135311%_
                               '3
                               (string-length _%spath135311%_))
                              (substring _%mpath135312%_ '0 _%idx135318%_)))
                           _%$e135315%_)
                          (gx#raise-syntax-error
                           '#f
                           '"cannot resolve relative module path; illegal traversal"
                           _%modpath135300%_)))
                    (if (string-prefix? '"./" _%spath135311%_)
                        (_%lp135309%_
                         (substring
                          _%spath135311%_
                          '2
                          (string-length _%spath135311%_))
                         _%mpath135312%_)
                        (_%resolve135302%_
                         _%spath135311%_
                         _%mpath135312%_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_%dir135292%_)
        (let ((_%$e135294%_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _%dir135292%_))))
          (if _%$e135294%_
              ((lambda (_%pkg135297%_)
                 (##string-append (symbol->string _%pkg135297%_) '"/"))
               _%$e135294%_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_%dir135262%_ _%exists?135263%_)
        (let ((_%$e135265%_ (__hash-get gx#__module-pkg-cache _%dir135262%_)))
          (if _%$e135265%_
              _%$e135265%_
              (let* ((_%gerbil.pkg135269%_
                      (path-expand '"gerbil.pkg" _%dir135262%_))
                     (_%plist135279%_
                      (if (or _%exists?135263%_
                              (##file-exists? _%gerbil.pkg135269%_))
                          (let ((_%e135274%_
                                 (gx#call-with-input-source-file
                                  _%gerbil.pkg135269%_
                                  read)))
                            (if (eof-object? _%e135274%_)
                                '()
                                (if (list? _%e135274%_)
                                    _%e135274%_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _%gerbil.pkg135269%_
                                     _%e135274%_))))
                          '())))
                (__hash-put!
                 gx#__module-pkg-cache
                 _%dir135262%_
                 _%plist135279%_)
                _%plist135279%_)))))
    (define gx#core-library-package-plist__0
      (lambda (_%dir135285%_)
        (let ((_%exists?135287%_ '#f))
          (gx#core-library-package-plist__% _%dir135285%_ _%exists?135287%_))))
    (define gx#core-library-package-plist
      (lambda _g137101_
        (let ((_g137102_ (##length _g137101_)))
          (cond ((##fx= _g137102_ 1)
                 (apply gx#core-library-package-plist__0 _g137101_))
                ((##fx= _g137102_ 2)
                 (apply gx#core-library-package-plist__% _g137101_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g137101_))))))
    (define gx#core-library-module-path?
      (lambda (_%stx135259%_)
        (gx#core-special-module-path? _%stx135259%_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_%stx135257%_)
        (gx#core-special-module-path? _%stx135257%_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_%stx135252%_ _%char135253%_)
        (if (gx#identifier? _%stx135252%_)
            (if (interned-symbol? (gx#stx-e _%stx135252%_))
                (let ((_%str135255%_
                       (symbol->string (gx#stx-e _%stx135252%_))))
                  (if (##fx> (##string-length _%str135255%_) '1)
                      (eq? (string-ref _%str135255%_ '0) _%char135253%_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_%stx135246%_)
        (gx#core-bound-identifier?__%
         _%stx135246%_
         (lambda (_%g135247135249%_)
           (gx#expander-binding?__% _%g135247135249%_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_%stx135240%_)
        (gx#core-bound-identifier?__%
         _%stx135240%_
         (lambda (_%g135241135243%_)
           (gx#expander-binding?__% _%g135241135243%_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_%stx135227%_)
        (letrec ((_%module-prelude?135229%_
                  (lambda (_%e135235%_)
                    (let ((_%$e135237%_
                           (##structure-instance-of?
                            _%e135235%_
                            'gx#module-context::t)))
                      (if _%$e135237%_
                          _%$e135237%_
                          (##structure-instance-of?
                           _%e135235%_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _%stx135227%_
           (lambda (_%g135230135232%_)
             (gx#expander-binding?__%
              _%g135230135232%_
              _%module-prelude?135229%_))))))
    (define gx#core-bind-import!__%
      (lambda (_%in135157%_ _%ctx135158%_ _%force-weak?135159%_)
        (let* ((_%in135160135169%_ _%in135157%_)
               (_%E135162135173%_
                (lambda ()
                  (error '"No clause matching"
                         _%in135160135169%_
                         '((module-import source key phi weak?)))
                  '#!void))
               (_%K135163135186%_
                (lambda (_%weak?135176%_
                         _%phi135177%_
                         _%key135178%_
                         _%source135179%_)
                  (gx#core-bind!__%
                   _%key135178%_
                   (let ((_%e135181%_
                          (gx#core-resolve-module-export _%source135179%_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref _%e135181%_ '1 '#f '#f)
                      _%key135178%_
                      _%phi135177%_
                      _%e135181%_
                      (##unchecked-structure-ref _%source135179%_ '1 '#f '#f)
                      (let ((_%$e135183%_ _%force-weak?135159%_))
                        (if _%$e135183%_ _%$e135183%_ _%weak?135176%_))))
                   gx#core-context-rebind?
                   _%phi135177%_
                   _%ctx135158%_))))
          (if (##structure-direct-instance-of?
               _%in135160135169%_
               'gx#module-import::t)
              (let* ((_%e135164135189%_
                      (##unchecked-structure-ref
                       _%in135160135169%_
                       '1
                       '#f
                       '#f))
                     (_%source135192%_ _%e135164135189%_)
                     (_%e135165135194%_
                      (##unchecked-structure-ref
                       _%in135160135169%_
                       '2
                       '#f
                       '#f))
                     (_%key135197%_ _%e135165135194%_)
                     (_%e135166135199%_
                      (##unchecked-structure-ref
                       _%in135160135169%_
                       '3
                       '#f
                       '#f))
                     (_%phi135202%_ _%e135166135199%_)
                     (_%e135167135204%_
                      (##unchecked-structure-ref
                       _%in135160135169%_
                       '4
                       '#f
                       '#f))
                     (_%weak?135207%_ _%e135167135204%_))
                (_%K135163135186%_
                 _%weak?135207%_
                 _%phi135202%_
                 _%key135197%_
                 _%source135192%_))
              (_%E135162135173%_)))))
    (define gx#core-bind-import!__0
      (lambda (_%in135212%_)
        (let* ((_%ctx135214%_ (gx#current-expander-context))
               (_%force-weak?135216%_ '#f))
          (gx#core-bind-import!__%
           _%in135212%_
           _%ctx135214%_
           _%force-weak?135216%_))))
    (define gx#core-bind-import!__1
      (lambda (_%in135218%_ _%ctx135219%_)
        (let ((_%force-weak?135221%_ '#f))
          (gx#core-bind-import!__%
           _%in135218%_
           _%ctx135219%_
           _%force-weak?135221%_))))
    (define gx#core-bind-import!
      (lambda _g137103_
        (let ((_g137104_ (##length _g137103_)))
          (cond ((##fx= _g137104_ 1) (apply gx#core-bind-import!__0 _g137103_))
                ((##fx= _g137104_ 2) (apply gx#core-bind-import!__1 _g137103_))
                ((##fx= _g137104_ 3) (apply gx#core-bind-import!__% _g137103_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g137103_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_%in135143%_ _%ctx135144%_)
        (gx#core-bind-import!__% _%in135143%_ _%ctx135144%_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_%in135149%_)
        (let ((_%ctx135151%_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _%in135149%_ _%ctx135151%_))))
    (define gx#core-bind-weak-import!
      (lambda _g137105_
        (let ((_g137106_ (##length _g137105_)))
          (cond ((##fx= _g137106_ 1)
                 (apply gx#core-bind-weak-import!__0 _g137105_))
                ((##fx= _g137106_ 2)
                 (apply gx#core-bind-weak-import!__% _g137105_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g137105_))))))
    (define gx#core-resolve-module-export
      (lambda (_%out135034%_)
        (letrec ((_%subst135036%_
                  (lambda (_%key135082%_)
                    (let* ((_%key135083135091%_ _%key135082%_)
                           (_%else135085135099%_ (lambda () _%key135082%_))
                           (_%K135087135130%_
                            (lambda (_%mark135102%_ _%id135103%_)
                              (let* ((_%mark135104135110%_ _%mark135102%_)
                                     (_%E135106135114%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark135104135110%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K135107135122%_
                                      (lambda (_%subst135117%_)
                                        (let ((_%$e135119%_
                                               (if _%subst135117%_
                                                   (hash-get
                                                    _%subst135117%_
                                                    _%id135103%_)
                                                   '#f)))
                                          (if _%$e135119%_
                                              _%$e135119%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _%key135082%_))))))
                                (if (##structure-instance-of?
                                     _%mark135104135110%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e135108135125%_
                                            (##unchecked-structure-ref
                                             _%mark135104135110%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst135128%_ _%e135108135125%_))
                                      (_%K135107135122%_ _%subst135128%_))
                                    (_%E135106135114%_))))))
                      (if (pair? _%key135083135091%_)
                          (let ((_%hd135088135133%_
                                 (##car _%key135083135091%_))
                                (_%tl135089135135%_
                                 (##cdr _%key135083135091%_)))
                            (let* ((_%id135138%_ _%hd135088135133%_)
                                   (_%mark135140%_ _%tl135089135135%_))
                              (_%K135087135130%_ _%mark135140%_ _%id135138%_)))
                          (_%else135085135099%_))))))
          (let* ((_%out135037135047%_ _%out135034%_)
                 (_%E135039135051%_
                  (lambda ()
                    (error '"No clause matching"
                           _%out135037135047%_
                           '((module-export ctx key phi _ _)))
                    '#!void))
                 (_%K135040135058%_
                  (lambda (_%phi135054%_ _%key135055%_ _%ctx135056%_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _%ctx135056%_ _%phi135054%_)
                     (_%subst135036%_ _%key135055%_)))))
            (if (##structure-direct-instance-of?
                 _%out135037135047%_
                 'gx#module-export::t)
                (let* ((_%e135041135061%_
                        (##unchecked-structure-ref
                         _%out135037135047%_
                         '1
                         '#f
                         '#f))
                       (_%ctx135064%_ _%e135041135061%_)
                       (_%e135042135066%_
                        (##unchecked-structure-ref
                         _%out135037135047%_
                         '2
                         '#f
                         '#f))
                       (_%key135069%_ _%e135042135066%_)
                       (_%e135043135071%_
                        (##unchecked-structure-ref
                         _%out135037135047%_
                         '3
                         '#f
                         '#f))
                       (_%phi135074%_ _%e135043135071%_)
                       (_%e135044135076%_
                        (##unchecked-structure-ref
                         _%out135037135047%_
                         '4
                         '#f
                         '#f))
                       (_%e135045135079%_
                        (##unchecked-structure-ref
                         _%out135037135047%_
                         '5
                         '#f
                         '#f)))
                  (_%K135040135058%_
                   _%phi135074%_
                   _%key135069%_
                   _%ctx135064%_))
                (_%E135039135051%_))))))
    (define gx#core-module-export->import__%
      (lambda (_%out134959%_ _%rename134960%_ _%dphi134961%_)
        (let* ((_%out134962134972%_ _%out134959%_)
               (_%E134964134976%_
                (lambda ()
                  (error '"No clause matching"
                         _%out134962134972%_
                         '((module-export ctx key phi name weak?)))
                  '#!void))
               (_%K134965134988%_
                (lambda (_%weak?134979%_
                         _%name134980%_
                         _%phi134981%_
                         _%key134982%_
                         _%ctx134983%_)
                  (##structure
                   gx#module-import::t
                   _%out134959%_
                   (let ((_%$e134985%_ _%rename134960%_))
                     (if _%$e134985%_ _%$e134985%_ _%name134980%_))
                   (fx+ _%phi134981%_ _%dphi134961%_)
                   _%weak?134979%_))))
          (if (##structure-direct-instance-of?
               _%out134962134972%_
               'gx#module-export::t)
              (let* ((_%e134966134991%_
                      (##unchecked-structure-ref
                       _%out134962134972%_
                       '1
                       '#f
                       '#f))
                     (_%ctx134994%_ _%e134966134991%_)
                     (_%e134967134996%_
                      (##unchecked-structure-ref
                       _%out134962134972%_
                       '2
                       '#f
                       '#f))
                     (_%key134999%_ _%e134967134996%_)
                     (_%e134968135001%_
                      (##unchecked-structure-ref
                       _%out134962134972%_
                       '3
                       '#f
                       '#f))
                     (_%phi135004%_ _%e134968135001%_)
                     (_%e134969135006%_
                      (##unchecked-structure-ref
                       _%out134962134972%_
                       '4
                       '#f
                       '#f))
                     (_%name135009%_ _%e134969135006%_)
                     (_%e134970135011%_
                      (##unchecked-structure-ref
                       _%out134962134972%_
                       '5
                       '#f
                       '#f))
                     (_%weak?135014%_ _%e134970135011%_))
                (_%K134965134988%_
                 _%weak?135014%_
                 _%name135009%_
                 _%phi135004%_
                 _%key134999%_
                 _%ctx134994%_))
              (_%E134964134976%_)))))
    (define gx#core-module-export->import__0
      (lambda (_%out135019%_)
        (let* ((_%rename135021%_ '#f) (_%dphi135023%_ '0))
          (gx#core-module-export->import__%
           _%out135019%_
           _%rename135021%_
           _%dphi135023%_))))
    (define gx#core-module-export->import__1
      (lambda (_%out135025%_ _%rename135026%_)
        (let ((_%dphi135028%_ '0))
          (gx#core-module-export->import__%
           _%out135025%_
           _%rename135026%_
           _%dphi135028%_))))
    (define gx#core-module-export->import
      (lambda _g137107_
        (let ((_g137108_ (##length _g137107_)))
          (cond ((##fx= _g137108_ 1)
                 (apply gx#core-module-export->import__0 _g137107_))
                ((##fx= _g137108_ 2)
                 (apply gx#core-module-export->import__1 _g137107_))
                ((##fx= _g137108_ 3)
                 (apply gx#core-module-export->import__% _g137107_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g137107_))))))
    (define gx#core-expand-module%
      (lambda (_%stx134858%_)
        (letrec ((_%make-context134860%_
                  (lambda (_%id134937%_)
                    (let* ((_%super134939%_ (gx#current-expander-context))
                           (_%bind-id134941%_ (gx#stx-e _%id134937%_))
                           (_%mod-id134943%_
                            (if (##structure-instance-of?
                                 _%super134939%_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##unchecked-structure-ref
                                  _%super134939%_
                                  '1
                                  '#f
                                  '#f)
                                 '"~"
                                 _%bind-id134941%_)
                                _%bind-id134941%_))
                           (_%ns134945%_ (symbol->string _%mod-id134943%_))
                           (_%path134955%_
                            (if (##structure-instance-of?
                                 _%super134939%_
                                 'gx#module-context::t)
                                (let ((_%path134947%_
                                       (##unchecked-structure-ref
                                        _%super134939%_
                                        '7
                                        '#f
                                        '#f)))
                                  (if (or (pair? _%path134947%_)
                                          (null? _%path134947%_))
                                      (cons _%bind-id134941%_ _%path134947%_)
                                      (if (not _%path134947%_)
                                          _%bind-id134941%_
                                          (cons _%bind-id134941%_
                                                (cons _%path134947%_ '())))))
                                _%bind-id134941%_))
                           (__obj137084
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
                       __obj137084
                       _%mod-id134943%_
                       _%super134939%_
                       _%ns134945%_
                       _%path134955%_)
                      __obj137084)))
                 (_%valid-module-id?134861%_
                  (lambda (_%id134912%_)
                    (let* ((_%str134914%_ (symbol->string _%id134912%_))
                           (_%len134916%_ (##string-length _%str134914%_)))
                      (if (##fx>= _%len134916%_ '1)
                          (let _%loop134919%_ ((_%index134921%_
                                                (##fx- (##string-length
                                                        _%str134914%_)
                                                       '1)))
                            (if (##fx>= _%index134921%_ '0)
                                (let ((_%c134923%_
                                       (string-ref
                                        _%str134914%_
                                        _%index134921%_)))
                                  (if (or (and (##char>=? _%c134923%_ '#\a)
                                               (##char<=? _%c134923%_ '#\z))
                                          (and (##char>=? _%c134923%_ '#\A)
                                               (##char<=? _%c134923%_ '#\Z))
                                          (and (##char>=? _%c134923%_ '#\0)
                                               (##char<=? _%c134923%_ '#\9))
                                          (##char=? _%c134923%_ '#\_)
                                          (##char=? _%c134923%_ '#\-))
                                      (_%loop134919%_
                                       (##fx- _%index134921%_ '1))
                                      '#f))
                                '#t))
                          '#f)))))
          (let* ((_%e134862134872%_ _%stx134858%_)
                 (_%E134864134876%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e134862134872%_)))
                 (_%E134863134908%_
                  (lambda ()
                    (if (gx#stx-pair? _%e134862134872%_)
                        (let ((_%e134865134880%_
                               (gx#syntax-e _%e134862134872%_)))
                          (let ((_%hd134866134883%_ (##car _%e134865134880%_))
                                (_%tl134867134885%_ (##cdr _%e134865134880%_)))
                            (if (gx#stx-pair? _%tl134867134885%_)
                                (let ((_%e134868134888%_
                                       (gx#syntax-e _%tl134867134885%_)))
                                  (let ((_%hd134869134891%_
                                         (##car _%e134868134888%_))
                                        (_%tl134870134893%_
                                         (##cdr _%e134868134888%_)))
                                    (let* ((_%id134896%_ _%hd134869134891%_)
                                           (_%body134898%_ _%tl134870134893%_))
                                      (if (and (gx#identifier? _%id134896%_)
                                               (gx#stx-list? _%body134898%_))
                                          (if (_%valid-module-id?134861%_
                                               (gx#stx-e
                                                (gx#datum->syntax__0 '#f 'id)))
                                              (let* ((_%ctx134900%_
                                                      (_%make-context134860%_
                                                       _%id134896%_))
                                                     (_%body134902%_
                                                      (gx#core-expand-module-begin
                                                       _%body134898%_
                                                       _%ctx134900%_))
                                                     (_%body134904%_
                                                      (gx#core-quote-syntax__1
                                                       (gx#core-cons
                                                        '%#begin
                                                        _%body134902%_)
                                                       (gx#stx-source
                                                        _%stx134858%_))))
                                                (##unchecked-structure-set!
                                                 _%ctx134900%_
                                                 (__make-promise
                                                  (lambda ()
                                                    (gx#eval-syntax*
                                                     _%body134904%_)))
                                                 '10
                                                 '#f
                                                 '#f)
                                                (##unchecked-structure-set!
                                                 _%ctx134900%_
                                                 _%body134904%_
                                                 '11
                                                 '#f
                                                 '#f)
                                                (gx#core-bind-syntax!__0
                                                 _%id134896%_
                                                 _%ctx134900%_)
                                                (gx#core-quote-syntax__1
                                                 (gx#core-list
                                                  '%#module
                                                  (gx#core-quote-syntax__0
                                                   _%id134896%_)
                                                  _%body134904%_)
                                                 (gx#stx-source
                                                  _%stx134858%_)))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"invalid module id; allowed characters are A-Z,a-z,0-9,_,-"
                                               _%stx134858%_
                                               (gx#datum->syntax__0 '#f 'id)))
                                          (_%E134864134876%_)))))
                                (_%E134864134876%_))))
                        (_%E134864134876%_)))))
            (_%E134863134908%_)))))
    (define gx#core-expand-module-begin
      (lambda (_%body134823%_ _%ctx134824%_)
        (call-with-parameters__1
         (lambda ()
           (call-with-parameters__1
            (lambda ()
              (gx#core-bind-feature!__1 'gerbil-module '#t)
              (let* ((_%stx134828%_
                      (gx#core-expand-head
                       (cons '%%begin-module _%body134823%_)))
                     (_%e134829134836%_ _%stx134828%_)
                     (_%E134831134840%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module body expansion"
                         _%stx134828%_)))
                     (_%E134830134854%_
                      (lambda ()
                        (if (gx#stx-pair? _%e134829134836%_)
                            (let ((_%e134832134844%_
                                   (gx#syntax-e _%e134829134836%_)))
                              (let ((_%hd134833134847%_
                                     (##car _%e134832134844%_))
                                    (_%tl134834134849%_
                                     (##cdr _%e134832134844%_)))
                                (if (and (gx#identifier? _%hd134833134847%_)
                                         (gx#core-identifier=?
                                          _%hd134833134847%_
                                          '%#begin-module))
                                    (let ((_%body134852%_ _%tl134834134849%_))
                                      (if (gx#sealed-syntax? _%stx134828%_)
                                          _%body134852%_
                                          (gx#core-expand-module-body
                                           _%body134852%_)))
                                    (_%E134831134840%_))))
                            (_%E134831134840%_)))))
                (_%E134830134854%_)))
            gx#current-expander-phi
            '0))
         gx#current-expander-context
         _%ctx134824%_)))
    (define gx#core-expand-module-body
      (lambda (_%body134619%_)
        (letrec ((_%expand-special134621%_
                  (lambda (_%hd134750%_ _%K134751%_ _%rest134752%_ _%r134753%_)
                    (let* ((_%e134754134771%_ _%hd134750%_)
                           (_%E134766134775%_
                            (lambda ()
                              (_%K134751%_
                               _%rest134752%_
                               (cons (gx#core-expand-top _%hd134750%_)
                                     _%r134753%_))))
                           (_%E134756134787%_
                            (lambda ()
                              (if (gx#stx-pair? _%e134754134771%_)
                                  (let ((_%e134767134779%_
                                         (gx#syntax-e _%e134754134771%_)))
                                    (let ((_%hd134768134782%_
                                           (##car _%e134767134779%_))
                                          (_%tl134769134784%_
                                           (##cdr _%e134767134779%_)))
                                      (if (and (gx#identifier?
                                                _%hd134768134782%_)
                                               (gx#core-identifier=?
                                                _%hd134768134782%_
                                                '%#export))
                                          (_%K134751%_
                                           _%rest134752%_
                                           (cons _%hd134750%_ _%r134753%_))
                                          (_%E134766134775%_))))
                                  (_%E134766134775%_))))
                           (_%E134755134819%_
                            (lambda ()
                              (if (gx#stx-pair? _%e134754134771%_)
                                  (let ((_%e134757134791%_
                                         (gx#syntax-e _%e134754134771%_)))
                                    (let ((_%hd134758134794%_
                                           (##car _%e134757134791%_))
                                          (_%tl134759134796%_
                                           (##cdr _%e134757134791%_)))
                                      (if (and (gx#identifier?
                                                _%hd134758134794%_)
                                               (gx#core-identifier=?
                                                _%hd134758134794%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl134759134796%_)
                                              (let ((_%e134760134799%_
                                                     (gx#syntax-e
                                                      _%tl134759134796%_)))
                                                (let ((_%hd134761134802%_
                                                       (##car _%e134760134799%_))
                                                      (_%tl134762134804%_
                                                       (##cdr _%e134760134799%_)))
                                                  (let ((_%hd-bind134807%_
                                                         _%hd134761134802%_))
                                                    (if (gx#stx-pair?
                                                         _%tl134762134804%_)
                                                        (let ((_%e134763134809%_
                                                               (gx#syntax-e
                                                                _%tl134762134804%_)))
                                                          (let ((_%hd134764134812%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e134763134809%_))
                        (_%tl134765134814%_ (##cdr _%e134763134809%_)))
                    (let ((_%expr134817%_ _%hd134764134812%_))
                      (if (gx#stx-null? _%tl134765134814%_)
                          (if (gx#core-bind-values? _%hd-bind134807%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind134807%_)
                                (_%K134751%_
                                 _%rest134752%_
                                 (cons _%hd134750%_ _%r134753%_)))
                              (_%E134756134787%_))
                          (_%E134756134787%_)))))
                (_%E134756134787%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E134756134787%_))
                                          (_%E134756134787%_))))
                                  (_%E134756134787%_)))))
                      (_%E134755134819%_))))
                 (_%expand-body134622%_
                  (lambda (_%rbody134624%_)
                    (let _%lp134626%_ ((_%rest134628%_ _%rbody134624%_)
                                       (_%body134629%_ '()))
                      (let* ((_%rest134630134638%_ _%rest134628%_)
                             (_%else134632134646%_ (lambda () _%body134629%_))
                             (_%K134634134738%_
                              (lambda (_%rest134649%_ _%hd134650%_)
                                (let* ((_%e134651134672%_ _%hd134650%_)
                                       (_%E134667134676%_
                                        (lambda ()
                                          (_%lp134626%_
                                           _%rest134649%_
                                           (cons (gx#core-expand-expression
                                                  _%hd134650%_)
                                                 _%body134629%_))))
                                       (_%E134663134690%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e134651134672%_)
                                              (let ((_%e134668134680%_
                                                     (gx#syntax-e
                                                      _%e134651134672%_)))
                                                (let ((_%hd134669134683%_
                                                       (##car _%e134668134680%_))
                                                      (_%tl134670134685%_
                                                       (##cdr _%e134668134680%_)))
                                                  (let ((_%form134688%_
                                                         _%hd134669134683%_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _%form134688%_
                                                         gx#special-form-binding?)
                                                        (_%lp134626%_
                                                         _%rest134649%_
                                                         (cons _%hd134650%_
                                                               _%body134629%_))
                                                        (_%E134667134676%_)))))
                                              (_%E134667134676%_))))
                                       (_%E134653134702%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e134651134672%_)
                                              (let ((_%e134664134694%_
                                                     (gx#syntax-e
                                                      _%e134651134672%_)))
                                                (let ((_%hd134665134697%_
                                                       (##car _%e134664134694%_))
                                                      (_%tl134666134699%_
                                                       (##cdr _%e134664134694%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd134665134697%_)
                                                           (gx#core-identifier=?
                                                            _%hd134665134697%_
                                                            '%#export))
                                                      (_%lp134626%_
                                                       _%rest134649%_
                                                       (cons (gx#core-expand-export%__0
                                                              _%hd134650%_)
                                                             _%body134629%_))
                                                      (_%E134663134690%_))))
                                              (_%E134663134690%_))))
                                       (_%E134652134734%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e134651134672%_)
                                              (let ((_%e134654134706%_
                                                     (gx#syntax-e
                                                      _%e134651134672%_)))
                                                (let ((_%hd134655134709%_
                                                       (##car _%e134654134706%_))
                                                      (_%tl134656134711%_
                                                       (##cdr _%e134654134706%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd134655134709%_)
                                                           (gx#core-identifier=?
                                                            _%hd134655134709%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl134656134711%_)
                                                          (let ((_%e134657134714%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl134656134711%_)))
                    (let ((_%hd134658134717%_ (##car _%e134657134714%_))
                          (_%tl134659134719%_ (##cdr _%e134657134714%_)))
                      (let ((_%hd-bind134722%_ _%hd134658134717%_))
                        (if (gx#stx-pair? _%tl134659134719%_)
                            (let ((_%e134660134724%_
                                   (gx#syntax-e _%tl134659134719%_)))
                              (let ((_%hd134661134727%_
                                     (##car _%e134660134724%_))
                                    (_%tl134662134729%_
                                     (##cdr _%e134660134724%_)))
                                (let ((_%expr134732%_ _%hd134661134727%_))
                                  (if (gx#stx-null? _%tl134662134729%_)
                                      (_%lp134626%_
                                       _%rest134649%_
                                       (cons (gx#core-quote-syntax__1
                                              (gx#core-list
                                               '%#define-values
                                               (gx#core-quote-bind-values
                                                _%hd-bind134722%_)
                                               (gx#core-expand-expression
                                                _%expr134732%_))
                                              (gx#stx-source _%hd134650%_))
                                             _%body134629%_))
                                      (_%E134653134702%_)))))
                            (_%E134653134702%_)))))
                  (_%E134653134702%_))
              (_%E134653134702%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E134653134702%_)))))
                                  (_%E134652134734%_)))))
                        (if (pair? _%rest134630134638%_)
                            (let ((_%hd134635134741%_
                                   (##car _%rest134630134638%_))
                                  (_%tl134636134743%_
                                   (##cdr _%rest134630134638%_)))
                              (let* ((_%hd134746%_ _%hd134635134741%_)
                                     (_%rest134748%_ _%tl134636134743%_))
                                (_%K134634134738%_
                                 _%rest134748%_
                                 _%hd134746%_)))
                            (_%else134632134646%_)))))))
          (_%expand-body134622%_
           (gx#core-expand-block__%
            (cons '%#begin-module _%body134619%_)
            _%expand-special134621%_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_%stx134460%_
               _%expanded?134461%_
               _%method134462%_
               _%current-phi134463%_
               _%expand1134464%_)
        (letrec ((_%K134466%_
                  (lambda (_%rest134586%_ _%r134587%_)
                    (let* ((_%e134588134595%_ _%rest134586%_)
                           (_%E134590134599%_ (lambda () _%r134587%_))
                           (_%E134589134615%_
                            (lambda ()
                              (if (gx#stx-pair? _%e134588134595%_)
                                  (let ((_%e134591134603%_
                                         (gx#syntax-e _%e134588134595%_)))
                                    (let ((_%hd134592134606%_
                                           (##car _%e134591134603%_))
                                          (_%tl134593134608%_
                                           (##cdr _%e134591134603%_)))
                                      (let* ((_%hd134611%_ _%hd134592134606%_)
                                             (_%rest134613%_
                                              _%tl134593134608%_))
                                        (_%step134467%_
                                         _%hd134611%_
                                         _%rest134613%_
                                         _%r134587%_))))
                                  (_%E134590134599%_)))))
                      (_%E134589134615%_))))
                 (_%step134467%_
                  (lambda (_%hd134500%_ _%rest134501%_ _%r134502%_)
                    (let* ((_%e134503134521%_ _%hd134500%_)
                           (_%E134516134525%_
                            (lambda ()
                              (if (_%expanded?134461%_ (gx#stx-e _%hd134500%_))
                                  (_%K134466%_
                                   _%rest134501%_
                                   (cons (gx#stx-e _%hd134500%_) _%r134502%_))
                                  (_%expand1134464%_
                                   _%hd134500%_
                                   _%K134466%_
                                   _%rest134501%_
                                   _%r134502%_))))
                           (_%E134512134541%_
                            (lambda ()
                              (if (gx#stx-pair? _%e134503134521%_)
                                  (let ((_%e134517134529%_
                                         (gx#syntax-e _%e134503134521%_)))
                                    (let ((_%hd134518134532%_
                                           (##car _%e134517134529%_))
                                          (_%tl134519134534%_
                                           (##cdr _%e134517134529%_)))
                                      (let* ((_%macro134537%_
                                              _%hd134518134532%_)
                                             (_%body134539%_
                                              _%tl134519134534%_))
                                        (if (gx#core-bound-identifier?__%
                                             _%macro134537%_
                                             gx#syntax-binding?)
                                            (_%K134466%_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _%macro134537%_)
                                                    _%hd134500%_
                                                    _%method134462%_)
                                                   _%rest134501%_)
                                             _%r134502%_)
                                            (_%E134516134525%_)))))
                                  (_%E134516134525%_))))
                           (_%E134505134555%_
                            (lambda ()
                              (if (gx#stx-pair? _%e134503134521%_)
                                  (let ((_%e134513134545%_
                                         (gx#syntax-e _%e134503134521%_)))
                                    (let ((_%hd134514134548%_
                                           (##car _%e134513134545%_))
                                          (_%tl134515134550%_
                                           (##cdr _%e134513134545%_)))
                                      (if (eq? (gx#stx-e _%hd134514134548%_)
                                               'begin:)
                                          (let ((_%body134553%_
                                                 _%tl134515134550%_))
                                            (_%K134466%_
                                             (gx#stx-foldr
                                              cons
                                              _%rest134501%_
                                              _%body134553%_)
                                             _%r134502%_))
                                          (_%E134512134541%_))))
                                  (_%E134512134541%_))))
                           (_%E134504134582%_
                            (lambda ()
                              (if (gx#stx-pair? _%e134503134521%_)
                                  (let ((_%e134506134559%_
                                         (gx#syntax-e _%e134503134521%_)))
                                    (let ((_%hd134507134562%_
                                           (##car _%e134506134559%_))
                                          (_%tl134508134564%_
                                           (##cdr _%e134506134559%_)))
                                      (if (eq? (gx#stx-e _%hd134507134562%_)
                                               'phi:)
                                          (if (gx#stx-pair? _%tl134508134564%_)
                                              (let ((_%e134509134567%_
                                                     (gx#syntax-e
                                                      _%tl134508134564%_)))
                                                (let ((_%hd134510134570%_
                                                       (##car _%e134509134567%_))
                                                      (_%tl134511134572%_
                                                       (##cdr _%e134509134567%_)))
                                                  (let* ((_%dphi134575%_
                                                          _%hd134510134570%_)
                                                         (_%body134577%_
                                                          _%tl134511134572%_))
                                                    (if (gx#stx-fixnum?
                                                         _%dphi134575%_)
                                                        (let ((_%rbody134580%_
                                                               (call-with-parameters__1
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%K134466%_ _%body134577%_ '()))
                        _%current-phi134463%_
                        (fx+ (gx#stx-e _%dphi134575%_)
                             (_%current-phi134463%_)))))
                  (_%K134466%_
                   _%rest134501%_
                   (__foldr1 cons _%r134502%_ _%rbody134580%_)))
                (_%E134505134555%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E134505134555%_))
                                          (_%E134505134555%_))))
                                  (_%E134505134555%_)))))
                      (_%E134504134582%_)))))
          (let* ((_%e134468134475%_ _%stx134460%_)
                 (_%E134470134479%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e134468134475%_)))
                 (_%E134469134496%_
                  (lambda ()
                    (if (gx#stx-pair? _%e134468134475%_)
                        (let ((_%e134471134483%_
                               (gx#syntax-e _%e134468134475%_)))
                          (let ((_%hd134472134486%_ (##car _%e134471134483%_))
                                (_%tl134473134488%_ (##cdr _%e134471134483%_)))
                            (let ((_%body134491%_ _%tl134473134488%_))
                              (if (_%current-phi134463%_)
                                  (_%K134466%_ _%body134491%_ '())
                                  (call-with-parameters__1
                                   (lambda () (_%K134466%_ _%body134491%_ '()))
                                   _%current-phi134463%_
                                   (gx#current-expander-phi))))))
                        (_%E134470134479%_)))))
            (_%E134469134496%_)))))
    (define gx#core-expand-import%__%
      (lambda (_%stx134114%_ _%internal-expand?134115%_)
        (letrec ((_%expand1134117%_
                  (lambda (_%hd134432%_ _%K134433%_ _%rest134434%_ _%r134435%_)
                    (if (gx#core-bound-module? _%hd134432%_)
                        (_%import1134118%_
                         (gx#syntax-local-e__0 _%hd134432%_)
                         _%K134433%_
                         _%rest134434%_
                         _%r134435%_)
                        (if (gx#core-library-module-path? _%hd134432%_)
                            (_%import1134118%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%hd134432%_))
                             _%K134433%_
                             _%rest134434%_
                             _%r134435%_)
                            (if (gx#core-library-relative-module-path?
                                 _%hd134432%_)
                                (_%import1134118%_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _%hd134432%_))
                                 _%K134433%_
                                 _%rest134434%_
                                 _%r134435%_)
                                (let ((_%e134441%_ (gx#stx-e _%hd134432%_)))
                                  (if (pair? _%e134441%_)
                                      (let ((_%$e134444%_
                                             (gx#stx-e (##car _%e134441%_))))
                                        (if (eq? 'spec: _%$e134444%_)
                                            (_%import-spec134121%_
                                             _%hd134432%_
                                             _%K134433%_
                                             _%rest134434%_
                                             _%r134435%_)
                                            (if (eq? 'in: _%$e134444%_)
                                                (_%import-submodule134119%_
                                                 _%hd134432%_
                                                 _%K134433%_
                                                 _%rest134434%_
                                                 _%r134435%_)
                                                (if (eq? 'runtime:
                                                         _%$e134444%_)
                                                    (_%import-runtime134120%_
                                                     _%hd134432%_
                                                     _%K134433%_
                                                     _%rest134434%_
                                                     _%r134435%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _%stx134114%_
                                                     _%hd134432%_)))))
                                      (if (string? _%e134441%_)
                                          (_%import1134118%_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _%hd134432%_
                                             (gx#stx-source _%stx134114%_)))
                                           _%K134433%_
                                           _%rest134434%_
                                           _%r134435%_)
                                          (if (##structure-instance-of?
                                               _%e134441%_
                                               'gx#module-context::t)
                                              (_%K134433%_
                                               _%rest134434%_
                                               (cons _%e134441%_ _%r134435%_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _%stx134114%_
                                               _%hd134432%_))))))))))
                 (_%import1134118%_
                  (lambda (_%ctx134421%_
                           _%K134422%_
                           _%rest134423%_
                           _%r134424%_)
                    (let ((_%dphi134426%_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_%K134422%_
                       _%rest134423%_
                       (cons (##structure
                              gx#import-set::t
                              _%ctx134421%_
                              _%dphi134426%_
                              (map (lambda (_%g134427134429%_)
                                     (gx#core-module-export->import__%
                                      _%g134427134429%_
                                      '#f
                                      _%dphi134426%_))
                                   (##unchecked-structure-ref
                                    _%ctx134421%_
                                    '9
                                    '#f
                                    '#f)))
                             _%r134424%_)))))
                 (_%import-submodule134119%_
                  (lambda (_%hd134388%_ _%K134389%_ _%rest134390%_ _%r134391%_)
                    (let* ((_%e134392134399%_ _%hd134388%_)
                           (_%E134394134403%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e134392134399%_)))
                           (_%E134393134417%_
                            (lambda ()
                              (if (gx#stx-pair? _%e134392134399%_)
                                  (let ((_%e134395134407%_
                                         (gx#syntax-e _%e134392134399%_)))
                                    (let ((_%hd134396134410%_
                                           (##car _%e134395134407%_))
                                          (_%tl134397134412%_
                                           (##cdr _%e134395134407%_)))
                                      (let ((_%spath134415%_
                                             _%tl134397134412%_))
                                        (_%import1134118%_
                                         (_%import-spec-source134122%_
                                          _%spath134415%_)
                                         _%K134389%_
                                         _%rest134390%_
                                         _%r134391%_))))
                                  (_%E134394134403%_)))))
                      (_%E134393134417%_))))
                 (_%import-runtime134120%_
                  (lambda (_%hd134355%_ _%K134356%_ _%rest134357%_ _%r134358%_)
                    (let* ((_%e134359134366%_ _%hd134355%_)
                           (_%E134361134370%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e134359134366%_)))
                           (_%E134360134384%_
                            (lambda ()
                              (if (gx#stx-pair? _%e134359134366%_)
                                  (let ((_%e134362134374%_
                                         (gx#syntax-e _%e134359134366%_)))
                                    (let ((_%hd134363134377%_
                                           (##car _%e134362134374%_))
                                          (_%tl134364134379%_
                                           (##cdr _%e134362134374%_)))
                                      (let ((_%spath134382%_
                                             _%tl134364134379%_))
                                        (_%K134356%_
                                         _%rest134357%_
                                         (cons (_%import-spec-source134122%_
                                                _%spath134382%_)
                                               _%r134358%_)))))
                                  (_%E134361134370%_)))))
                      (_%E134360134384%_))))
                 (_%import-spec134121%_
                  (lambda (_%hd134193%_ _%K134194%_ _%rest134195%_ _%r134196%_)
                    (let* ((_%e134197134214%_ _%hd134193%_)
                           (_%E134206134218%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e134197134214%_)))
                           (_%E134199134329%_
                            (lambda ()
                              (if (gx#stx-pair? _%e134197134214%_)
                                  (let ((_%e134207134222%_
                                         (gx#syntax-e _%e134197134214%_)))
                                    (let ((_%hd134208134225%_
                                           (##car _%e134207134222%_))
                                          (_%tl134209134227%_
                                           (##cdr _%e134207134222%_)))
                                      (if (gx#stx-pair? _%tl134209134227%_)
                                          (let ((_%e134210134230%_
                                                 (gx#syntax-e
                                                  _%tl134209134227%_)))
                                            (let ((_%hd134211134233%_
                                                   (##car _%e134210134230%_))
                                                  (_%tl134212134235%_
                                                   (##cdr _%e134210134230%_)))
                                              (let* ((_%path134238%_
                                                      _%hd134211134233%_)
                                                     (_%specs134240%_
                                                      _%tl134212134235%_))
                                                (let ((_%src-ctx134242%_
                                                       (_%import-spec-source134122%_
                                                        _%path134238%_))
                                                      (_%exports134243%_
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
                                                      (_%specs134244%_
                                                       (gx#syntax->list
                                                        _%specs134240%_)))
                                                  (for-each
                                                   (lambda (_%out134246%_)
                                                     (__hash-put!
                                                      _%exports134243%_
                                                      (cons (##unchecked-structure-ref
                                                             _%out134246%_
                                                             '3
                                                             '#f
                                                             '#f)
                                                            (##unchecked-structure-ref
                                                             _%out134246%_
                                                             '4
                                                             '#f
                                                             '#f))
                                                      _%out134246%_))
                                                   (##unchecked-structure-ref
                                                    _%src-ctx134242%_
                                                    '9
                                                    '#f
                                                    '#f))
                                                  (_%K134194%_
                                                   _%rest134195%_
                                                   (__foldl1
                                                    (lambda (_%spec134248%_
                                                             _%r134249%_)
                                                      (let* ((_%e134250134266%_
                                                              _%spec134248%_)
                                                             (_%E134252134270%_
                                                              (lambda ()
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid syntax-case clause"
                         _%e134250134266%_)))
                     (_%E134251134325%_
                      (lambda ()
                        (if (gx#stx-pair? _%e134250134266%_)
                            (let ((_%e134253134274%_
                                   (gx#syntax-e _%e134250134266%_)))
                              (let ((_%hd134254134277%_
                                     (##car _%e134253134274%_))
                                    (_%tl134255134279%_
                                     (##cdr _%e134253134274%_)))
                                (let ((_%phi134282%_ _%hd134254134277%_))
                                  (if (gx#stx-pair? _%tl134255134279%_)
                                      (let ((_%e134256134284%_
                                             (gx#syntax-e _%tl134255134279%_)))
                                        (let ((_%hd134257134287%_
                                               (##car _%e134256134284%_))
                                              (_%tl134258134289%_
                                               (##cdr _%e134256134284%_)))
                                          (let ((_%name134292%_
                                                 _%hd134257134287%_))
                                            (if (gx#stx-pair?
                                                 _%tl134258134289%_)
                                                (let ((_%e134259134294%_
                                                       (gx#syntax-e
                                                        _%tl134258134289%_)))
                                                  (let ((_%hd134260134297%_
                                                         (##car _%e134259134294%_))
                                                        (_%tl134261134299%_
                                                         (##cdr _%e134259134294%_)))
                                                    (let ((_%src-phi134302%_
                                                           _%hd134260134297%_))
                                                      (if (gx#stx-pair?
                                                           _%tl134261134299%_)
                                                          (let ((_%e134262134304%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl134261134299%_)))
                    (let ((_%hd134263134307%_ (##car _%e134262134304%_))
                          (_%tl134264134309%_ (##cdr _%e134262134304%_)))
                      (let ((_%src-name134312%_ _%hd134263134307%_))
                        (if (gx#stx-null? _%tl134264134309%_)
                            (if (and (gx#stx-fixnum? _%src-phi134302%_)
                                     (gx#identifier? _%src-name134312%_)
                                     (gx#stx-fixnum? _%phi134282%_)
                                     (gx#identifier? _%name134292%_))
                                (let ((_%src-phi134314%_
                                       (gx#stx-e _%src-phi134302%_))
                                      (_%src-name134315%_
                                       (gx#core-identifier-key
                                        _%src-name134312%_))
                                      (_%phi134316%_ (gx#stx-e _%phi134282%_))
                                      (_%name134317%_
                                       (gx#core-identifier-key
                                        _%name134292%_)))
                                  (let ((_%$e134319%_
                                         (__hash-get
                                          _%exports134243%_
                                          (cons _%src-phi134314%_
                                                _%src-name134315%_))))
                                    (if _%$e134319%_
                                        ((lambda (_%out134322%_)
                                           (cons (gx#core-module-export->import__%
                                                  _%out134322%_
                                                  _%name134317%_
                                                  (fx- _%phi134316%_
                                                       _%src-phi134314%_))
                                                 _%r134249%_))
                                         _%$e134319%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; no matching export"
                                         _%stx134114%_
                                         _%hd134193%_))))
                                (_%E134252134270%_))
                            (_%E134252134270%_)))))
                  (_%E134252134270%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E134252134270%_)))))
                                      (_%E134252134270%_)))))
                            (_%E134252134270%_)))))
                (_%E134251134325%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r134196%_
                                                    _%specs134244%_))))))
                                          (_%E134206134218%_))))
                                  (_%E134206134218%_))))
                           (_%E134198134351%_
                            (lambda ()
                              (if (gx#stx-pair? _%e134197134214%_)
                                  (let ((_%e134200134333%_
                                         (gx#syntax-e _%e134197134214%_)))
                                    (let ((_%hd134201134336%_
                                           (##car _%e134200134333%_))
                                          (_%tl134202134338%_
                                           (##cdr _%e134200134333%_)))
                                      (if (gx#stx-pair? _%tl134202134338%_)
                                          (let ((_%e134203134341%_
                                                 (gx#syntax-e
                                                  _%tl134202134338%_)))
                                            (let ((_%hd134204134344%_
                                                   (##car _%e134203134341%_))
                                                  (_%tl134205134346%_
                                                   (##cdr _%e134203134341%_)))
                                              (let ((_%path134349%_
                                                     _%hd134204134344%_))
                                                (if (gx#stx-null?
                                                     _%tl134205134346%_)
                                                    (_%K134194%_
                                                     _%rest134195%_
                                                     (cons (_%import-spec-source134122%_
                                                            _%path134349%_)
                                                           _%r134196%_))
                                                    (_%E134199134329%_)))))
                                          (_%E134199134329%_))))
                                  (_%E134199134329%_)))))
                      (_%E134198134351%_))))
                 (_%import-spec-source134122%_
                  (lambda (_%spath134191%_)
                    (gx#core-import-nested-module
                     _%spath134191%_
                     _%stx134114%_)))
                 (_%import!134123%_
                  (lambda (_%rbody134136%_)
                    (letrec* ((_%current-ctx134138%_
                               (gx#current-expander-context))
                              (_%deps134139%_ (make-hash-table-eq))
                              (_%bind!134140%_
                               (lambda (_%hd134189%_)
                                 (gx#core-bind-import!__1
                                  _%hd134189%_
                                  _%current-ctx134138%_))))
                      (let _%lp134142%_ ((_%rest134144%_ _%rbody134136%_)
                                         (_%body134145%_ '()))
                        (let* ((_%rest134146134154%_ _%rest134144%_)
                               (_%else134148134165%_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _%current-ctx134138%_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _%current-ctx134138%_
                                       (__foldl1
                                        cons
                                        (##unchecked-structure-ref
                                         _%current-ctx134138%_
                                         '8
                                         '#f
                                         '#f)
                                        _%body134145%_)
                                       '8
                                       '#f
                                       '#f)
                                      '#!void)
                                  (__hash-for-each
                                   (lambda (_%ctx134162%_ _%_134163%_)
                                     (gx#eval-module _%ctx134162%_))
                                   _%deps134139%_)
                                  _%body134145%_))
                               (_%K134150134177%_
                                (lambda (_%rest134168%_ _%hd134169%_)
                                  (if (##structure-direct-instance-of?
                                       _%hd134169%_
                                       'gx#module-import::t)
                                      (let ()
                                        (_%bind!134140%_ _%hd134169%_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _%hd134169%_
                                                   '3
                                                   '#f
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _%hd134169%_
                                                            '1
                                                            '#f
                                                            '#f)
                                                           '3
                                                           '#f
                                                           '#f)))
                                            (__hash-put!
                                             _%deps134139%_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _%hd134169%_
                                               '1
                                               '#f
                                               '#f)
                                              '1
                                              '#f
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _%hd134169%_
                                           'gx#import-set::t)
                                          (let ()
                                            (for-each
                                             _%bind!134140%_
                                             (##unchecked-structure-ref
                                              _%hd134169%_
                                              '3
                                              '#f
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _%hd134169%_
                                                  '2
                                                  '#f
                                                  '#f))
                                                (__hash-put!
                                                 _%deps134139%_
                                                 (##unchecked-structure-ref
                                                  _%hd134169%_
                                                  '1
                                                  '#f
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_%$e134173%_
                                                 (##structure-instance-of?
                                                  _%hd134169%_
                                                  'gx#module-context::t)))
                                            (if _%$e134173%_
                                                _%$e134173%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _%stx134114%_
                                                 _%hd134169%_)))))
                                  (_%lp134142%_
                                   _%rest134168%_
                                   (cons _%hd134169%_ _%body134145%_)))))
                          (if (pair? _%rest134146134154%_)
                              (let ((_%hd134151134180%_
                                     (##car _%rest134146134154%_))
                                    (_%tl134152134182%_
                                     (##cdr _%rest134146134154%_)))
                                (let* ((_%hd134185%_ _%hd134151134180%_)
                                       (_%rest134187%_ _%tl134152134182%_))
                                  (_%K134150134177%_
                                   _%rest134187%_
                                   _%hd134185%_)))
                              (_%else134148134165%_)))))))
                 (_%expanded-import?134124%_
                  (lambda (_%e134128%_)
                    (let ((_%$e134130%_
                           (##structure-direct-instance-of?
                            _%e134128%_
                            'gx#import-set::t)))
                      (if _%$e134130%_
                          _%$e134130%_
                          (let ((_%$e134133%_
                                 (##structure-direct-instance-of?
                                  _%e134128%_
                                  'gx#module-import::t)))
                            (if _%$e134133%_
                                _%$e134133%_
                                (##structure-instance-of?
                                 _%e134128%_
                                 'gx#module-context::t))))))))
          (let ((_%rbody134126%_
                 (gx#core-expand-import/export
                  _%stx134114%_
                  _%expanded-import?134124%_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _%expand1134117%_)))
            (if _%internal-expand?134115%_
                (reverse _%rbody134126%_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_%import!134123%_ _%rbody134126%_))
                 (gx#stx-source _%stx134114%_)))))))
    (define gx#core-expand-import%__0
      (lambda (_%stx134453%_)
        (let ((_%internal-expand?134455%_ '#f))
          (gx#core-expand-import%__%
           _%stx134453%_
           _%internal-expand?134455%_))))
    (define gx#core-expand-import%
      (lambda _g137109_
        (let ((_g137110_ (##length _g137109_)))
          (cond ((##fx= _g137110_ 1)
                 (apply gx#core-expand-import%__0 _g137109_))
                ((##fx= _g137110_ 2)
                 (apply gx#core-expand-import%__% _g137109_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g137109_))))))
    (define gx#core-import-nested-module
      (lambda (_%spath134041%_ _%where134042%_)
        (let* ((_%e134043134050%_ _%spath134041%_)
               (_%E134045134054%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e134043134050%_)))
               (_%E134044134109%_
                (lambda ()
                  (if (gx#stx-pair? _%e134043134050%_)
                      (let ((_%e134046134058%_
                             (gx#syntax-e _%e134043134050%_)))
                        (let ((_%hd134047134061%_ (##car _%e134046134058%_))
                              (_%tl134048134063%_ (##cdr _%e134046134058%_)))
                          (let* ((_%origin134066%_ _%hd134047134061%_)
                                 (_%sub134068%_ _%tl134048134063%_)
                                 (_%origin-ctx134070%_
                                  (if (gx#stx-false? _%origin134066%_)
                                      (gx#current-expander-context)
                                      (gx#import-module__0 _%origin134066%_))))
                            (let _%lp134072%_ ((_%rest134074%_ _%sub134068%_)
                                               (_%ctx134075%_
                                                _%origin-ctx134070%_))
                              (let* ((_%e134076134083%_ _%rest134074%_)
                                     (_%E134078134087%_
                                      (lambda () _%ctx134075%_))
                                     (_%E134077134105%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e134076134083%_)
                                            (let ((_%e134079134091%_
                                                   (gx#syntax-e
                                                    _%e134076134083%_)))
                                              (let ((_%hd134080134094%_
                                                     (##car _%e134079134091%_))
                                                    (_%tl134081134096%_
                                                     (##cdr _%e134079134091%_)))
                                                (let* ((_%id134099%_
                                                        _%hd134080134094%_)
                                                       (_%rest134101%_
                                                        _%tl134081134096%_)
                                                       (_%bind134103%_
                                                        (gx#resolve-identifier__%
                                                         _%id134099%_
                                                         '0
                                                         _%ctx134075%_)))
                                                  (if (and (##structure-direct-instance-of?
                                                            _%bind134103%_
                                                            'gx#syntax-binding::t)
                                                           (##structure-instance-of?
                                                            (##unchecked-structure-ref
                                                             _%bind134103%_
                                                             '4
                                                             '#f
                                                             '#f)
                                                            'gx#module-context::t))
                                                      '#!void
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; not bound as module"
                                                       _%where134042%_
                                                       _%spath134041%_
                                                       _%id134099%_))
                                                  (_%lp134072%_
                                                   _%rest134101%_
                                                   (##unchecked-structure-ref
                                                    _%bind134103%_
                                                    '4
                                                    '#f
                                                    '#f)))))
                                            (_%E134078134087%_)))))
                                (_%E134077134105%_))))))
                      (_%E134045134054%_)))))
          (_%E134044134109%_))))
    (define gx#core-expand-import-source
      (lambda (_%hd134039%_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _%hd134039%_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_%stx133533%_ _%internal-expand?133534%_)
        (letrec* ((_%make-export__137038137039%_
                   (lambda (_%bind133987%_
                            _%phi133988%_
                            _%ctx133989%_
                            _%name133990%_)
                     (let* ((_%key133992%_
                             (##unchecked-structure-ref
                              _%bind133987%_
                              '2
                              '#f
                              '#f))
                            (_%export-key133994%_
                             (if _%name133990%_
                                 (gx#core-identifier-key _%name133990%_)
                                 _%key133992%_)))
                       (##structure
                        gx#module-export::t
                        _%ctx133989%_
                        _%key133992%_
                        _%phi133988%_
                        _%export-key133994%_
                        (let ((_%$e133997%_
                               (##structure-instance-of?
                                _%bind133987%_
                                'gx#extern-binding::t)))
                          (if _%$e133997%_
                              _%$e133997%_
                              (##structure-direct-instance-of?
                               _%bind133987%_
                               'gx#import-binding::t)))))))
                  (_%make-export__0__137040137043%_
                   (lambda (_%bind134003%_)
                     (let* ((_%phi134005%_ (gx#current-export-expander-phi))
                            (_%ctx134007%_ (gx#current-expander-context))
                            (_%name134009%_ '#f))
                       (_%make-export__137038137039%_
                        _%bind134003%_
                        _%phi134005%_
                        _%ctx134007%_
                        _%name134009%_))))
                  (_%make-export__1__137041137044%_
                   (lambda (_%bind134011%_ _%phi134012%_)
                     (let* ((_%ctx134014%_ (gx#current-expander-context))
                            (_%name134016%_ '#f))
                       (_%make-export__137038137039%_
                        _%bind134011%_
                        _%phi134012%_
                        _%ctx134014%_
                        _%name134016%_))))
                  (_%make-export__2__137042137045%_
                   (lambda (_%bind134018%_ _%phi134019%_ _%ctx134020%_)
                     (let ((_%name134022%_ '#f))
                       (_%make-export__137038137039%_
                        _%bind134018%_
                        _%phi134019%_
                        _%ctx134020%_
                        _%name134022%_))))
                  (_%make-export133536%_
                   (lambda _g137111_
                     (let ((_g137112_ (##length _g137111_)))
                       (cond ((##fx= _g137112_ 1)
                              (apply _%make-export__0__137040137043%_
                                     _g137111_))
                             ((##fx= _g137112_ 2)
                              (apply _%make-export__1__137041137044%_
                                     _g137111_))
                             ((##fx= _g137112_ 3)
                              (apply _%make-export__2__137042137045%_
                                     _g137111_))
                             ((##fx= _g137112_ 4)
                              (apply _%make-export__137038137039%_ _g137111_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g137111_))))))
                  (_%expand1133537%_
                   (lambda (_%hd133692%_
                            _%K133693%_
                            _%rest133694%_
                            _%r133695%_)
                     (let* ((_%e133696133728%_ _%hd133692%_)
                            (_%E133723133732%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _%stx133533%_
                                _%hd133692%_)))
                            (_%E133713133816%_
                             (lambda ()
                               (if (gx#stx-pair? _%e133696133728%_)
                                   (let ((_%e133724133736%_
                                          (gx#syntax-e _%e133696133728%_)))
                                     (let ((_%hd133725133739%_
                                            (##car _%e133724133736%_))
                                           (_%tl133726133741%_
                                            (##cdr _%e133724133736%_)))
                                       (if (eq? (gx#stx-e _%hd133725133739%_)
                                                'import:)
                                           (let ((_%in133744%_
                                                  _%tl133726133741%_))
                                             (if (gx#stx-list? _%in133744%_)
                                                 (let _%lp133746%_ ((_%in-rest133748%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%in133744%_)
                            (_%r133749%_ _%r133695%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%e133750133757%_
                                                           _%in-rest133748%_)
                                                          (_%E133752133761%_
                                                           (lambda ()
                                                             (_%K133693%_
                                                              _%rest133694%_
                                                              _%r133749%_)))
                                                          (_%E133751133812%_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%e133750133757%_)
                         (let ((_%e133753133765%_
                                (gx#syntax-e _%e133750133757%_)))
                           (let ((_%hd133754133768%_ (##car _%e133753133765%_))
                                 (_%tl133755133770%_
                                  (##cdr _%e133753133765%_)))
                             (let* ((_%hd133773%_ _%hd133754133768%_)
                                    (_%in-rest133775%_ _%tl133755133770%_)
                                    (_%src133810%_
                                     (if (gx#core-bound-module? _%hd133773%_)
                                         (gx#syntax-local-e__0 _%hd133773%_)
                                         (if (gx#core-library-module-path?
                                              _%hd133773%_)
                                             (gx#import-module__0
                                              (gx#core-resolve-library-module-path
                                               _%hd133773%_))
                                             (if (gx#core-library-relative-module-path?
                                                  _%hd133773%_)
                                                 (gx#import-module__0
                                                  (gx#core-resolve-library-relative-module-path
                                                   _%hd133773%_))
                                                 (if (gx#stx-string?
                                                      _%hd133773%_)
                                                     (gx#import-module__0
                                                      (gx#core-resolve-module-path__%
                                                       _%hd133773%_
                                                       (gx#stx-source
                                                        _%stx133533%_)))
                                                     (let* ((_%e133781133788%_
                                                             _%hd133773%_)
                                                            (_%E133783133792%_
                                                             (lambda ()
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; illegal re-export"
                                                                _%stx133533%_
                                                                _%hd133773%_)))
                                                            (_%E133782133806%_
                                                             (lambda ()
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%e133781133788%_)
                           (let ((_%e133784133796%_
                                  (gx#syntax-e _%e133781133788%_)))
                             (let ((_%hd133785133799%_
                                    (##car _%e133784133796%_))
                                   (_%tl133786133801%_
                                    (##cdr _%e133784133796%_)))
                               (if (eq? (gx#stx-e _%hd133785133799%_) 'in:)
                                   (let ((_%spath133804%_ _%tl133786133801%_))
                                     (gx#core-import-nested-module
                                      _%spath133804%_
                                      _%stx133533%_))
                                   (_%E133783133792%_))))
                           (_%E133783133792%_)))))
               (_%E133782133806%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (_%lp133746%_
                                _%in-rest133775%_
                                (_%export-imports133538%_
                                 _%src133810%_
                                 _%r133749%_)))))
                         (_%E133752133761%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E133751133812%_)))
                                                 (_%E133723133732%_)))
                                           (_%E133723133732%_))))
                                   (_%E133723133732%_))))
                            (_%E133700133856%_
                             (lambda ()
                               (if (gx#stx-pair? _%e133696133728%_)
                                   (let ((_%e133714133820%_
                                          (gx#syntax-e _%e133696133728%_)))
                                     (let ((_%hd133715133823%_
                                            (##car _%e133714133820%_))
                                           (_%tl133716133825%_
                                            (##cdr _%e133714133820%_)))
                                       (if (eq? (gx#stx-e _%hd133715133823%_)
                                                'rename:)
                                           (if (gx#stx-pair?
                                                _%tl133716133825%_)
                                               (let ((_%e133717133828%_
                                                      (gx#syntax-e
                                                       _%tl133716133825%_)))
                                                 (let ((_%hd133718133831%_
                                                        (##car _%e133717133828%_))
                                                       (_%tl133719133833%_
                                                        (##cdr _%e133717133828%_)))
                                                   (let ((_%id133836%_
                                                          _%hd133718133831%_))
                                                     (if (gx#stx-pair?
                                                          _%tl133719133833%_)
                                                         (let ((_%e133720133838%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl133719133833%_)))
                   (let ((_%hd133721133841%_ (##car _%e133720133838%_))
                         (_%tl133722133843%_ (##cdr _%e133720133838%_)))
                     (let ((_%name133846%_ _%hd133721133841%_))
                       (if (gx#stx-null? _%tl133722133843%_)
                           (let* ((_%phi133848%_
                                   (gx#current-export-expander-phi))
                                  (_%$e133850%_
                                   (gx#core-resolve-identifier__1
                                    _%id133836%_
                                    _%phi133848%_)))
                             (if _%$e133850%_
                                 ((lambda (_%bind133853%_)
                                    (_%K133693%_
                                     _%rest133694%_
                                     (cons (_%make-export__137038137039%_
                                            _%bind133853%_
                                            _%phi133848%_
                                            (gx#current-expander-context)
                                            _%name133846%_)
                                           _%r133695%_)))
                                  _%$e133850%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Reference to unbound identifier"
                                  _%stx133533%_
                                  _%hd133692%_
                                  _%id133836%_)))
                           (_%E133713133816%_)))))
                 (_%E133713133816%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E133713133816%_))
                                           (_%E133713133816%_))))
                                   (_%E133713133816%_))))
                            (_%E133699133906%_
                             (lambda ()
                               (if (gx#stx-pair? _%e133696133728%_)
                                   (let ((_%e133701133860%_
                                          (gx#syntax-e _%e133696133728%_)))
                                     (let ((_%hd133702133863%_
                                            (##car _%e133701133860%_))
                                           (_%tl133703133865%_
                                            (##cdr _%e133701133860%_)))
                                       (if (eq? (gx#stx-e _%hd133702133863%_)
                                                'spec:)
                                           (if (gx#stx-pair?
                                                _%tl133703133865%_)
                                               (let ((_%e133704133868%_
                                                      (gx#syntax-e
                                                       _%tl133703133865%_)))
                                                 (let ((_%hd133705133871%_
                                                        (##car _%e133704133868%_))
                                                       (_%tl133706133873%_
                                                        (##cdr _%e133704133868%_)))
                                                   (let ((_%phi133876%_
                                                          _%hd133705133871%_))
                                                     (if (gx#stx-pair?
                                                          _%tl133706133873%_)
                                                         (let ((_%e133707133878%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl133706133873%_)))
                   (let ((_%hd133708133881%_ (##car _%e133707133878%_))
                         (_%tl133709133883%_ (##cdr _%e133707133878%_)))
                     (let ((_%id133886%_ _%hd133708133881%_))
                       (if (gx#stx-pair? _%tl133709133883%_)
                           (let ((_%e133710133888%_
                                  (gx#syntax-e _%tl133709133883%_)))
                             (let ((_%hd133711133891%_
                                    (##car _%e133710133888%_))
                                   (_%tl133712133893%_
                                    (##cdr _%e133710133888%_)))
                               (let ((_%name133896%_ _%hd133711133891%_))
                                 (if (gx#stx-null? _%tl133712133893%_)
                                     (if (and (gx#stx-fixnum? _%phi133876%_)
                                              (gx#identifier? _%id133886%_)
                                              (gx#identifier? _%name133896%_))
                                         (let* ((_%phi133898%_
                                                 (gx#stx-e _%phi133876%_))
                                                (_%$e133900%_
                                                 (gx#core-resolve-identifier__1
                                                  _%id133886%_
                                                  _%phi133898%_)))
                                           (if _%$e133900%_
                                               ((lambda (_%bind133903%_)
                                                  (_%K133693%_
                                                   _%rest133694%_
                                                   (cons (_%make-export__137038137039%_
                                                          _%bind133903%_
                                                          _%phi133898%_
                                                          (gx#current-expander-context)
                                                          _%name133896%_)
                                                         _%r133695%_)))
                                                _%$e133900%_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _%stx133533%_
                                                _%hd133692%_
                                                _%id133886%_)))
                                         (_%E133700133856%_))
                                     (_%E133700133856%_)))))
                           (_%E133700133856%_)))))
                 (_%E133700133856%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E133700133856%_))
                                           (_%E133700133856%_))))
                                   (_%E133700133856%_))))
                            (_%E133698133918%_
                             (lambda ()
                               (let ((_%id133910%_ _%e133696133728%_))
                                 (if (gx#identifier? _%id133910%_)
                                     (let ((_%$e133912%_
                                            (gx#core-resolve-identifier__1
                                             _%id133910%_
                                             (gx#current-export-expander-phi))))
                                       (if _%$e133912%_
                                           ((lambda (_%bind133915%_)
                                              (_%K133693%_
                                               _%rest133694%_
                                               (cons (_%make-export__0__137040137043%_
                                                      _%bind133915%_)
                                                     _%r133695%_)))
                                            _%$e133912%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _%stx133533%_
                                            _%hd133692%_)))
                                     (_%E133699133906%_)))))
                            (_%E133697133982%_
                             (lambda ()
                               (if (eq? (gx#stx-e _%e133696133728%_) '#t)
                                   (let* ((_%current-ctx133922%_
                                           (gx#current-expander-context))
                                          (_%current-phi133924%_
                                           (gx#current-export-expander-phi))
                                          (_%phi-ctx133926%_
                                           (gx#core-context-shift
                                            _%current-ctx133922%_
                                            _%current-phi133924%_))
                                          (_%phi-bind133928%_
                                           (hash->list
                                            (##unchecked-structure-ref
                                             _%phi-ctx133926%_
                                             '2
                                             '#f
                                             '#f))))
                                     (let _%lp133931%_ ((_%bind-rest133933%_
                                                         _%phi-bind133928%_)
                                                        (_%set133934%_ '()))
                                       (let* ((_%bind-rest133935133945%_
                                               _%bind-rest133933%_)
                                              (_%else133937133953%_
                                               (lambda ()
                                                 (_%K133693%_
                                                  _%rest133694%_
                                                  (cons (##structure
                                                         gx#export-set::t
                                                         '#f
                                                         _%current-phi133924%_
                                                         _%set133934%_)
                                                        _%r133695%_))))
                                              (_%K133939133963%_
                                               (lambda (_%bind-rest133956%_
                                                        _%bind133957%_
                                                        _%key133958%_)
                                                 (if (or (##structure-direct-instance-of?
                                                          _%bind133957%_
                                                          'gx#import-binding::t)
                                                         (gx#private-feature-binding?
                                                          _%bind133957%_))
                                                     (_%lp133931%_
                                                      _%bind-rest133956%_
                                                      _%set133934%_)
                                                     (_%lp133931%_
                                                      _%bind-rest133956%_
                                                      (cons (_%make-export__2__137042137045%_
                                                             _%bind133957%_
                                                             _%current-phi133924%_
                                                             _%current-ctx133922%_)
                                                            _%set133934%_))))))
                                         (if (pair? _%bind-rest133935133945%_)
                                             (let ((_%hd133940133966%_
                                                    (##car _%bind-rest133935133945%_))
                                                   (_%tl133941133968%_
                                                    (##cdr _%bind-rest133935133945%_)))
                                               (if (pair? _%hd133940133966%_)
                                                   (let ((_%hd133942133971%_
                                                          (##car _%hd133940133966%_))
                                                         (_%tl133943133973%_
                                                          (##cdr _%hd133940133966%_)))
                                                     (let* ((_%key133976%_
                                                             _%hd133942133971%_)
                                                            (_%bind133978%_
                                                             _%tl133943133973%_)
                                                            (_%bind-rest133980%_
                                                             _%tl133941133968%_))
                                                       (_%K133939133963%_
                                                        _%bind-rest133980%_
                                                        _%bind133978%_
                                                        _%key133976%_)))
                                                   (_%else133937133953%_)))
                                             (_%else133937133953%_)))))
                                   (_%E133698133918%_)))))
                       (_%E133697133982%_))))
                  (_%export-imports133538%_
                   (lambda (_%src133568%_ _%r133569%_)
                     (letrec* ((_%current-ctx133571%_
                                (gx#current-expander-context))
                               (_%current-phi133572%_
                                (gx#current-export-expander-phi))
                               (_%import->export133573%_
                                (lambda (_%in133654%_)
                                  (let* ((_%in133655133663%_ _%in133654%_)
                                         (_%E133657133667%_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _%in133655133663%_
                                                   '((module-import
                                                      out
                                                      key
                                                      phi)))
                                            '#!void))
                                         (_%K133658133674%_
                                          (lambda (_%phi133670%_
                                                   _%key133671%_
                                                   _%out133672%_)
                                            (##structure
                                             gx#module-export::t
                                             _%current-ctx133571%_
                                             _%key133671%_
                                             _%phi133670%_
                                             _%key133671%_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _%in133655133663%_
                                         'gx#module-import::t)
                                        (let* ((_%e133659133677%_
                                                (##unchecked-structure-ref
                                                 _%in133655133663%_
                                                 '1
                                                 '#f
                                                 '#f))
                                               (_%out133680%_
                                                _%e133659133677%_)
                                               (_%e133660133682%_
                                                (##unchecked-structure-ref
                                                 _%in133655133663%_
                                                 '2
                                                 '#f
                                                 '#f))
                                               (_%key133685%_
                                                _%e133660133682%_)
                                               (_%e133661133687%_
                                                (##unchecked-structure-ref
                                                 _%in133655133663%_
                                                 '3
                                                 '#f
                                                 '#f))
                                               (_%phi133690%_
                                                _%e133661133687%_))
                                          (_%K133658133674%_
                                           _%phi133690%_
                                           _%key133685%_
                                           _%out133680%_))
                                        (_%E133657133667%_)))))
                               (_%fold-e133574%_
                                (lambda (_%in133576%_ _%r133577%_)
                                  (let* ((_%in133578133592%_ _%in133576%_)
                                         (_%else133581133600%_
                                          (lambda () _%r133577%_)))
                                    (let ((_%K133587133636%_
                                           (lambda (_%phi133632%_
                                                    _%key133633%_
                                                    _%out133634%_)
                                             (if (and (fx= _%phi133632%_
                                                           _%current-phi133572%_)
                                                      (eq? _%src133568%_
                                                           (##unchecked-structure-ref
                                                            _%out133634%_
                                                            '1
                                                            '#f
                                                            '#f)))
                                                 (cons (_%import->export133573%_
                                                        _%in133576%_)
                                                       _%r133577%_)
                                                 _%r133577%_)))
                                          (_%K133583133611%_
                                           (lambda (_%imports133604%_
                                                    _%phi133605%_
                                                    _%ctx133606%_)
                                             (if (and (fx= _%phi133605%_
                                                           _%current-phi133572%_)
                                                      (eq? _%src133568%_
                                                           _%ctx133606%_))
                                                 (__foldl1
                                                  (lambda (_%in133608%_
                                                           _%r133609%_)
                                                    (cons (_%import->export133573%_
                                                           _%in133608%_)
                                                          _%r133609%_))
                                                  _%r133577%_
                                                  _%imports133604%_)
                                                 _%r133577%_))))
                                      (let ((_%try-match133580133629%_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _%in133578133592%_
                                                    'gx#import-set::t)
                                                   (let* ((_%e133584133614%_
                                                           (##unchecked-structure-ref
                                                            _%in133578133592%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                          (_%e133585133619%_
                                                           (##unchecked-structure-ref
                                                            _%in133578133592%_
                                                            '2
                                                            '#f
                                                            '#f))
                                                          (_%e133586133624%_
                                                           (##unchecked-structure-ref
                                                            _%in133578133592%_
                                                            '3
                                                            '#f
                                                            '#f)))
                                                     (let ((_%ctx133617%_
                                                            _%e133584133614%_)
                                                           (_%phi133622%_
                                                            _%e133585133619%_)
                                                           (_%imports133627%_
                                                            _%e133586133624%_))
                                                       (_%K133583133611%_
                                                        _%imports133627%_
                                                        _%phi133622%_
                                                        _%ctx133617%_)))
                                                   (_%else133581133600%_)))))
                                        (if (##structure-direct-instance-of?
                                             _%in133578133592%_
                                             'gx#module-import::t)
                                            (let* ((_%e133588133639%_
                                                    (##unchecked-structure-ref
                                                     _%in133578133592%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                   (_%e133589133644%_
                                                    (##unchecked-structure-ref
                                                     _%in133578133592%_
                                                     '2
                                                     '#f
                                                     '#f))
                                                   (_%e133590133649%_
                                                    (##unchecked-structure-ref
                                                     _%in133578133592%_
                                                     '3
                                                     '#f
                                                     '#f)))
                                              (let ((_%out133642%_
                                                     _%e133588133639%_)
                                                    (_%key133647%_
                                                     _%e133589133644%_)
                                                    (_%phi133652%_
                                                     _%e133590133649%_))
                                                (_%K133587133636%_
                                                 _%phi133652%_
                                                 _%key133647%_
                                                 _%out133642%_)))
                                            (_%try-match133580133629%_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _%src133568%_
                              _%current-phi133572%_
                              (__foldl1
                               _%fold-e133574%_
                               '()
                               (##unchecked-structure-ref
                                _%current-ctx133571%_
                                '8
                                '#f
                                '#f)))
                             _%r133569%_))))
                  (_%export!133539%_
                   (lambda (_%rbody133555%_)
                     (letrec* ((_%current-ctx133557%_
                                (gx#current-expander-context))
                               (_%fold-e133558%_
                                (lambda (_%out133562%_ _%r133563%_)
                                  (if (##structure-direct-instance-of?
                                       _%out133562%_
                                       'gx#module-export::t)
                                      (cons _%out133562%_ _%r133563%_)
                                      (if (##structure-direct-instance-of?
                                           _%out133562%_
                                           'gx#export-set::t)
                                          (__foldl1
                                           cons
                                           _%r133563%_
                                           (##unchecked-structure-ref
                                            _%out133562%_
                                            '3
                                            '#f
                                            '#f))
                                          _%r133563%_)))))
                       (let ((_%body133560%_ (reverse _%rbody133555%_)))
                         (##unchecked-structure-set!
                          _%current-ctx133557%_
                          (__foldl1
                           _%fold-e133558%_
                           (##unchecked-structure-ref
                            _%current-ctx133557%_
                            '9
                            '#f
                            '#f)
                           _%body133560%_)
                          '9
                          '#f
                          '#f)
                         _%body133560%_))))
                  (_%expanded-export?133540%_
                   (lambda (_%e133550%_)
                     (let ((_%$e133552%_
                            (##structure-direct-instance-of?
                             _%e133550%_
                             'gx#module-export::t)))
                       (if _%$e133552%_
                           _%$e133552%_
                           (##structure-direct-instance-of?
                            _%e133550%_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _%internal-expand?133534%_)
              (let ((_%rbody133546%_
                     (gx#core-expand-import/export
                      _%stx133533%_
                      _%expanded-export?133540%_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _%expand1133537%_)))
                (if _%internal-expand?133534%_
                    (reverse _%rbody133546%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons
                      '%#export
                      (_%export!133539%_ _%rbody133546%_))
                     (gx#stx-source _%stx133533%_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _%stx133533%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _%stx133533%_))))))
    (define gx#core-expand-export%__0
      (lambda (_%stx134032%_)
        (let ((_%internal-expand?134034%_ '#f))
          (gx#core-expand-export%__%
           _%stx134032%_
           _%internal-expand?134034%_))))
    (define gx#core-expand-export%
      (lambda _g137113_
        (let ((_g137114_ (##length _g137113_)))
          (cond ((##fx= _g137114_ 1)
                 (apply gx#core-expand-export%__0 _g137113_))
                ((##fx= _g137114_ 2)
                 (apply gx#core-expand-export%__% _g137113_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g137113_))))))
    (define gx#core-expand-export-source
      (lambda (_%hd133530%_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _%hd133530%_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_%stx133500%_)
        (let* ((_%e133501133508%_ _%stx133500%_)
               (_%E133503133512%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e133501133508%_)))
               (_%E133502133526%_
                (lambda ()
                  (if (gx#stx-pair? _%e133501133508%_)
                      (let ((_%e133504133516%_
                             (gx#syntax-e _%e133501133508%_)))
                        (let ((_%hd133505133519%_ (##car _%e133504133516%_))
                              (_%tl133506133521%_ (##cdr _%e133504133516%_)))
                          (let ((_%body133524%_ _%tl133506133521%_))
                            (if (gx#identifier-list? _%body133524%_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _%body133524%_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _%body133524%_))
                                   (gx#stx-source _%stx133500%_)))
                                (_%E133503133512%_)))))
                      (_%E133503133512%_)))))
          (_%E133502133526%_))))
    (define gx#core-bind-feature!__%
      (lambda (_%id133466%_ _%private?133467%_ _%phi133468%_ _%ctx133469%_)
        (gx#core-bind-syntax!__%
         _%id133466%_
         ((if _%private?133467%_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _%id133466%_))
         _%private?133467%_
         _%phi133468%_
         _%ctx133469%_)))
    (define gx#core-bind-feature!__0
      (lambda (_%id133474%_)
        (let* ((_%private?133476%_ '#f)
               (_%phi133478%_ (gx#current-expander-phi))
               (_%ctx133480%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id133474%_
           _%private?133476%_
           _%phi133478%_
           _%ctx133480%_))))
    (define gx#core-bind-feature!__1
      (lambda (_%id133482%_ _%private?133483%_)
        (let* ((_%phi133485%_ (gx#current-expander-phi))
               (_%ctx133487%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id133482%_
           _%private?133483%_
           _%phi133485%_
           _%ctx133487%_))))
    (define gx#core-bind-feature!__2
      (lambda (_%id133489%_ _%private?133490%_ _%phi133491%_)
        (let ((_%ctx133493%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id133489%_
           _%private?133490%_
           _%phi133491%_
           _%ctx133493%_))))
    (define gx#core-bind-feature!
      (lambda _g137115_
        (let ((_g137116_ (##length _g137115_)))
          (cond ((##fx= _g137116_ 1)
                 (apply gx#core-bind-feature!__0 _g137115_))
                ((##fx= _g137116_ 2)
                 (apply gx#core-bind-feature!__1 _g137115_))
                ((##fx= _g137116_ 3)
                 (apply gx#core-bind-feature!__2 _g137115_))
                ((##fx= _g137116_ 4)
                 (apply gx#core-bind-feature!__% _g137115_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g137115_))))))))
