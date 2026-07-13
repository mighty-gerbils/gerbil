(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1783939349)
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
      (lambda _%$args192197%_
        (apply make-instance gx#module-import::t _%$args192197%_)))
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
      (lambda _%$args192194%_
        (apply make-instance gx#module-export::t _%$args192194%_)))
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
      (lambda _%$args192191%_
        (apply make-instance gx#import-set::t _%$args192191%_)))
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
      (lambda _%$args192188%_
        (apply make-instance gx#export-set::t _%$args192188%_)))
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
      (lambda _%$args192185%_
        (apply make-instance gx#import-expander::t _%$args192185%_)))
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
      (lambda _%$args192182%_
        (apply make-instance gx#export-expander::t _%$args192182%_)))
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
      (lambda _%$args192179%_
        (apply make-instance gx#import-export-expander::t _%$args192179%_)))
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
      (lambda (_%path192176%_ _%fun192177%_)
        (call-with-input-file
         (cons 'path: (cons _%path192176%_ gx#source-file-settings))
         _%fun192177%_)))
    (define gx#module-context:::init!
      (lambda (_%self192159%_
               _%id192160%_
               _%super192161%_
               _%ns192162%_
               _%path192163%_)
        (let ((_%self192166%_ _%self192159%_))
          (if (##fx< '11 (##structure-length _%self192166%_))
              (begin
                (##unchecked-structure-set!
                 _%self192166%_
                 _%id192160%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self192166%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self192166%_
                 _%super192161%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self192166%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self192166%_ '#f '5 '#f '#f)
                (##unchecked-structure-set!
                 _%self192166%_
                 _%ns192162%_
                 '6
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self192166%_
                 _%path192163%_
                 '7
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self192166%_ '() '8 '#f '#f)
                (##unchecked-structure-set! _%self192166%_ '() '9 '#f '#f)
                (##unchecked-structure-set! _%self192166%_ '#f '10 '#f '#f)
                (##unchecked-structure-set! _%self192166%_ '#f '11 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self192166%_
                     '11
                     (##structure-length _%self192166%_))))))
    (__bind-method!__%
     gx#module-context::t
     ':init!
     gx#module-context:::init!
     '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_%self191992%_ _%ctx191993%_ _%root191994%_)
        (let* ((_%self191997%_ _%self191992%_)
               (_%super192013%_
                (let ((_%$e192007%_ _%root191994%_))
                  (if _%$e192007%_
                      _%$e192007%_
                      (let ((_%$e192010%_ (gx#core-context-root__0)))
                        (if _%$e192010%_
                            _%$e192010%_
                            (let ((__obj192241
                                   (##structure gx#root-context::t '#f '#f)))
                              (let ((__constructor192242
                                     (direct-method-ref
                                      gx#root-context::t
                                      __obj192241
                                      ':init!)))
                                (if __constructor192242
                                    (__constructor192242 __obj192241)
                                    (error '"missing constructor method implementation"
                                           'class:
                                           gx#root-context::t
                                           'method:
                                           ':init!)))
                              __obj192241)))))))
          (if _%ctx191993%_
              (let ((_%id192016%_
                     (##structure-ref
                      _%ctx191993%_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_%path192017%_
                     (##structure-ref
                      _%ctx191993%_
                      '7
                      gx#module-context::t
                      '#f))
                    (_%in192018%_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _%ctx191993%_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_%e192019%_
                     (__make-atomic-promise
                      (lambda () (gx#eval-module _%ctx191993%_)))))
                (if (##fx< '8 (##structure-length _%self191997%_))
                    (begin
                      (##unchecked-structure-set!
                       _%self191997%_
                       _%id192016%_
                       '1
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self191997%_
                       (make-hash-table-eq 'size: (##length _%in192018%_))
                       '2
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self191997%_
                       _%super192013%_
                       '3
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self191997%_
                       '#f
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self191997%_
                       '#f
                       '5
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self191997%_
                       _%path192017%_
                       '6
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self191997%_
                       _%in192018%_
                       '7
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self191997%_
                       _%e192019%_
                       '8
                       '#f
                       '#f)
                      '#!void)
                    (error '"struct-instance-init!: too many arguments for struct"
                           _%self191997%_
                           '8
                           (##structure-length _%self191997%_)))
                (##for-each
                 (lambda (_%$%g192020192022%_)
                   (gx#core-bind-weak-import!__%
                    _%$%g192020192022%_
                    _%self191997%_))
                 _%in192018%_))
              (if (##fx< '8 (##structure-length _%self191997%_))
                  (begin
                    (##unchecked-structure-set! _%self191997%_ '#f '1 '#f '#f)
                    (##unchecked-structure-set!
                     _%self191997%_
                     (make-hash-table-eq)
                     '2
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self191997%_
                     _%super192013%_
                     '3
                     '#f
                     '#f)
                    (##unchecked-structure-set! _%self191997%_ '#f '4 '#f '#f)
                    (##unchecked-structure-set! _%self191997%_ '#f '5 '#f '#f)
                    (##unchecked-structure-set! _%self191997%_ '#f '6 '#f '#f)
                    (##unchecked-structure-set! _%self191997%_ '() '7 '#f '#f)
                    (##unchecked-structure-set! _%self191997%_ '#f '8 '#f '#f)
                    '#!void)
                  (error '"struct-instance-init!: too many arguments for struct"
                         _%self191997%_
                         '8
                         (##structure-length _%self191997%_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_%self192028%_ _%ctx192029%_)
        (let ((_%root192031%_ '#f))
          (gx#prelude-context:::init!__%
           _%self192028%_
           _%ctx192029%_
           _%root192031%_))))
    (define gx#prelude-context:::init!
      (lambda _g192248_
        (let ((_g192249_ (##length _g192248_)))
          (cond ((##fx= _g192249_ 2)
                 (apply gx#prelude-context:::init!__0 _g192248_))
                ((##fx= _g192249_ 3)
                 (apply gx#prelude-context:::init!__% _g192248_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g192248_))))))
    (__bind-method!__%
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_%self191866%_ _%e191867%_)
        (if (##fx< '3 (##structure-length _%self191866%_))
            (begin
              (##unchecked-structure-set!
               _%self191866%_
               _%e191867%_
               '1
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self191866%_
               (gx#current-expander-context)
               '2
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self191866%_
               (##fx- (gx#current-expander-phi) '1)
               '3
               '#f
               '#f)
              '#!void)
            (error '"struct-instance-init!: too many arguments for struct"
                   _%self191866%_
                   '3
                   (##structure-length _%self191866%_)))))
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
      (lambda (_%$%g191492191495%_ _%$%g191493191497%_)
        (gx#core-apply-user-expander__%
         _%$%g191492191495%_
         _%$%g191493191497%_
         'apply-import-expander)))
    (__bind-method!__%
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_%$%g191363191366%_ _%$%g191364191368%_)
        (gx#core-apply-user-expander__%
         _%$%g191363191366%_
         _%$%g191364191368%_
         'apply-export-expander)))
    (__bind-method!__%
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_%ctx191234%_)
        (let* ((_%path191236%_
                (##structure-ref _%ctx191234%_ '7 gx#module-context::t '#f))
               (_%path191238%_
                (if (pair? _%path191236%_)
                    (##last _%path191236%_)
                    _%path191236%_)))
          (if (string? _%path191238%_) _%path191238%_ '#f))))
    (define gx#import-module__%
      (lambda (_%path191210%_ _%reload?191211%_ _%eval?191212%_)
        (let ((_%ctx191214%_
               ((gx#current-expander-module-import)
                _%path191210%_
                _%reload?191211%_)))
          (if (and _%ctx191214%_ _%eval?191212%_)
              (gx#eval-module _%ctx191214%_)
              '#!void)
          _%ctx191214%_)))
    (define gx#import-module__0
      (lambda (_%path191219%_)
        (let* ((_%reload?191221%_ '#f) (_%eval?191223%_ '#f))
          (gx#import-module__%
           _%path191219%_
           _%reload?191221%_
           _%eval?191223%_))))
    (define gx#import-module__1
      (lambda (_%path191225%_ _%reload?191226%_)
        (let ((_%eval?191228%_ '#f))
          (gx#import-module__%
           _%path191225%_
           _%reload?191226%_
           _%eval?191228%_))))
    (define gx#import-module
      (lambda _g192250_
        (let ((_g192251_ (##length _g192250_)))
          (cond ((##fx= _g192251_ 1) (apply gx#import-module__0 _g192250_))
                ((##fx= _g192251_ 2) (apply gx#import-module__1 _g192250_))
                ((##fx= _g192251_ 3) (apply gx#import-module__% _g192250_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g192250_))))))
    (define gx#eval-module
      (lambda (_%mod191207%_)
        ((gx#current-expander-module-eval) _%mod191207%_)))
    (define gx#core-eval-module
      (lambda (_%obj191186%_)
        (letrec ((_%force-e191188%_
                  (lambda (_%getf191202%_ _%e191203%_)
                    (call-with-parameters__1
                     (lambda ()
                       (call-with-parameters__1
                        (lambda () (force (_%getf191202%_ _%e191203%_)))
                        gx#current-expander-phi
                        '0))
                     gx#current-expander-context
                     _%e191203%_))))
          (let _%recur191190%_ ((_%e191192%_ _%obj191186%_))
            (if (##structure-instance-of? _%e191192%_ 'gx#module-context::t)
                (let ()
                  (let ((_%$e191195%_
                         (gx#core-context-prelude__% _%e191192%_)))
                    (if _%$e191195%_ (_%recur191190%_ _%$e191195%_) '#!void))
                  (_%force-e191188%_ gx#module-context-e _%e191192%_))
                (if (##structure-instance-of?
                     _%e191192%_
                     'gx#prelude-context::t)
                    (_%force-e191188%_ gx#prelude-context-e _%e191192%_)
                    (if (gx#stx-string? _%e191192%_)
                        (_%recur191190%_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _%e191192%_)))
                        (if (gx#core-library-module-path? _%e191192%_)
                            (_%recur191190%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%e191192%_)))
                            (error '"cannot eval module" _%obj191186%_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_%ctx191166%_)
        (let _%lp191168%_ ((_%e191170%_ _%ctx191166%_))
          (if (or (##structure-instance-of? _%e191170%_ 'gx#module-context::t)
                  (##structure-instance-of? _%e191170%_ 'gx#local-context::t))
              (_%lp191168%_ (##unchecked-structure-ref _%e191170%_ '3 '#f '#f))
              (if (##structure-instance-of? _%e191170%_ 'gx#prelude-context::t)
                  _%e191170%_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_%ctx191182%_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _%ctx191182%_))))
    (define gx#core-context-prelude
      (lambda _g192252_
        (let ((_g192253_ (##length _g192252_)))
          (cond ((##fx= _g192253_ 0)
                 (apply gx#core-context-prelude__0 _g192252_))
                ((##fx= _g192253_ 1)
                 (apply gx#core-context-prelude__% _g192252_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g192252_))))))
    (define gx#core-module->prelude-context
      (lambda (_%ctx191157%_)
        (let ((_%$e191159%_ (__hash-get gx#__module-registry _%ctx191157%_)))
          (if _%$e191159%_
              _%$e191159%_
              (let ((_%pre191163%_
                     (let ((__obj192243
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
                        __obj192243
                        _%ctx191157%_)
                       __obj192243)))
                (__hash-put! gx#__module-registry _%ctx191157%_ _%pre191163%_)
                _%pre191163%_)))))
    (define gx#core-import-module__%
      (lambda (_%rpath191025%_ _%reload?191026%_)
        (letrec ((_%import-source191028%_
                  (lambda (_%path191116%_)
                    (if (member _%path191116%_ (gx#current-expander-path))
                        (gx#raise-syntax-error
                         '#f
                         '"Cyclic expansion"
                         _%path191116%_
                         (gx#current-expander-path))
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
                                      (let ((_g192254_
                                             (gx#core-read-module
                                              _%path191116%_)))
                                        (begin
                                          (let ((_g192255_
                                                 (if (##values? _g192254_)
                                                     (##values-length
                                                      _g192254_)
                                                     1)))
                                            (if (not (##fx= _g192255_ 4))
                                                (error "Context expects 4 values"
                                                       _g192255_)))
                                          (let ((_%pre191124%_
                                                 (##values-ref _g192254_ 0))
                                                (_%id191125%_
                                                 (##values-ref _g192254_ 1))
                                                (_%ns191126%_
                                                 (##values-ref _g192254_ 2))
                                                (_%body191127%_
                                                 (##values-ref _g192254_ 3)))
                                            (let* ((_%prelude191137%_
                                                    (if (##structure-instance-of?
                                                         _%pre191124%_
                                                         'gx#prelude-context::t)
                                                        _%pre191124%_
                                                        (if (##structure-instance-of?
                                                             _%pre191124%_
                                                             'gx#module-context::t)
                                                            (gx#core-module->prelude-context
                                                             _%pre191124%_)
                                                            (if (string? _%pre191124%_)
                                                                (gx#core-module->prelude-context
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#core-import-module__0 _%pre191124%_))
                        (if (not _%pre191124%_)
                            (let ((_%$e191133%_
                                   (gx#current-expander-module-prelude)))
                              (if _%$e191133%_
                                  _%$e191133%_
                                  (let ((__obj192244
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
                                     __obj192244
                                     '#f)
                                    __obj192244)))
                            (error '"cannot import module; unknown prelude"
                                   _%rpath191025%_
                                   _%pre191124%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%ctx191139%_
                                                    (let ((__obj192245
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
                                                       __obj192245
                                                       _%id191125%_
                                                       _%prelude191137%_
                                                       _%ns191126%_
                                                       _%path191116%_)
                                                      __obj192245))
                                                   (_%body191141%_
                                                    (gx#core-expand-module-begin
                                                     _%body191127%_
                                                     _%ctx191139%_))
                                                   (_%body191143%_
                                                    (gx#core-quote-syntax__%
                                                     (gx#core-cons
                                                      '%#begin
                                                      _%body191141%_)
                                                     _%path191116%_
                                                     _%ctx191139%_
                                                     '())))
                                              (##unchecked-structure-set!
                                               _%ctx191139%_
                                               (__make-atomic-promise
                                                (lambda ()
                                                  (gx#eval-syntax*
                                                   _%body191143%_)))
                                               '10
                                               '#f
                                               '#f)
                                              (##unchecked-structure-set!
                                               _%ctx191139%_
                                               _%body191143%_
                                               '11
                                               '#f
                                               '#f)
                                              (__hash-put!
                                               gx#__module-registry
                                               _%path191116%_
                                               _%ctx191139%_)
                                              (__hash-put!
                                               gx#__module-registry
                                               _%id191125%_
                                               _%ctx191139%_)
                                              _%ctx191139%_)))))
                                    gx#current-export-expander-phi
                                    '#f))
                                 gx#current-import-expander-phi
                                 '#f))
                              gx#current-expander-path
                              (cons _%path191116%_
                                    (gx#current-expander-path))))
                           gx#current-expander-phi
                           '0))
                        gx#current-expander-marks
                        '()))
                     gx#current-expander-context
                     (gx#core-context-root__0))))
                 (_%import-submodule191029%_
                  (lambda (_%rpath191045%_)
                    (let* ((_%$%rpath191046191053%_ _%rpath191045%_)
                           (_%$%E191048191056%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%$%rpath191046191053%_
                                     '([origin . refs]))
                              '#!void))
                           (_%$%K191049191104%_
                            (lambda (_%refs191059%_ _%origin191060%_)
                              (let ((_%ctx191062%_
                                     (if _%origin191060%_
                                         (gx#core-import-module__%
                                          _%origin191060%_
                                          _%reload?191026%_)
                                         (gx#current-expander-context))))
                                (let _%lp191064%_ ((_%rest191066%_
                                                    _%refs191059%_)
                                                   (_%ctx191067%_
                                                    _%ctx191062%_))
                                  (let* ((_%$%rest191068191076%_
                                          _%rest191066%_)
                                         (_%$%else191070191084%_
                                          (lambda () _%ctx191067%_))
                                         (_%$%K191072191092%_
                                          (lambda (_%rest191087%_ _%id191088%_)
                                            (let ((_%bind191090%_
                                                   (gx#resolve-identifier__%
                                                    _%id191088%_
                                                    '0
                                                    _%ctx191067%_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _%bind191090%_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _%bind191090%_
                                                         '5
                                                         '#f
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_%lp191064%_
                                                   _%rest191087%_
                                                   (##unchecked-structure-ref
                                                    _%bind191090%_
                                                    '5
                                                    '#f
                                                    '#f))
                                                  (error '"cannot import submodule; not bound as a module"
                                                         _%rpath191045%_
                                                         _%id191088%_
                                                         _%bind191090%_))))))
                                    (if (pair? _%$%rest191068191076%_)
                                        (let ((_%$%hd191073191095%_
                                               (##car _%$%rest191068191076%_))
                                              (_%$%tl191074191097%_
                                               (##cdr _%$%rest191068191076%_)))
                                          (let* ((_%id191100%_
                                                  _%$%hd191073191095%_)
                                                 (_%rest191102%_
                                                  _%$%tl191074191097%_))
                                            (_%$%K191072191092%_
                                             _%rest191102%_
                                             _%id191100%_)))
                                        (_%$%else191070191084%_))))))))
                      (if (pair? _%$%rpath191046191053%_)
                          (let ((_%$%hd191050191107%_
                                 (##car _%$%rpath191046191053%_))
                                (_%$%tl191051191109%_
                                 (##cdr _%$%rpath191046191053%_)))
                            (let* ((_%origin191112%_ _%$%hd191050191107%_)
                                   (_%refs191114%_ _%$%tl191051191109%_))
                              (_%$%K191049191104%_
                               _%refs191114%_
                               _%origin191112%_)))
                          (_%$%E191048191056%_))))))
          (let ((_%$e191031%_
                 (if (not _%reload?191026%_)
                     (__hash-get gx#__module-registry _%rpath191025%_)
                     '#f)))
            (if _%$e191031%_
                _%$e191031%_
                (if (list? _%rpath191025%_)
                    (_%import-submodule191029%_ _%rpath191025%_)
                    (if (gx#core-library-module-path? _%rpath191025%_)
                        (let ((_%ctx191036%_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _%rpath191025%_)
                                _%reload?191026%_)))
                          (__hash-put!
                           gx#__module-registry
                           _%rpath191025%_
                           _%ctx191036%_)
                          _%ctx191036%_)
                        (let* ((_%npath191039%_
                                (path-normalize _%rpath191025%_))
                               (_%$e191041%_
                                (if (not _%reload?191026%_)
                                    (__hash-get
                                     gx#__module-registry
                                     _%npath191039%_)
                                    '#f)))
                          (if _%$e191041%_
                              _%$e191041%_
                              (_%import-source191028%_
                               _%npath191039%_))))))))))
    (define gx#core-import-module__0
      (lambda (_%rpath191150%_)
        (let ((_%reload?191152%_ '#f))
          (gx#core-import-module__% _%rpath191150%_ _%reload?191152%_))))
    (define gx#core-import-module
      (lambda _g192256_
        (let ((_g192257_ (##length _g192256_)))
          (cond ((##fx= _g192257_ 1)
                 (apply gx#core-import-module__0 _g192256_))
                ((##fx= _g192257_ 2)
                 (apply gx#core-import-module__% _g192256_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g192256_))))))
    (define gx#core-read-module
      (lambda (_%path191007%_)
        (__with-catch
         (lambda (_%exn191009%_)
           (if (datum-parsing-exception? _%exn191009%_)
               (let ((_%pos191011%_
                      (datum-parsing-exception-filepos _%exn191009%_)))
                 (if (= _%pos191011%_ '0)
                     (gx#core-read-module/lang _%path191007%_)
                     (gx#raise-syntax-error
                      'read-module
                      '"error reading module"
                      _%path191007%_
                      (call-with-parameters__1
                       (lambda ()
                         (call-with-output-string
                          '""
                          (lambda (_%$%g191013191015%_)
                            (display-exception__%
                             _%exn191009%_
                             _%$%g191013191015%_))))
                       dump-stack-trace?
                       '#f)
                      (cons 'line:
                            (cons (##filepos-line _%pos191011%_)
                                  (cons 'col:
                                        (cons (##filepos-col _%pos191011%_)
                                              '())))))))
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _%path191007%_
                (call-with-parameters__1
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_%$%g191018191020%_)
                      (display-exception__%
                       _%exn191009%_
                       _%$%g191018191020%_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _%path191007%_)))))
    (define gx#core-read-module/sexp
      (lambda (_%path190859%_)
        (let _%lp190861%_ ((_%body190863%_
                            (read-syntax-from-file _%path190859%_))
                           (_%pre190864%_ '#f)
                           (_%ns190865%_ '#f)
                           (_%pkg190866%_ '#f))
          (let* ((_%$%e190867190891%_ _%body190863%_)
                 (_%$%E190883190917%_
                  (lambda ()
                    (let ((_g192258_
                           (if _%pkg190866%_
                               (values _%pre190864%_
                                       _%ns190865%_
                                       _%pkg190866%_)
                               (gx#core-read-module-package
                                _%path190859%_
                                _%pre190864%_
                                _%ns190865%_))))
                      (begin
                        (let ((_g192259_
                               (if (##values? _g192258_)
                                   (##values-length _g192258_)
                                   1)))
                          (if (not (##fx= _g192259_ 3))
                              (error "Context expects 3 values" _g192259_)))
                        (let ((_%pre190895%_ (##values-ref _g192258_ 0))
                              (_%ns190896%_ (##values-ref _g192258_ 1))
                              (_%pkg190897%_ (##values-ref _g192258_ 2)))
                          (let* ((_%prelude190903%_
                                  (if (gx#core-bound-module-prelude?
                                       _%pre190895%_)
                                      (gx#syntax-local-e__0 _%pre190895%_)
                                      (if (gx#core-library-module-path?
                                           _%pre190895%_)
                                          (gx#core-resolve-library-module-path
                                           _%pre190895%_)
                                          (if (gx#stx-string? _%pre190895%_)
                                              (gx#core-resolve-module-path__%
                                               _%pre190895%_
                                               _%path190859%_)
                                              (gx#stx-e _%pre190895%_)))))
                                 (_%path-id190905%_
                                  (gx#core-module-path->namespace
                                   _%path190859%_))
                                 (_%pkg-id190907%_
                                  (if _%pkg190897%_
                                      (##string-append
                                       _%pkg190897%_
                                       '"/"
                                       _%path-id190905%_)
                                      _%path-id190905%_))
                                 (_%module-id190909%_
                                  (##string->symbol _%pkg-id190907%_))
                                 (_%module-ns190914%_
                                  (if (eq? _%ns190896%_ '#!void)
                                      '#f
                                      (let ((_%$e190911%_ _%ns190896%_))
                                        (if _%$e190911%_
                                            _%$e190911%_
                                            _%pkg-id190907%_)))))
                            (values _%prelude190903%_
                                    _%module-id190909%_
                                    _%module-ns190914%_
                                    _%body190863%_)))))))
                 (_%$%E190876190949%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e190867190891%_)
                        (let ((_%$%e190884190921%_
                               (gx#syntax-e _%$%e190867190891%_)))
                          (let ((_%$%hd190885190924%_
                                 (##car _%$%e190884190921%_))
                                (_%$%tl190886190926%_
                                 (##cdr _%$%e190884190921%_)))
                            (if (eq? (gx#stx-e _%$%hd190885190924%_) 'package:)
                                (if (gx#stx-pair? _%$%tl190886190926%_)
                                    (let ((_%$%e190887190929%_
                                           (gx#syntax-e _%$%tl190886190926%_)))
                                      (let ((_%$%hd190888190932%_
                                             (##car _%$%e190887190929%_))
                                            (_%$%tl190889190934%_
                                             (##cdr _%$%e190887190929%_)))
                                        (let* ((_%pkg190937%_
                                                _%$%hd190888190932%_)
                                               (_%rest190939%_
                                                _%$%tl190889190934%_)
                                               (_%pkg190947%_
                                                (if (gx#identifier?
                                                     _%pkg190937%_)
                                                    (symbol->string
                                                     (gx#stx-e _%pkg190937%_))
                                                    (if (or (gx#stx-string?
                                                             _%pkg190937%_)
                                                            (gx#stx-false?
                                                             _%pkg190937%_))
                                                        (gx#stx-e
                                                         _%pkg190937%_)
                                                        (gx#raise-syntax-error
                                                         'import
                                                         '"Bad syntax; Illegal package name"
                                                         _%pkg190937%_)))))
                                          (_%lp190861%_
                                           _%rest190939%_
                                           _%pre190864%_
                                           _%ns190865%_
                                           _%pkg190947%_))))
                                    (_%$%E190883190917%_))
                                (_%$%E190883190917%_))))
                        (_%$%E190883190917%_))))
                 (_%$%E190869190979%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e190867190891%_)
                        (let ((_%$%e190877190953%_
                               (gx#syntax-e _%$%e190867190891%_)))
                          (let ((_%$%hd190878190956%_
                                 (##car _%$%e190877190953%_))
                                (_%$%tl190879190958%_
                                 (##cdr _%$%e190877190953%_)))
                            (if (eq? (gx#stx-e _%$%hd190878190956%_)
                                     'namespace:)
                                (if (gx#stx-pair? _%$%tl190879190958%_)
                                    (let ((_%$%e190880190961%_
                                           (gx#syntax-e _%$%tl190879190958%_)))
                                      (let ((_%$%hd190881190964%_
                                             (##car _%$%e190880190961%_))
                                            (_%$%tl190882190966%_
                                             (##cdr _%$%e190880190961%_)))
                                        (let* ((_%ns190969%_
                                                _%$%hd190881190964%_)
                                               (_%rest190971%_
                                                _%$%tl190882190966%_)
                                               (_%ns190977%_
                                                (if (gx#identifier?
                                                     _%ns190969%_)
                                                    (symbol->string
                                                     (gx#stx-e _%ns190969%_))
                                                    (if (gx#stx-string?
                                                         _%ns190969%_)
                                                        (gx#stx-e _%ns190969%_)
                                                        (if (gx#stx-false?
                                                             _%ns190969%_)
                                                            '#!void
                                                            (gx#raise-syntax-error
                                                             'import
                                                             '"Bad syntax; illegal namespace"
                                                             _%ns190969%_))))))
                                          (_%lp190861%_
                                           _%rest190971%_
                                           _%pre190864%_
                                           _%ns190977%_
                                           _%pkg190866%_))))
                                    (_%$%E190876190949%_))
                                (_%$%E190876190949%_))))
                        (_%$%E190876190949%_))))
                 (_%$%E190868191003%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e190867190891%_)
                        (let ((_%$%e190870190983%_
                               (gx#syntax-e _%$%e190867190891%_)))
                          (let ((_%$%hd190871190986%_
                                 (##car _%$%e190870190983%_))
                                (_%$%tl190872190988%_
                                 (##cdr _%$%e190870190983%_)))
                            (if (eq? (gx#stx-e _%$%hd190871190986%_) 'prelude:)
                                (if (gx#stx-pair? _%$%tl190872190988%_)
                                    (let ((_%$%e190873190991%_
                                           (gx#syntax-e _%$%tl190872190988%_)))
                                      (let ((_%$%hd190874190994%_
                                             (##car _%$%e190873190991%_))
                                            (_%$%tl190875190996%_
                                             (##cdr _%$%e190873190991%_)))
                                        (let* ((_%prelude190999%_
                                                _%$%hd190874190994%_)
                                               (_%rest191001%_
                                                _%$%tl190875190996%_))
                                          (_%lp190861%_
                                           _%rest191001%_
                                           _%prelude190999%_
                                           _%ns190865%_
                                           _%pkg190866%_))))
                                    (_%$%E190869190979%_))
                                (_%$%E190869190979%_))))
                        (_%$%E190869190979%_)))))
            (_%$%E190868191003%_)))))
    (define gx#core-read-module/lang
      (lambda (_%path190680%_)
        (letrec ((_%default-read-module-body190682%_
                  (lambda (_%inp190851%_)
                    (let _%lp190853%_ ((_%body190855%_ '()))
                      (let ((_%next190857%_ (read-syntax__% _%inp190851%_)))
                        (if (eof-object? _%next190857%_)
                            (reverse _%body190855%_)
                            (_%lp190853%_
                             (cons _%next190857%_ _%body190855%_)))))))
                 (_%read-body190683%_
                  (lambda (_%inp190768%_
                           _%pre190769%_
                           _%ns190770%_
                           _%pkg190771%_
                           _%args190772%_)
                    (let ((_g192260_
                           (if _%pkg190771%_
                               (values _%pre190769%_
                                       _%ns190770%_
                                       _%pkg190771%_)
                               (gx#core-read-module-package
                                _%path190680%_
                                _%pre190769%_
                                _%ns190770%_))))
                      (begin
                        (let ((_g192261_
                               (if (##values? _g192260_)
                                   (##values-length _g192260_)
                                   1)))
                          (if (not (##fx= _g192261_ 3))
                              (error "Context expects 3 values" _g192261_)))
                        (let ((_%pre190774%_ (##values-ref _g192260_ 0))
                              (_%ns190775%_ (##values-ref _g192260_ 1))
                              (_%pkg190776%_ (##values-ref _g192260_ 2)))
                          (let* ((_%prelude190778%_
                                  (gx#import-module__0 _%pre190774%_))
                                 (_%read-module-body190833%_
                                  (let ((_%$e190824%_
                                         (__find (lambda (_%$%e190779190781%_)
                                                   (let* ((_%$%$%e190779190783190793%_
                                                           _%$%e190779190781%_)
                                                          (_%$%else190785190801%_
                                                           (lambda () '#f))
                                                          (_%$%K190787190805%_
                                                           (lambda () '#t)))
                                                     (if (##structure-direct-instance-of?
                                                          _%$%$%e190779190783190793%_
                                                          'gx#module-export::t)
                                                         (let* ((_%$%e190788190808%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##unchecked-structure-ref
                          _%$%$%e190779190783190793%_
                          '1
                          '#f
                          '#f))
                        (_%$%e190789190811%_
                         (##unchecked-structure-ref
                          _%$%$%e190779190783190793%_
                          '2
                          '#f
                          '#f))
                        (_%$%e190790190814%_
                         (##unchecked-structure-ref
                          _%$%$%e190779190783190793%_
                          '3
                          '#f
                          '#f)))
                   (if (##eq? _%$%e190790190814%_ '1)
                       (let ((_%$%e190791190817%_
                              (##unchecked-structure-ref
                               _%$%$%e190779190783190793%_
                               '4
                               '#f
                               '#f)))
                         (if (eq? _%$%e190791190817%_ 'read-module-body)
                             (_%$%K190787190805%_)
                             (_%$%else190785190801%_)))
                       (_%$%else190785190801%_)))
                 (_%$%else190785190801%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (##unchecked-structure-ref
                                                  _%prelude190778%_
                                                  '9
                                                  '#f
                                                  '#f))))
                                    (if _%$e190824%_
                                        (let ((_%proc190830%_
                                               (__with-catch
                                                void
                                                (lambda ()
                                                  (gx#eval-syntax__0
                                                   (##structure-ref
                                                    (gx#core-resolve-module-export
                                                     _%$e190824%_)
                                                    '1
                                                    gx#binding::t
                                                    '#f))))))
                                          (if (procedure? _%proc190830%_)
                                              _%proc190830%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang prelude; read-module-body is not a procedure"
                                               _%path190680%_
                                               _%pre190774%_
                                               _%proc190830%_)))
                                        _%default-read-module-body190682%_)))
                                 (_%path-id190835%_
                                  (gx#core-module-path->namespace
                                   _%path190680%_))
                                 (_%pkg-id190837%_
                                  (if _%pkg190776%_
                                      (##string-append
                                       _%pkg190776%_
                                       '"/"
                                       _%path-id190835%_)
                                      _%path-id190835%_))
                                 (_%module-id190839%_
                                  (##string->symbol _%pkg-id190837%_))
                                 (_%module-ns190844%_
                                  (let ((_%$e190841%_ _%ns190775%_))
                                    (if _%$e190841%_
                                        _%$e190841%_
                                        _%pkg-id190837%_)))
                                 (_%body190848%_
                                  (call-with-parameters__1
                                   (lambda ()
                                     (call-with-parameters__1
                                      (lambda ()
                                        (_%read-module-body190833%_
                                         _%inp190768%_))
                                      gx#current-module-reader-args
                                      _%args190772%_))
                                   gx#current-module-reader-path
                                   _%path190680%_)))
                            (values _%prelude190778%_
                                    _%module-id190839%_
                                    _%module-ns190844%_
                                    _%body190848%_)))))))
                 (_%string-e190684%_
                  (lambda (_%obj190762%_ _%what190763%_)
                    (if (string? _%obj190762%_)
                        _%obj190762%_
                        (if (symbol? _%obj190762%_)
                            (##symbol->string _%obj190762%_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _%what190763%_)
                             _%path190680%_
                             _%obj190762%_)))))
                 (_%read-lang-args190685%_
                  (lambda (_%inp190717%_ _%args190718%_)
                    (let* ((_%$%args190719190727%_ _%args190718%_)
                           (_%$%else190721190735%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _%path190680%_)))
                           (_%$%K190723190750%_
                            (lambda (_%args190738%_ _%prelude190739%_)
                              (let* ((_%pkg190741%_
                                      (pgetq__0 'package: _%args190738%_))
                                     (_%pkg190743%_
                                      (if _%pkg190741%_
                                          (_%string-e190684%_
                                           _%pkg190741%_
                                           '"package")
                                          '#f))
                                     (_%ns190745%_
                                      (pgetq__0 'namespace: _%args190738%_))
                                     (_%ns190747%_
                                      (if _%ns190745%_
                                          (_%string-e190684%_
                                           _%ns190745%_
                                           '"namespace")
                                          '#f)))
                                (_%read-body190683%_
                                 _%inp190717%_
                                 _%prelude190739%_
                                 _%ns190747%_
                                 _%pkg190743%_
                                 _%args190738%_)))))
                      (if (pair? _%$%args190719190727%_)
                          (let ((_%$%hd190724190753%_
                                 (##car _%$%args190719190727%_))
                                (_%$%tl190725190755%_
                                 (##cdr _%$%args190719190727%_)))
                            (let* ((_%prelude190758%_ _%$%hd190724190753%_)
                                   (_%args190760%_ _%$%tl190725190755%_))
                              (_%$%K190723190750%_
                               _%args190760%_
                               _%prelude190758%_)))
                          (_%$%else190721190735%_)))))
                 (_%read-lang190686%_
                  (lambda (_%inp190691%_)
                    (let* ((_%head190693%_ (read-line _%inp190691%_))
                           (_%$e190695%_
                            (string-index__0 _%head190693%_ '#\space)))
                      (if _%$e190695%_
                          (let ((_%lang190700%_
                                 (substring _%head190693%_ '0 _%$e190695%_)))
                            (if (equal? _%lang190700%_ '"#lang")
                                (let* ((_%rest190702%_
                                        (substring
                                         _%head190693%_
                                         (##fx+ _%$e190695%_ '1)
                                         (string-length _%head190693%_)))
                                       (_%args190713%_
                                        (__with-catch
                                         (lambda (_%$%g190703190705%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Illegal #lang arguments"
                                            _%path190680%_
                                            _%$%g190703190705%_))
                                         (lambda ()
                                           (call-with-input-string
                                            _%rest190702%_
                                            (lambda (_%$%g190708190710%_)
                                              (read-all
                                               _%$%g190708190710%_
                                               read)))))))
                                  (_%read-lang-args190685%_
                                   _%inp190691%_
                                   _%args190713%_))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Illegal module syntax"
                                 _%path190680%_)))
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _%path190680%_)))))
                 (_%read-e190687%_
                  (lambda (_%inp190689%_)
                    (if (eq? (peek-char _%inp190689%_) '#\#)
                        (_%read-lang190686%_ _%inp190689%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _%path190680%_)))))
          (gx#call-with-input-source-file _%path190680%_ _%read-e190687%_))))
    (define gx#core-read-module-package
      (lambda (_%path190628%_ _%pre190629%_ _%ns190630%_)
        (letrec ((_%string-e190632%_
                  (lambda (_%e190675%_)
                    (if (symbol? _%e190675%_)
                        (##symbol->string _%e190675%_)
                        (if (string? _%e190675%_)
                            _%e190675%_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%e190675%_))))))
          (let _%lp190634%_ ((_%dir190636%_ (path-directory _%path190628%_))
                             (_%pkg-path190637%_ '()))
            (let ((_%gerbil.pkg190639%_
                   (path-expand '"gerbil.pkg" _%dir190636%_)))
              (if (##file-exists? _%gerbil.pkg190639%_)
                  (let ((_%plist190641%_
                         (gx#core-library-package-plist__% _%dir190636%_ '#t)))
                    (if (null? _%plist190641%_)
                        (let ((_%pkg190644%_
                               (if (null? _%pkg-path190637%_)
                                   '#f
                                   (string-join _%pkg-path190637%_ '"/"))))
                          (values _%pre190629%_ _%ns190630%_ _%pkg190644%_))
                        (if (list? _%plist190641%_)
                            (let* ((_%root190647%_
                                    (pgetq__0 'package: _%plist190641%_))
                                   (_%pkg190651%_
                                    (let ((_%pkg-path190649%_
                                           (if _%root190647%_
                                               (cons (_%string-e190632%_
                                                      _%root190647%_)
                                                     _%pkg-path190637%_)
                                               _%pkg-path190637%_)))
                                      (if (null? _%pkg-path190649%_)
                                          '#f
                                          (string-join
                                           _%pkg-path190649%_
                                           '"/"))))
                                   (_%ns190658%_
                                    (let ((_%ns190656%_
                                           (let ((_%$e190653%_ _%ns190630%_))
                                             (if _%$e190653%_
                                                 _%$e190653%_
                                                 (pgetq__0
                                                  'namespace:
                                                  _%plist190641%_)))))
                                      (if _%ns190656%_
                                          (_%string-e190632%_ _%ns190656%_)
                                          '#f)))
                                   (_%pre190663%_
                                    (let ((_%$e190660%_ _%pre190629%_))
                                      (if _%$e190660%_
                                          _%$e190660%_
                                          (pgetq__0
                                           'prelude:
                                           _%plist190641%_)))))
                              (values _%pre190663%_
                                      _%ns190658%_
                                      _%pkg190651%_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%plist190641%_))))
                  (let ((_%dir*190667%_
                         (path-strip-trailing-directory-separator
                          _%dir190636%_)))
                    (if (or (__string-empty? _%dir*190667%_)
                            (equal? _%dir190636%_ _%dir*190667%_))
                        (values _%pre190629%_ _%ns190630%_ '#f)
                        (let ((_%xpath190672%_
                               (path-strip-directory _%dir*190667%_))
                              (_%xdir190673%_ (path-directory _%dir*190667%_)))
                          (_%lp190634%_
                           _%xdir190673%_
                           (cons _%xpath190672%_ _%pkg-path190637%_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_%path190626%_)
        (path-strip-extension (path-strip-directory _%path190626%_))))
    (define gx#core-module-path->id
      (lambda (_%path190624%_)
        (##string->symbol (gx#core-module-path->namespace _%path190624%_))))
    (define gx#core-resolve-module-path__%
      (lambda (_%stx-path190603%_ _%rel190604%_)
        (let* ((_%path190606%_ (gx#stx-e _%stx-path190603%_))
               (_%path190608%_
                (if (__string-empty? (path-extension _%path190606%_))
                    (##string-append _%path190606%_ '".ss")
                    _%path190606%_)))
          (gx#core-resolve-path__%
           _%path190608%_
           (let ((_%$e190611%_ (gx#stx-source _%stx-path190603%_)))
             (if _%$e190611%_ _%$e190611%_ _%rel190604%_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_%stx-path190617%_)
        (let ((_%rel190619%_ '#f))
          (gx#core-resolve-module-path__% _%stx-path190617%_ _%rel190619%_))))
    (define gx#core-resolve-module-path
      (lambda _g192262_
        (let ((_g192263_ (##length _g192262_)))
          (cond ((##fx= _g192263_ 1)
                 (apply gx#core-resolve-module-path__0 _g192262_))
                ((##fx= _g192263_ 2)
                 (apply gx#core-resolve-module-path__% _g192262_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g192262_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_%libpath190488%_)
        (let* ((_%spath190490%_ (symbol->string (gx#stx-e _%libpath190488%_)))
               (_%spath190492%_
                (substring
                 _%spath190490%_
                 '1
                 (##string-length _%spath190490%_)))
               (_%ext190494%_ (path-extension _%spath190492%_))
               (_%ssi190496%_
                (if (__string-empty? _%ext190494%_)
                    (##string-append _%spath190492%_ '".ssi")
                    (##string-append
                     (path-strip-extension _%spath190492%_)
                     '".ssi")))
               (_%srcs190500%_
                (if (__string-empty? _%ext190494%_)
                    (##map (lambda (_%ext190498%_)
                             (string-append _%spath190492%_ _%ext190498%_))
                           '(".ss" ".sld" ".scm"))
                    (cons _%spath190492%_ '()))))
          (let _%lp190503%_ ((_%rest190505%_ (load-path)))
            (let* ((_%$%rest190506190515%_ _%rest190505%_)
                   (_%$%E190509190519%_
                    (lambda ()
                      (error '"No clause matching"
                             _%$%rest190506190515%_
                             '([dir . rest])
                             '([]))
                      '#!void)))
              (let ((_%$%K190511190590%_
                     (lambda (_%rest190530%_ _%dir190531%_)
                       (letrec ((_%resolve190533%_
                                 (lambda (_%ssi190546%_ _%srcs190547%_)
                                   (let ((_%compiled-path190549%_
                                          (path-expand
                                           _%ssi190546%_
                                           _%dir190531%_)))
                                     (if (##file-exists?
                                          _%compiled-path190549%_)
                                         (path-normalize
                                          _%compiled-path190549%_)
                                         (let _%lpr190551%_ ((_%rest-src190553%_
                                                              _%srcs190547%_))
                                           (let* ((_%$%rest-src190554190562%_
                                                   _%rest-src190553%_)
                                                  (_%$%else190556190570%_
                                                   (lambda ()
                                                     (_%lp190503%_
                                                      _%rest190530%_)))
                                                  (_%$%K190558190578%_
                                                   (lambda (_%rest-src190573%_
                                                            _%src190574%_)
                                                     (let ((_%src-path190576%_
                                                            (path-expand
                                                             _%src190574%_
                                                             _%dir190531%_)))
                                                       (if (##file-exists?
                                                            _%src-path190576%_)
                                                           (path-normalize
                                                            _%src-path190576%_)
                                                           (_%lpr190551%_
                                                            _%rest-src190573%_))))))
                                             (if (pair? _%$%rest-src190554190562%_)
                                                 (let ((_%$%hd190559190581%_
                                                        (##car _%$%rest-src190554190562%_))
                                                       (_%$%tl190560190583%_
                                                        (##cdr _%$%rest-src190554190562%_)))
                                                   (let* ((_%src190586%_
                                                           _%$%hd190559190581%_)
                                                          (_%rest-src190588%_
                                                           _%$%tl190560190583%_))
                                                     (_%$%K190558190578%_
                                                      _%rest-src190588%_
                                                      _%src190586%_)))
                                                 (_%$%else190556190570%_)))))))))
                         (let ((_%$e190535%_
                                (gx#core-library-package-path-prefix
                                 _%dir190531%_)))
                           (if _%$e190535%_
                               (if (string-prefix?
                                    _%$e190535%_
                                    _%spath190492%_)
                                   (let ((_%ssi190542%_
                                          (substring
                                           _%ssi190496%_
                                           (string-length _%$e190535%_)
                                           (##string-length _%ssi190496%_)))
                                         (_%srcs190543%_
                                          (##map (lambda (_%src190540%_)
                                                   (substring
                                                    _%src190540%_
                                                    (string-length
                                                     _%$e190535%_)
                                                    (string-length
                                                     _%src190540%_)))
                                                 _%srcs190500%_)))
                                     (_%resolve190533%_
                                      _%ssi190542%_
                                      _%srcs190543%_))
                                   (_%lp190503%_ _%rest190530%_))
                               (_%resolve190533%_
                                _%ssi190496%_
                                _%srcs190500%_))))))
                    (_%$%K190510190524%_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"cannot find library module"
                        _%libpath190488%_))))
                (let ((_%$%try-match190508190527%_
                       (lambda ()
                         (if (null? _%$%rest190506190515%_)
                             (_%$%K190510190524%_)
                             (_%$%E190509190519%_)))))
                  (if (pair? _%$%rest190506190515%_)
                      (let ((_%$%tl190513190595%_
                             (##cdr _%$%rest190506190515%_))
                            (_%$%hd190512190593%_
                             (##car _%$%rest190506190515%_)))
                        (let ((_%dir190598%_ _%$%hd190512190593%_)
                              (_%rest190600%_ _%$%tl190513190595%_))
                          (_%$%K190511190590%_ _%rest190600%_ _%dir190598%_)))
                      (_%$%try-match190508190527%_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_%modpath190456%_)
        (letrec ((_%resolve190458%_
                  (lambda (_%path190479%_ _%base190480%_)
                    (let ((_%$e190482%_
                           (string-rindex__0 _%base190480%_ '#\/)))
                      (if _%$e190482%_
                          (gx#core-resolve-library-module-path
                           (##string->symbol
                            (string-append
                             '":"
                             (substring _%base190480%_ '0 _%$e190482%_)
                             '"/"
                             _%path190479%_)))
                          (gx#core-resolve-library-module-path
                           (##string->symbol
                            (string-append '":" _%path190479%_))))))))
          (let ((_%spath190460%_ (symbol->string (gx#stx-e _%modpath190456%_)))
                (_%mod190461%_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _%mod190461%_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"cannot resolve relative module path; not in module context"
                 _%modpath190456%_))
            (let ((_%mpath190463%_
                   (symbol->string
                    (##structure-ref
                     _%mod190461%_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _%lp190465%_ ((_%spath190467%_ _%spath190460%_)
                                 (_%mpath190468%_ _%mpath190463%_))
                (if (string-prefix? '"../" _%spath190467%_)
                    (let ((_%$e190471%_
                           (string-rindex__0 _%mpath190468%_ '#\/)))
                      (if _%$e190471%_
                          (_%lp190465%_
                           (substring
                            _%spath190467%_
                            '3
                            (string-length _%spath190467%_))
                           (substring _%mpath190468%_ '0 _%$e190471%_))
                          (gx#raise-syntax-error
                           '#f
                           '"cannot resolve relative module path; illegal traversal"
                           _%modpath190456%_)))
                    (if (string-prefix? '"./" _%spath190467%_)
                        (_%lp190465%_
                         (substring
                          _%spath190467%_
                          '2
                          (string-length _%spath190467%_))
                         _%mpath190468%_)
                        (_%resolve190458%_
                         _%spath190467%_
                         _%mpath190468%_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_%dir190448%_)
        (let ((_%$e190450%_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _%dir190448%_))))
          (if _%$e190450%_
              (##string-append (symbol->string _%$e190450%_) '"/")
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_%dir190418%_ _%exists?190419%_)
        (let ((_%$e190421%_ (__hash-get gx#__module-pkg-cache _%dir190418%_)))
          (if _%$e190421%_
              _%$e190421%_
              (let* ((_%gerbil.pkg190425%_
                      (path-expand '"gerbil.pkg" _%dir190418%_))
                     (_%plist190435%_
                      (if (or _%exists?190419%_
                              (##file-exists? _%gerbil.pkg190425%_))
                          (let ((_%e190430%_
                                 (gx#call-with-input-source-file
                                  _%gerbil.pkg190425%_
                                  read)))
                            (if (eof-object? _%e190430%_)
                                '()
                                (if (list? _%e190430%_)
                                    _%e190430%_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _%gerbil.pkg190425%_
                                     _%e190430%_))))
                          '())))
                (__hash-put!
                 gx#__module-pkg-cache
                 _%dir190418%_
                 _%plist190435%_)
                _%plist190435%_)))))
    (define gx#core-library-package-plist__0
      (lambda (_%dir190441%_)
        (let ((_%exists?190443%_ '#f))
          (gx#core-library-package-plist__% _%dir190441%_ _%exists?190443%_))))
    (define gx#core-library-package-plist
      (lambda _g192264_
        (let ((_g192265_ (##length _g192264_)))
          (cond ((##fx= _g192265_ 1)
                 (apply gx#core-library-package-plist__0 _g192264_))
                ((##fx= _g192265_ 2)
                 (apply gx#core-library-package-plist__% _g192264_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g192264_))))))
    (define gx#core-library-module-path?
      (lambda (_%stx190415%_)
        (gx#core-special-module-path? _%stx190415%_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_%stx190413%_)
        (gx#core-special-module-path? _%stx190413%_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_%stx190408%_ _%char190409%_)
        (if (gx#identifier? _%stx190408%_)
            (if (interned-symbol? (gx#stx-e _%stx190408%_))
                (let ((_%str190411%_
                       (symbol->string (gx#stx-e _%stx190408%_))))
                  (if (##fx> (##string-length _%str190411%_) '1)
                      (eq? (string-ref _%str190411%_ '0) _%char190409%_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_%stx190402%_)
        (gx#core-bound-identifier?__%
         _%stx190402%_
         (lambda (_%$%g190403190405%_)
           (gx#expander-binding?__%
            _%$%g190403190405%_
            gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_%stx190396%_)
        (gx#core-bound-identifier?__%
         _%stx190396%_
         (lambda (_%$%g190397190399%_)
           (gx#expander-binding?__% _%$%g190397190399%_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_%stx190383%_)
        (letrec ((_%module-prelude?190385%_
                  (lambda (_%e190391%_)
                    (let ((_%$e190393%_
                           (##structure-instance-of?
                            _%e190391%_
                            'gx#module-context::t)))
                      (if _%$e190393%_
                          _%$e190393%_
                          (##structure-instance-of?
                           _%e190391%_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _%stx190383%_
           (lambda (_%$%g190386190388%_)
             (gx#expander-binding?__%
              _%$%g190386190388%_
              _%module-prelude?190385%_))))))
    (define gx#core-bind-import!__%
      (lambda (_%in190314%_ _%ctx190315%_ _%force-weak?190316%_)
        (let* ((_%$%in190317190326%_ _%in190314%_)
               (_%$%E190319190329%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%in190317190326%_
                         '((module-import source key phi weak?)))
                  '#!void))
               (_%$%K190320190342%_
                (lambda (_%weak?190332%_
                         _%phi190333%_
                         _%key190334%_
                         _%source190335%_)
                  (gx#core-bind!__%
                   _%key190334%_
                   (let* ((_%e190337%_
                           (gx#core-resolve-module-export _%source190335%_))
                          (__obj192246
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
                      __obj192246
                      (##unchecked-structure-ref _%e190337%_ '1 '#f '#f)
                      _%key190334%_
                      _%phi190333%_
                      _%e190337%_
                      (##unchecked-structure-ref _%source190335%_ '1 '#f '#f)
                      (let ((_%$e190339%_ _%force-weak?190316%_))
                        (if _%$e190339%_ _%$e190339%_ _%weak?190332%_)))
                     __obj192246)
                   gx#core-context-rebind?
                   _%phi190333%_
                   _%ctx190315%_))))
          (if (##structure-direct-instance-of?
               _%$%in190317190326%_
               'gx#module-import::t)
              (let* ((_%$%e190321190345%_
                      (##unchecked-structure-ref
                       _%$%in190317190326%_
                       '1
                       '#f
                       '#f))
                     (_%source190348%_ _%$%e190321190345%_)
                     (_%$%e190322190350%_
                      (##unchecked-structure-ref
                       _%$%in190317190326%_
                       '2
                       '#f
                       '#f))
                     (_%key190353%_ _%$%e190322190350%_)
                     (_%$%e190323190355%_
                      (##unchecked-structure-ref
                       _%$%in190317190326%_
                       '3
                       '#f
                       '#f))
                     (_%phi190358%_ _%$%e190323190355%_)
                     (_%$%e190324190360%_
                      (##unchecked-structure-ref
                       _%$%in190317190326%_
                       '4
                       '#f
                       '#f))
                     (_%weak?190363%_ _%$%e190324190360%_))
                (_%$%K190320190342%_
                 _%weak?190363%_
                 _%phi190358%_
                 _%key190353%_
                 _%source190348%_))
              (_%$%E190319190329%_)))))
    (define gx#core-bind-import!__0
      (lambda (_%in190368%_)
        (let* ((_%ctx190370%_ (gx#current-expander-context))
               (_%force-weak?190372%_ '#f))
          (gx#core-bind-import!__%
           _%in190368%_
           _%ctx190370%_
           _%force-weak?190372%_))))
    (define gx#core-bind-import!__1
      (lambda (_%in190374%_ _%ctx190375%_)
        (let ((_%force-weak?190377%_ '#f))
          (gx#core-bind-import!__%
           _%in190374%_
           _%ctx190375%_
           _%force-weak?190377%_))))
    (define gx#core-bind-import!
      (lambda _g192266_
        (let ((_g192267_ (##length _g192266_)))
          (cond ((##fx= _g192267_ 1) (apply gx#core-bind-import!__0 _g192266_))
                ((##fx= _g192267_ 2) (apply gx#core-bind-import!__1 _g192266_))
                ((##fx= _g192267_ 3) (apply gx#core-bind-import!__% _g192266_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g192266_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_%in190300%_ _%ctx190301%_)
        (gx#core-bind-import!__% _%in190300%_ _%ctx190301%_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_%in190306%_)
        (let ((_%ctx190308%_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _%in190306%_ _%ctx190308%_))))
    (define gx#core-bind-weak-import!
      (lambda _g192268_
        (let ((_g192269_ (##length _g192268_)))
          (cond ((##fx= _g192269_ 1)
                 (apply gx#core-bind-weak-import!__0 _g192268_))
                ((##fx= _g192269_ 2)
                 (apply gx#core-bind-weak-import!__% _g192268_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g192268_))))))
    (define gx#core-resolve-module-export
      (lambda (_%out190193%_)
        (letrec ((_%subst190195%_
                  (lambda (_%key190240%_)
                    (let* ((_%$%key190241190249%_ _%key190240%_)
                           (_%$%else190243190257%_ (lambda () _%key190240%_))
                           (_%$%K190245190287%_
                            (lambda (_%mark190260%_ _%id190261%_)
                              (let* ((_%$%mark190262190268%_ _%mark190260%_)
                                     (_%$%E190264190271%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%$%mark190262190268%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%$%K190265190279%_
                                      (lambda (_%subst190274%_)
                                        (let ((_%$e190276%_
                                               (if _%subst190274%_
                                                   (hash-get
                                                    _%subst190274%_
                                                    _%id190261%_)
                                                   '#f)))
                                          (if _%$e190276%_
                                              _%$e190276%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _%key190240%_))))))
                                (if (##structure-instance-of?
                                     _%$%mark190262190268%_
                                     'gx#expander-mark::t)
                                    (let* ((_%$%e190266190282%_
                                            (##unchecked-structure-ref
                                             _%$%mark190262190268%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst190285%_
                                            _%$%e190266190282%_))
                                      (_%$%K190265190279%_ _%subst190285%_))
                                    (_%$%E190264190271%_))))))
                      (if (pair? _%$%key190241190249%_)
                          (let ((_%$%hd190246190290%_
                                 (##car _%$%key190241190249%_))
                                (_%$%tl190247190292%_
                                 (##cdr _%$%key190241190249%_)))
                            (let* ((_%id190295%_ _%$%hd190246190290%_)
                                   (_%mark190297%_ _%$%tl190247190292%_))
                              (_%$%K190245190287%_
                               _%mark190297%_
                               _%id190295%_)))
                          (_%$%else190243190257%_))))))
          (let* ((_%$%out190196190206%_ _%out190193%_)
                 (_%$%E190198190209%_
                  (lambda ()
                    (error '"No clause matching"
                           _%$%out190196190206%_
                           '((module-export ctx key phi _ _)))
                    '#!void))
                 (_%$%K190199190216%_
                  (lambda (_%phi190212%_ _%key190213%_ _%ctx190214%_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _%ctx190214%_ _%phi190212%_)
                     (_%subst190195%_ _%key190213%_)))))
            (if (##structure-direct-instance-of?
                 _%$%out190196190206%_
                 'gx#module-export::t)
                (let* ((_%$%e190200190219%_
                        (##unchecked-structure-ref
                         _%$%out190196190206%_
                         '1
                         '#f
                         '#f))
                       (_%ctx190222%_ _%$%e190200190219%_)
                       (_%$%e190201190224%_
                        (##unchecked-structure-ref
                         _%$%out190196190206%_
                         '2
                         '#f
                         '#f))
                       (_%key190227%_ _%$%e190201190224%_)
                       (_%$%e190202190229%_
                        (##unchecked-structure-ref
                         _%$%out190196190206%_
                         '3
                         '#f
                         '#f))
                       (_%phi190232%_ _%$%e190202190229%_)
                       (_%$%e190203190234%_
                        (##unchecked-structure-ref
                         _%$%out190196190206%_
                         '4
                         '#f
                         '#f))
                       (_%$%e190204190237%_
                        (##unchecked-structure-ref
                         _%$%out190196190206%_
                         '5
                         '#f
                         '#f)))
                  (_%$%K190199190216%_
                   _%phi190232%_
                   _%key190227%_
                   _%ctx190222%_))
                (_%$%E190198190209%_))))))
    (define gx#core-module-export->import__%
      (lambda (_%out190119%_ _%rename190120%_ _%dphi190121%_)
        (let* ((_%$%out190122190132%_ _%out190119%_)
               (_%$%E190124190135%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%out190122190132%_
                         '((module-export ctx key phi name weak?)))
                  '#!void))
               (_%$%K190125190147%_
                (lambda (_%weak?190138%_
                         _%name190139%_
                         _%phi190140%_
                         _%key190141%_
                         _%ctx190142%_)
                  (##structure
                   gx#module-import::t
                   _%out190119%_
                   (let ((_%$e190144%_ _%rename190120%_))
                     (if _%$e190144%_ _%$e190144%_ _%name190139%_))
                   (fx+ _%phi190140%_ _%dphi190121%_)
                   _%weak?190138%_))))
          (if (##structure-direct-instance-of?
               _%$%out190122190132%_
               'gx#module-export::t)
              (let* ((_%$%e190126190150%_
                      (##unchecked-structure-ref
                       _%$%out190122190132%_
                       '1
                       '#f
                       '#f))
                     (_%ctx190153%_ _%$%e190126190150%_)
                     (_%$%e190127190155%_
                      (##unchecked-structure-ref
                       _%$%out190122190132%_
                       '2
                       '#f
                       '#f))
                     (_%key190158%_ _%$%e190127190155%_)
                     (_%$%e190128190160%_
                      (##unchecked-structure-ref
                       _%$%out190122190132%_
                       '3
                       '#f
                       '#f))
                     (_%phi190163%_ _%$%e190128190160%_)
                     (_%$%e190129190165%_
                      (##unchecked-structure-ref
                       _%$%out190122190132%_
                       '4
                       '#f
                       '#f))
                     (_%name190168%_ _%$%e190129190165%_)
                     (_%$%e190130190170%_
                      (##unchecked-structure-ref
                       _%$%out190122190132%_
                       '5
                       '#f
                       '#f))
                     (_%weak?190173%_ _%$%e190130190170%_))
                (_%$%K190125190147%_
                 _%weak?190173%_
                 _%name190168%_
                 _%phi190163%_
                 _%key190158%_
                 _%ctx190153%_))
              (_%$%E190124190135%_)))))
    (define gx#core-module-export->import__0
      (lambda (_%out190178%_)
        (let* ((_%rename190180%_ '#f) (_%dphi190182%_ '0))
          (gx#core-module-export->import__%
           _%out190178%_
           _%rename190180%_
           _%dphi190182%_))))
    (define gx#core-module-export->import__1
      (lambda (_%out190184%_ _%rename190185%_)
        (let ((_%dphi190187%_ '0))
          (gx#core-module-export->import__%
           _%out190184%_
           _%rename190185%_
           _%dphi190187%_))))
    (define gx#core-module-export->import
      (lambda _g192270_
        (let ((_g192271_ (##length _g192270_)))
          (cond ((##fx= _g192271_ 1)
                 (apply gx#core-module-export->import__0 _g192270_))
                ((##fx= _g192271_ 2)
                 (apply gx#core-module-export->import__1 _g192270_))
                ((##fx= _g192271_ 3)
                 (apply gx#core-module-export->import__% _g192270_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g192270_))))))
    (define gx#core-expand-module%
      (lambda (_%stx190018%_)
        (letrec ((_%make-context190020%_
                  (lambda (_%id190097%_)
                    (let* ((_%super190099%_ (gx#current-expander-context))
                           (_%bind-id190101%_ (gx#stx-e _%id190097%_))
                           (_%mod-id190103%_
                            (if (##structure-instance-of?
                                 _%super190099%_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##unchecked-structure-ref
                                  _%super190099%_
                                  '1
                                  '#f
                                  '#f)
                                 '"~"
                                 _%bind-id190101%_)
                                _%bind-id190101%_))
                           (_%ns190105%_ (symbol->string _%mod-id190103%_))
                           (_%path190115%_
                            (if (##structure-instance-of?
                                 _%super190099%_
                                 'gx#module-context::t)
                                (let ((_%path190107%_
                                       (##unchecked-structure-ref
                                        _%super190099%_
                                        '7
                                        '#f
                                        '#f)))
                                  (if (or (pair? _%path190107%_)
                                          (null? _%path190107%_))
                                      (cons _%bind-id190101%_ _%path190107%_)
                                      (if (not _%path190107%_)
                                          _%bind-id190101%_
                                          (cons _%bind-id190101%_
                                                (cons _%path190107%_ '())))))
                                _%bind-id190101%_))
                           (__obj192247
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
                       __obj192247
                       _%mod-id190103%_
                       _%super190099%_
                       _%ns190105%_
                       _%path190115%_)
                      __obj192247)))
                 (_%valid-module-id?190021%_
                  (lambda (_%id190072%_)
                    (let* ((_%str190074%_ (symbol->string _%id190072%_))
                           (_%len190076%_ (##string-length _%str190074%_)))
                      (if (##fx>= _%len190076%_ '1)
                          (let _%loop190079%_ ((_%index190081%_
                                                (##fx- (##string-length
                                                        _%str190074%_)
                                                       '1)))
                            (if (##fx>= _%index190081%_ '0)
                                (let ((_%c190083%_
                                       (string-ref
                                        _%str190074%_
                                        _%index190081%_)))
                                  (if (or (and (##char>=? _%c190083%_ '#\a)
                                               (##char<=? _%c190083%_ '#\z))
                                          (and (##char>=? _%c190083%_ '#\A)
                                               (##char<=? _%c190083%_ '#\Z))
                                          (and (##char>=? _%c190083%_ '#\0)
                                               (##char<=? _%c190083%_ '#\9))
                                          (##char=? _%c190083%_ '#\_)
                                          (##char=? _%c190083%_ '#\-))
                                      (_%loop190079%_
                                       (##fx- _%index190081%_ '1))
                                      '#f))
                                '#t))
                          '#f)))))
          (let* ((_%$%e190022190032%_ _%stx190018%_)
                 (_%$%E190024190036%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%$%e190022190032%_)))
                 (_%$%E190023190068%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e190022190032%_)
                        (let ((_%$%e190025190040%_
                               (gx#syntax-e _%$%e190022190032%_)))
                          (let ((_%$%hd190026190043%_
                                 (##car _%$%e190025190040%_))
                                (_%$%tl190027190045%_
                                 (##cdr _%$%e190025190040%_)))
                            (if (gx#stx-pair? _%$%tl190027190045%_)
                                (let ((_%$%e190028190048%_
                                       (gx#syntax-e _%$%tl190027190045%_)))
                                  (let ((_%$%hd190029190051%_
                                         (##car _%$%e190028190048%_))
                                        (_%$%tl190030190053%_
                                         (##cdr _%$%e190028190048%_)))
                                    (let* ((_%id190056%_ _%$%hd190029190051%_)
                                           (_%body190058%_
                                            _%$%tl190030190053%_))
                                      (if (and (gx#identifier? _%id190056%_)
                                               (gx#stx-list? _%body190058%_))
                                          (if (_%valid-module-id?190021%_
                                               (gx#stx-e
                                                (gx#datum->syntax__0 '#f 'id)))
                                              (let* ((_%ctx190060%_
                                                      (_%make-context190020%_
                                                       _%id190056%_))
                                                     (_%body190062%_
                                                      (gx#core-expand-module-begin
                                                       _%body190058%_
                                                       _%ctx190060%_))
                                                     (_%body190064%_
                                                      (gx#core-quote-syntax__1
                                                       (gx#core-cons
                                                        '%#begin
                                                        _%body190062%_)
                                                       (gx#stx-source
                                                        _%stx190018%_))))
                                                (##unchecked-structure-set!
                                                 _%ctx190060%_
                                                 (__make-atomic-promise
                                                  (lambda ()
                                                    (gx#eval-syntax*
                                                     _%body190064%_)))
                                                 '10
                                                 '#f
                                                 '#f)
                                                (##unchecked-structure-set!
                                                 _%ctx190060%_
                                                 _%body190064%_
                                                 '11
                                                 '#f
                                                 '#f)
                                                (gx#core-bind-syntax!__0
                                                 _%id190056%_
                                                 _%ctx190060%_)
                                                (gx#core-quote-syntax__1
                                                 (gx#core-list
                                                  '%#module
                                                  (gx#core-quote-syntax__0
                                                   _%id190056%_)
                                                  _%body190064%_)
                                                 (gx#stx-source
                                                  _%stx190018%_)))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"invalid module id; allowed characters are A-Z,a-z,0-9,_,-"
                                               _%stx190018%_
                                               (gx#datum->syntax__0 '#f 'id)))
                                          (_%$%E190024190036%_)))))
                                (_%$%E190024190036%_))))
                        (_%$%E190024190036%_)))))
            (_%$%E190023190068%_)))))
    (define gx#core-expand-module-begin
      (lambda (_%body189983%_ _%ctx189984%_)
        (call-with-parameters__1
         (lambda ()
           (call-with-parameters__1
            (lambda ()
              (gx#core-bind-feature!__1 'gerbil-module '#t)
              (let* ((_%stx189988%_
                      (gx#core-expand-head
                       (cons '%%begin-module _%body189983%_)))
                     (_%$%e189989189996%_ _%stx189988%_)
                     (_%$%E189991190000%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module body expansion"
                         _%stx189988%_)))
                     (_%$%E189990190014%_
                      (lambda ()
                        (if (gx#stx-pair? _%$%e189989189996%_)
                            (let ((_%$%e189992190004%_
                                   (gx#syntax-e _%$%e189989189996%_)))
                              (let ((_%$%hd189993190007%_
                                     (##car _%$%e189992190004%_))
                                    (_%$%tl189994190009%_
                                     (##cdr _%$%e189992190004%_)))
                                (if (and (gx#identifier? _%$%hd189993190007%_)
                                         (gx#core-identifier=?
                                          _%$%hd189993190007%_
                                          '%#begin-module))
                                    (let ((_%body190012%_
                                           _%$%tl189994190009%_))
                                      (if (gx#sealed-syntax? _%stx189988%_)
                                          _%body190012%_
                                          (gx#core-expand-module-body
                                           _%body190012%_)))
                                    (_%$%E189991190000%_))))
                            (_%$%E189991190000%_)))))
                (_%$%E189990190014%_)))
            gx#current-expander-phi
            '0))
         gx#current-expander-context
         _%ctx189984%_)))
    (define gx#core-expand-module-body
      (lambda (_%body189680%_)
        (letrec ((_%expand-special189682%_
                  (lambda (_%hd189811%_ _%K189812%_ _%rest189813%_ _%r189814%_)
                    (let* ((_%$%e189815189855%_ _%hd189811%_)
                           (_%$%E189850189859%_
                            (lambda ()
                              (_%K189812%_
                               _%rest189813%_
                               (cons (gx#core-expand-top _%hd189811%_)
                                     _%r189814%_))))
                           (_%$%E189837189871%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e189815189855%_)
                                  (let ((_%$%e189851189863%_
                                         (gx#syntax-e _%$%e189815189855%_)))
                                    (let ((_%$%hd189852189866%_
                                           (##car _%$%e189851189863%_))
                                          (_%$%tl189853189868%_
                                           (##cdr _%$%e189851189863%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd189852189866%_)
                                               (gx#core-identifier=?
                                                _%$%hd189852189866%_
                                                '%#export))
                                          (_%K189812%_
                                           _%rest189813%_
                                           (cons _%hd189811%_ _%r189814%_))
                                          (_%$%E189850189859%_))))
                                  (_%$%E189850189859%_))))
                           (_%$%E189827189913%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e189815189855%_)
                                  (let ((_%$%e189838189875%_
                                         (gx#syntax-e _%$%e189815189855%_)))
                                    (let ((_%$%hd189839189878%_
                                           (##car _%$%e189838189875%_))
                                          (_%$%tl189840189880%_
                                           (##cdr _%$%e189838189875%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd189839189878%_)
                                               (gx#core-identifier=?
                                                _%$%hd189839189878%_
                                                '%#bind-runtime-properties!))
                                          (if (gx#stx-pair?
                                               _%$%tl189840189880%_)
                                              (let ((_%$%e189841189883%_
                                                     (gx#syntax-e
                                                      _%$%tl189840189880%_)))
                                                (let ((_%$%hd189842189886%_
                                                       (##car _%$%e189841189883%_))
                                                      (_%$%tl189843189888%_
                                                       (##cdr _%$%e189841189883%_)))
                                                  (if (gx#stx-pair?
                                                       _%$%hd189842189886%_)
                                                      (let ((_%$%e189847189891%_
                                                             (gx#syntax-e
                                                              _%$%hd189842189886%_)))
                                                        (let ((_%$%hd189848189894%_
                                                               (##car _%$%e189847189891%_))
                                                              (_%$%tl189849189896%_
                                                               (##cdr _%$%e189847189891%_)))
                                                          (let ((_%id189899%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%hd189848189894%_))
                    (if (gx#stx-null? _%$%tl189849189896%_)
                        (if (gx#stx-pair? _%$%tl189843189888%_)
                            (let ((_%$%e189844189901%_
                                   (gx#syntax-e _%$%tl189843189888%_)))
                              (let ((_%$%hd189845189904%_
                                     (##car _%$%e189844189901%_))
                                    (_%$%tl189846189906%_
                                     (##cdr _%$%e189844189901%_)))
                                (let ((_%props189909%_ _%$%hd189845189904%_))
                                  (if (gx#stx-null? _%$%tl189846189906%_)
                                      (let ((_%bind189911%_
                                             (gx#resolve-identifier__0
                                              _%id189899%_)))
                                        (gx#core-bind-runtime-properties!
                                         _%bind189911%_
                                         _%props189909%_)
                                        (_%K189812%_
                                         _%rest189813%_
                                         _%r189814%_))
                                      (_%$%E189837189871%_)))))
                            (_%$%E189837189871%_))
                        (_%$%E189837189871%_)))))
              (_%$%E189837189871%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E189837189871%_))
                                          (_%$%E189837189871%_))))
                                  (_%$%E189837189871%_))))
                           (_%$%E189817189945%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e189815189855%_)
                                  (let ((_%$%e189828189917%_
                                         (gx#syntax-e _%$%e189815189855%_)))
                                    (let ((_%$%hd189829189920%_
                                           (##car _%$%e189828189917%_))
                                          (_%$%tl189830189922%_
                                           (##cdr _%$%e189828189917%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd189829189920%_)
                                               (gx#core-identifier=?
                                                _%$%hd189829189920%_
                                                '%#define-values))
                                          (if (gx#stx-pair?
                                               _%$%tl189830189922%_)
                                              (let ((_%$%e189831189925%_
                                                     (gx#syntax-e
                                                      _%$%tl189830189922%_)))
                                                (let ((_%$%hd189832189928%_
                                                       (##car _%$%e189831189925%_))
                                                      (_%$%tl189833189930%_
                                                       (##cdr _%$%e189831189925%_)))
                                                  (let ((_%hd-bind189933%_
                                                         _%$%hd189832189928%_))
                                                    (if (gx#stx-pair?
                                                         _%$%tl189833189930%_)
                                                        (let ((_%$%e189834189935%_
                                                               (gx#syntax-e
                                                                _%$%tl189833189930%_)))
                                                          (let ((_%$%hd189835189938%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%$%e189834189935%_))
                        (_%$%tl189836189940%_ (##cdr _%$%e189834189935%_)))
                    (let ((_%expr189943%_ _%$%hd189835189938%_))
                      (if (gx#stx-null? _%$%tl189836189940%_)
                          (if (gx#core-bind-values? _%hd-bind189933%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind189933%_)
                                (_%K189812%_
                                 _%rest189813%_
                                 (cons _%hd189811%_ _%r189814%_)))
                              (_%$%E189827189913%_))
                          (_%$%E189827189913%_)))))
                (_%$%E189827189913%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E189827189913%_))
                                          (_%$%E189827189913%_))))
                                  (_%$%E189827189913%_))))
                           (_%$%E189816189979%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e189815189855%_)
                                  (let ((_%$%e189818189949%_
                                         (gx#syntax-e _%$%e189815189855%_)))
                                    (let ((_%$%hd189819189952%_
                                           (##car _%$%e189818189949%_))
                                          (_%$%tl189820189954%_
                                           (##cdr _%$%e189818189949%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd189819189952%_)
                                               (gx#core-identifier=?
                                                _%$%hd189819189952%_
                                                '%#define-values))
                                          (if (gx#stx-pair?
                                               _%$%tl189820189954%_)
                                              (let ((_%$%e189821189957%_
                                                     (gx#syntax-e
                                                      _%$%tl189820189954%_)))
                                                (let ((_%$%hd189822189960%_
                                                       (##car _%$%e189821189957%_))
                                                      (_%$%tl189823189962%_
                                                       (##cdr _%$%e189821189957%_)))
                                                  (let ((_%hd-bind189965%_
                                                         _%$%hd189822189960%_))
                                                    (if (gx#stx-pair?
                                                         _%$%tl189823189962%_)
                                                        (let ((_%$%e189824189967%_
                                                               (gx#syntax-e
                                                                _%$%tl189823189962%_)))
                                                          (let ((_%$%hd189825189970%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%$%e189824189967%_))
                        (_%$%tl189826189972%_ (##cdr _%$%e189824189967%_)))
                    (let* ((_%expr189975%_ _%$%hd189825189970%_)
                           (_%props189977%_ _%$%tl189826189972%_))
                      (if (and (gx#core-bind-values? _%hd-bind189965%_)
                               (gx#stx-list? _%props189977%_)
                               (not (gx#stx-null? _%props189977%_)))
                          (begin
                            (gx#core-bind-values!__0 _%hd-bind189965%_)
                            (_%K189812%_
                             (cons (gx#core-cons
                                    '%#bind-runtime-properties!
                                    (cons _%hd-bind189965%_
                                          (cons _%props189977%_ '())))
                                   _%rest189813%_)
                             (cons (gx#core-cons
                                    '%#define-values
                                    (cons _%hd-bind189965%_
                                          (cons _%expr189975%_ '())))
                                   _%r189814%_)))
                          (_%$%E189817189945%_)))))
                (_%$%E189817189945%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E189817189945%_))
                                          (_%$%E189817189945%_))))
                                  (_%$%E189817189945%_)))))
                      (_%$%E189816189979%_))))
                 (_%expand-body189683%_
                  (lambda (_%rbody189685%_)
                    (let _%lp189687%_ ((_%rest189689%_ _%rbody189685%_)
                                       (_%body189690%_ '()))
                      (let* ((_%$%rest189691189699%_ _%rest189689%_)
                             (_%$%else189693189707%_
                              (lambda () _%body189690%_))
                             (_%$%K189695189799%_
                              (lambda (_%rest189710%_ _%hd189711%_)
                                (let* ((_%$%e189712189733%_ _%hd189711%_)
                                       (_%$%E189728189737%_
                                        (lambda ()
                                          (_%lp189687%_
                                           _%rest189710%_
                                           (cons (gx#core-expand-expression
                                                  _%hd189711%_)
                                                 _%body189690%_))))
                                       (_%$%E189724189751%_
                                        (lambda ()
                                          (if (gx#stx-pair?
                                               _%$%e189712189733%_)
                                              (let ((_%$%e189729189741%_
                                                     (gx#syntax-e
                                                      _%$%e189712189733%_)))
                                                (let ((_%$%hd189730189744%_
                                                       (##car _%$%e189729189741%_))
                                                      (_%$%tl189731189746%_
                                                       (##cdr _%$%e189729189741%_)))
                                                  (let ((_%form189749%_
                                                         _%$%hd189730189744%_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _%form189749%_
                                                         gx#special-form-binding?)
                                                        (_%lp189687%_
                                                         _%rest189710%_
                                                         (cons _%hd189711%_
                                                               _%body189690%_))
                                                        (_%$%E189728189737%_)))))
                                              (_%$%E189728189737%_))))
                                       (_%$%E189714189763%_
                                        (lambda ()
                                          (if (gx#stx-pair?
                                               _%$%e189712189733%_)
                                              (let ((_%$%e189725189755%_
                                                     (gx#syntax-e
                                                      _%$%e189712189733%_)))
                                                (let ((_%$%hd189726189758%_
                                                       (##car _%$%e189725189755%_))
                                                      (_%$%tl189727189760%_
                                                       (##cdr _%$%e189725189755%_)))
                                                  (if (and (gx#identifier?
                                                            _%$%hd189726189758%_)
                                                           (gx#core-identifier=?
                                                            _%$%hd189726189758%_
                                                            '%#export))
                                                      (_%lp189687%_
                                                       _%rest189710%_
                                                       (cons (gx#core-expand-export%__0
                                                              _%hd189711%_)
                                                             _%body189690%_))
                                                      (_%$%E189724189751%_))))
                                              (_%$%E189724189751%_))))
                                       (_%$%E189713189795%_
                                        (lambda ()
                                          (if (gx#stx-pair?
                                               _%$%e189712189733%_)
                                              (let ((_%$%e189715189767%_
                                                     (gx#syntax-e
                                                      _%$%e189712189733%_)))
                                                (let ((_%$%hd189716189770%_
                                                       (##car _%$%e189715189767%_))
                                                      (_%$%tl189717189772%_
                                                       (##cdr _%$%e189715189767%_)))
                                                  (if (and (gx#identifier?
                                                            _%$%hd189716189770%_)
                                                           (gx#core-identifier=?
                                                            _%$%hd189716189770%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%$%tl189717189772%_)
                                                          (let ((_%$%e189718189775%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl189717189772%_)))
                    (let ((_%$%hd189719189778%_ (##car _%$%e189718189775%_))
                          (_%$%tl189720189780%_ (##cdr _%$%e189718189775%_)))
                      (let ((_%hd-bind189783%_ _%$%hd189719189778%_))
                        (if (gx#stx-pair? _%$%tl189720189780%_)
                            (let ((_%$%e189721189785%_
                                   (gx#syntax-e _%$%tl189720189780%_)))
                              (let ((_%$%hd189722189788%_
                                     (##car _%$%e189721189785%_))
                                    (_%$%tl189723189790%_
                                     (##cdr _%$%e189721189785%_)))
                                (let ((_%expr189793%_ _%$%hd189722189788%_))
                                  (if (gx#stx-null? _%$%tl189723189790%_)
                                      (_%lp189687%_
                                       _%rest189710%_
                                       (cons (gx#core-quote-syntax__1
                                              (gx#core-list
                                               '%#define-values
                                               (gx#core-quote-bind-values
                                                _%hd-bind189783%_)
                                               (gx#core-expand-expression
                                                _%expr189793%_))
                                              (gx#stx-source _%hd189711%_))
                                             _%body189690%_))
                                      (_%$%E189714189763%_)))))
                            (_%$%E189714189763%_)))))
                  (_%$%E189714189763%_))
              (_%$%E189714189763%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E189714189763%_)))))
                                  (_%$%E189713189795%_)))))
                        (if (pair? _%$%rest189691189699%_)
                            (let ((_%$%hd189696189802%_
                                   (##car _%$%rest189691189699%_))
                                  (_%$%tl189697189804%_
                                   (##cdr _%$%rest189691189699%_)))
                              (let* ((_%hd189807%_ _%$%hd189696189802%_)
                                     (_%rest189809%_ _%$%tl189697189804%_))
                                (_%$%K189695189799%_
                                 _%rest189809%_
                                 _%hd189807%_)))
                            (_%$%else189693189707%_)))))))
          (_%expand-body189683%_
           (gx#core-expand-block__%
            (cons '%#begin-module _%body189680%_)
            _%expand-special189682%_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_%stx189521%_
               _%expanded?189522%_
               _%method189523%_
               _%current-phi189524%_
               _%expand1189525%_)
        (letrec ((_%K189527%_
                  (lambda (_%rest189647%_ _%r189648%_)
                    (let* ((_%$%e189649189656%_ _%rest189647%_)
                           (_%$%E189651189660%_ (lambda () _%r189648%_))
                           (_%$%E189650189676%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e189649189656%_)
                                  (let ((_%$%e189652189664%_
                                         (gx#syntax-e _%$%e189649189656%_)))
                                    (let ((_%$%hd189653189667%_
                                           (##car _%$%e189652189664%_))
                                          (_%$%tl189654189669%_
                                           (##cdr _%$%e189652189664%_)))
                                      (let* ((_%hd189672%_
                                              _%$%hd189653189667%_)
                                             (_%rest189674%_
                                              _%$%tl189654189669%_))
                                        (_%step189528%_
                                         _%hd189672%_
                                         _%rest189674%_
                                         _%r189648%_))))
                                  (_%$%E189651189660%_)))))
                      (_%$%E189650189676%_))))
                 (_%step189528%_
                  (lambda (_%hd189561%_ _%rest189562%_ _%r189563%_)
                    (let* ((_%$%e189564189582%_ _%hd189561%_)
                           (_%$%E189577189586%_
                            (lambda ()
                              (if (_%expanded?189522%_ (gx#stx-e _%hd189561%_))
                                  (_%K189527%_
                                   _%rest189562%_
                                   (cons (gx#stx-e _%hd189561%_) _%r189563%_))
                                  (_%expand1189525%_
                                   _%hd189561%_
                                   _%K189527%_
                                   _%rest189562%_
                                   _%r189563%_))))
                           (_%$%E189573189602%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e189564189582%_)
                                  (let ((_%$%e189578189590%_
                                         (gx#syntax-e _%$%e189564189582%_)))
                                    (let ((_%$%hd189579189593%_
                                           (##car _%$%e189578189590%_))
                                          (_%$%tl189580189595%_
                                           (##cdr _%$%e189578189590%_)))
                                      (let* ((_%macro189598%_
                                              _%$%hd189579189593%_)
                                             (_%body189600%_
                                              _%$%tl189580189595%_))
                                        (if (gx#core-bound-identifier?__%
                                             _%macro189598%_
                                             gx#syntax-binding?)
                                            (_%K189527%_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _%macro189598%_)
                                                    _%hd189561%_
                                                    _%method189523%_)
                                                   _%rest189562%_)
                                             _%r189563%_)
                                            (_%$%E189577189586%_)))))
                                  (_%$%E189577189586%_))))
                           (_%$%E189566189616%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e189564189582%_)
                                  (let ((_%$%e189574189606%_
                                         (gx#syntax-e _%$%e189564189582%_)))
                                    (let ((_%$%hd189575189609%_
                                           (##car _%$%e189574189606%_))
                                          (_%$%tl189576189611%_
                                           (##cdr _%$%e189574189606%_)))
                                      (if (eq? (gx#stx-e _%$%hd189575189609%_)
                                               'begin:)
                                          (let ((_%body189614%_
                                                 _%$%tl189576189611%_))
                                            (_%K189527%_
                                             (gx#stx-foldr
                                              cons
                                              _%rest189562%_
                                              _%body189614%_)
                                             _%r189563%_))
                                          (_%$%E189573189602%_))))
                                  (_%$%E189573189602%_))))
                           (_%$%E189565189643%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e189564189582%_)
                                  (let ((_%$%e189567189620%_
                                         (gx#syntax-e _%$%e189564189582%_)))
                                    (let ((_%$%hd189568189623%_
                                           (##car _%$%e189567189620%_))
                                          (_%$%tl189569189625%_
                                           (##cdr _%$%e189567189620%_)))
                                      (if (eq? (gx#stx-e _%$%hd189568189623%_)
                                               'phi:)
                                          (if (gx#stx-pair?
                                               _%$%tl189569189625%_)
                                              (let ((_%$%e189570189628%_
                                                     (gx#syntax-e
                                                      _%$%tl189569189625%_)))
                                                (let ((_%$%hd189571189631%_
                                                       (##car _%$%e189570189628%_))
                                                      (_%$%tl189572189633%_
                                                       (##cdr _%$%e189570189628%_)))
                                                  (let* ((_%dphi189636%_
                                                          _%$%hd189571189631%_)
                                                         (_%body189638%_
                                                          _%$%tl189572189633%_))
                                                    (if (gx#stx-fixnum?
                                                         _%dphi189636%_)
                                                        (let ((_%rbody189641%_
                                                               (call-with-parameters__1
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%K189527%_ _%body189638%_ '()))
                        _%current-phi189524%_
                        (fx+ (gx#stx-e _%dphi189636%_)
                             (_%current-phi189524%_)))))
                  (_%K189527%_
                   _%rest189562%_
                   (foldr__0 cons _%r189563%_ _%rbody189641%_)))
                (_%$%E189566189616%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E189566189616%_))
                                          (_%$%E189566189616%_))))
                                  (_%$%E189566189616%_)))))
                      (_%$%E189565189643%_)))))
          (let* ((_%$%e189529189536%_ _%stx189521%_)
                 (_%$%E189531189540%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%$%e189529189536%_)))
                 (_%$%E189530189557%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e189529189536%_)
                        (let ((_%$%e189532189544%_
                               (gx#syntax-e _%$%e189529189536%_)))
                          (let ((_%$%hd189533189547%_
                                 (##car _%$%e189532189544%_))
                                (_%$%tl189534189549%_
                                 (##cdr _%$%e189532189544%_)))
                            (let ((_%body189552%_ _%$%tl189534189549%_))
                              (if (_%current-phi189524%_)
                                  (_%K189527%_ _%body189552%_ '())
                                  (call-with-parameters__1
                                   (lambda () (_%K189527%_ _%body189552%_ '()))
                                   _%current-phi189524%_
                                   (gx#current-expander-phi))))))
                        (_%$%E189531189540%_)))))
            (_%$%E189530189557%_)))))
    (define gx#core-expand-import%__%
      (lambda (_%stx189175%_ _%internal-expand?189176%_)
        (letrec ((_%expand1189178%_
                  (lambda (_%hd189493%_ _%K189494%_ _%rest189495%_ _%r189496%_)
                    (if (gx#core-bound-module? _%hd189493%_)
                        (_%import1189179%_
                         (gx#syntax-local-e__0 _%hd189493%_)
                         _%K189494%_
                         _%rest189495%_
                         _%r189496%_)
                        (if (gx#core-library-module-path? _%hd189493%_)
                            (_%import1189179%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%hd189493%_))
                             _%K189494%_
                             _%rest189495%_
                             _%r189496%_)
                            (if (gx#core-library-relative-module-path?
                                 _%hd189493%_)
                                (_%import1189179%_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _%hd189493%_))
                                 _%K189494%_
                                 _%rest189495%_
                                 _%r189496%_)
                                (let ((_%e189502%_ (gx#stx-e _%hd189493%_)))
                                  (if (pair? _%e189502%_)
                                      (let ((_%$e189505%_
                                             (gx#stx-e (##car _%e189502%_))))
                                        (if (eq? 'spec: _%$e189505%_)
                                            (_%import-spec189182%_
                                             _%hd189493%_
                                             _%K189494%_
                                             _%rest189495%_
                                             _%r189496%_)
                                            (if (eq? 'in: _%$e189505%_)
                                                (_%import-submodule189180%_
                                                 _%hd189493%_
                                                 _%K189494%_
                                                 _%rest189495%_
                                                 _%r189496%_)
                                                (if (eq? 'runtime:
                                                         _%$e189505%_)
                                                    (_%import-runtime189181%_
                                                     _%hd189493%_
                                                     _%K189494%_
                                                     _%rest189495%_
                                                     _%r189496%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _%stx189175%_
                                                     _%hd189493%_)))))
                                      (if (string? _%e189502%_)
                                          (_%import1189179%_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _%hd189493%_
                                             (gx#stx-source _%stx189175%_)))
                                           _%K189494%_
                                           _%rest189495%_
                                           _%r189496%_)
                                          (if (##structure-instance-of?
                                               _%e189502%_
                                               'gx#module-context::t)
                                              (_%K189494%_
                                               _%rest189495%_
                                               (cons _%e189502%_ _%r189496%_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _%stx189175%_
                                               _%hd189493%_))))))))))
                 (_%import1189179%_
                  (lambda (_%ctx189482%_
                           _%K189483%_
                           _%rest189484%_
                           _%r189485%_)
                    (let ((_%dphi189487%_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_%K189483%_
                       _%rest189484%_
                       (cons (##structure
                              gx#import-set::t
                              _%ctx189482%_
                              _%dphi189487%_
                              (map (lambda (_%$%g189488189490%_)
                                     (gx#core-module-export->import__%
                                      _%$%g189488189490%_
                                      '#f
                                      _%dphi189487%_))
                                   (##unchecked-structure-ref
                                    _%ctx189482%_
                                    '9
                                    '#f
                                    '#f)))
                             _%r189485%_)))))
                 (_%import-submodule189180%_
                  (lambda (_%hd189449%_ _%K189450%_ _%rest189451%_ _%r189452%_)
                    (let* ((_%$%e189453189460%_ _%hd189449%_)
                           (_%$%E189455189464%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%$%e189453189460%_)))
                           (_%$%E189454189478%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e189453189460%_)
                                  (let ((_%$%e189456189468%_
                                         (gx#syntax-e _%$%e189453189460%_)))
                                    (let ((_%$%hd189457189471%_
                                           (##car _%$%e189456189468%_))
                                          (_%$%tl189458189473%_
                                           (##cdr _%$%e189456189468%_)))
                                      (let ((_%spath189476%_
                                             _%$%tl189458189473%_))
                                        (_%import1189179%_
                                         (_%import-spec-source189183%_
                                          _%spath189476%_)
                                         _%K189450%_
                                         _%rest189451%_
                                         _%r189452%_))))
                                  (_%$%E189455189464%_)))))
                      (_%$%E189454189478%_))))
                 (_%import-runtime189181%_
                  (lambda (_%hd189416%_ _%K189417%_ _%rest189418%_ _%r189419%_)
                    (let* ((_%$%e189420189427%_ _%hd189416%_)
                           (_%$%E189422189431%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%$%e189420189427%_)))
                           (_%$%E189421189445%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e189420189427%_)
                                  (let ((_%$%e189423189435%_
                                         (gx#syntax-e _%$%e189420189427%_)))
                                    (let ((_%$%hd189424189438%_
                                           (##car _%$%e189423189435%_))
                                          (_%$%tl189425189440%_
                                           (##cdr _%$%e189423189435%_)))
                                      (let ((_%spath189443%_
                                             _%$%tl189425189440%_))
                                        (_%K189417%_
                                         _%rest189418%_
                                         (cons (_%import-spec-source189183%_
                                                _%spath189443%_)
                                               _%r189419%_)))))
                                  (_%$%E189422189431%_)))))
                      (_%$%E189421189445%_))))
                 (_%import-spec189182%_
                  (lambda (_%hd189254%_ _%K189255%_ _%rest189256%_ _%r189257%_)
                    (let* ((_%$%e189258189275%_ _%hd189254%_)
                           (_%$%E189267189279%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%$%e189258189275%_)))
                           (_%$%E189260189390%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e189258189275%_)
                                  (let ((_%$%e189268189283%_
                                         (gx#syntax-e _%$%e189258189275%_)))
                                    (let ((_%$%hd189269189286%_
                                           (##car _%$%e189268189283%_))
                                          (_%$%tl189270189288%_
                                           (##cdr _%$%e189268189283%_)))
                                      (if (gx#stx-pair? _%$%tl189270189288%_)
                                          (let ((_%$%e189271189291%_
                                                 (gx#syntax-e
                                                  _%$%tl189270189288%_)))
                                            (let ((_%$%hd189272189294%_
                                                   (##car _%$%e189271189291%_))
                                                  (_%$%tl189273189296%_
                                                   (##cdr _%$%e189271189291%_)))
                                              (let* ((_%path189299%_
                                                      _%$%hd189272189294%_)
                                                     (_%specs189301%_
                                                      _%$%tl189273189296%_))
                                                (let ((_%src-ctx189303%_
                                                       (_%import-spec-source189183%_
                                                        _%path189299%_))
                                                      (_%exports189304%_
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
                                                      (_%specs189305%_
                                                       (gx#syntax->list
                                                        _%specs189301%_)))
                                                  (for-each
                                                   (lambda (_%out189307%_)
                                                     (__hash-put!
                                                      _%exports189304%_
                                                      (cons (##unchecked-structure-ref
                                                             _%out189307%_
                                                             '3
                                                             '#f
                                                             '#f)
                                                            (##unchecked-structure-ref
                                                             _%out189307%_
                                                             '4
                                                             '#f
                                                             '#f))
                                                      _%out189307%_))
                                                   (##unchecked-structure-ref
                                                    _%src-ctx189303%_
                                                    '9
                                                    '#f
                                                    '#f))
                                                  (_%K189255%_
                                                   _%rest189256%_
                                                   (foldl__0
                                                    (lambda (_%spec189309%_
                                                             _%r189310%_)
                                                      (let* ((_%$%e189311189327%_
                                                              _%spec189309%_)
                                                             (_%$%E189313189331%_
                                                              (lambda ()
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid syntax-case clause"
                         _%$%e189311189327%_)))
                     (_%$%E189312189386%_
                      (lambda ()
                        (if (gx#stx-pair? _%$%e189311189327%_)
                            (let ((_%$%e189314189335%_
                                   (gx#syntax-e _%$%e189311189327%_)))
                              (let ((_%$%hd189315189338%_
                                     (##car _%$%e189314189335%_))
                                    (_%$%tl189316189340%_
                                     (##cdr _%$%e189314189335%_)))
                                (let ((_%phi189343%_ _%$%hd189315189338%_))
                                  (if (gx#stx-pair? _%$%tl189316189340%_)
                                      (let ((_%$%e189317189345%_
                                             (gx#syntax-e
                                              _%$%tl189316189340%_)))
                                        (let ((_%$%hd189318189348%_
                                               (##car _%$%e189317189345%_))
                                              (_%$%tl189319189350%_
                                               (##cdr _%$%e189317189345%_)))
                                          (let ((_%name189353%_
                                                 _%$%hd189318189348%_))
                                            (if (gx#stx-pair?
                                                 _%$%tl189319189350%_)
                                                (let ((_%$%e189320189355%_
                                                       (gx#syntax-e
                                                        _%$%tl189319189350%_)))
                                                  (let ((_%$%hd189321189358%_
                                                         (##car _%$%e189320189355%_))
                                                        (_%$%tl189322189360%_
                                                         (##cdr _%$%e189320189355%_)))
                                                    (let ((_%src-phi189363%_
                                                           _%$%hd189321189358%_))
                                                      (if (gx#stx-pair?
                                                           _%$%tl189322189360%_)
                                                          (let ((_%$%e189323189365%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl189322189360%_)))
                    (let ((_%$%hd189324189368%_ (##car _%$%e189323189365%_))
                          (_%$%tl189325189370%_ (##cdr _%$%e189323189365%_)))
                      (let ((_%src-name189373%_ _%$%hd189324189368%_))
                        (if (gx#stx-null? _%$%tl189325189370%_)
                            (if (and (gx#stx-fixnum? _%src-phi189363%_)
                                     (gx#identifier? _%src-name189373%_)
                                     (gx#stx-fixnum? _%phi189343%_)
                                     (gx#identifier? _%name189353%_))
                                (let ((_%src-phi189375%_
                                       (gx#stx-e _%src-phi189363%_))
                                      (_%src-name189376%_
                                       (gx#core-identifier-key
                                        _%src-name189373%_))
                                      (_%phi189377%_ (gx#stx-e _%phi189343%_))
                                      (_%name189378%_
                                       (gx#core-identifier-key
                                        _%name189353%_)))
                                  (let ((_%$e189380%_
                                         (__hash-get
                                          _%exports189304%_
                                          (cons _%src-phi189375%_
                                                _%src-name189376%_))))
                                    (if _%$e189380%_
                                        (cons (gx#core-module-export->import__%
                                               _%$e189380%_
                                               _%name189378%_
                                               (fx- _%phi189377%_
                                                    _%src-phi189375%_))
                                              _%r189310%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; no matching export"
                                         _%stx189175%_
                                         _%hd189254%_))))
                                (_%$%E189313189331%_))
                            (_%$%E189313189331%_)))))
                  (_%$%E189313189331%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%E189313189331%_)))))
                                      (_%$%E189313189331%_)))))
                            (_%$%E189313189331%_)))))
                (_%$%E189312189386%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r189257%_
                                                    _%specs189305%_))))))
                                          (_%$%E189267189279%_))))
                                  (_%$%E189267189279%_))))
                           (_%$%E189259189412%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e189258189275%_)
                                  (let ((_%$%e189261189394%_
                                         (gx#syntax-e _%$%e189258189275%_)))
                                    (let ((_%$%hd189262189397%_
                                           (##car _%$%e189261189394%_))
                                          (_%$%tl189263189399%_
                                           (##cdr _%$%e189261189394%_)))
                                      (if (gx#stx-pair? _%$%tl189263189399%_)
                                          (let ((_%$%e189264189402%_
                                                 (gx#syntax-e
                                                  _%$%tl189263189399%_)))
                                            (let ((_%$%hd189265189405%_
                                                   (##car _%$%e189264189402%_))
                                                  (_%$%tl189266189407%_
                                                   (##cdr _%$%e189264189402%_)))
                                              (let ((_%path189410%_
                                                     _%$%hd189265189405%_))
                                                (if (gx#stx-null?
                                                     _%$%tl189266189407%_)
                                                    (_%K189255%_
                                                     _%rest189256%_
                                                     (cons (_%import-spec-source189183%_
                                                            _%path189410%_)
                                                           _%r189257%_))
                                                    (_%$%E189260189390%_)))))
                                          (_%$%E189260189390%_))))
                                  (_%$%E189260189390%_)))))
                      (_%$%E189259189412%_))))
                 (_%import-spec-source189183%_
                  (lambda (_%spath189252%_)
                    (gx#core-import-nested-module
                     _%spath189252%_
                     _%stx189175%_)))
                 (_%import!189184%_
                  (lambda (_%rbody189197%_)
                    (letrec* ((_%current-ctx189199%_
                               (gx#current-expander-context))
                              (_%deps189200%_ (make-hash-table-eq))
                              (_%bind!189201%_
                               (lambda (_%hd189250%_)
                                 (gx#core-bind-import!__1
                                  _%hd189250%_
                                  _%current-ctx189199%_))))
                      (let _%lp189203%_ ((_%rest189205%_ _%rbody189197%_)
                                         (_%body189206%_ '()))
                        (let* ((_%$%rest189207189215%_ _%rest189205%_)
                               (_%$%else189209189226%_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _%current-ctx189199%_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _%current-ctx189199%_
                                       (foldl__0
                                        cons
                                        (##unchecked-structure-ref
                                         _%current-ctx189199%_
                                         '8
                                         '#f
                                         '#f)
                                        _%body189206%_)
                                       '8
                                       '#f
                                       '#f)
                                      '#!void)
                                  (__hash-for-each
                                   (lambda (_%ctx189223%_ _%_189224%_)
                                     (gx#eval-module _%ctx189223%_))
                                   _%deps189200%_)
                                  _%body189206%_))
                               (_%$%K189211189238%_
                                (lambda (_%rest189229%_ _%hd189230%_)
                                  (if (##structure-direct-instance-of?
                                       _%hd189230%_
                                       'gx#module-import::t)
                                      (let ()
                                        (_%bind!189201%_ _%hd189230%_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _%hd189230%_
                                                   '3
                                                   '#f
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _%hd189230%_
                                                            '1
                                                            '#f
                                                            '#f)
                                                           '3
                                                           '#f
                                                           '#f)))
                                            (__hash-put!
                                             _%deps189200%_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _%hd189230%_
                                               '1
                                               '#f
                                               '#f)
                                              '1
                                              '#f
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _%hd189230%_
                                           'gx#import-set::t)
                                          (let ()
                                            (for-each
                                             _%bind!189201%_
                                             (##unchecked-structure-ref
                                              _%hd189230%_
                                              '3
                                              '#f
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _%hd189230%_
                                                  '2
                                                  '#f
                                                  '#f))
                                                (__hash-put!
                                                 _%deps189200%_
                                                 (##unchecked-structure-ref
                                                  _%hd189230%_
                                                  '1
                                                  '#f
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_%$e189234%_
                                                 (##structure-instance-of?
                                                  _%hd189230%_
                                                  'gx#module-context::t)))
                                            (if _%$e189234%_
                                                _%$e189234%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _%stx189175%_
                                                 _%hd189230%_)))))
                                  (_%lp189203%_
                                   _%rest189229%_
                                   (cons _%hd189230%_ _%body189206%_)))))
                          (if (pair? _%$%rest189207189215%_)
                              (let ((_%$%hd189212189241%_
                                     (##car _%$%rest189207189215%_))
                                    (_%$%tl189213189243%_
                                     (##cdr _%$%rest189207189215%_)))
                                (let* ((_%hd189246%_ _%$%hd189212189241%_)
                                       (_%rest189248%_ _%$%tl189213189243%_))
                                  (_%$%K189211189238%_
                                   _%rest189248%_
                                   _%hd189246%_)))
                              (_%$%else189209189226%_)))))))
                 (_%expanded-import?189185%_
                  (lambda (_%e189189%_)
                    (let ((_%$e189191%_
                           (##structure-direct-instance-of?
                            _%e189189%_
                            'gx#import-set::t)))
                      (if _%$e189191%_
                          _%$e189191%_
                          (let ((_%$e189194%_
                                 (##structure-direct-instance-of?
                                  _%e189189%_
                                  'gx#module-import::t)))
                            (if _%$e189194%_
                                _%$e189194%_
                                (##structure-instance-of?
                                 _%e189189%_
                                 'gx#module-context::t))))))))
          (let ((_%rbody189187%_
                 (gx#core-expand-import/export
                  _%stx189175%_
                  _%expanded-import?189185%_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _%expand1189178%_)))
            (if _%internal-expand?189176%_
                (reverse _%rbody189187%_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_%import!189184%_ _%rbody189187%_))
                 (gx#stx-source _%stx189175%_)))))))
    (define gx#core-expand-import%__0
      (lambda (_%stx189514%_)
        (let ((_%internal-expand?189516%_ '#f))
          (gx#core-expand-import%__%
           _%stx189514%_
           _%internal-expand?189516%_))))
    (define gx#core-expand-import%
      (lambda _g192272_
        (let ((_g192273_ (##length _g192272_)))
          (cond ((##fx= _g192273_ 1)
                 (apply gx#core-expand-import%__0 _g192272_))
                ((##fx= _g192273_ 2)
                 (apply gx#core-expand-import%__% _g192272_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g192272_))))))
    (define gx#core-import-nested-module
      (lambda (_%spath189102%_ _%where189103%_)
        (let* ((_%$%e189104189111%_ _%spath189102%_)
               (_%$%E189106189115%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e189104189111%_)))
               (_%$%E189105189170%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e189104189111%_)
                      (let ((_%$%e189107189119%_
                             (gx#syntax-e _%$%e189104189111%_)))
                        (let ((_%$%hd189108189122%_
                               (##car _%$%e189107189119%_))
                              (_%$%tl189109189124%_
                               (##cdr _%$%e189107189119%_)))
                          (let* ((_%origin189127%_ _%$%hd189108189122%_)
                                 (_%sub189129%_ _%$%tl189109189124%_)
                                 (_%origin-ctx189131%_
                                  (if (gx#stx-false? _%origin189127%_)
                                      (gx#current-expander-context)
                                      (gx#import-module__0 _%origin189127%_))))
                            (let _%lp189133%_ ((_%rest189135%_ _%sub189129%_)
                                               (_%ctx189136%_
                                                _%origin-ctx189131%_))
                              (let* ((_%$%e189137189144%_ _%rest189135%_)
                                     (_%$%E189139189148%_
                                      (lambda () _%ctx189136%_))
                                     (_%$%E189138189166%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%$%e189137189144%_)
                                            (let ((_%$%e189140189152%_
                                                   (gx#syntax-e
                                                    _%$%e189137189144%_)))
                                              (let ((_%$%hd189141189155%_
                                                     (##car _%$%e189140189152%_))
                                                    (_%$%tl189142189157%_
                                                     (##cdr _%$%e189140189152%_)))
                                                (let* ((_%id189160%_
                                                        _%$%hd189141189155%_)
                                                       (_%rest189162%_
                                                        _%$%tl189142189157%_)
                                                       (_%bind189164%_
                                                        (gx#resolve-identifier__%
                                                         _%id189160%_
                                                         '0
                                                         _%ctx189136%_)))
                                                  (if (and (##structure-direct-instance-of?
                                                            _%bind189164%_
                                                            'gx#syntax-binding::t)
                                                           (##structure-instance-of?
                                                            (##unchecked-structure-ref
                                                             _%bind189164%_
                                                             '5
                                                             '#f
                                                             '#f)
                                                            'gx#module-context::t))
                                                      '#!void
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; not bound as module"
                                                       _%where189103%_
                                                       _%spath189102%_
                                                       _%id189160%_))
                                                  (_%lp189133%_
                                                   _%rest189162%_
                                                   (##unchecked-structure-ref
                                                    _%bind189164%_
                                                    '5
                                                    '#f
                                                    '#f)))))
                                            (_%$%E189139189148%_)))))
                                (_%$%E189138189166%_))))))
                      (_%$%E189106189115%_)))))
          (_%$%E189105189170%_))))
    (define gx#core-expand-import-source
      (lambda (_%hd189100%_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _%hd189100%_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_%stx188595%_ _%internal-expand?188596%_)
        (letrec* ((_%make-export__192200192201%_
                   (lambda (_%bind189048%_
                            _%phi189049%_
                            _%ctx189050%_
                            _%name189051%_)
                     (let* ((_%key189053%_
                             (##unchecked-structure-ref
                              _%bind189048%_
                              '2
                              '#f
                              '#f))
                            (_%export-key189055%_
                             (if _%name189051%_
                                 (gx#core-identifier-key _%name189051%_)
                                 _%key189053%_)))
                       (##structure
                        gx#module-export::t
                        _%ctx189050%_
                        _%key189053%_
                        _%phi189049%_
                        _%export-key189055%_
                        (let ((_%$e189058%_
                               (##structure-instance-of?
                                _%bind189048%_
                                'gx#extern-binding::t)))
                          (if _%$e189058%_
                              _%$e189058%_
                              (##structure-direct-instance-of?
                               _%bind189048%_
                               'gx#import-binding::t)))))))
                  (_%make-export__0__192202192205%_
                   (lambda (_%bind189064%_)
                     (let* ((_%phi189066%_ (gx#current-export-expander-phi))
                            (_%ctx189068%_ (gx#current-expander-context))
                            (_%name189070%_ '#f))
                       (_%make-export__192200192201%_
                        _%bind189064%_
                        _%phi189066%_
                        _%ctx189068%_
                        _%name189070%_))))
                  (_%make-export__1__192203192206%_
                   (lambda (_%bind189072%_ _%phi189073%_)
                     (let* ((_%ctx189075%_ (gx#current-expander-context))
                            (_%name189077%_ '#f))
                       (_%make-export__192200192201%_
                        _%bind189072%_
                        _%phi189073%_
                        _%ctx189075%_
                        _%name189077%_))))
                  (_%make-export__2__192204192207%_
                   (lambda (_%bind189079%_ _%phi189080%_ _%ctx189081%_)
                     (let ((_%name189083%_ '#f))
                       (_%make-export__192200192201%_
                        _%bind189079%_
                        _%phi189080%_
                        _%ctx189081%_
                        _%name189083%_))))
                  (_%make-export188598%_
                   (lambda _g192274_
                     (let ((_g192275_ (##length _g192274_)))
                       (cond ((##fx= _g192275_ 1)
                              (apply _%make-export__0__192202192205%_
                                     _g192274_))
                             ((##fx= _g192275_ 2)
                              (apply _%make-export__1__192203192206%_
                                     _g192274_))
                             ((##fx= _g192275_ 3)
                              (apply _%make-export__2__192204192207%_
                                     _g192274_))
                             ((##fx= _g192275_ 4)
                              (apply _%make-export__192200192201%_ _g192274_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g192274_))))))
                  (_%expand1188599%_
                   (lambda (_%hd188753%_
                            _%K188754%_
                            _%rest188755%_
                            _%r188756%_)
                     (let* ((_%$%e188757188789%_ _%hd188753%_)
                            (_%$%E188784188793%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _%stx188595%_
                                _%hd188753%_)))
                            (_%$%E188774188877%_
                             (lambda ()
                               (if (gx#stx-pair? _%$%e188757188789%_)
                                   (let ((_%$%e188785188797%_
                                          (gx#syntax-e _%$%e188757188789%_)))
                                     (let ((_%$%hd188786188800%_
                                            (##car _%$%e188785188797%_))
                                           (_%$%tl188787188802%_
                                            (##cdr _%$%e188785188797%_)))
                                       (if (eq? (gx#stx-e _%$%hd188786188800%_)
                                                'import:)
                                           (let ((_%in188805%_
                                                  _%$%tl188787188802%_))
                                             (if (gx#stx-list? _%in188805%_)
                                                 (let _%lp188807%_ ((_%in-rest188809%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%in188805%_)
                            (_%r188810%_ _%r188756%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%$%e188811188818%_
                                                           _%in-rest188809%_)
                                                          (_%$%E188813188822%_
                                                           (lambda ()
                                                             (_%K188754%_
                                                              _%rest188755%_
                                                              _%r188810%_)))
                                                          (_%$%E188812188873%_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%e188811188818%_)
                         (let ((_%$%e188814188826%_
                                (gx#syntax-e _%$%e188811188818%_)))
                           (let ((_%$%hd188815188829%_
                                  (##car _%$%e188814188826%_))
                                 (_%$%tl188816188831%_
                                  (##cdr _%$%e188814188826%_)))
                             (let* ((_%hd188834%_ _%$%hd188815188829%_)
                                    (_%in-rest188836%_ _%$%tl188816188831%_)
                                    (_%src188871%_
                                     (if (gx#core-bound-module? _%hd188834%_)
                                         (gx#syntax-local-e__0 _%hd188834%_)
                                         (if (gx#core-library-module-path?
                                              _%hd188834%_)
                                             (gx#import-module__0
                                              (gx#core-resolve-library-module-path
                                               _%hd188834%_))
                                             (if (gx#core-library-relative-module-path?
                                                  _%hd188834%_)
                                                 (gx#import-module__0
                                                  (gx#core-resolve-library-relative-module-path
                                                   _%hd188834%_))
                                                 (if (gx#stx-string?
                                                      _%hd188834%_)
                                                     (gx#import-module__0
                                                      (gx#core-resolve-module-path__%
                                                       _%hd188834%_
                                                       (gx#stx-source
                                                        _%stx188595%_)))
                                                     (let* ((_%$%e188842188849%_
                                                             _%hd188834%_)
                                                            (_%$%E188844188853%_
                                                             (lambda ()
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; illegal re-export"
                                                                _%stx188595%_
                                                                _%hd188834%_)))
                                                            (_%$%E188843188867%_
                                                             (lambda ()
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%e188842188849%_)
                           (let ((_%$%e188845188857%_
                                  (gx#syntax-e _%$%e188842188849%_)))
                             (let ((_%$%hd188846188860%_
                                    (##car _%$%e188845188857%_))
                                   (_%$%tl188847188862%_
                                    (##cdr _%$%e188845188857%_)))
                               (if (eq? (gx#stx-e _%$%hd188846188860%_) 'in:)
                                   (let ((_%spath188865%_
                                          _%$%tl188847188862%_))
                                     (gx#core-import-nested-module
                                      _%spath188865%_
                                      _%stx188595%_))
                                   (_%$%E188844188853%_))))
                           (_%$%E188844188853%_)))))
               (_%$%E188843188867%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (_%lp188807%_
                                _%in-rest188836%_
                                (_%export-imports188600%_
                                 _%src188871%_
                                 _%r188810%_)))))
                         (_%$%E188813188822%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%E188812188873%_)))
                                                 (_%$%E188784188793%_)))
                                           (_%$%E188784188793%_))))
                                   (_%$%E188784188793%_))))
                            (_%$%E188761188917%_
                             (lambda ()
                               (if (gx#stx-pair? _%$%e188757188789%_)
                                   (let ((_%$%e188775188881%_
                                          (gx#syntax-e _%$%e188757188789%_)))
                                     (let ((_%$%hd188776188884%_
                                            (##car _%$%e188775188881%_))
                                           (_%$%tl188777188886%_
                                            (##cdr _%$%e188775188881%_)))
                                       (if (eq? (gx#stx-e _%$%hd188776188884%_)
                                                'rename:)
                                           (if (gx#stx-pair?
                                                _%$%tl188777188886%_)
                                               (let ((_%$%e188778188889%_
                                                      (gx#syntax-e
                                                       _%$%tl188777188886%_)))
                                                 (let ((_%$%hd188779188892%_
                                                        (##car _%$%e188778188889%_))
                                                       (_%$%tl188780188894%_
                                                        (##cdr _%$%e188778188889%_)))
                                                   (let ((_%id188897%_
                                                          _%$%hd188779188892%_))
                                                     (if (gx#stx-pair?
                                                          _%$%tl188780188894%_)
                                                         (let ((_%$%e188781188899%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%tl188780188894%_)))
                   (let ((_%$%hd188782188902%_ (##car _%$%e188781188899%_))
                         (_%$%tl188783188904%_ (##cdr _%$%e188781188899%_)))
                     (let ((_%name188907%_ _%$%hd188782188902%_))
                       (if (gx#stx-null? _%$%tl188783188904%_)
                           (let* ((_%phi188909%_
                                   (gx#current-export-expander-phi))
                                  (_%$e188911%_
                                   (gx#core-resolve-identifier__1
                                    _%id188897%_
                                    _%phi188909%_)))
                             (if _%$e188911%_
                                 (_%K188754%_
                                  _%rest188755%_
                                  (cons (_%make-export__192200192201%_
                                         _%$e188911%_
                                         _%phi188909%_
                                         (gx#current-expander-context)
                                         _%name188907%_)
                                        _%r188756%_))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Reference to unbound identifier"
                                  _%stx188595%_
                                  _%hd188753%_
                                  _%id188897%_)))
                           (_%$%E188774188877%_)))))
                 (_%$%E188774188877%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%E188774188877%_))
                                           (_%$%E188774188877%_))))
                                   (_%$%E188774188877%_))))
                            (_%$%E188760188967%_
                             (lambda ()
                               (if (gx#stx-pair? _%$%e188757188789%_)
                                   (let ((_%$%e188762188921%_
                                          (gx#syntax-e _%$%e188757188789%_)))
                                     (let ((_%$%hd188763188924%_
                                            (##car _%$%e188762188921%_))
                                           (_%$%tl188764188926%_
                                            (##cdr _%$%e188762188921%_)))
                                       (if (eq? (gx#stx-e _%$%hd188763188924%_)
                                                'spec:)
                                           (if (gx#stx-pair?
                                                _%$%tl188764188926%_)
                                               (let ((_%$%e188765188929%_
                                                      (gx#syntax-e
                                                       _%$%tl188764188926%_)))
                                                 (let ((_%$%hd188766188932%_
                                                        (##car _%$%e188765188929%_))
                                                       (_%$%tl188767188934%_
                                                        (##cdr _%$%e188765188929%_)))
                                                   (let ((_%phi188937%_
                                                          _%$%hd188766188932%_))
                                                     (if (gx#stx-pair?
                                                          _%$%tl188767188934%_)
                                                         (let ((_%$%e188768188939%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%tl188767188934%_)))
                   (let ((_%$%hd188769188942%_ (##car _%$%e188768188939%_))
                         (_%$%tl188770188944%_ (##cdr _%$%e188768188939%_)))
                     (let ((_%id188947%_ _%$%hd188769188942%_))
                       (if (gx#stx-pair? _%$%tl188770188944%_)
                           (let ((_%$%e188771188949%_
                                  (gx#syntax-e _%$%tl188770188944%_)))
                             (let ((_%$%hd188772188952%_
                                    (##car _%$%e188771188949%_))
                                   (_%$%tl188773188954%_
                                    (##cdr _%$%e188771188949%_)))
                               (let ((_%name188957%_ _%$%hd188772188952%_))
                                 (if (gx#stx-null? _%$%tl188773188954%_)
                                     (if (and (gx#stx-fixnum? _%phi188937%_)
                                              (gx#identifier? _%id188947%_)
                                              (gx#identifier? _%name188957%_))
                                         (let* ((_%phi188959%_
                                                 (gx#stx-e _%phi188937%_))
                                                (_%$e188961%_
                                                 (gx#core-resolve-identifier__1
                                                  _%id188947%_
                                                  _%phi188959%_)))
                                           (if _%$e188961%_
                                               (_%K188754%_
                                                _%rest188755%_
                                                (cons (_%make-export__192200192201%_
                                                       _%$e188961%_
                                                       _%phi188959%_
                                                       (gx#current-expander-context)
                                                       _%name188957%_)
                                                      _%r188756%_))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _%stx188595%_
                                                _%hd188753%_
                                                _%id188947%_)))
                                         (_%$%E188761188917%_))
                                     (_%$%E188761188917%_)))))
                           (_%$%E188761188917%_)))))
                 (_%$%E188761188917%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%E188761188917%_))
                                           (_%$%E188761188917%_))))
                                   (_%$%E188761188917%_))))
                            (_%$%E188759188979%_
                             (lambda ()
                               (let ((_%id188971%_ _%$%e188757188789%_))
                                 (if (gx#identifier? _%id188971%_)
                                     (let ((_%$e188973%_
                                            (gx#core-resolve-identifier__1
                                             _%id188971%_
                                             (gx#current-export-expander-phi))))
                                       (if _%$e188973%_
                                           (_%K188754%_
                                            _%rest188755%_
                                            (cons (_%make-export__0__192202192205%_
                                                   _%$e188973%_)
                                                  _%r188756%_))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _%stx188595%_
                                            _%hd188753%_)))
                                     (_%$%E188760188967%_)))))
                            (_%$%E188758189043%_
                             (lambda ()
                               (if (eq? (gx#stx-e _%$%e188757188789%_) '#t)
                                   (let* ((_%current-ctx188983%_
                                           (gx#current-expander-context))
                                          (_%current-phi188985%_
                                           (gx#current-export-expander-phi))
                                          (_%phi-ctx188987%_
                                           (gx#core-context-shift
                                            _%current-ctx188983%_
                                            _%current-phi188985%_))
                                          (_%phi-bind188989%_
                                           (hash->list
                                            (##unchecked-structure-ref
                                             _%phi-ctx188987%_
                                             '2
                                             '#f
                                             '#f))))
                                     (let _%lp188992%_ ((_%bind-rest188994%_
                                                         _%phi-bind188989%_)
                                                        (_%set188995%_ '()))
                                       (let* ((_%$%bind-rest188996189006%_
                                               _%bind-rest188994%_)
                                              (_%$%else188998189014%_
                                               (lambda ()
                                                 (_%K188754%_
                                                  _%rest188755%_
                                                  (cons (##structure
                                                         gx#export-set::t
                                                         '#f
                                                         _%current-phi188985%_
                                                         _%set188995%_)
                                                        _%r188756%_))))
                                              (_%$%K189000189024%_
                                               (lambda (_%bind-rest189017%_
                                                        _%bind189018%_
                                                        _%key189019%_)
                                                 (if (or (##structure-direct-instance-of?
                                                          _%bind189018%_
                                                          'gx#import-binding::t)
                                                         (gx#private-feature-binding?
                                                          _%bind189018%_))
                                                     (_%lp188992%_
                                                      _%bind-rest189017%_
                                                      _%set188995%_)
                                                     (_%lp188992%_
                                                      _%bind-rest189017%_
                                                      (cons (_%make-export__2__192204192207%_
                                                             _%bind189018%_
                                                             _%current-phi188985%_
                                                             _%current-ctx188983%_)
                                                            _%set188995%_))))))
                                         (if (pair? _%$%bind-rest188996189006%_)
                                             (let ((_%$%hd189001189027%_
                                                    (##car _%$%bind-rest188996189006%_))
                                                   (_%$%tl189002189029%_
                                                    (##cdr _%$%bind-rest188996189006%_)))
                                               (if (pair? _%$%hd189001189027%_)
                                                   (let ((_%$%hd189003189032%_
                                                          (##car _%$%hd189001189027%_))
                                                         (_%$%tl189004189034%_
                                                          (##cdr _%$%hd189001189027%_)))
                                                     (let* ((_%key189037%_
                                                             _%$%hd189003189032%_)
                                                            (_%bind189039%_
                                                             _%$%tl189004189034%_)
                                                            (_%bind-rest189041%_
                                                             _%$%tl189002189029%_))
                                                       (_%$%K189000189024%_
                                                        _%bind-rest189041%_
                                                        _%bind189039%_
                                                        _%key189037%_)))
                                                   (_%$%else188998189014%_)))
                                             (_%$%else188998189014%_)))))
                                   (_%$%E188759188979%_)))))
                       (_%$%E188758189043%_))))
                  (_%export-imports188600%_
                   (lambda (_%src188630%_ _%r188631%_)
                     (letrec* ((_%current-ctx188633%_
                                (gx#current-expander-context))
                               (_%current-phi188634%_
                                (gx#current-export-expander-phi))
                               (_%import->export188635%_
                                (lambda (_%in188716%_)
                                  (let* ((_%$%in188717188725%_ _%in188716%_)
                                         (_%$%E188719188728%_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _%$%in188717188725%_
                                                   '((module-import
                                                      out
                                                      key
                                                      phi)))
                                            '#!void))
                                         (_%$%K188720188735%_
                                          (lambda (_%phi188731%_
                                                   _%key188732%_
                                                   _%out188733%_)
                                            (##structure
                                             gx#module-export::t
                                             _%current-ctx188633%_
                                             _%key188732%_
                                             _%phi188731%_
                                             _%key188732%_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _%$%in188717188725%_
                                         'gx#module-import::t)
                                        (let* ((_%$%e188721188738%_
                                                (##unchecked-structure-ref
                                                 _%$%in188717188725%_
                                                 '1
                                                 '#f
                                                 '#f))
                                               (_%out188741%_
                                                _%$%e188721188738%_)
                                               (_%$%e188722188743%_
                                                (##unchecked-structure-ref
                                                 _%$%in188717188725%_
                                                 '2
                                                 '#f
                                                 '#f))
                                               (_%key188746%_
                                                _%$%e188722188743%_)
                                               (_%$%e188723188748%_
                                                (##unchecked-structure-ref
                                                 _%$%in188717188725%_
                                                 '3
                                                 '#f
                                                 '#f))
                                               (_%phi188751%_
                                                _%$%e188723188748%_))
                                          (_%$%K188720188735%_
                                           _%phi188751%_
                                           _%key188746%_
                                           _%out188741%_))
                                        (_%$%E188719188728%_)))))
                               (_%fold-e188636%_
                                (lambda (_%in188638%_ _%r188639%_)
                                  (let* ((_%$%in188640188654%_ _%in188638%_)
                                         (_%$%else188643188662%_
                                          (lambda () _%r188639%_)))
                                    (let ((_%$%K188649188698%_
                                           (lambda (_%phi188694%_
                                                    _%key188695%_
                                                    _%out188696%_)
                                             (if (and (fx= _%phi188694%_
                                                           _%current-phi188634%_)
                                                      (eq? _%src188630%_
                                                           (##unchecked-structure-ref
                                                            _%out188696%_
                                                            '1
                                                            '#f
                                                            '#f)))
                                                 (cons (_%import->export188635%_
                                                        _%in188638%_)
                                                       _%r188639%_)
                                                 _%r188639%_)))
                                          (_%$%K188645188673%_
                                           (lambda (_%imports188666%_
                                                    _%phi188667%_
                                                    _%ctx188668%_)
                                             (if (and (fx= _%phi188667%_
                                                           _%current-phi188634%_)
                                                      (eq? _%src188630%_
                                                           _%ctx188668%_))
                                                 (foldl__0
                                                  (lambda (_%in188670%_
                                                           _%r188671%_)
                                                    (cons (_%import->export188635%_
                                                           _%in188670%_)
                                                          _%r188671%_))
                                                  _%r188639%_
                                                  _%imports188666%_)
                                                 _%r188639%_))))
                                      (let ((_%$%try-match188642188691%_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _%$%in188640188654%_
                                                    'gx#import-set::t)
                                                   (let* ((_%$%e188646188676%_
                                                           (##unchecked-structure-ref
                                                            _%$%in188640188654%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                          (_%$%e188647188681%_
                                                           (##unchecked-structure-ref
                                                            _%$%in188640188654%_
                                                            '2
                                                            '#f
                                                            '#f))
                                                          (_%$%e188648188686%_
                                                           (##unchecked-structure-ref
                                                            _%$%in188640188654%_
                                                            '3
                                                            '#f
                                                            '#f)))
                                                     (let ((_%ctx188679%_
                                                            _%$%e188646188676%_)
                                                           (_%phi188684%_
                                                            _%$%e188647188681%_)
                                                           (_%imports188689%_
                                                            _%$%e188648188686%_))
                                                       (_%$%K188645188673%_
                                                        _%imports188689%_
                                                        _%phi188684%_
                                                        _%ctx188679%_)))
                                                   (_%$%else188643188662%_)))))
                                        (if (##structure-direct-instance-of?
                                             _%$%in188640188654%_
                                             'gx#module-import::t)
                                            (let* ((_%$%e188650188701%_
                                                    (##unchecked-structure-ref
                                                     _%$%in188640188654%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                   (_%$%e188651188706%_
                                                    (##unchecked-structure-ref
                                                     _%$%in188640188654%_
                                                     '2
                                                     '#f
                                                     '#f))
                                                   (_%$%e188652188711%_
                                                    (##unchecked-structure-ref
                                                     _%$%in188640188654%_
                                                     '3
                                                     '#f
                                                     '#f)))
                                              (let ((_%out188704%_
                                                     _%$%e188650188701%_)
                                                    (_%key188709%_
                                                     _%$%e188651188706%_)
                                                    (_%phi188714%_
                                                     _%$%e188652188711%_))
                                                (_%$%K188649188698%_
                                                 _%phi188714%_
                                                 _%key188709%_
                                                 _%out188704%_)))
                                            (_%$%try-match188642188691%_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _%src188630%_
                              _%current-phi188634%_
                              (foldl__0
                               _%fold-e188636%_
                               '()
                               (##unchecked-structure-ref
                                _%current-ctx188633%_
                                '8
                                '#f
                                '#f)))
                             _%r188631%_))))
                  (_%export!188601%_
                   (lambda (_%rbody188617%_)
                     (letrec* ((_%current-ctx188619%_
                                (gx#current-expander-context))
                               (_%fold-e188620%_
                                (lambda (_%out188624%_ _%r188625%_)
                                  (if (##structure-direct-instance-of?
                                       _%out188624%_
                                       'gx#module-export::t)
                                      (cons _%out188624%_ _%r188625%_)
                                      (if (##structure-direct-instance-of?
                                           _%out188624%_
                                           'gx#export-set::t)
                                          (foldl__0
                                           cons
                                           _%r188625%_
                                           (##unchecked-structure-ref
                                            _%out188624%_
                                            '3
                                            '#f
                                            '#f))
                                          _%r188625%_)))))
                       (let ((_%body188622%_ (reverse _%rbody188617%_)))
                         (##unchecked-structure-set!
                          _%current-ctx188619%_
                          (foldl__0
                           _%fold-e188620%_
                           (##unchecked-structure-ref
                            _%current-ctx188619%_
                            '9
                            '#f
                            '#f)
                           _%body188622%_)
                          '9
                          '#f
                          '#f)
                         _%body188622%_))))
                  (_%expanded-export?188602%_
                   (lambda (_%e188612%_)
                     (let ((_%$e188614%_
                            (##structure-direct-instance-of?
                             _%e188612%_
                             'gx#module-export::t)))
                       (if _%$e188614%_
                           _%$e188614%_
                           (##structure-direct-instance-of?
                            _%e188612%_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _%internal-expand?188596%_)
              (let ((_%rbody188608%_
                     (gx#core-expand-import/export
                      _%stx188595%_
                      _%expanded-export?188602%_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _%expand1188599%_)))
                (if _%internal-expand?188596%_
                    (reverse _%rbody188608%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons
                      '%#export
                      (_%export!188601%_ _%rbody188608%_))
                     (gx#stx-source _%stx188595%_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _%stx188595%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _%stx188595%_))))))
    (define gx#core-expand-export%__0
      (lambda (_%stx189093%_)
        (let ((_%internal-expand?189095%_ '#f))
          (gx#core-expand-export%__%
           _%stx189093%_
           _%internal-expand?189095%_))))
    (define gx#core-expand-export%
      (lambda _g192276_
        (let ((_g192277_ (##length _g192276_)))
          (cond ((##fx= _g192277_ 1)
                 (apply gx#core-expand-export%__0 _g192276_))
                ((##fx= _g192277_ 2)
                 (apply gx#core-expand-export%__% _g192276_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g192276_))))))
    (define gx#core-expand-export-source
      (lambda (_%hd188592%_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _%hd188592%_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_%stx188562%_)
        (let* ((_%$%e188563188570%_ _%stx188562%_)
               (_%$%E188565188574%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e188563188570%_)))
               (_%$%E188564188588%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e188563188570%_)
                      (let ((_%$%e188566188578%_
                             (gx#syntax-e _%$%e188563188570%_)))
                        (let ((_%$%hd188567188581%_
                               (##car _%$%e188566188578%_))
                              (_%$%tl188568188583%_
                               (##cdr _%$%e188566188578%_)))
                          (let ((_%body188586%_ _%$%tl188568188583%_))
                            (if (gx#identifier-list? _%body188586%_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _%body188586%_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _%body188586%_))
                                   (gx#stx-source _%stx188562%_)))
                                (_%$%E188565188574%_)))))
                      (_%$%E188565188574%_)))))
          (_%$%E188564188588%_))))
    (define gx#core-bind-feature!__%
      (lambda (_%id188528%_ _%private?188529%_ _%phi188530%_ _%ctx188531%_)
        (gx#core-bind-syntax!__%
         _%id188528%_
         ((if _%private?188529%_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _%id188528%_))
         _%private?188529%_
         _%phi188530%_
         _%ctx188531%_)))
    (define gx#core-bind-feature!__0
      (lambda (_%id188536%_)
        (let* ((_%private?188538%_ '#f)
               (_%phi188540%_ (gx#current-expander-phi))
               (_%ctx188542%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id188536%_
           _%private?188538%_
           _%phi188540%_
           _%ctx188542%_))))
    (define gx#core-bind-feature!__1
      (lambda (_%id188544%_ _%private?188545%_)
        (let* ((_%phi188547%_ (gx#current-expander-phi))
               (_%ctx188549%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id188544%_
           _%private?188545%_
           _%phi188547%_
           _%ctx188549%_))))
    (define gx#core-bind-feature!__2
      (lambda (_%id188551%_ _%private?188552%_ _%phi188553%_)
        (let ((_%ctx188555%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id188551%_
           _%private?188552%_
           _%phi188553%_
           _%ctx188555%_))))
    (define gx#core-bind-feature!
      (lambda _g192278_
        (let ((_g192279_ (##length _g192278_)))
          (cond ((##fx= _g192279_ 1)
                 (apply gx#core-bind-feature!__0 _g192278_))
                ((##fx= _g192279_ 2)
                 (apply gx#core-bind-feature!__1 _g192278_))
                ((##fx= _g192279_ 3)
                 (apply gx#core-bind-feature!__2 _g192278_))
                ((##fx= _g192279_ 4)
                 (apply gx#core-bind-feature!__% _g192278_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g192278_))))))))
