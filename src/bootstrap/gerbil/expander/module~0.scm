(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1770342549)
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
      (lambda _%$args174947%_
        (apply make-instance gx#module-import::t _%$args174947%_)))
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
      (lambda _%$args174944%_
        (apply make-instance gx#module-export::t _%$args174944%_)))
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
      (lambda _%$args174941%_
        (apply make-instance gx#import-set::t _%$args174941%_)))
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
      (lambda _%$args174938%_
        (apply make-instance gx#export-set::t _%$args174938%_)))
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
      (lambda _%$args174935%_
        (apply make-instance gx#import-expander::t _%$args174935%_)))
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
      (lambda _%$args174932%_
        (apply make-instance gx#export-expander::t _%$args174932%_)))
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
      (lambda _%$args174929%_
        (apply make-instance gx#import-export-expander::t _%$args174929%_)))
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
      (lambda (_%path174926%_ _%fun174927%_)
        (call-with-input-file
         (cons 'path: (cons _%path174926%_ gx#source-file-settings))
         _%fun174927%_)))
    (define gx#module-context:::init!
      (lambda (_%self174909%_
               _%id174910%_
               _%super174911%_
               _%ns174912%_
               _%path174913%_)
        (let ((_%self174916%_ _%self174909%_))
          (if (##fx< '11 (##structure-length _%self174916%_))
              (begin
                (##unchecked-structure-set!
                 _%self174916%_
                 _%id174910%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self174916%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self174916%_
                 _%super174911%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self174916%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self174916%_ '#f '5 '#f '#f)
                (##unchecked-structure-set!
                 _%self174916%_
                 _%ns174912%_
                 '6
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self174916%_
                 _%path174913%_
                 '7
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self174916%_ '() '8 '#f '#f)
                (##unchecked-structure-set! _%self174916%_ '() '9 '#f '#f)
                (##unchecked-structure-set! _%self174916%_ '#f '10 '#f '#f)
                (##unchecked-structure-set! _%self174916%_ '#f '11 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self174916%_
                     '11
                     (##structure-length _%self174916%_))))))
    (__bind-method!__%
     gx#module-context::t
     ':init!
     gx#module-context:::init!
     '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_%self174742%_ _%ctx174743%_ _%root174744%_)
        (let* ((_%self174747%_ _%self174742%_)
               (_%super174763%_
                (let ((_%$e174757%_ _%root174744%_))
                  (if _%$e174757%_
                      _%$e174757%_
                      (let ((_%$e174760%_ (gx#core-context-root__0)))
                        (if _%$e174760%_
                            _%$e174760%_
                            (let ((__obj174991
                                   (##structure gx#root-context::t '#f '#f)))
                              (let ((__constructor174992
                                     (direct-method-ref
                                      gx#root-context::t
                                      __obj174991
                                      ':init!)))
                                (if __constructor174992
                                    (__constructor174992 __obj174991)
                                    (error '"missing constructor method implementation"
                                           'class:
                                           gx#root-context::t
                                           'method:
                                           ':init!)))
                              __obj174991)))))))
          (if _%ctx174743%_
              (let ((_%id174766%_
                     (##structure-ref
                      _%ctx174743%_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_%path174767%_
                     (##structure-ref
                      _%ctx174743%_
                      '7
                      gx#module-context::t
                      '#f))
                    (_%in174768%_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _%ctx174743%_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_%e174769%_
                     (__make-atomic-promise
                      (lambda () (gx#eval-module _%ctx174743%_)))))
                (if (##fx< '8 (##structure-length _%self174747%_))
                    (begin
                      (##unchecked-structure-set!
                       _%self174747%_
                       _%id174766%_
                       '1
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self174747%_
                       (make-hash-table-eq 'size: (##length _%in174768%_))
                       '2
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self174747%_
                       _%super174763%_
                       '3
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self174747%_
                       '#f
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self174747%_
                       '#f
                       '5
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self174747%_
                       _%path174767%_
                       '6
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self174747%_
                       _%in174768%_
                       '7
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self174747%_
                       _%e174769%_
                       '8
                       '#f
                       '#f)
                      '#!void)
                    (error '"struct-instance-init!: too many arguments for struct"
                           _%self174747%_
                           '8
                           (##structure-length _%self174747%_)))
                (##for-each
                 (lambda (_%g174770174772%_)
                   (gx#core-bind-weak-import!__%
                    _%g174770174772%_
                    _%self174747%_))
                 _%in174768%_))
              (if (##fx< '8 (##structure-length _%self174747%_))
                  (begin
                    (##unchecked-structure-set! _%self174747%_ '#f '1 '#f '#f)
                    (##unchecked-structure-set!
                     _%self174747%_
                     (make-hash-table-eq)
                     '2
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self174747%_
                     _%super174763%_
                     '3
                     '#f
                     '#f)
                    (##unchecked-structure-set! _%self174747%_ '#f '4 '#f '#f)
                    (##unchecked-structure-set! _%self174747%_ '#f '5 '#f '#f)
                    (##unchecked-structure-set! _%self174747%_ '#f '6 '#f '#f)
                    (##unchecked-structure-set! _%self174747%_ '() '7 '#f '#f)
                    (##unchecked-structure-set! _%self174747%_ '#f '8 '#f '#f)
                    '#!void)
                  (error '"struct-instance-init!: too many arguments for struct"
                         _%self174747%_
                         '8
                         (##structure-length _%self174747%_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_%self174778%_ _%ctx174779%_)
        (let ((_%root174781%_ '#f))
          (gx#prelude-context:::init!__%
           _%self174778%_
           _%ctx174779%_
           _%root174781%_))))
    (define gx#prelude-context:::init!
      (lambda _g174998_
        (let ((_g174999_ (##length _g174998_)))
          (cond ((##fx= _g174999_ 2)
                 (apply gx#prelude-context:::init!__0 _g174998_))
                ((##fx= _g174999_ 3)
                 (apply gx#prelude-context:::init!__% _g174998_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g174998_))))))
    (__bind-method!__%
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_%self174616%_ _%e174617%_)
        (if (##fx< '3 (##structure-length _%self174616%_))
            (begin
              (##unchecked-structure-set!
               _%self174616%_
               _%e174617%_
               '1
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self174616%_
               (gx#current-expander-context)
               '2
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self174616%_
               (##fx- (gx#current-expander-phi) '1)
               '3
               '#f
               '#f)
              '#!void)
            (error '"struct-instance-init!: too many arguments for struct"
                   _%self174616%_
                   '3
                   (##structure-length _%self174616%_)))))
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
      (lambda (_%g174242174245%_ _%g174243174247%_)
        (gx#core-apply-user-expander__%
         _%g174242174245%_
         _%g174243174247%_
         'apply-import-expander)))
    (__bind-method!__%
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_%g174113174116%_ _%g174114174118%_)
        (gx#core-apply-user-expander__%
         _%g174113174116%_
         _%g174114174118%_
         'apply-export-expander)))
    (__bind-method!__%
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_%ctx173984%_)
        (let* ((_%path173986%_
                (##structure-ref _%ctx173984%_ '7 gx#module-context::t '#f))
               (_%path173988%_
                (if (pair? _%path173986%_)
                    (##last _%path173986%_)
                    _%path173986%_)))
          (if (string? _%path173988%_) _%path173988%_ '#f))))
    (define gx#import-module__%
      (lambda (_%path173960%_ _%reload?173961%_ _%eval?173962%_)
        (let ((_%ctx173964%_
               ((gx#current-expander-module-import)
                _%path173960%_
                _%reload?173961%_)))
          (if (and _%ctx173964%_ _%eval?173962%_)
              (gx#eval-module _%ctx173964%_)
              '#!void)
          _%ctx173964%_)))
    (define gx#import-module__0
      (lambda (_%path173969%_)
        (let* ((_%reload?173971%_ '#f) (_%eval?173973%_ '#f))
          (gx#import-module__%
           _%path173969%_
           _%reload?173971%_
           _%eval?173973%_))))
    (define gx#import-module__1
      (lambda (_%path173975%_ _%reload?173976%_)
        (let ((_%eval?173978%_ '#f))
          (gx#import-module__%
           _%path173975%_
           _%reload?173976%_
           _%eval?173978%_))))
    (define gx#import-module
      (lambda _g175000_
        (let ((_g175001_ (##length _g175000_)))
          (cond ((##fx= _g175001_ 1) (apply gx#import-module__0 _g175000_))
                ((##fx= _g175001_ 2) (apply gx#import-module__1 _g175000_))
                ((##fx= _g175001_ 3) (apply gx#import-module__% _g175000_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g175000_))))))
    (define gx#eval-module
      (lambda (_%mod173957%_)
        ((gx#current-expander-module-eval) _%mod173957%_)))
    (define gx#core-eval-module
      (lambda (_%obj173936%_)
        (letrec ((_%force-e173938%_
                  (lambda (_%getf173952%_ _%e173953%_)
                    (call-with-parameters__1
                     (lambda ()
                       (call-with-parameters__1
                        (lambda () (force (_%getf173952%_ _%e173953%_)))
                        gx#current-expander-phi
                        '0))
                     gx#current-expander-context
                     _%e173953%_))))
          (let _%recur173940%_ ((_%e173942%_ _%obj173936%_))
            (if (##structure-instance-of? _%e173942%_ 'gx#module-context::t)
                (let ()
                  (let ((_%$e173945%_
                         (gx#core-context-prelude__% _%e173942%_)))
                    (if _%$e173945%_ (_%recur173940%_ _%$e173945%_) '#!void))
                  (_%force-e173938%_ gx#module-context-e _%e173942%_))
                (if (##structure-instance-of?
                     _%e173942%_
                     'gx#prelude-context::t)
                    (_%force-e173938%_ gx#prelude-context-e _%e173942%_)
                    (if (gx#stx-string? _%e173942%_)
                        (_%recur173940%_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _%e173942%_)))
                        (if (gx#core-library-module-path? _%e173942%_)
                            (_%recur173940%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%e173942%_)))
                            (error '"cannot eval module" _%obj173936%_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_%ctx173916%_)
        (let _%lp173918%_ ((_%e173920%_ _%ctx173916%_))
          (if (or (##structure-instance-of? _%e173920%_ 'gx#module-context::t)
                  (##structure-instance-of? _%e173920%_ 'gx#local-context::t))
              (_%lp173918%_ (##unchecked-structure-ref _%e173920%_ '3 '#f '#f))
              (if (##structure-instance-of? _%e173920%_ 'gx#prelude-context::t)
                  _%e173920%_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_%ctx173932%_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _%ctx173932%_))))
    (define gx#core-context-prelude
      (lambda _g175002_
        (let ((_g175003_ (##length _g175002_)))
          (cond ((##fx= _g175003_ 0)
                 (apply gx#core-context-prelude__0 _g175002_))
                ((##fx= _g175003_ 1)
                 (apply gx#core-context-prelude__% _g175002_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g175002_))))))
    (define gx#core-module->prelude-context
      (lambda (_%ctx173907%_)
        (let ((_%$e173909%_ (__hash-get gx#__module-registry _%ctx173907%_)))
          (if _%$e173909%_
              _%$e173909%_
              (let ((_%pre173913%_
                     (let ((__obj174993
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
                        __obj174993
                        _%ctx173907%_)
                       __obj174993)))
                (__hash-put! gx#__module-registry _%ctx173907%_ _%pre173913%_)
                _%pre173913%_)))))
    (define gx#core-import-module__%
      (lambda (_%rpath173775%_ _%reload?173776%_)
        (letrec ((_%import-source173778%_
                  (lambda (_%path173866%_)
                    (if (member _%path173866%_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _%path173866%_)
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
                                      (let ((_g175004_
                                             (gx#core-read-module
                                              _%path173866%_)))
                                        (begin
                                          (let ((_g175005_
                                                 (if (##values? _g175004_)
                                                     (##values-length
                                                      _g175004_)
                                                     1)))
                                            (if (not (##fx= _g175005_ 4))
                                                (error "Context expects 4 values"
                                                       _g175005_)))
                                          (let ((_%pre173874%_
                                                 (##values-ref _g175004_ 0))
                                                (_%id173875%_
                                                 (##values-ref _g175004_ 1))
                                                (_%ns173876%_
                                                 (##values-ref _g175004_ 2))
                                                (_%body173877%_
                                                 (##values-ref _g175004_ 3)))
                                            (let* ((_%prelude173887%_
                                                    (if (##structure-instance-of?
                                                         _%pre173874%_
                                                         'gx#prelude-context::t)
                                                        _%pre173874%_
                                                        (if (##structure-instance-of?
                                                             _%pre173874%_
                                                             'gx#module-context::t)
                                                            (gx#core-module->prelude-context
                                                             _%pre173874%_)
                                                            (if (string? _%pre173874%_)
                                                                (gx#core-module->prelude-context
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#core-import-module__0 _%pre173874%_))
                        (if (not _%pre173874%_)
                            (let ((_%$e173883%_
                                   (gx#current-expander-module-prelude)))
                              (if _%$e173883%_
                                  _%$e173883%_
                                  (let ((__obj174994
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
                                     __obj174994
                                     '#f)
                                    __obj174994)))
                            (error '"cannot import module; unknown prelude"
                                   _%rpath173775%_
                                   _%pre173874%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%ctx173889%_
                                                    (let ((__obj174995
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
                                                       __obj174995
                                                       _%id173875%_
                                                       _%prelude173887%_
                                                       _%ns173876%_
                                                       _%path173866%_)
                                                      __obj174995))
                                                   (_%body173891%_
                                                    (gx#core-expand-module-begin
                                                     _%body173877%_
                                                     _%ctx173889%_))
                                                   (_%body173893%_
                                                    (gx#core-quote-syntax__%
                                                     (gx#core-cons
                                                      '%#begin
                                                      _%body173891%_)
                                                     _%path173866%_
                                                     _%ctx173889%_
                                                     '())))
                                              (##unchecked-structure-set!
                                               _%ctx173889%_
                                               (__make-atomic-promise
                                                (lambda ()
                                                  (gx#eval-syntax*
                                                   _%body173893%_)))
                                               '10
                                               '#f
                                               '#f)
                                              (##unchecked-structure-set!
                                               _%ctx173889%_
                                               _%body173893%_
                                               '11
                                               '#f
                                               '#f)
                                              (__hash-put!
                                               gx#__module-registry
                                               _%path173866%_
                                               _%ctx173889%_)
                                              (__hash-put!
                                               gx#__module-registry
                                               _%id173875%_
                                               _%ctx173889%_)
                                              _%ctx173889%_)))))
                                    gx#current-export-expander-phi
                                    '#f))
                                 gx#current-import-expander-phi
                                 '#f))
                              gx#current-expander-path
                              (cons _%path173866%_
                                    (gx#current-expander-path))))
                           gx#current-expander-phi
                           '0))
                        gx#current-expander-marks
                        '()))
                     gx#current-expander-context
                     (gx#core-context-root__0))))
                 (_%import-submodule173779%_
                  (lambda (_%rpath173795%_)
                    (let* ((_%rpath173796173803%_ _%rpath173795%_)
                           (_%E173798173806%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%rpath173796173803%_
                                     '([origin . refs]))
                              '#!void))
                           (_%K173799173854%_
                            (lambda (_%refs173809%_ _%origin173810%_)
                              (let ((_%ctx173812%_
                                     (if _%origin173810%_
                                         (gx#core-import-module__%
                                          _%origin173810%_
                                          _%reload?173776%_)
                                         (gx#current-expander-context))))
                                (let _%lp173814%_ ((_%rest173816%_
                                                    _%refs173809%_)
                                                   (_%ctx173817%_
                                                    _%ctx173812%_))
                                  (let* ((_%rest173818173826%_ _%rest173816%_)
                                         (_%else173820173834%_
                                          (lambda () _%ctx173817%_))
                                         (_%K173822173842%_
                                          (lambda (_%rest173837%_ _%id173838%_)
                                            (let ((_%bind173840%_
                                                   (gx#resolve-identifier__%
                                                    _%id173838%_
                                                    '0
                                                    _%ctx173817%_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _%bind173840%_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _%bind173840%_
                                                         '5
                                                         '#f
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_%lp173814%_
                                                   _%rest173837%_
                                                   (##unchecked-structure-ref
                                                    _%bind173840%_
                                                    '5
                                                    '#f
                                                    '#f))
                                                  (error '"cannot import submodule; not bound as a module"
                                                         _%rpath173795%_
                                                         _%id173838%_
                                                         _%bind173840%_))))))
                                    (if (pair? _%rest173818173826%_)
                                        (let ((_%hd173823173845%_
                                               (##car _%rest173818173826%_))
                                              (_%tl173824173847%_
                                               (##cdr _%rest173818173826%_)))
                                          (let* ((_%id173850%_
                                                  _%hd173823173845%_)
                                                 (_%rest173852%_
                                                  _%tl173824173847%_))
                                            (_%K173822173842%_
                                             _%rest173852%_
                                             _%id173850%_)))
                                        (_%else173820173834%_))))))))
                      (if (pair? _%rpath173796173803%_)
                          (let ((_%hd173800173857%_
                                 (##car _%rpath173796173803%_))
                                (_%tl173801173859%_
                                 (##cdr _%rpath173796173803%_)))
                            (let* ((_%origin173862%_ _%hd173800173857%_)
                                   (_%refs173864%_ _%tl173801173859%_))
                              (_%K173799173854%_
                               _%refs173864%_
                               _%origin173862%_)))
                          (_%E173798173806%_))))))
          (let ((_%$e173781%_
                 (if (not _%reload?173776%_)
                     (__hash-get gx#__module-registry _%rpath173775%_)
                     '#f)))
            (if _%$e173781%_
                _%$e173781%_
                (if (list? _%rpath173775%_)
                    (_%import-submodule173779%_ _%rpath173775%_)
                    (if (gx#core-library-module-path? _%rpath173775%_)
                        (let ((_%ctx173786%_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _%rpath173775%_)
                                _%reload?173776%_)))
                          (__hash-put!
                           gx#__module-registry
                           _%rpath173775%_
                           _%ctx173786%_)
                          _%ctx173786%_)
                        (let* ((_%npath173789%_
                                (path-normalize _%rpath173775%_))
                               (_%$e173791%_
                                (if (not _%reload?173776%_)
                                    (__hash-get
                                     gx#__module-registry
                                     _%npath173789%_)
                                    '#f)))
                          (if _%$e173791%_
                              _%$e173791%_
                              (_%import-source173778%_
                               _%npath173789%_))))))))))
    (define gx#core-import-module__0
      (lambda (_%rpath173900%_)
        (let ((_%reload?173902%_ '#f))
          (gx#core-import-module__% _%rpath173900%_ _%reload?173902%_))))
    (define gx#core-import-module
      (lambda _g175006_
        (let ((_g175007_ (##length _g175006_)))
          (cond ((##fx= _g175007_ 1)
                 (apply gx#core-import-module__0 _g175006_))
                ((##fx= _g175007_ 2)
                 (apply gx#core-import-module__% _g175006_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g175006_))))))
    (define gx#core-read-module
      (lambda (_%path173764%_)
        (__with-catch
         (lambda (_%exn173766%_)
           (if (and (datum-parsing-exception? _%exn173766%_)
                    (eq? (datum-parsing-exception-filepos _%exn173766%_) '0))
               (gx#core-read-module/lang _%path173764%_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _%path173764%_
                (call-with-parameters__1
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_%g173768173770%_)
                      (display-exception__% _%exn173766%_ _%g173768173770%_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _%path173764%_)))))
    (define gx#core-read-module/sexp
      (lambda (_%path173616%_)
        (let _%lp173618%_ ((_%body173620%_
                            (read-syntax-from-file _%path173616%_))
                           (_%pre173621%_ '#f)
                           (_%ns173622%_ '#f)
                           (_%pkg173623%_ '#f))
          (let* ((_%e173624173648%_ _%body173620%_)
                 (_%E173640173674%_
                  (lambda ()
                    (let ((_g175008_
                           (if _%pkg173623%_
                               (values _%pre173621%_
                                       _%ns173622%_
                                       _%pkg173623%_)
                               (gx#core-read-module-package
                                _%path173616%_
                                _%pre173621%_
                                _%ns173622%_))))
                      (begin
                        (let ((_g175009_
                               (if (##values? _g175008_)
                                   (##values-length _g175008_)
                                   1)))
                          (if (not (##fx= _g175009_ 3))
                              (error "Context expects 3 values" _g175009_)))
                        (let ((_%pre173652%_ (##values-ref _g175008_ 0))
                              (_%ns173653%_ (##values-ref _g175008_ 1))
                              (_%pkg173654%_ (##values-ref _g175008_ 2)))
                          (let* ((_%prelude173660%_
                                  (if (gx#core-bound-module-prelude?
                                       _%pre173652%_)
                                      (gx#syntax-local-e__0 _%pre173652%_)
                                      (if (gx#core-library-module-path?
                                           _%pre173652%_)
                                          (gx#core-resolve-library-module-path
                                           _%pre173652%_)
                                          (if (gx#stx-string? _%pre173652%_)
                                              (gx#core-resolve-module-path__%
                                               _%pre173652%_
                                               _%path173616%_)
                                              (gx#stx-e _%pre173652%_)))))
                                 (_%path-id173662%_
                                  (gx#core-module-path->namespace
                                   _%path173616%_))
                                 (_%pkg-id173664%_
                                  (if _%pkg173654%_
                                      (##string-append
                                       _%pkg173654%_
                                       '"/"
                                       _%path-id173662%_)
                                      _%path-id173662%_))
                                 (_%module-id173666%_
                                  (##string->symbol _%pkg-id173664%_))
                                 (_%module-ns173671%_
                                  (if (eq? _%ns173653%_ '#!void)
                                      '#f
                                      (let ((_%$e173668%_ _%ns173653%_))
                                        (if _%$e173668%_
                                            _%$e173668%_
                                            _%pkg-id173664%_)))))
                            (values _%prelude173660%_
                                    _%module-id173666%_
                                    _%module-ns173671%_
                                    _%body173620%_)))))))
                 (_%E173633173706%_
                  (lambda ()
                    (if (gx#stx-pair? _%e173624173648%_)
                        (let ((_%e173641173678%_
                               (gx#syntax-e _%e173624173648%_)))
                          (let ((_%hd173642173681%_ (##car _%e173641173678%_))
                                (_%tl173643173683%_ (##cdr _%e173641173678%_)))
                            (if (eq? (gx#stx-e _%hd173642173681%_) 'package:)
                                (if (gx#stx-pair? _%tl173643173683%_)
                                    (let ((_%e173644173686%_
                                           (gx#syntax-e _%tl173643173683%_)))
                                      (let ((_%hd173645173689%_
                                             (##car _%e173644173686%_))
                                            (_%tl173646173691%_
                                             (##cdr _%e173644173686%_)))
                                        (let* ((_%pkg173694%_
                                                _%hd173645173689%_)
                                               (_%rest173696%_
                                                _%tl173646173691%_)
                                               (_%pkg173704%_
                                                (if (gx#identifier?
                                                     _%pkg173694%_)
                                                    (symbol->string
                                                     (gx#stx-e _%pkg173694%_))
                                                    (if (or (gx#stx-string?
                                                             _%pkg173694%_)
                                                            (gx#stx-false?
                                                             _%pkg173694%_))
                                                        (gx#stx-e
                                                         _%pkg173694%_)
                                                        (gx#raise-syntax-error
                                                         'import
                                                         '"Bad syntax; Illegal package name"
                                                         _%pkg173694%_)))))
                                          (_%lp173618%_
                                           _%rest173696%_
                                           _%pre173621%_
                                           _%ns173622%_
                                           _%pkg173704%_))))
                                    (_%E173640173674%_))
                                (_%E173640173674%_))))
                        (_%E173640173674%_))))
                 (_%E173626173736%_
                  (lambda ()
                    (if (gx#stx-pair? _%e173624173648%_)
                        (let ((_%e173634173710%_
                               (gx#syntax-e _%e173624173648%_)))
                          (let ((_%hd173635173713%_ (##car _%e173634173710%_))
                                (_%tl173636173715%_ (##cdr _%e173634173710%_)))
                            (if (eq? (gx#stx-e _%hd173635173713%_) 'namespace:)
                                (if (gx#stx-pair? _%tl173636173715%_)
                                    (let ((_%e173637173718%_
                                           (gx#syntax-e _%tl173636173715%_)))
                                      (let ((_%hd173638173721%_
                                             (##car _%e173637173718%_))
                                            (_%tl173639173723%_
                                             (##cdr _%e173637173718%_)))
                                        (let* ((_%ns173726%_
                                                _%hd173638173721%_)
                                               (_%rest173728%_
                                                _%tl173639173723%_)
                                               (_%ns173734%_
                                                (if (gx#identifier?
                                                     _%ns173726%_)
                                                    (symbol->string
                                                     (gx#stx-e _%ns173726%_))
                                                    (if (gx#stx-string?
                                                         _%ns173726%_)
                                                        (gx#stx-e _%ns173726%_)
                                                        (if (gx#stx-false?
                                                             _%ns173726%_)
                                                            '#!void
                                                            (gx#raise-syntax-error
                                                             'import
                                                             '"Bad syntax; illegal namespace"
                                                             _%ns173726%_))))))
                                          (_%lp173618%_
                                           _%rest173728%_
                                           _%pre173621%_
                                           _%ns173734%_
                                           _%pkg173623%_))))
                                    (_%E173633173706%_))
                                (_%E173633173706%_))))
                        (_%E173633173706%_))))
                 (_%E173625173760%_
                  (lambda ()
                    (if (gx#stx-pair? _%e173624173648%_)
                        (let ((_%e173627173740%_
                               (gx#syntax-e _%e173624173648%_)))
                          (let ((_%hd173628173743%_ (##car _%e173627173740%_))
                                (_%tl173629173745%_ (##cdr _%e173627173740%_)))
                            (if (eq? (gx#stx-e _%hd173628173743%_) 'prelude:)
                                (if (gx#stx-pair? _%tl173629173745%_)
                                    (let ((_%e173630173748%_
                                           (gx#syntax-e _%tl173629173745%_)))
                                      (let ((_%hd173631173751%_
                                             (##car _%e173630173748%_))
                                            (_%tl173632173753%_
                                             (##cdr _%e173630173748%_)))
                                        (let* ((_%prelude173756%_
                                                _%hd173631173751%_)
                                               (_%rest173758%_
                                                _%tl173632173753%_))
                                          (_%lp173618%_
                                           _%rest173758%_
                                           _%prelude173756%_
                                           _%ns173622%_
                                           _%pkg173623%_))))
                                    (_%E173626173736%_))
                                (_%E173626173736%_))))
                        (_%E173626173736%_)))))
            (_%E173625173760%_)))))
    (define gx#core-read-module/lang
      (lambda (_%path173437%_)
        (letrec ((_%default-read-module-body173439%_
                  (lambda (_%inp173608%_)
                    (let _%lp173610%_ ((_%body173612%_ '()))
                      (let ((_%next173614%_ (read-syntax__% _%inp173608%_)))
                        (if (eof-object? _%next173614%_)
                            (reverse _%body173612%_)
                            (_%lp173610%_
                             (cons _%next173614%_ _%body173612%_)))))))
                 (_%read-body173440%_
                  (lambda (_%inp173525%_
                           _%pre173526%_
                           _%ns173527%_
                           _%pkg173528%_
                           _%args173529%_)
                    (let ((_g175010_
                           (if _%pkg173528%_
                               (values _%pre173526%_
                                       _%ns173527%_
                                       _%pkg173528%_)
                               (gx#core-read-module-package
                                _%path173437%_
                                _%pre173526%_
                                _%ns173527%_))))
                      (begin
                        (let ((_g175011_
                               (if (##values? _g175010_)
                                   (##values-length _g175010_)
                                   1)))
                          (if (not (##fx= _g175011_ 3))
                              (error "Context expects 3 values" _g175011_)))
                        (let ((_%pre173531%_ (##values-ref _g175010_ 0))
                              (_%ns173532%_ (##values-ref _g175010_ 1))
                              (_%pkg173533%_ (##values-ref _g175010_ 2)))
                          (let* ((_%prelude173535%_
                                  (gx#import-module__0 _%pre173531%_))
                                 (_%read-module-body173590%_
                                  (let ((_%$e173581%_
                                         (__find (lambda (_%e173536173538%_)
                                                   (let* ((_%e173536173540173550%_
                                                           _%e173536173538%_)
                                                          (_%else173542173558%_
                                                           (lambda () '#f))
                                                          (_%K173544173562%_
                                                           (lambda () '#t)))
                                                     (if (##structure-direct-instance-of?
                                                          _%e173536173540173550%_
                                                          'gx#module-export::t)
                                                         (let* ((_%e173545173565%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##unchecked-structure-ref
                          _%e173536173540173550%_
                          '1
                          '#f
                          '#f))
                        (_%e173546173568%_
                         (##unchecked-structure-ref
                          _%e173536173540173550%_
                          '2
                          '#f
                          '#f))
                        (_%e173547173571%_
                         (##unchecked-structure-ref
                          _%e173536173540173550%_
                          '3
                          '#f
                          '#f)))
                   (if (##eq? _%e173547173571%_ '1)
                       (let ((_%e173548173574%_
                              (##unchecked-structure-ref
                               _%e173536173540173550%_
                               '4
                               '#f
                               '#f)))
                         (if ((lambda (_%g173576173578%_)
                                (eq? _%g173576173578%_ 'read-module-body))
                              _%e173548173574%_)
                             (_%K173544173562%_)
                             (_%else173542173558%_)))
                       (_%else173542173558%_)))
                 (_%else173542173558%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (##unchecked-structure-ref
                                                  _%prelude173535%_
                                                  '9
                                                  '#f
                                                  '#f))))
                                    (if _%$e173581%_
                                        ((lambda (_%xport173584%_)
                                           (let ((_%proc173587%_
                                                  (__with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _%xport173584%_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _%proc173587%_)
                                                 _%proc173587%_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _%path173437%_
                                                  _%pre173531%_
                                                  _%proc173587%_))))
                                         _%$e173581%_)
                                        _%default-read-module-body173439%_)))
                                 (_%path-id173592%_
                                  (gx#core-module-path->namespace
                                   _%path173437%_))
                                 (_%pkg-id173594%_
                                  (if _%pkg173533%_
                                      (##string-append
                                       _%pkg173533%_
                                       '"/"
                                       _%path-id173592%_)
                                      _%path-id173592%_))
                                 (_%module-id173596%_
                                  (##string->symbol _%pkg-id173594%_))
                                 (_%module-ns173601%_
                                  (let ((_%$e173598%_ _%ns173532%_))
                                    (if _%$e173598%_
                                        _%$e173598%_
                                        _%pkg-id173594%_)))
                                 (_%body173605%_
                                  (call-with-parameters__1
                                   (lambda ()
                                     (call-with-parameters__1
                                      (lambda ()
                                        (_%read-module-body173590%_
                                         _%inp173525%_))
                                      gx#current-module-reader-args
                                      _%args173529%_))
                                   gx#current-module-reader-path
                                   _%path173437%_)))
                            (values _%prelude173535%_
                                    _%module-id173596%_
                                    _%module-ns173601%_
                                    _%body173605%_)))))))
                 (_%string-e173441%_
                  (lambda (_%obj173519%_ _%what173520%_)
                    (if (string? _%obj173519%_)
                        _%obj173519%_
                        (if (symbol? _%obj173519%_)
                            (##symbol->string _%obj173519%_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _%what173520%_)
                             _%path173437%_
                             _%obj173519%_)))))
                 (_%read-lang-args173442%_
                  (lambda (_%inp173474%_ _%args173475%_)
                    (let* ((_%args173476173484%_ _%args173475%_)
                           (_%else173478173492%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _%path173437%_)))
                           (_%K173480173507%_
                            (lambda (_%args173495%_ _%prelude173496%_)
                              (let* ((_%pkg173498%_
                                      (pgetq__0 'package: _%args173495%_))
                                     (_%pkg173500%_
                                      (if _%pkg173498%_
                                          (_%string-e173441%_
                                           _%pkg173498%_
                                           '"package")
                                          '#f))
                                     (_%ns173502%_
                                      (pgetq__0 'namespace: _%args173495%_))
                                     (_%ns173504%_
                                      (if _%ns173502%_
                                          (_%string-e173441%_
                                           _%ns173502%_
                                           '"namespace")
                                          '#f)))
                                (_%read-body173440%_
                                 _%inp173474%_
                                 _%prelude173496%_
                                 _%ns173504%_
                                 _%pkg173500%_
                                 _%args173495%_)))))
                      (if (pair? _%args173476173484%_)
                          (let ((_%hd173481173510%_
                                 (##car _%args173476173484%_))
                                (_%tl173482173512%_
                                 (##cdr _%args173476173484%_)))
                            (let* ((_%prelude173515%_ _%hd173481173510%_)
                                   (_%args173517%_ _%tl173482173512%_))
                              (_%K173480173507%_
                               _%args173517%_
                               _%prelude173515%_)))
                          (_%else173478173492%_)))))
                 (_%read-lang173443%_
                  (lambda (_%inp173448%_)
                    (let* ((_%head173450%_ (read-line _%inp173448%_))
                           (_%$e173452%_
                            (string-index__0 _%head173450%_ '#\space)))
                      (if _%$e173452%_
                          ((lambda (_%ix173455%_)
                             (let ((_%lang173457%_
                                    (substring
                                     _%head173450%_
                                     '0
                                     _%ix173455%_)))
                               (if (equal? _%lang173457%_ '"#lang")
                                   (let* ((_%rest173459%_
                                           (substring
                                            _%head173450%_
                                            (##fx+ _%ix173455%_ '1)
                                            (string-length _%head173450%_)))
                                          (_%args173470%_
                                           (__with-catch
                                            (lambda (_%g173460173462%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _%path173437%_
                                               _%g173460173462%_))
                                            (lambda ()
                                              (call-with-input-string
                                               _%rest173459%_
                                               (lambda (_%g173465173467%_)
                                                 (read-all
                                                  _%g173465173467%_
                                                  read)))))))
                                     (_%read-lang-args173442%_
                                      _%inp173448%_
                                      _%args173470%_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _%path173437%_))))
                           _%$e173452%_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _%path173437%_)))))
                 (_%read-e173444%_
                  (lambda (_%inp173446%_)
                    (if (eq? (peek-char _%inp173446%_) '#\#)
                        (_%read-lang173443%_ _%inp173446%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _%path173437%_)))))
          (gx#call-with-input-source-file _%path173437%_ _%read-e173444%_))))
    (define gx#core-read-module-package
      (lambda (_%path173385%_ _%pre173386%_ _%ns173387%_)
        (letrec ((_%string-e173389%_
                  (lambda (_%e173432%_)
                    (if (symbol? _%e173432%_)
                        (##symbol->string _%e173432%_)
                        (if (string? _%e173432%_)
                            _%e173432%_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%e173432%_))))))
          (let _%lp173391%_ ((_%dir173393%_ (path-directory _%path173385%_))
                             (_%pkg-path173394%_ '()))
            (let ((_%gerbil.pkg173396%_
                   (path-expand '"gerbil.pkg" _%dir173393%_)))
              (if (##file-exists? _%gerbil.pkg173396%_)
                  (let ((_%plist173398%_
                         (gx#core-library-package-plist__% _%dir173393%_ '#t)))
                    (if (null? _%plist173398%_)
                        (let ((_%pkg173401%_
                               (if (null? _%pkg-path173394%_)
                                   '#f
                                   (string-join _%pkg-path173394%_ '"/"))))
                          (values _%pre173386%_ _%ns173387%_ _%pkg173401%_))
                        (if (list? _%plist173398%_)
                            (let* ((_%root173404%_
                                    (pgetq__0 'package: _%plist173398%_))
                                   (_%pkg173408%_
                                    (let ((_%pkg-path173406%_
                                           (if _%root173404%_
                                               (cons (_%string-e173389%_
                                                      _%root173404%_)
                                                     _%pkg-path173394%_)
                                               _%pkg-path173394%_)))
                                      (if (null? _%pkg-path173406%_)
                                          '#f
                                          (string-join
                                           _%pkg-path173406%_
                                           '"/"))))
                                   (_%ns173415%_
                                    (let ((_%ns173413%_
                                           (let ((_%$e173410%_ _%ns173387%_))
                                             (if _%$e173410%_
                                                 _%$e173410%_
                                                 (pgetq__0
                                                  'namespace:
                                                  _%plist173398%_)))))
                                      (if _%ns173413%_
                                          (_%string-e173389%_ _%ns173413%_)
                                          '#f)))
                                   (_%pre173420%_
                                    (let ((_%$e173417%_ _%pre173386%_))
                                      (if _%$e173417%_
                                          _%$e173417%_
                                          (pgetq__0
                                           'prelude:
                                           _%plist173398%_)))))
                              (values _%pre173420%_
                                      _%ns173415%_
                                      _%pkg173408%_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%plist173398%_))))
                  (let ((_%dir*173424%_
                         (path-strip-trailing-directory-separator
                          _%dir173393%_)))
                    (if (or (__string-empty? _%dir*173424%_)
                            (equal? _%dir173393%_ _%dir*173424%_))
                        (values _%pre173386%_ _%ns173387%_ '#f)
                        (let ((_%xpath173429%_
                               (path-strip-directory _%dir*173424%_))
                              (_%xdir173430%_ (path-directory _%dir*173424%_)))
                          (_%lp173391%_
                           _%xdir173430%_
                           (cons _%xpath173429%_ _%pkg-path173394%_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_%path173383%_)
        (path-strip-extension (path-strip-directory _%path173383%_))))
    (define gx#core-module-path->id
      (lambda (_%path173381%_)
        (##string->symbol (gx#core-module-path->namespace _%path173381%_))))
    (define gx#core-resolve-module-path__%
      (lambda (_%stx-path173360%_ _%rel173361%_)
        (let* ((_%path173363%_ (gx#stx-e _%stx-path173360%_))
               (_%path173365%_
                (if (__string-empty? (path-extension _%path173363%_))
                    (##string-append _%path173363%_ '".ss")
                    _%path173363%_)))
          (gx#core-resolve-path__%
           _%path173365%_
           (let ((_%$e173368%_ (gx#stx-source _%stx-path173360%_)))
             (if _%$e173368%_ _%$e173368%_ _%rel173361%_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_%stx-path173374%_)
        (let ((_%rel173376%_ '#f))
          (gx#core-resolve-module-path__% _%stx-path173374%_ _%rel173376%_))))
    (define gx#core-resolve-module-path
      (lambda _g175012_
        (let ((_g175013_ (##length _g175012_)))
          (cond ((##fx= _g175013_ 1)
                 (apply gx#core-resolve-module-path__0 _g175012_))
                ((##fx= _g175013_ 2)
                 (apply gx#core-resolve-module-path__% _g175012_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g175012_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_%libpath173245%_)
        (let* ((_%spath173247%_ (symbol->string (gx#stx-e _%libpath173245%_)))
               (_%spath173249%_
                (substring
                 _%spath173247%_
                 '1
                 (##string-length _%spath173247%_)))
               (_%ext173251%_ (path-extension _%spath173249%_))
               (_%ssi173253%_
                (if (__string-empty? _%ext173251%_)
                    (##string-append _%spath173249%_ '".ssi")
                    (##string-append
                     (path-strip-extension _%spath173249%_)
                     '".ssi")))
               (_%srcs173257%_
                (if (__string-empty? _%ext173251%_)
                    (##map (lambda (_%ext173255%_)
                             (string-append _%spath173249%_ _%ext173255%_))
                           '(".ss" ".sld" ".scm"))
                    (cons _%spath173249%_ '()))))
          (let _%lp173260%_ ((_%rest173262%_ (load-path)))
            (let* ((_%rest173263173272%_ _%rest173262%_)
                   (_%E173266173276%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rest173263173272%_
                             '([dir . rest])
                             '([]))
                      '#!void)))
              (let ((_%K173268173347%_
                     (lambda (_%rest173287%_ _%dir173288%_)
                       (letrec ((_%resolve173290%_
                                 (lambda (_%ssi173303%_ _%srcs173304%_)
                                   (let ((_%compiled-path173306%_
                                          (path-expand
                                           _%ssi173303%_
                                           _%dir173288%_)))
                                     (if (##file-exists?
                                          _%compiled-path173306%_)
                                         (path-normalize
                                          _%compiled-path173306%_)
                                         (let _%lpr173308%_ ((_%rest-src173310%_
                                                              _%srcs173304%_))
                                           (let* ((_%rest-src173311173319%_
                                                   _%rest-src173310%_)
                                                  (_%else173313173327%_
                                                   (lambda ()
                                                     (_%lp173260%_
                                                      _%rest173287%_)))
                                                  (_%K173315173335%_
                                                   (lambda (_%rest-src173330%_
                                                            _%src173331%_)
                                                     (let ((_%src-path173333%_
                                                            (path-expand
                                                             _%src173331%_
                                                             _%dir173288%_)))
                                                       (if (##file-exists?
                                                            _%src-path173333%_)
                                                           (path-normalize
                                                            _%src-path173333%_)
                                                           (_%lpr173308%_
                                                            _%rest-src173330%_))))))
                                             (if (pair? _%rest-src173311173319%_)
                                                 (let ((_%hd173316173338%_
                                                        (##car _%rest-src173311173319%_))
                                                       (_%tl173317173340%_
                                                        (##cdr _%rest-src173311173319%_)))
                                                   (let* ((_%src173343%_
                                                           _%hd173316173338%_)
                                                          (_%rest-src173345%_
                                                           _%tl173317173340%_))
                                                     (_%K173315173335%_
                                                      _%rest-src173345%_
                                                      _%src173343%_)))
                                                 (_%else173313173327%_)))))))))
                         (let ((_%$e173292%_
                                (gx#core-library-package-path-prefix
                                 _%dir173288%_)))
                           (if _%$e173292%_
                               ((lambda (_%prefix173295%_)
                                  (if (string-prefix?
                                       _%prefix173295%_
                                       _%spath173249%_)
                                      (let ((_%ssi173299%_
                                             (substring
                                              _%ssi173253%_
                                              (string-length _%prefix173295%_)
                                              (##string-length _%ssi173253%_)))
                                            (_%srcs173300%_
                                             (##map (lambda (_%src173297%_)
                                                      (substring
                                                       _%src173297%_
                                                       (string-length
                                                        _%prefix173295%_)
                                                       (string-length
                                                        _%src173297%_)))
                                                    _%srcs173257%_)))
                                        (_%resolve173290%_
                                         _%ssi173299%_
                                         _%srcs173300%_))
                                      (_%lp173260%_ _%rest173287%_)))
                                _%$e173292%_)
                               (_%resolve173290%_
                                _%ssi173253%_
                                _%srcs173257%_))))))
                    (_%K173267173281%_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"cannot find library module"
                        _%libpath173245%_))))
                (let ((_%try-match173265173284%_
                       (lambda ()
                         (if (null? _%rest173263173272%_)
                             (_%K173267173281%_)
                             (_%E173266173276%_)))))
                  (if (pair? _%rest173263173272%_)
                      (let ((_%tl173270173352%_ (##cdr _%rest173263173272%_))
                            (_%hd173269173350%_ (##car _%rest173263173272%_)))
                        (let ((_%dir173355%_ _%hd173269173350%_)
                              (_%rest173357%_ _%tl173270173352%_))
                          (_%K173268173347%_ _%rest173357%_ _%dir173355%_)))
                      (_%try-match173265173284%_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_%modpath173213%_)
        (letrec ((_%resolve173215%_
                  (lambda (_%path173236%_ _%base173237%_)
                    (let ((_%$e173239%_
                           (string-rindex__0 _%base173237%_ '#\/)))
                      (if _%$e173239%_
                          ((lambda (_%idx173242%_)
                             (gx#core-resolve-library-module-path
                              (##string->symbol
                               (string-append
                                '":"
                                (substring _%base173237%_ '0 _%idx173242%_)
                                '"/"
                                _%path173236%_))))
                           _%$e173239%_)
                          (gx#core-resolve-library-module-path
                           (##string->symbol
                            (string-append '":" _%path173236%_))))))))
          (let ((_%spath173217%_ (symbol->string (gx#stx-e _%modpath173213%_)))
                (_%mod173218%_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _%mod173218%_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"cannot resolve relative module path; not in module context"
                 _%modpath173213%_))
            (let ((_%mpath173220%_
                   (symbol->string
                    (##structure-ref
                     _%mod173218%_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _%lp173222%_ ((_%spath173224%_ _%spath173217%_)
                                 (_%mpath173225%_ _%mpath173220%_))
                (if (string-prefix? '"../" _%spath173224%_)
                    (let ((_%$e173228%_
                           (string-rindex__0 _%mpath173225%_ '#\/)))
                      (if _%$e173228%_
                          ((lambda (_%idx173231%_)
                             (_%lp173222%_
                              (substring
                               _%spath173224%_
                               '3
                               (string-length _%spath173224%_))
                              (substring _%mpath173225%_ '0 _%idx173231%_)))
                           _%$e173228%_)
                          (gx#raise-syntax-error
                           '#f
                           '"cannot resolve relative module path; illegal traversal"
                           _%modpath173213%_)))
                    (if (string-prefix? '"./" _%spath173224%_)
                        (_%lp173222%_
                         (substring
                          _%spath173224%_
                          '2
                          (string-length _%spath173224%_))
                         _%mpath173225%_)
                        (_%resolve173215%_
                         _%spath173224%_
                         _%mpath173225%_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_%dir173205%_)
        (let ((_%$e173207%_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _%dir173205%_))))
          (if _%$e173207%_
              ((lambda (_%pkg173210%_)
                 (##string-append (symbol->string _%pkg173210%_) '"/"))
               _%$e173207%_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_%dir173175%_ _%exists?173176%_)
        (let ((_%$e173178%_ (__hash-get gx#__module-pkg-cache _%dir173175%_)))
          (if _%$e173178%_
              _%$e173178%_
              (let* ((_%gerbil.pkg173182%_
                      (path-expand '"gerbil.pkg" _%dir173175%_))
                     (_%plist173192%_
                      (if (or _%exists?173176%_
                              (##file-exists? _%gerbil.pkg173182%_))
                          (let ((_%e173187%_
                                 (gx#call-with-input-source-file
                                  _%gerbil.pkg173182%_
                                  read)))
                            (if (eof-object? _%e173187%_)
                                '()
                                (if (list? _%e173187%_)
                                    _%e173187%_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _%gerbil.pkg173182%_
                                     _%e173187%_))))
                          '())))
                (__hash-put!
                 gx#__module-pkg-cache
                 _%dir173175%_
                 _%plist173192%_)
                _%plist173192%_)))))
    (define gx#core-library-package-plist__0
      (lambda (_%dir173198%_)
        (let ((_%exists?173200%_ '#f))
          (gx#core-library-package-plist__% _%dir173198%_ _%exists?173200%_))))
    (define gx#core-library-package-plist
      (lambda _g175014_
        (let ((_g175015_ (##length _g175014_)))
          (cond ((##fx= _g175015_ 1)
                 (apply gx#core-library-package-plist__0 _g175014_))
                ((##fx= _g175015_ 2)
                 (apply gx#core-library-package-plist__% _g175014_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g175014_))))))
    (define gx#core-library-module-path?
      (lambda (_%stx173172%_)
        (gx#core-special-module-path? _%stx173172%_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_%stx173170%_)
        (gx#core-special-module-path? _%stx173170%_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_%stx173165%_ _%char173166%_)
        (if (gx#identifier? _%stx173165%_)
            (if (interned-symbol? (gx#stx-e _%stx173165%_))
                (let ((_%str173168%_
                       (symbol->string (gx#stx-e _%stx173165%_))))
                  (if (##fx> (##string-length _%str173168%_) '1)
                      (eq? (string-ref _%str173168%_ '0) _%char173166%_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_%stx173159%_)
        (gx#core-bound-identifier?__%
         _%stx173159%_
         (lambda (_%g173160173162%_)
           (gx#expander-binding?__% _%g173160173162%_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_%stx173153%_)
        (gx#core-bound-identifier?__%
         _%stx173153%_
         (lambda (_%g173154173156%_)
           (gx#expander-binding?__% _%g173154173156%_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_%stx173140%_)
        (letrec ((_%module-prelude?173142%_
                  (lambda (_%e173148%_)
                    (let ((_%$e173150%_
                           (##structure-instance-of?
                            _%e173148%_
                            'gx#module-context::t)))
                      (if _%$e173150%_
                          _%$e173150%_
                          (##structure-instance-of?
                           _%e173148%_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _%stx173140%_
           (lambda (_%g173143173145%_)
             (gx#expander-binding?__%
              _%g173143173145%_
              _%module-prelude?173142%_))))))
    (define gx#core-bind-import!__%
      (lambda (_%in173071%_ _%ctx173072%_ _%force-weak?173073%_)
        (let* ((_%in173074173083%_ _%in173071%_)
               (_%E173076173086%_
                (lambda ()
                  (error '"No clause matching"
                         _%in173074173083%_
                         '((module-import source key phi weak?)))
                  '#!void))
               (_%K173077173099%_
                (lambda (_%weak?173089%_
                         _%phi173090%_
                         _%key173091%_
                         _%source173092%_)
                  (gx#core-bind!__%
                   _%key173091%_
                   (let* ((_%e173094%_
                           (gx#core-resolve-module-export _%source173092%_))
                          (__obj174996
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
                      __obj174996
                      (##unchecked-structure-ref _%e173094%_ '1 '#f '#f)
                      _%key173091%_
                      _%phi173090%_
                      _%e173094%_
                      (##unchecked-structure-ref _%source173092%_ '1 '#f '#f)
                      (let ((_%$e173096%_ _%force-weak?173073%_))
                        (if _%$e173096%_ _%$e173096%_ _%weak?173089%_)))
                     __obj174996)
                   gx#core-context-rebind?
                   _%phi173090%_
                   _%ctx173072%_))))
          (if (##structure-direct-instance-of?
               _%in173074173083%_
               'gx#module-import::t)
              (let* ((_%e173078173102%_
                      (##unchecked-structure-ref
                       _%in173074173083%_
                       '1
                       '#f
                       '#f))
                     (_%source173105%_ _%e173078173102%_)
                     (_%e173079173107%_
                      (##unchecked-structure-ref
                       _%in173074173083%_
                       '2
                       '#f
                       '#f))
                     (_%key173110%_ _%e173079173107%_)
                     (_%e173080173112%_
                      (##unchecked-structure-ref
                       _%in173074173083%_
                       '3
                       '#f
                       '#f))
                     (_%phi173115%_ _%e173080173112%_)
                     (_%e173081173117%_
                      (##unchecked-structure-ref
                       _%in173074173083%_
                       '4
                       '#f
                       '#f))
                     (_%weak?173120%_ _%e173081173117%_))
                (_%K173077173099%_
                 _%weak?173120%_
                 _%phi173115%_
                 _%key173110%_
                 _%source173105%_))
              (_%E173076173086%_)))))
    (define gx#core-bind-import!__0
      (lambda (_%in173125%_)
        (let* ((_%ctx173127%_ (gx#current-expander-context))
               (_%force-weak?173129%_ '#f))
          (gx#core-bind-import!__%
           _%in173125%_
           _%ctx173127%_
           _%force-weak?173129%_))))
    (define gx#core-bind-import!__1
      (lambda (_%in173131%_ _%ctx173132%_)
        (let ((_%force-weak?173134%_ '#f))
          (gx#core-bind-import!__%
           _%in173131%_
           _%ctx173132%_
           _%force-weak?173134%_))))
    (define gx#core-bind-import!
      (lambda _g175016_
        (let ((_g175017_ (##length _g175016_)))
          (cond ((##fx= _g175017_ 1) (apply gx#core-bind-import!__0 _g175016_))
                ((##fx= _g175017_ 2) (apply gx#core-bind-import!__1 _g175016_))
                ((##fx= _g175017_ 3) (apply gx#core-bind-import!__% _g175016_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g175016_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_%in173057%_ _%ctx173058%_)
        (gx#core-bind-import!__% _%in173057%_ _%ctx173058%_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_%in173063%_)
        (let ((_%ctx173065%_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _%in173063%_ _%ctx173065%_))))
    (define gx#core-bind-weak-import!
      (lambda _g175018_
        (let ((_g175019_ (##length _g175018_)))
          (cond ((##fx= _g175019_ 1)
                 (apply gx#core-bind-weak-import!__0 _g175018_))
                ((##fx= _g175019_ 2)
                 (apply gx#core-bind-weak-import!__% _g175018_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g175018_))))))
    (define gx#core-resolve-module-export
      (lambda (_%out172950%_)
        (letrec ((_%subst172952%_
                  (lambda (_%key172997%_)
                    (let* ((_%key172998173006%_ _%key172997%_)
                           (_%else173000173014%_ (lambda () _%key172997%_))
                           (_%K173002173044%_
                            (lambda (_%mark173017%_ _%id173018%_)
                              (let* ((_%mark173019173025%_ _%mark173017%_)
                                     (_%E173021173028%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark173019173025%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K173022173036%_
                                      (lambda (_%subst173031%_)
                                        (let ((_%$e173033%_
                                               (if _%subst173031%_
                                                   (hash-get
                                                    _%subst173031%_
                                                    _%id173018%_)
                                                   '#f)))
                                          (if _%$e173033%_
                                              _%$e173033%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _%key172997%_))))))
                                (if (##structure-instance-of?
                                     _%mark173019173025%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e173023173039%_
                                            (##unchecked-structure-ref
                                             _%mark173019173025%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst173042%_ _%e173023173039%_))
                                      (_%K173022173036%_ _%subst173042%_))
                                    (_%E173021173028%_))))))
                      (if (pair? _%key172998173006%_)
                          (let ((_%hd173003173047%_
                                 (##car _%key172998173006%_))
                                (_%tl173004173049%_
                                 (##cdr _%key172998173006%_)))
                            (let* ((_%id173052%_ _%hd173003173047%_)
                                   (_%mark173054%_ _%tl173004173049%_))
                              (_%K173002173044%_ _%mark173054%_ _%id173052%_)))
                          (_%else173000173014%_))))))
          (let* ((_%out172953172963%_ _%out172950%_)
                 (_%E172955172966%_
                  (lambda ()
                    (error '"No clause matching"
                           _%out172953172963%_
                           '((module-export ctx key phi _ _)))
                    '#!void))
                 (_%K172956172973%_
                  (lambda (_%phi172969%_ _%key172970%_ _%ctx172971%_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _%ctx172971%_ _%phi172969%_)
                     (_%subst172952%_ _%key172970%_)))))
            (if (##structure-direct-instance-of?
                 _%out172953172963%_
                 'gx#module-export::t)
                (let* ((_%e172957172976%_
                        (##unchecked-structure-ref
                         _%out172953172963%_
                         '1
                         '#f
                         '#f))
                       (_%ctx172979%_ _%e172957172976%_)
                       (_%e172958172981%_
                        (##unchecked-structure-ref
                         _%out172953172963%_
                         '2
                         '#f
                         '#f))
                       (_%key172984%_ _%e172958172981%_)
                       (_%e172959172986%_
                        (##unchecked-structure-ref
                         _%out172953172963%_
                         '3
                         '#f
                         '#f))
                       (_%phi172989%_ _%e172959172986%_)
                       (_%e172960172991%_
                        (##unchecked-structure-ref
                         _%out172953172963%_
                         '4
                         '#f
                         '#f))
                       (_%e172961172994%_
                        (##unchecked-structure-ref
                         _%out172953172963%_
                         '5
                         '#f
                         '#f)))
                  (_%K172956172973%_
                   _%phi172989%_
                   _%key172984%_
                   _%ctx172979%_))
                (_%E172955172966%_))))))
    (define gx#core-module-export->import__%
      (lambda (_%out172876%_ _%rename172877%_ _%dphi172878%_)
        (let* ((_%out172879172889%_ _%out172876%_)
               (_%E172881172892%_
                (lambda ()
                  (error '"No clause matching"
                         _%out172879172889%_
                         '((module-export ctx key phi name weak?)))
                  '#!void))
               (_%K172882172904%_
                (lambda (_%weak?172895%_
                         _%name172896%_
                         _%phi172897%_
                         _%key172898%_
                         _%ctx172899%_)
                  (##structure
                   gx#module-import::t
                   _%out172876%_
                   (let ((_%$e172901%_ _%rename172877%_))
                     (if _%$e172901%_ _%$e172901%_ _%name172896%_))
                   (fx+ _%phi172897%_ _%dphi172878%_)
                   _%weak?172895%_))))
          (if (##structure-direct-instance-of?
               _%out172879172889%_
               'gx#module-export::t)
              (let* ((_%e172883172907%_
                      (##unchecked-structure-ref
                       _%out172879172889%_
                       '1
                       '#f
                       '#f))
                     (_%ctx172910%_ _%e172883172907%_)
                     (_%e172884172912%_
                      (##unchecked-structure-ref
                       _%out172879172889%_
                       '2
                       '#f
                       '#f))
                     (_%key172915%_ _%e172884172912%_)
                     (_%e172885172917%_
                      (##unchecked-structure-ref
                       _%out172879172889%_
                       '3
                       '#f
                       '#f))
                     (_%phi172920%_ _%e172885172917%_)
                     (_%e172886172922%_
                      (##unchecked-structure-ref
                       _%out172879172889%_
                       '4
                       '#f
                       '#f))
                     (_%name172925%_ _%e172886172922%_)
                     (_%e172887172927%_
                      (##unchecked-structure-ref
                       _%out172879172889%_
                       '5
                       '#f
                       '#f))
                     (_%weak?172930%_ _%e172887172927%_))
                (_%K172882172904%_
                 _%weak?172930%_
                 _%name172925%_
                 _%phi172920%_
                 _%key172915%_
                 _%ctx172910%_))
              (_%E172881172892%_)))))
    (define gx#core-module-export->import__0
      (lambda (_%out172935%_)
        (let* ((_%rename172937%_ '#f) (_%dphi172939%_ '0))
          (gx#core-module-export->import__%
           _%out172935%_
           _%rename172937%_
           _%dphi172939%_))))
    (define gx#core-module-export->import__1
      (lambda (_%out172941%_ _%rename172942%_)
        (let ((_%dphi172944%_ '0))
          (gx#core-module-export->import__%
           _%out172941%_
           _%rename172942%_
           _%dphi172944%_))))
    (define gx#core-module-export->import
      (lambda _g175020_
        (let ((_g175021_ (##length _g175020_)))
          (cond ((##fx= _g175021_ 1)
                 (apply gx#core-module-export->import__0 _g175020_))
                ((##fx= _g175021_ 2)
                 (apply gx#core-module-export->import__1 _g175020_))
                ((##fx= _g175021_ 3)
                 (apply gx#core-module-export->import__% _g175020_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g175020_))))))
    (define gx#core-expand-module%
      (lambda (_%stx172775%_)
        (letrec ((_%make-context172777%_
                  (lambda (_%id172854%_)
                    (let* ((_%super172856%_ (gx#current-expander-context))
                           (_%bind-id172858%_ (gx#stx-e _%id172854%_))
                           (_%mod-id172860%_
                            (if (##structure-instance-of?
                                 _%super172856%_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##unchecked-structure-ref
                                  _%super172856%_
                                  '1
                                  '#f
                                  '#f)
                                 '"~"
                                 _%bind-id172858%_)
                                _%bind-id172858%_))
                           (_%ns172862%_ (symbol->string _%mod-id172860%_))
                           (_%path172872%_
                            (if (##structure-instance-of?
                                 _%super172856%_
                                 'gx#module-context::t)
                                (let ((_%path172864%_
                                       (##unchecked-structure-ref
                                        _%super172856%_
                                        '7
                                        '#f
                                        '#f)))
                                  (if (or (pair? _%path172864%_)
                                          (null? _%path172864%_))
                                      (cons _%bind-id172858%_ _%path172864%_)
                                      (if (not _%path172864%_)
                                          _%bind-id172858%_
                                          (cons _%bind-id172858%_
                                                (cons _%path172864%_ '())))))
                                _%bind-id172858%_))
                           (__obj174997
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
                       __obj174997
                       _%mod-id172860%_
                       _%super172856%_
                       _%ns172862%_
                       _%path172872%_)
                      __obj174997)))
                 (_%valid-module-id?172778%_
                  (lambda (_%id172829%_)
                    (let* ((_%str172831%_ (symbol->string _%id172829%_))
                           (_%len172833%_ (##string-length _%str172831%_)))
                      (if (##fx>= _%len172833%_ '1)
                          (let _%loop172836%_ ((_%index172838%_
                                                (##fx- (##string-length
                                                        _%str172831%_)
                                                       '1)))
                            (if (##fx>= _%index172838%_ '0)
                                (let ((_%c172840%_
                                       (string-ref
                                        _%str172831%_
                                        _%index172838%_)))
                                  (if (or (and (##char>=? _%c172840%_ '#\a)
                                               (##char<=? _%c172840%_ '#\z))
                                          (and (##char>=? _%c172840%_ '#\A)
                                               (##char<=? _%c172840%_ '#\Z))
                                          (and (##char>=? _%c172840%_ '#\0)
                                               (##char<=? _%c172840%_ '#\9))
                                          (##char=? _%c172840%_ '#\_)
                                          (##char=? _%c172840%_ '#\-))
                                      (_%loop172836%_
                                       (##fx- _%index172838%_ '1))
                                      '#f))
                                '#t))
                          '#f)))))
          (let* ((_%e172779172789%_ _%stx172775%_)
                 (_%E172781172793%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e172779172789%_)))
                 (_%E172780172825%_
                  (lambda ()
                    (if (gx#stx-pair? _%e172779172789%_)
                        (let ((_%e172782172797%_
                               (gx#syntax-e _%e172779172789%_)))
                          (let ((_%hd172783172800%_ (##car _%e172782172797%_))
                                (_%tl172784172802%_ (##cdr _%e172782172797%_)))
                            (if (gx#stx-pair? _%tl172784172802%_)
                                (let ((_%e172785172805%_
                                       (gx#syntax-e _%tl172784172802%_)))
                                  (let ((_%hd172786172808%_
                                         (##car _%e172785172805%_))
                                        (_%tl172787172810%_
                                         (##cdr _%e172785172805%_)))
                                    (let* ((_%id172813%_ _%hd172786172808%_)
                                           (_%body172815%_ _%tl172787172810%_))
                                      (if (and (gx#identifier? _%id172813%_)
                                               (gx#stx-list? _%body172815%_))
                                          (if (_%valid-module-id?172778%_
                                               (gx#stx-e
                                                (gx#datum->syntax__0 '#f 'id)))
                                              (let* ((_%ctx172817%_
                                                      (_%make-context172777%_
                                                       _%id172813%_))
                                                     (_%body172819%_
                                                      (gx#core-expand-module-begin
                                                       _%body172815%_
                                                       _%ctx172817%_))
                                                     (_%body172821%_
                                                      (gx#core-quote-syntax__1
                                                       (gx#core-cons
                                                        '%#begin
                                                        _%body172819%_)
                                                       (gx#stx-source
                                                        _%stx172775%_))))
                                                (##unchecked-structure-set!
                                                 _%ctx172817%_
                                                 (__make-atomic-promise
                                                  (lambda ()
                                                    (gx#eval-syntax*
                                                     _%body172821%_)))
                                                 '10
                                                 '#f
                                                 '#f)
                                                (##unchecked-structure-set!
                                                 _%ctx172817%_
                                                 _%body172821%_
                                                 '11
                                                 '#f
                                                 '#f)
                                                (gx#core-bind-syntax!__0
                                                 _%id172813%_
                                                 _%ctx172817%_)
                                                (gx#core-quote-syntax__1
                                                 (gx#core-list
                                                  '%#module
                                                  (gx#core-quote-syntax__0
                                                   _%id172813%_)
                                                  _%body172821%_)
                                                 (gx#stx-source
                                                  _%stx172775%_)))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"invalid module id; allowed characters are A-Z,a-z,0-9,_,-"
                                               _%stx172775%_
                                               (gx#datum->syntax__0 '#f 'id)))
                                          (_%E172781172793%_)))))
                                (_%E172781172793%_))))
                        (_%E172781172793%_)))))
            (_%E172780172825%_)))))
    (define gx#core-expand-module-begin
      (lambda (_%body172740%_ _%ctx172741%_)
        (call-with-parameters__1
         (lambda ()
           (call-with-parameters__1
            (lambda ()
              (gx#core-bind-feature!__1 'gerbil-module '#t)
              (let* ((_%stx172745%_
                      (gx#core-expand-head
                       (cons '%%begin-module _%body172740%_)))
                     (_%e172746172753%_ _%stx172745%_)
                     (_%E172748172757%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module body expansion"
                         _%stx172745%_)))
                     (_%E172747172771%_
                      (lambda ()
                        (if (gx#stx-pair? _%e172746172753%_)
                            (let ((_%e172749172761%_
                                   (gx#syntax-e _%e172746172753%_)))
                              (let ((_%hd172750172764%_
                                     (##car _%e172749172761%_))
                                    (_%tl172751172766%_
                                     (##cdr _%e172749172761%_)))
                                (if (and (gx#identifier? _%hd172750172764%_)
                                         (gx#core-identifier=?
                                          _%hd172750172764%_
                                          '%#begin-module))
                                    (let ((_%body172769%_ _%tl172751172766%_))
                                      (if (gx#sealed-syntax? _%stx172745%_)
                                          _%body172769%_
                                          (gx#core-expand-module-body
                                           _%body172769%_)))
                                    (_%E172748172757%_))))
                            (_%E172748172757%_)))))
                (_%E172747172771%_)))
            gx#current-expander-phi
            '0))
         gx#current-expander-context
         _%ctx172741%_)))
    (define gx#core-expand-module-body
      (lambda (_%body172536%_)
        (letrec ((_%expand-special172538%_
                  (lambda (_%hd172667%_ _%K172668%_ _%rest172669%_ _%r172670%_)
                    (let* ((_%e172671172688%_ _%hd172667%_)
                           (_%E172683172692%_
                            (lambda ()
                              (_%K172668%_
                               _%rest172669%_
                               (cons (gx#core-expand-top _%hd172667%_)
                                     _%r172670%_))))
                           (_%E172673172704%_
                            (lambda ()
                              (if (gx#stx-pair? _%e172671172688%_)
                                  (let ((_%e172684172696%_
                                         (gx#syntax-e _%e172671172688%_)))
                                    (let ((_%hd172685172699%_
                                           (##car _%e172684172696%_))
                                          (_%tl172686172701%_
                                           (##cdr _%e172684172696%_)))
                                      (if (and (gx#identifier?
                                                _%hd172685172699%_)
                                               (gx#core-identifier=?
                                                _%hd172685172699%_
                                                '%#export))
                                          (_%K172668%_
                                           _%rest172669%_
                                           (cons _%hd172667%_ _%r172670%_))
                                          (_%E172683172692%_))))
                                  (_%E172683172692%_))))
                           (_%E172672172736%_
                            (lambda ()
                              (if (gx#stx-pair? _%e172671172688%_)
                                  (let ((_%e172674172708%_
                                         (gx#syntax-e _%e172671172688%_)))
                                    (let ((_%hd172675172711%_
                                           (##car _%e172674172708%_))
                                          (_%tl172676172713%_
                                           (##cdr _%e172674172708%_)))
                                      (if (and (gx#identifier?
                                                _%hd172675172711%_)
                                               (gx#core-identifier=?
                                                _%hd172675172711%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl172676172713%_)
                                              (let ((_%e172677172716%_
                                                     (gx#syntax-e
                                                      _%tl172676172713%_)))
                                                (let ((_%hd172678172719%_
                                                       (##car _%e172677172716%_))
                                                      (_%tl172679172721%_
                                                       (##cdr _%e172677172716%_)))
                                                  (let ((_%hd-bind172724%_
                                                         _%hd172678172719%_))
                                                    (if (gx#stx-pair?
                                                         _%tl172679172721%_)
                                                        (let ((_%e172680172726%_
                                                               (gx#syntax-e
                                                                _%tl172679172721%_)))
                                                          (let ((_%hd172681172729%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e172680172726%_))
                        (_%tl172682172731%_ (##cdr _%e172680172726%_)))
                    (let ((_%expr172734%_ _%hd172681172729%_))
                      (if (gx#stx-null? _%tl172682172731%_)
                          (if (gx#core-bind-values? _%hd-bind172724%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind172724%_)
                                (_%K172668%_
                                 _%rest172669%_
                                 (cons _%hd172667%_ _%r172670%_)))
                              (_%E172673172704%_))
                          (_%E172673172704%_)))))
                (_%E172673172704%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E172673172704%_))
                                          (_%E172673172704%_))))
                                  (_%E172673172704%_)))))
                      (_%E172672172736%_))))
                 (_%expand-body172539%_
                  (lambda (_%rbody172541%_)
                    (let _%lp172543%_ ((_%rest172545%_ _%rbody172541%_)
                                       (_%body172546%_ '()))
                      (let* ((_%rest172547172555%_ _%rest172545%_)
                             (_%else172549172563%_ (lambda () _%body172546%_))
                             (_%K172551172655%_
                              (lambda (_%rest172566%_ _%hd172567%_)
                                (let* ((_%e172568172589%_ _%hd172567%_)
                                       (_%E172584172593%_
                                        (lambda ()
                                          (_%lp172543%_
                                           _%rest172566%_
                                           (cons (gx#core-expand-expression
                                                  _%hd172567%_)
                                                 _%body172546%_))))
                                       (_%E172580172607%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e172568172589%_)
                                              (let ((_%e172585172597%_
                                                     (gx#syntax-e
                                                      _%e172568172589%_)))
                                                (let ((_%hd172586172600%_
                                                       (##car _%e172585172597%_))
                                                      (_%tl172587172602%_
                                                       (##cdr _%e172585172597%_)))
                                                  (let ((_%form172605%_
                                                         _%hd172586172600%_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _%form172605%_
                                                         gx#special-form-binding?)
                                                        (_%lp172543%_
                                                         _%rest172566%_
                                                         (cons _%hd172567%_
                                                               _%body172546%_))
                                                        (_%E172584172593%_)))))
                                              (_%E172584172593%_))))
                                       (_%E172570172619%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e172568172589%_)
                                              (let ((_%e172581172611%_
                                                     (gx#syntax-e
                                                      _%e172568172589%_)))
                                                (let ((_%hd172582172614%_
                                                       (##car _%e172581172611%_))
                                                      (_%tl172583172616%_
                                                       (##cdr _%e172581172611%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd172582172614%_)
                                                           (gx#core-identifier=?
                                                            _%hd172582172614%_
                                                            '%#export))
                                                      (_%lp172543%_
                                                       _%rest172566%_
                                                       (cons (gx#core-expand-export%__0
                                                              _%hd172567%_)
                                                             _%body172546%_))
                                                      (_%E172580172607%_))))
                                              (_%E172580172607%_))))
                                       (_%E172569172651%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e172568172589%_)
                                              (let ((_%e172571172623%_
                                                     (gx#syntax-e
                                                      _%e172568172589%_)))
                                                (let ((_%hd172572172626%_
                                                       (##car _%e172571172623%_))
                                                      (_%tl172573172628%_
                                                       (##cdr _%e172571172623%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd172572172626%_)
                                                           (gx#core-identifier=?
                                                            _%hd172572172626%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl172573172628%_)
                                                          (let ((_%e172574172631%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl172573172628%_)))
                    (let ((_%hd172575172634%_ (##car _%e172574172631%_))
                          (_%tl172576172636%_ (##cdr _%e172574172631%_)))
                      (let ((_%hd-bind172639%_ _%hd172575172634%_))
                        (if (gx#stx-pair? _%tl172576172636%_)
                            (let ((_%e172577172641%_
                                   (gx#syntax-e _%tl172576172636%_)))
                              (let ((_%hd172578172644%_
                                     (##car _%e172577172641%_))
                                    (_%tl172579172646%_
                                     (##cdr _%e172577172641%_)))
                                (let ((_%expr172649%_ _%hd172578172644%_))
                                  (if (gx#stx-null? _%tl172579172646%_)
                                      (_%lp172543%_
                                       _%rest172566%_
                                       (cons (gx#core-quote-syntax__1
                                              (gx#core-list
                                               '%#define-values
                                               (gx#core-quote-bind-values
                                                _%hd-bind172639%_)
                                               (gx#core-expand-expression
                                                _%expr172649%_))
                                              (gx#stx-source _%hd172567%_))
                                             _%body172546%_))
                                      (_%E172570172619%_)))))
                            (_%E172570172619%_)))))
                  (_%E172570172619%_))
              (_%E172570172619%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E172570172619%_)))))
                                  (_%E172569172651%_)))))
                        (if (pair? _%rest172547172555%_)
                            (let ((_%hd172552172658%_
                                   (##car _%rest172547172555%_))
                                  (_%tl172553172660%_
                                   (##cdr _%rest172547172555%_)))
                              (let* ((_%hd172663%_ _%hd172552172658%_)
                                     (_%rest172665%_ _%tl172553172660%_))
                                (_%K172551172655%_
                                 _%rest172665%_
                                 _%hd172663%_)))
                            (_%else172549172563%_)))))))
          (_%expand-body172539%_
           (gx#core-expand-block__%
            (cons '%#begin-module _%body172536%_)
            _%expand-special172538%_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_%stx172377%_
               _%expanded?172378%_
               _%method172379%_
               _%current-phi172380%_
               _%expand1172381%_)
        (letrec ((_%K172383%_
                  (lambda (_%rest172503%_ _%r172504%_)
                    (let* ((_%e172505172512%_ _%rest172503%_)
                           (_%E172507172516%_ (lambda () _%r172504%_))
                           (_%E172506172532%_
                            (lambda ()
                              (if (gx#stx-pair? _%e172505172512%_)
                                  (let ((_%e172508172520%_
                                         (gx#syntax-e _%e172505172512%_)))
                                    (let ((_%hd172509172523%_
                                           (##car _%e172508172520%_))
                                          (_%tl172510172525%_
                                           (##cdr _%e172508172520%_)))
                                      (let* ((_%hd172528%_ _%hd172509172523%_)
                                             (_%rest172530%_
                                              _%tl172510172525%_))
                                        (_%step172384%_
                                         _%hd172528%_
                                         _%rest172530%_
                                         _%r172504%_))))
                                  (_%E172507172516%_)))))
                      (_%E172506172532%_))))
                 (_%step172384%_
                  (lambda (_%hd172417%_ _%rest172418%_ _%r172419%_)
                    (let* ((_%e172420172438%_ _%hd172417%_)
                           (_%E172433172442%_
                            (lambda ()
                              (if (_%expanded?172378%_ (gx#stx-e _%hd172417%_))
                                  (_%K172383%_
                                   _%rest172418%_
                                   (cons (gx#stx-e _%hd172417%_) _%r172419%_))
                                  (_%expand1172381%_
                                   _%hd172417%_
                                   _%K172383%_
                                   _%rest172418%_
                                   _%r172419%_))))
                           (_%E172429172458%_
                            (lambda ()
                              (if (gx#stx-pair? _%e172420172438%_)
                                  (let ((_%e172434172446%_
                                         (gx#syntax-e _%e172420172438%_)))
                                    (let ((_%hd172435172449%_
                                           (##car _%e172434172446%_))
                                          (_%tl172436172451%_
                                           (##cdr _%e172434172446%_)))
                                      (let* ((_%macro172454%_
                                              _%hd172435172449%_)
                                             (_%body172456%_
                                              _%tl172436172451%_))
                                        (if (gx#core-bound-identifier?__%
                                             _%macro172454%_
                                             gx#syntax-binding?)
                                            (_%K172383%_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _%macro172454%_)
                                                    _%hd172417%_
                                                    _%method172379%_)
                                                   _%rest172418%_)
                                             _%r172419%_)
                                            (_%E172433172442%_)))))
                                  (_%E172433172442%_))))
                           (_%E172422172472%_
                            (lambda ()
                              (if (gx#stx-pair? _%e172420172438%_)
                                  (let ((_%e172430172462%_
                                         (gx#syntax-e _%e172420172438%_)))
                                    (let ((_%hd172431172465%_
                                           (##car _%e172430172462%_))
                                          (_%tl172432172467%_
                                           (##cdr _%e172430172462%_)))
                                      (if (eq? (gx#stx-e _%hd172431172465%_)
                                               'begin:)
                                          (let ((_%body172470%_
                                                 _%tl172432172467%_))
                                            (_%K172383%_
                                             (gx#stx-foldr
                                              cons
                                              _%rest172418%_
                                              _%body172470%_)
                                             _%r172419%_))
                                          (_%E172429172458%_))))
                                  (_%E172429172458%_))))
                           (_%E172421172499%_
                            (lambda ()
                              (if (gx#stx-pair? _%e172420172438%_)
                                  (let ((_%e172423172476%_
                                         (gx#syntax-e _%e172420172438%_)))
                                    (let ((_%hd172424172479%_
                                           (##car _%e172423172476%_))
                                          (_%tl172425172481%_
                                           (##cdr _%e172423172476%_)))
                                      (if (eq? (gx#stx-e _%hd172424172479%_)
                                               'phi:)
                                          (if (gx#stx-pair? _%tl172425172481%_)
                                              (let ((_%e172426172484%_
                                                     (gx#syntax-e
                                                      _%tl172425172481%_)))
                                                (let ((_%hd172427172487%_
                                                       (##car _%e172426172484%_))
                                                      (_%tl172428172489%_
                                                       (##cdr _%e172426172484%_)))
                                                  (let* ((_%dphi172492%_
                                                          _%hd172427172487%_)
                                                         (_%body172494%_
                                                          _%tl172428172489%_))
                                                    (if (gx#stx-fixnum?
                                                         _%dphi172492%_)
                                                        (let ((_%rbody172497%_
                                                               (call-with-parameters__1
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%K172383%_ _%body172494%_ '()))
                        _%current-phi172380%_
                        (fx+ (gx#stx-e _%dphi172492%_)
                             (_%current-phi172380%_)))))
                  (_%K172383%_
                   _%rest172418%_
                   (__foldr1 cons _%r172419%_ _%rbody172497%_)))
                (_%E172422172472%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E172422172472%_))
                                          (_%E172422172472%_))))
                                  (_%E172422172472%_)))))
                      (_%E172421172499%_)))))
          (let* ((_%e172385172392%_ _%stx172377%_)
                 (_%E172387172396%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e172385172392%_)))
                 (_%E172386172413%_
                  (lambda ()
                    (if (gx#stx-pair? _%e172385172392%_)
                        (let ((_%e172388172400%_
                               (gx#syntax-e _%e172385172392%_)))
                          (let ((_%hd172389172403%_ (##car _%e172388172400%_))
                                (_%tl172390172405%_ (##cdr _%e172388172400%_)))
                            (let ((_%body172408%_ _%tl172390172405%_))
                              (if (_%current-phi172380%_)
                                  (_%K172383%_ _%body172408%_ '())
                                  (call-with-parameters__1
                                   (lambda () (_%K172383%_ _%body172408%_ '()))
                                   _%current-phi172380%_
                                   (gx#current-expander-phi))))))
                        (_%E172387172396%_)))))
            (_%E172386172413%_)))))
    (define gx#core-expand-import%__%
      (lambda (_%stx172031%_ _%internal-expand?172032%_)
        (letrec ((_%expand1172034%_
                  (lambda (_%hd172349%_ _%K172350%_ _%rest172351%_ _%r172352%_)
                    (if (gx#core-bound-module? _%hd172349%_)
                        (_%import1172035%_
                         (gx#syntax-local-e__0 _%hd172349%_)
                         _%K172350%_
                         _%rest172351%_
                         _%r172352%_)
                        (if (gx#core-library-module-path? _%hd172349%_)
                            (_%import1172035%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%hd172349%_))
                             _%K172350%_
                             _%rest172351%_
                             _%r172352%_)
                            (if (gx#core-library-relative-module-path?
                                 _%hd172349%_)
                                (_%import1172035%_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _%hd172349%_))
                                 _%K172350%_
                                 _%rest172351%_
                                 _%r172352%_)
                                (let ((_%e172358%_ (gx#stx-e _%hd172349%_)))
                                  (if (pair? _%e172358%_)
                                      (let ((_%$e172361%_
                                             (gx#stx-e (##car _%e172358%_))))
                                        (if (eq? 'spec: _%$e172361%_)
                                            (_%import-spec172038%_
                                             _%hd172349%_
                                             _%K172350%_
                                             _%rest172351%_
                                             _%r172352%_)
                                            (if (eq? 'in: _%$e172361%_)
                                                (_%import-submodule172036%_
                                                 _%hd172349%_
                                                 _%K172350%_
                                                 _%rest172351%_
                                                 _%r172352%_)
                                                (if (eq? 'runtime:
                                                         _%$e172361%_)
                                                    (_%import-runtime172037%_
                                                     _%hd172349%_
                                                     _%K172350%_
                                                     _%rest172351%_
                                                     _%r172352%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _%stx172031%_
                                                     _%hd172349%_)))))
                                      (if (string? _%e172358%_)
                                          (_%import1172035%_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _%hd172349%_
                                             (gx#stx-source _%stx172031%_)))
                                           _%K172350%_
                                           _%rest172351%_
                                           _%r172352%_)
                                          (if (##structure-instance-of?
                                               _%e172358%_
                                               'gx#module-context::t)
                                              (_%K172350%_
                                               _%rest172351%_
                                               (cons _%e172358%_ _%r172352%_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _%stx172031%_
                                               _%hd172349%_))))))))))
                 (_%import1172035%_
                  (lambda (_%ctx172338%_
                           _%K172339%_
                           _%rest172340%_
                           _%r172341%_)
                    (let ((_%dphi172343%_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_%K172339%_
                       _%rest172340%_
                       (cons (##structure
                              gx#import-set::t
                              _%ctx172338%_
                              _%dphi172343%_
                              (map (lambda (_%g172344172346%_)
                                     (gx#core-module-export->import__%
                                      _%g172344172346%_
                                      '#f
                                      _%dphi172343%_))
                                   (##unchecked-structure-ref
                                    _%ctx172338%_
                                    '9
                                    '#f
                                    '#f)))
                             _%r172341%_)))))
                 (_%import-submodule172036%_
                  (lambda (_%hd172305%_ _%K172306%_ _%rest172307%_ _%r172308%_)
                    (let* ((_%e172309172316%_ _%hd172305%_)
                           (_%E172311172320%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e172309172316%_)))
                           (_%E172310172334%_
                            (lambda ()
                              (if (gx#stx-pair? _%e172309172316%_)
                                  (let ((_%e172312172324%_
                                         (gx#syntax-e _%e172309172316%_)))
                                    (let ((_%hd172313172327%_
                                           (##car _%e172312172324%_))
                                          (_%tl172314172329%_
                                           (##cdr _%e172312172324%_)))
                                      (let ((_%spath172332%_
                                             _%tl172314172329%_))
                                        (_%import1172035%_
                                         (_%import-spec-source172039%_
                                          _%spath172332%_)
                                         _%K172306%_
                                         _%rest172307%_
                                         _%r172308%_))))
                                  (_%E172311172320%_)))))
                      (_%E172310172334%_))))
                 (_%import-runtime172037%_
                  (lambda (_%hd172272%_ _%K172273%_ _%rest172274%_ _%r172275%_)
                    (let* ((_%e172276172283%_ _%hd172272%_)
                           (_%E172278172287%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e172276172283%_)))
                           (_%E172277172301%_
                            (lambda ()
                              (if (gx#stx-pair? _%e172276172283%_)
                                  (let ((_%e172279172291%_
                                         (gx#syntax-e _%e172276172283%_)))
                                    (let ((_%hd172280172294%_
                                           (##car _%e172279172291%_))
                                          (_%tl172281172296%_
                                           (##cdr _%e172279172291%_)))
                                      (let ((_%spath172299%_
                                             _%tl172281172296%_))
                                        (_%K172273%_
                                         _%rest172274%_
                                         (cons (_%import-spec-source172039%_
                                                _%spath172299%_)
                                               _%r172275%_)))))
                                  (_%E172278172287%_)))))
                      (_%E172277172301%_))))
                 (_%import-spec172038%_
                  (lambda (_%hd172110%_ _%K172111%_ _%rest172112%_ _%r172113%_)
                    (let* ((_%e172114172131%_ _%hd172110%_)
                           (_%E172123172135%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e172114172131%_)))
                           (_%E172116172246%_
                            (lambda ()
                              (if (gx#stx-pair? _%e172114172131%_)
                                  (let ((_%e172124172139%_
                                         (gx#syntax-e _%e172114172131%_)))
                                    (let ((_%hd172125172142%_
                                           (##car _%e172124172139%_))
                                          (_%tl172126172144%_
                                           (##cdr _%e172124172139%_)))
                                      (if (gx#stx-pair? _%tl172126172144%_)
                                          (let ((_%e172127172147%_
                                                 (gx#syntax-e
                                                  _%tl172126172144%_)))
                                            (let ((_%hd172128172150%_
                                                   (##car _%e172127172147%_))
                                                  (_%tl172129172152%_
                                                   (##cdr _%e172127172147%_)))
                                              (let* ((_%path172155%_
                                                      _%hd172128172150%_)
                                                     (_%specs172157%_
                                                      _%tl172129172152%_))
                                                (let ((_%src-ctx172159%_
                                                       (_%import-spec-source172039%_
                                                        _%path172155%_))
                                                      (_%exports172160%_
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
                                                      (_%specs172161%_
                                                       (gx#syntax->list
                                                        _%specs172157%_)))
                                                  (for-each
                                                   (lambda (_%out172163%_)
                                                     (__hash-put!
                                                      _%exports172160%_
                                                      (cons (##unchecked-structure-ref
                                                             _%out172163%_
                                                             '3
                                                             '#f
                                                             '#f)
                                                            (##unchecked-structure-ref
                                                             _%out172163%_
                                                             '4
                                                             '#f
                                                             '#f))
                                                      _%out172163%_))
                                                   (##unchecked-structure-ref
                                                    _%src-ctx172159%_
                                                    '9
                                                    '#f
                                                    '#f))
                                                  (_%K172111%_
                                                   _%rest172112%_
                                                   (__foldl1
                                                    (lambda (_%spec172165%_
                                                             _%r172166%_)
                                                      (let* ((_%e172167172183%_
                                                              _%spec172165%_)
                                                             (_%E172169172187%_
                                                              (lambda ()
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid syntax-case clause"
                         _%e172167172183%_)))
                     (_%E172168172242%_
                      (lambda ()
                        (if (gx#stx-pair? _%e172167172183%_)
                            (let ((_%e172170172191%_
                                   (gx#syntax-e _%e172167172183%_)))
                              (let ((_%hd172171172194%_
                                     (##car _%e172170172191%_))
                                    (_%tl172172172196%_
                                     (##cdr _%e172170172191%_)))
                                (let ((_%phi172199%_ _%hd172171172194%_))
                                  (if (gx#stx-pair? _%tl172172172196%_)
                                      (let ((_%e172173172201%_
                                             (gx#syntax-e _%tl172172172196%_)))
                                        (let ((_%hd172174172204%_
                                               (##car _%e172173172201%_))
                                              (_%tl172175172206%_
                                               (##cdr _%e172173172201%_)))
                                          (let ((_%name172209%_
                                                 _%hd172174172204%_))
                                            (if (gx#stx-pair?
                                                 _%tl172175172206%_)
                                                (let ((_%e172176172211%_
                                                       (gx#syntax-e
                                                        _%tl172175172206%_)))
                                                  (let ((_%hd172177172214%_
                                                         (##car _%e172176172211%_))
                                                        (_%tl172178172216%_
                                                         (##cdr _%e172176172211%_)))
                                                    (let ((_%src-phi172219%_
                                                           _%hd172177172214%_))
                                                      (if (gx#stx-pair?
                                                           _%tl172178172216%_)
                                                          (let ((_%e172179172221%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl172178172216%_)))
                    (let ((_%hd172180172224%_ (##car _%e172179172221%_))
                          (_%tl172181172226%_ (##cdr _%e172179172221%_)))
                      (let ((_%src-name172229%_ _%hd172180172224%_))
                        (if (gx#stx-null? _%tl172181172226%_)
                            (if (and (gx#stx-fixnum? _%src-phi172219%_)
                                     (gx#identifier? _%src-name172229%_)
                                     (gx#stx-fixnum? _%phi172199%_)
                                     (gx#identifier? _%name172209%_))
                                (let ((_%src-phi172231%_
                                       (gx#stx-e _%src-phi172219%_))
                                      (_%src-name172232%_
                                       (gx#core-identifier-key
                                        _%src-name172229%_))
                                      (_%phi172233%_ (gx#stx-e _%phi172199%_))
                                      (_%name172234%_
                                       (gx#core-identifier-key
                                        _%name172209%_)))
                                  (let ((_%$e172236%_
                                         (__hash-get
                                          _%exports172160%_
                                          (cons _%src-phi172231%_
                                                _%src-name172232%_))))
                                    (if _%$e172236%_
                                        ((lambda (_%out172239%_)
                                           (cons (gx#core-module-export->import__%
                                                  _%out172239%_
                                                  _%name172234%_
                                                  (fx- _%phi172233%_
                                                       _%src-phi172231%_))
                                                 _%r172166%_))
                                         _%$e172236%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; no matching export"
                                         _%stx172031%_
                                         _%hd172110%_))))
                                (_%E172169172187%_))
                            (_%E172169172187%_)))))
                  (_%E172169172187%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E172169172187%_)))))
                                      (_%E172169172187%_)))))
                            (_%E172169172187%_)))))
                (_%E172168172242%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r172113%_
                                                    _%specs172161%_))))))
                                          (_%E172123172135%_))))
                                  (_%E172123172135%_))))
                           (_%E172115172268%_
                            (lambda ()
                              (if (gx#stx-pair? _%e172114172131%_)
                                  (let ((_%e172117172250%_
                                         (gx#syntax-e _%e172114172131%_)))
                                    (let ((_%hd172118172253%_
                                           (##car _%e172117172250%_))
                                          (_%tl172119172255%_
                                           (##cdr _%e172117172250%_)))
                                      (if (gx#stx-pair? _%tl172119172255%_)
                                          (let ((_%e172120172258%_
                                                 (gx#syntax-e
                                                  _%tl172119172255%_)))
                                            (let ((_%hd172121172261%_
                                                   (##car _%e172120172258%_))
                                                  (_%tl172122172263%_
                                                   (##cdr _%e172120172258%_)))
                                              (let ((_%path172266%_
                                                     _%hd172121172261%_))
                                                (if (gx#stx-null?
                                                     _%tl172122172263%_)
                                                    (_%K172111%_
                                                     _%rest172112%_
                                                     (cons (_%import-spec-source172039%_
                                                            _%path172266%_)
                                                           _%r172113%_))
                                                    (_%E172116172246%_)))))
                                          (_%E172116172246%_))))
                                  (_%E172116172246%_)))))
                      (_%E172115172268%_))))
                 (_%import-spec-source172039%_
                  (lambda (_%spath172108%_)
                    (gx#core-import-nested-module
                     _%spath172108%_
                     _%stx172031%_)))
                 (_%import!172040%_
                  (lambda (_%rbody172053%_)
                    (letrec* ((_%current-ctx172055%_
                               (gx#current-expander-context))
                              (_%deps172056%_ (make-hash-table-eq))
                              (_%bind!172057%_
                               (lambda (_%hd172106%_)
                                 (gx#core-bind-import!__1
                                  _%hd172106%_
                                  _%current-ctx172055%_))))
                      (let _%lp172059%_ ((_%rest172061%_ _%rbody172053%_)
                                         (_%body172062%_ '()))
                        (let* ((_%rest172063172071%_ _%rest172061%_)
                               (_%else172065172082%_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _%current-ctx172055%_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _%current-ctx172055%_
                                       (__foldl1
                                        cons
                                        (##unchecked-structure-ref
                                         _%current-ctx172055%_
                                         '8
                                         '#f
                                         '#f)
                                        _%body172062%_)
                                       '8
                                       '#f
                                       '#f)
                                      '#!void)
                                  (__hash-for-each
                                   (lambda (_%ctx172079%_ _%_172080%_)
                                     (gx#eval-module _%ctx172079%_))
                                   _%deps172056%_)
                                  _%body172062%_))
                               (_%K172067172094%_
                                (lambda (_%rest172085%_ _%hd172086%_)
                                  (if (##structure-direct-instance-of?
                                       _%hd172086%_
                                       'gx#module-import::t)
                                      (let ()
                                        (_%bind!172057%_ _%hd172086%_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _%hd172086%_
                                                   '3
                                                   '#f
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _%hd172086%_
                                                            '1
                                                            '#f
                                                            '#f)
                                                           '3
                                                           '#f
                                                           '#f)))
                                            (__hash-put!
                                             _%deps172056%_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _%hd172086%_
                                               '1
                                               '#f
                                               '#f)
                                              '1
                                              '#f
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _%hd172086%_
                                           'gx#import-set::t)
                                          (let ()
                                            (for-each
                                             _%bind!172057%_
                                             (##unchecked-structure-ref
                                              _%hd172086%_
                                              '3
                                              '#f
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _%hd172086%_
                                                  '2
                                                  '#f
                                                  '#f))
                                                (__hash-put!
                                                 _%deps172056%_
                                                 (##unchecked-structure-ref
                                                  _%hd172086%_
                                                  '1
                                                  '#f
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_%$e172090%_
                                                 (##structure-instance-of?
                                                  _%hd172086%_
                                                  'gx#module-context::t)))
                                            (if _%$e172090%_
                                                _%$e172090%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _%stx172031%_
                                                 _%hd172086%_)))))
                                  (_%lp172059%_
                                   _%rest172085%_
                                   (cons _%hd172086%_ _%body172062%_)))))
                          (if (pair? _%rest172063172071%_)
                              (let ((_%hd172068172097%_
                                     (##car _%rest172063172071%_))
                                    (_%tl172069172099%_
                                     (##cdr _%rest172063172071%_)))
                                (let* ((_%hd172102%_ _%hd172068172097%_)
                                       (_%rest172104%_ _%tl172069172099%_))
                                  (_%K172067172094%_
                                   _%rest172104%_
                                   _%hd172102%_)))
                              (_%else172065172082%_)))))))
                 (_%expanded-import?172041%_
                  (lambda (_%e172045%_)
                    (let ((_%$e172047%_
                           (##structure-direct-instance-of?
                            _%e172045%_
                            'gx#import-set::t)))
                      (if _%$e172047%_
                          _%$e172047%_
                          (let ((_%$e172050%_
                                 (##structure-direct-instance-of?
                                  _%e172045%_
                                  'gx#module-import::t)))
                            (if _%$e172050%_
                                _%$e172050%_
                                (##structure-instance-of?
                                 _%e172045%_
                                 'gx#module-context::t))))))))
          (let ((_%rbody172043%_
                 (gx#core-expand-import/export
                  _%stx172031%_
                  _%expanded-import?172041%_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _%expand1172034%_)))
            (if _%internal-expand?172032%_
                (reverse _%rbody172043%_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_%import!172040%_ _%rbody172043%_))
                 (gx#stx-source _%stx172031%_)))))))
    (define gx#core-expand-import%__0
      (lambda (_%stx172370%_)
        (let ((_%internal-expand?172372%_ '#f))
          (gx#core-expand-import%__%
           _%stx172370%_
           _%internal-expand?172372%_))))
    (define gx#core-expand-import%
      (lambda _g175022_
        (let ((_g175023_ (##length _g175022_)))
          (cond ((##fx= _g175023_ 1)
                 (apply gx#core-expand-import%__0 _g175022_))
                ((##fx= _g175023_ 2)
                 (apply gx#core-expand-import%__% _g175022_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g175022_))))))
    (define gx#core-import-nested-module
      (lambda (_%spath171958%_ _%where171959%_)
        (let* ((_%e171960171967%_ _%spath171958%_)
               (_%E171962171971%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e171960171967%_)))
               (_%E171961172026%_
                (lambda ()
                  (if (gx#stx-pair? _%e171960171967%_)
                      (let ((_%e171963171975%_
                             (gx#syntax-e _%e171960171967%_)))
                        (let ((_%hd171964171978%_ (##car _%e171963171975%_))
                              (_%tl171965171980%_ (##cdr _%e171963171975%_)))
                          (let* ((_%origin171983%_ _%hd171964171978%_)
                                 (_%sub171985%_ _%tl171965171980%_)
                                 (_%origin-ctx171987%_
                                  (if (gx#stx-false? _%origin171983%_)
                                      (gx#current-expander-context)
                                      (gx#import-module__0 _%origin171983%_))))
                            (let _%lp171989%_ ((_%rest171991%_ _%sub171985%_)
                                               (_%ctx171992%_
                                                _%origin-ctx171987%_))
                              (let* ((_%e171993172000%_ _%rest171991%_)
                                     (_%E171995172004%_
                                      (lambda () _%ctx171992%_))
                                     (_%E171994172022%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e171993172000%_)
                                            (let ((_%e171996172008%_
                                                   (gx#syntax-e
                                                    _%e171993172000%_)))
                                              (let ((_%hd171997172011%_
                                                     (##car _%e171996172008%_))
                                                    (_%tl171998172013%_
                                                     (##cdr _%e171996172008%_)))
                                                (let* ((_%id172016%_
                                                        _%hd171997172011%_)
                                                       (_%rest172018%_
                                                        _%tl171998172013%_)
                                                       (_%bind172020%_
                                                        (gx#resolve-identifier__%
                                                         _%id172016%_
                                                         '0
                                                         _%ctx171992%_)))
                                                  (if (and (##structure-direct-instance-of?
                                                            _%bind172020%_
                                                            'gx#syntax-binding::t)
                                                           (##structure-instance-of?
                                                            (##unchecked-structure-ref
                                                             _%bind172020%_
                                                             '5
                                                             '#f
                                                             '#f)
                                                            'gx#module-context::t))
                                                      '#!void
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; not bound as module"
                                                       _%where171959%_
                                                       _%spath171958%_
                                                       _%id172016%_))
                                                  (_%lp171989%_
                                                   _%rest172018%_
                                                   (##unchecked-structure-ref
                                                    _%bind172020%_
                                                    '5
                                                    '#f
                                                    '#f)))))
                                            (_%E171995172004%_)))))
                                (_%E171994172022%_))))))
                      (_%E171962171971%_)))))
          (_%E171961172026%_))))
    (define gx#core-expand-import-source
      (lambda (_%hd171956%_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _%hd171956%_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_%stx171451%_ _%internal-expand?171452%_)
        (letrec* ((_%make-export__174950174951%_
                   (lambda (_%bind171904%_
                            _%phi171905%_
                            _%ctx171906%_
                            _%name171907%_)
                     (let* ((_%key171909%_
                             (##unchecked-structure-ref
                              _%bind171904%_
                              '2
                              '#f
                              '#f))
                            (_%export-key171911%_
                             (if _%name171907%_
                                 (gx#core-identifier-key _%name171907%_)
                                 _%key171909%_)))
                       (##structure
                        gx#module-export::t
                        _%ctx171906%_
                        _%key171909%_
                        _%phi171905%_
                        _%export-key171911%_
                        (let ((_%$e171914%_
                               (##structure-instance-of?
                                _%bind171904%_
                                'gx#extern-binding::t)))
                          (if _%$e171914%_
                              _%$e171914%_
                              (##structure-direct-instance-of?
                               _%bind171904%_
                               'gx#import-binding::t)))))))
                  (_%make-export__0__174952174955%_
                   (lambda (_%bind171920%_)
                     (let* ((_%phi171922%_ (gx#current-export-expander-phi))
                            (_%ctx171924%_ (gx#current-expander-context))
                            (_%name171926%_ '#f))
                       (_%make-export__174950174951%_
                        _%bind171920%_
                        _%phi171922%_
                        _%ctx171924%_
                        _%name171926%_))))
                  (_%make-export__1__174953174956%_
                   (lambda (_%bind171928%_ _%phi171929%_)
                     (let* ((_%ctx171931%_ (gx#current-expander-context))
                            (_%name171933%_ '#f))
                       (_%make-export__174950174951%_
                        _%bind171928%_
                        _%phi171929%_
                        _%ctx171931%_
                        _%name171933%_))))
                  (_%make-export__2__174954174957%_
                   (lambda (_%bind171935%_ _%phi171936%_ _%ctx171937%_)
                     (let ((_%name171939%_ '#f))
                       (_%make-export__174950174951%_
                        _%bind171935%_
                        _%phi171936%_
                        _%ctx171937%_
                        _%name171939%_))))
                  (_%make-export171454%_
                   (lambda _g175024_
                     (let ((_g175025_ (##length _g175024_)))
                       (cond ((##fx= _g175025_ 1)
                              (apply _%make-export__0__174952174955%_
                                     _g175024_))
                             ((##fx= _g175025_ 2)
                              (apply _%make-export__1__174953174956%_
                                     _g175024_))
                             ((##fx= _g175025_ 3)
                              (apply _%make-export__2__174954174957%_
                                     _g175024_))
                             ((##fx= _g175025_ 4)
                              (apply _%make-export__174950174951%_ _g175024_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g175024_))))))
                  (_%expand1171455%_
                   (lambda (_%hd171609%_
                            _%K171610%_
                            _%rest171611%_
                            _%r171612%_)
                     (let* ((_%e171613171645%_ _%hd171609%_)
                            (_%E171640171649%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _%stx171451%_
                                _%hd171609%_)))
                            (_%E171630171733%_
                             (lambda ()
                               (if (gx#stx-pair? _%e171613171645%_)
                                   (let ((_%e171641171653%_
                                          (gx#syntax-e _%e171613171645%_)))
                                     (let ((_%hd171642171656%_
                                            (##car _%e171641171653%_))
                                           (_%tl171643171658%_
                                            (##cdr _%e171641171653%_)))
                                       (if (eq? (gx#stx-e _%hd171642171656%_)
                                                'import:)
                                           (let ((_%in171661%_
                                                  _%tl171643171658%_))
                                             (if (gx#stx-list? _%in171661%_)
                                                 (let _%lp171663%_ ((_%in-rest171665%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%in171661%_)
                            (_%r171666%_ _%r171612%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%e171667171674%_
                                                           _%in-rest171665%_)
                                                          (_%E171669171678%_
                                                           (lambda ()
                                                             (_%K171610%_
                                                              _%rest171611%_
                                                              _%r171666%_)))
                                                          (_%E171668171729%_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%e171667171674%_)
                         (let ((_%e171670171682%_
                                (gx#syntax-e _%e171667171674%_)))
                           (let ((_%hd171671171685%_ (##car _%e171670171682%_))
                                 (_%tl171672171687%_
                                  (##cdr _%e171670171682%_)))
                             (let* ((_%hd171690%_ _%hd171671171685%_)
                                    (_%in-rest171692%_ _%tl171672171687%_)
                                    (_%src171727%_
                                     (if (gx#core-bound-module? _%hd171690%_)
                                         (gx#syntax-local-e__0 _%hd171690%_)
                                         (if (gx#core-library-module-path?
                                              _%hd171690%_)
                                             (gx#import-module__0
                                              (gx#core-resolve-library-module-path
                                               _%hd171690%_))
                                             (if (gx#core-library-relative-module-path?
                                                  _%hd171690%_)
                                                 (gx#import-module__0
                                                  (gx#core-resolve-library-relative-module-path
                                                   _%hd171690%_))
                                                 (if (gx#stx-string?
                                                      _%hd171690%_)
                                                     (gx#import-module__0
                                                      (gx#core-resolve-module-path__%
                                                       _%hd171690%_
                                                       (gx#stx-source
                                                        _%stx171451%_)))
                                                     (let* ((_%e171698171705%_
                                                             _%hd171690%_)
                                                            (_%E171700171709%_
                                                             (lambda ()
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; illegal re-export"
                                                                _%stx171451%_
                                                                _%hd171690%_)))
                                                            (_%E171699171723%_
                                                             (lambda ()
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%e171698171705%_)
                           (let ((_%e171701171713%_
                                  (gx#syntax-e _%e171698171705%_)))
                             (let ((_%hd171702171716%_
                                    (##car _%e171701171713%_))
                                   (_%tl171703171718%_
                                    (##cdr _%e171701171713%_)))
                               (if (eq? (gx#stx-e _%hd171702171716%_) 'in:)
                                   (let ((_%spath171721%_ _%tl171703171718%_))
                                     (gx#core-import-nested-module
                                      _%spath171721%_
                                      _%stx171451%_))
                                   (_%E171700171709%_))))
                           (_%E171700171709%_)))))
               (_%E171699171723%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (_%lp171663%_
                                _%in-rest171692%_
                                (_%export-imports171456%_
                                 _%src171727%_
                                 _%r171666%_)))))
                         (_%E171669171678%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E171668171729%_)))
                                                 (_%E171640171649%_)))
                                           (_%E171640171649%_))))
                                   (_%E171640171649%_))))
                            (_%E171617171773%_
                             (lambda ()
                               (if (gx#stx-pair? _%e171613171645%_)
                                   (let ((_%e171631171737%_
                                          (gx#syntax-e _%e171613171645%_)))
                                     (let ((_%hd171632171740%_
                                            (##car _%e171631171737%_))
                                           (_%tl171633171742%_
                                            (##cdr _%e171631171737%_)))
                                       (if (eq? (gx#stx-e _%hd171632171740%_)
                                                'rename:)
                                           (if (gx#stx-pair?
                                                _%tl171633171742%_)
                                               (let ((_%e171634171745%_
                                                      (gx#syntax-e
                                                       _%tl171633171742%_)))
                                                 (let ((_%hd171635171748%_
                                                        (##car _%e171634171745%_))
                                                       (_%tl171636171750%_
                                                        (##cdr _%e171634171745%_)))
                                                   (let ((_%id171753%_
                                                          _%hd171635171748%_))
                                                     (if (gx#stx-pair?
                                                          _%tl171636171750%_)
                                                         (let ((_%e171637171755%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl171636171750%_)))
                   (let ((_%hd171638171758%_ (##car _%e171637171755%_))
                         (_%tl171639171760%_ (##cdr _%e171637171755%_)))
                     (let ((_%name171763%_ _%hd171638171758%_))
                       (if (gx#stx-null? _%tl171639171760%_)
                           (let* ((_%phi171765%_
                                   (gx#current-export-expander-phi))
                                  (_%$e171767%_
                                   (gx#core-resolve-identifier__1
                                    _%id171753%_
                                    _%phi171765%_)))
                             (if _%$e171767%_
                                 ((lambda (_%bind171770%_)
                                    (_%K171610%_
                                     _%rest171611%_
                                     (cons (_%make-export__174950174951%_
                                            _%bind171770%_
                                            _%phi171765%_
                                            (gx#current-expander-context)
                                            _%name171763%_)
                                           _%r171612%_)))
                                  _%$e171767%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Reference to unbound identifier"
                                  _%stx171451%_
                                  _%hd171609%_
                                  _%id171753%_)))
                           (_%E171630171733%_)))))
                 (_%E171630171733%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E171630171733%_))
                                           (_%E171630171733%_))))
                                   (_%E171630171733%_))))
                            (_%E171616171823%_
                             (lambda ()
                               (if (gx#stx-pair? _%e171613171645%_)
                                   (let ((_%e171618171777%_
                                          (gx#syntax-e _%e171613171645%_)))
                                     (let ((_%hd171619171780%_
                                            (##car _%e171618171777%_))
                                           (_%tl171620171782%_
                                            (##cdr _%e171618171777%_)))
                                       (if (eq? (gx#stx-e _%hd171619171780%_)
                                                'spec:)
                                           (if (gx#stx-pair?
                                                _%tl171620171782%_)
                                               (let ((_%e171621171785%_
                                                      (gx#syntax-e
                                                       _%tl171620171782%_)))
                                                 (let ((_%hd171622171788%_
                                                        (##car _%e171621171785%_))
                                                       (_%tl171623171790%_
                                                        (##cdr _%e171621171785%_)))
                                                   (let ((_%phi171793%_
                                                          _%hd171622171788%_))
                                                     (if (gx#stx-pair?
                                                          _%tl171623171790%_)
                                                         (let ((_%e171624171795%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl171623171790%_)))
                   (let ((_%hd171625171798%_ (##car _%e171624171795%_))
                         (_%tl171626171800%_ (##cdr _%e171624171795%_)))
                     (let ((_%id171803%_ _%hd171625171798%_))
                       (if (gx#stx-pair? _%tl171626171800%_)
                           (let ((_%e171627171805%_
                                  (gx#syntax-e _%tl171626171800%_)))
                             (let ((_%hd171628171808%_
                                    (##car _%e171627171805%_))
                                   (_%tl171629171810%_
                                    (##cdr _%e171627171805%_)))
                               (let ((_%name171813%_ _%hd171628171808%_))
                                 (if (gx#stx-null? _%tl171629171810%_)
                                     (if (and (gx#stx-fixnum? _%phi171793%_)
                                              (gx#identifier? _%id171803%_)
                                              (gx#identifier? _%name171813%_))
                                         (let* ((_%phi171815%_
                                                 (gx#stx-e _%phi171793%_))
                                                (_%$e171817%_
                                                 (gx#core-resolve-identifier__1
                                                  _%id171803%_
                                                  _%phi171815%_)))
                                           (if _%$e171817%_
                                               ((lambda (_%bind171820%_)
                                                  (_%K171610%_
                                                   _%rest171611%_
                                                   (cons (_%make-export__174950174951%_
                                                          _%bind171820%_
                                                          _%phi171815%_
                                                          (gx#current-expander-context)
                                                          _%name171813%_)
                                                         _%r171612%_)))
                                                _%$e171817%_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _%stx171451%_
                                                _%hd171609%_
                                                _%id171803%_)))
                                         (_%E171617171773%_))
                                     (_%E171617171773%_)))))
                           (_%E171617171773%_)))))
                 (_%E171617171773%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E171617171773%_))
                                           (_%E171617171773%_))))
                                   (_%E171617171773%_))))
                            (_%E171615171835%_
                             (lambda ()
                               (let ((_%id171827%_ _%e171613171645%_))
                                 (if (gx#identifier? _%id171827%_)
                                     (let ((_%$e171829%_
                                            (gx#core-resolve-identifier__1
                                             _%id171827%_
                                             (gx#current-export-expander-phi))))
                                       (if _%$e171829%_
                                           ((lambda (_%bind171832%_)
                                              (_%K171610%_
                                               _%rest171611%_
                                               (cons (_%make-export__0__174952174955%_
                                                      _%bind171832%_)
                                                     _%r171612%_)))
                                            _%$e171829%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _%stx171451%_
                                            _%hd171609%_)))
                                     (_%E171616171823%_)))))
                            (_%E171614171899%_
                             (lambda ()
                               (if (eq? (gx#stx-e _%e171613171645%_) '#t)
                                   (let* ((_%current-ctx171839%_
                                           (gx#current-expander-context))
                                          (_%current-phi171841%_
                                           (gx#current-export-expander-phi))
                                          (_%phi-ctx171843%_
                                           (gx#core-context-shift
                                            _%current-ctx171839%_
                                            _%current-phi171841%_))
                                          (_%phi-bind171845%_
                                           (hash->list
                                            (##unchecked-structure-ref
                                             _%phi-ctx171843%_
                                             '2
                                             '#f
                                             '#f))))
                                     (let _%lp171848%_ ((_%bind-rest171850%_
                                                         _%phi-bind171845%_)
                                                        (_%set171851%_ '()))
                                       (let* ((_%bind-rest171852171862%_
                                               _%bind-rest171850%_)
                                              (_%else171854171870%_
                                               (lambda ()
                                                 (_%K171610%_
                                                  _%rest171611%_
                                                  (cons (##structure
                                                         gx#export-set::t
                                                         '#f
                                                         _%current-phi171841%_
                                                         _%set171851%_)
                                                        _%r171612%_))))
                                              (_%K171856171880%_
                                               (lambda (_%bind-rest171873%_
                                                        _%bind171874%_
                                                        _%key171875%_)
                                                 (if (or (##structure-direct-instance-of?
                                                          _%bind171874%_
                                                          'gx#import-binding::t)
                                                         (gx#private-feature-binding?
                                                          _%bind171874%_))
                                                     (_%lp171848%_
                                                      _%bind-rest171873%_
                                                      _%set171851%_)
                                                     (_%lp171848%_
                                                      _%bind-rest171873%_
                                                      (cons (_%make-export__2__174954174957%_
                                                             _%bind171874%_
                                                             _%current-phi171841%_
                                                             _%current-ctx171839%_)
                                                            _%set171851%_))))))
                                         (if (pair? _%bind-rest171852171862%_)
                                             (let ((_%hd171857171883%_
                                                    (##car _%bind-rest171852171862%_))
                                                   (_%tl171858171885%_
                                                    (##cdr _%bind-rest171852171862%_)))
                                               (if (pair? _%hd171857171883%_)
                                                   (let ((_%hd171859171888%_
                                                          (##car _%hd171857171883%_))
                                                         (_%tl171860171890%_
                                                          (##cdr _%hd171857171883%_)))
                                                     (let* ((_%key171893%_
                                                             _%hd171859171888%_)
                                                            (_%bind171895%_
                                                             _%tl171860171890%_)
                                                            (_%bind-rest171897%_
                                                             _%tl171858171885%_))
                                                       (_%K171856171880%_
                                                        _%bind-rest171897%_
                                                        _%bind171895%_
                                                        _%key171893%_)))
                                                   (_%else171854171870%_)))
                                             (_%else171854171870%_)))))
                                   (_%E171615171835%_)))))
                       (_%E171614171899%_))))
                  (_%export-imports171456%_
                   (lambda (_%src171486%_ _%r171487%_)
                     (letrec* ((_%current-ctx171489%_
                                (gx#current-expander-context))
                               (_%current-phi171490%_
                                (gx#current-export-expander-phi))
                               (_%import->export171491%_
                                (lambda (_%in171572%_)
                                  (let* ((_%in171573171581%_ _%in171572%_)
                                         (_%E171575171584%_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _%in171573171581%_
                                                   '((module-import
                                                      out
                                                      key
                                                      phi)))
                                            '#!void))
                                         (_%K171576171591%_
                                          (lambda (_%phi171587%_
                                                   _%key171588%_
                                                   _%out171589%_)
                                            (##structure
                                             gx#module-export::t
                                             _%current-ctx171489%_
                                             _%key171588%_
                                             _%phi171587%_
                                             _%key171588%_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _%in171573171581%_
                                         'gx#module-import::t)
                                        (let* ((_%e171577171594%_
                                                (##unchecked-structure-ref
                                                 _%in171573171581%_
                                                 '1
                                                 '#f
                                                 '#f))
                                               (_%out171597%_
                                                _%e171577171594%_)
                                               (_%e171578171599%_
                                                (##unchecked-structure-ref
                                                 _%in171573171581%_
                                                 '2
                                                 '#f
                                                 '#f))
                                               (_%key171602%_
                                                _%e171578171599%_)
                                               (_%e171579171604%_
                                                (##unchecked-structure-ref
                                                 _%in171573171581%_
                                                 '3
                                                 '#f
                                                 '#f))
                                               (_%phi171607%_
                                                _%e171579171604%_))
                                          (_%K171576171591%_
                                           _%phi171607%_
                                           _%key171602%_
                                           _%out171597%_))
                                        (_%E171575171584%_)))))
                               (_%fold-e171492%_
                                (lambda (_%in171494%_ _%r171495%_)
                                  (let* ((_%in171496171510%_ _%in171494%_)
                                         (_%else171499171518%_
                                          (lambda () _%r171495%_)))
                                    (let ((_%K171505171554%_
                                           (lambda (_%phi171550%_
                                                    _%key171551%_
                                                    _%out171552%_)
                                             (if (and (fx= _%phi171550%_
                                                           _%current-phi171490%_)
                                                      (eq? _%src171486%_
                                                           (##unchecked-structure-ref
                                                            _%out171552%_
                                                            '1
                                                            '#f
                                                            '#f)))
                                                 (cons (_%import->export171491%_
                                                        _%in171494%_)
                                                       _%r171495%_)
                                                 _%r171495%_)))
                                          (_%K171501171529%_
                                           (lambda (_%imports171522%_
                                                    _%phi171523%_
                                                    _%ctx171524%_)
                                             (if (and (fx= _%phi171523%_
                                                           _%current-phi171490%_)
                                                      (eq? _%src171486%_
                                                           _%ctx171524%_))
                                                 (__foldl1
                                                  (lambda (_%in171526%_
                                                           _%r171527%_)
                                                    (cons (_%import->export171491%_
                                                           _%in171526%_)
                                                          _%r171527%_))
                                                  _%r171495%_
                                                  _%imports171522%_)
                                                 _%r171495%_))))
                                      (let ((_%try-match171498171547%_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _%in171496171510%_
                                                    'gx#import-set::t)
                                                   (let* ((_%e171502171532%_
                                                           (##unchecked-structure-ref
                                                            _%in171496171510%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                          (_%e171503171537%_
                                                           (##unchecked-structure-ref
                                                            _%in171496171510%_
                                                            '2
                                                            '#f
                                                            '#f))
                                                          (_%e171504171542%_
                                                           (##unchecked-structure-ref
                                                            _%in171496171510%_
                                                            '3
                                                            '#f
                                                            '#f)))
                                                     (let ((_%ctx171535%_
                                                            _%e171502171532%_)
                                                           (_%phi171540%_
                                                            _%e171503171537%_)
                                                           (_%imports171545%_
                                                            _%e171504171542%_))
                                                       (_%K171501171529%_
                                                        _%imports171545%_
                                                        _%phi171540%_
                                                        _%ctx171535%_)))
                                                   (_%else171499171518%_)))))
                                        (if (##structure-direct-instance-of?
                                             _%in171496171510%_
                                             'gx#module-import::t)
                                            (let* ((_%e171506171557%_
                                                    (##unchecked-structure-ref
                                                     _%in171496171510%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                   (_%e171507171562%_
                                                    (##unchecked-structure-ref
                                                     _%in171496171510%_
                                                     '2
                                                     '#f
                                                     '#f))
                                                   (_%e171508171567%_
                                                    (##unchecked-structure-ref
                                                     _%in171496171510%_
                                                     '3
                                                     '#f
                                                     '#f)))
                                              (let ((_%out171560%_
                                                     _%e171506171557%_)
                                                    (_%key171565%_
                                                     _%e171507171562%_)
                                                    (_%phi171570%_
                                                     _%e171508171567%_))
                                                (_%K171505171554%_
                                                 _%phi171570%_
                                                 _%key171565%_
                                                 _%out171560%_)))
                                            (_%try-match171498171547%_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _%src171486%_
                              _%current-phi171490%_
                              (__foldl1
                               _%fold-e171492%_
                               '()
                               (##unchecked-structure-ref
                                _%current-ctx171489%_
                                '8
                                '#f
                                '#f)))
                             _%r171487%_))))
                  (_%export!171457%_
                   (lambda (_%rbody171473%_)
                     (letrec* ((_%current-ctx171475%_
                                (gx#current-expander-context))
                               (_%fold-e171476%_
                                (lambda (_%out171480%_ _%r171481%_)
                                  (if (##structure-direct-instance-of?
                                       _%out171480%_
                                       'gx#module-export::t)
                                      (cons _%out171480%_ _%r171481%_)
                                      (if (##structure-direct-instance-of?
                                           _%out171480%_
                                           'gx#export-set::t)
                                          (__foldl1
                                           cons
                                           _%r171481%_
                                           (##unchecked-structure-ref
                                            _%out171480%_
                                            '3
                                            '#f
                                            '#f))
                                          _%r171481%_)))))
                       (let ((_%body171478%_ (reverse _%rbody171473%_)))
                         (##unchecked-structure-set!
                          _%current-ctx171475%_
                          (__foldl1
                           _%fold-e171476%_
                           (##unchecked-structure-ref
                            _%current-ctx171475%_
                            '9
                            '#f
                            '#f)
                           _%body171478%_)
                          '9
                          '#f
                          '#f)
                         _%body171478%_))))
                  (_%expanded-export?171458%_
                   (lambda (_%e171468%_)
                     (let ((_%$e171470%_
                            (##structure-direct-instance-of?
                             _%e171468%_
                             'gx#module-export::t)))
                       (if _%$e171470%_
                           _%$e171470%_
                           (##structure-direct-instance-of?
                            _%e171468%_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _%internal-expand?171452%_)
              (let ((_%rbody171464%_
                     (gx#core-expand-import/export
                      _%stx171451%_
                      _%expanded-export?171458%_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _%expand1171455%_)))
                (if _%internal-expand?171452%_
                    (reverse _%rbody171464%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons
                      '%#export
                      (_%export!171457%_ _%rbody171464%_))
                     (gx#stx-source _%stx171451%_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _%stx171451%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _%stx171451%_))))))
    (define gx#core-expand-export%__0
      (lambda (_%stx171949%_)
        (let ((_%internal-expand?171951%_ '#f))
          (gx#core-expand-export%__%
           _%stx171949%_
           _%internal-expand?171951%_))))
    (define gx#core-expand-export%
      (lambda _g175026_
        (let ((_g175027_ (##length _g175026_)))
          (cond ((##fx= _g175027_ 1)
                 (apply gx#core-expand-export%__0 _g175026_))
                ((##fx= _g175027_ 2)
                 (apply gx#core-expand-export%__% _g175026_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g175026_))))))
    (define gx#core-expand-export-source
      (lambda (_%hd171448%_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _%hd171448%_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_%stx171418%_)
        (let* ((_%e171419171426%_ _%stx171418%_)
               (_%E171421171430%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e171419171426%_)))
               (_%E171420171444%_
                (lambda ()
                  (if (gx#stx-pair? _%e171419171426%_)
                      (let ((_%e171422171434%_
                             (gx#syntax-e _%e171419171426%_)))
                        (let ((_%hd171423171437%_ (##car _%e171422171434%_))
                              (_%tl171424171439%_ (##cdr _%e171422171434%_)))
                          (let ((_%body171442%_ _%tl171424171439%_))
                            (if (gx#identifier-list? _%body171442%_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _%body171442%_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _%body171442%_))
                                   (gx#stx-source _%stx171418%_)))
                                (_%E171421171430%_)))))
                      (_%E171421171430%_)))))
          (_%E171420171444%_))))
    (define gx#core-bind-feature!__%
      (lambda (_%id171384%_ _%private?171385%_ _%phi171386%_ _%ctx171387%_)
        (gx#core-bind-syntax!__%
         _%id171384%_
         ((if _%private?171385%_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _%id171384%_))
         _%private?171385%_
         _%phi171386%_
         _%ctx171387%_)))
    (define gx#core-bind-feature!__0
      (lambda (_%id171392%_)
        (let* ((_%private?171394%_ '#f)
               (_%phi171396%_ (gx#current-expander-phi))
               (_%ctx171398%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id171392%_
           _%private?171394%_
           _%phi171396%_
           _%ctx171398%_))))
    (define gx#core-bind-feature!__1
      (lambda (_%id171400%_ _%private?171401%_)
        (let* ((_%phi171403%_ (gx#current-expander-phi))
               (_%ctx171405%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id171400%_
           _%private?171401%_
           _%phi171403%_
           _%ctx171405%_))))
    (define gx#core-bind-feature!__2
      (lambda (_%id171407%_ _%private?171408%_ _%phi171409%_)
        (let ((_%ctx171411%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id171407%_
           _%private?171408%_
           _%phi171409%_
           _%ctx171411%_))))
    (define gx#core-bind-feature!
      (lambda _g175028_
        (let ((_g175029_ (##length _g175028_)))
          (cond ((##fx= _g175029_ 1)
                 (apply gx#core-bind-feature!__0 _g175028_))
                ((##fx= _g175029_ 2)
                 (apply gx#core-bind-feature!__1 _g175028_))
                ((##fx= _g175029_ 3)
                 (apply gx#core-bind-feature!__2 _g175028_))
                ((##fx= _g175029_ 4)
                 (apply gx#core-bind-feature!__% _g175028_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g175028_))))))))
