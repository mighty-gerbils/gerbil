(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1734280446)
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
      (lambda _%$args129952%_
        (apply make-instance gx#module-import::t _%$args129952%_)))
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
      (lambda _%$args129949%_
        (apply make-instance gx#module-export::t _%$args129949%_)))
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
      (lambda _%$args129946%_
        (apply make-instance gx#import-set::t _%$args129946%_)))
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
      (lambda _%$args129943%_
        (apply make-instance gx#export-set::t _%$args129943%_)))
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
      (lambda _%$args129940%_
        (apply make-instance gx#import-expander::t _%$args129940%_)))
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
      (lambda _%$args129937%_
        (apply make-instance gx#export-expander::t _%$args129937%_)))
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
      (lambda _%$args129934%_
        (apply make-instance gx#import-export-expander::t _%$args129934%_)))
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
      (lambda (_%path129931%_ _%fun129932%_)
        (call-with-input-file
         (cons 'path: (cons _%path129931%_ gx#source-file-settings))
         _%fun129932%_)))
    (define gx#module-context:::init!
      (lambda (_%self126383129912%_
               _%id129914%_
               _%super129915%_
               _%ns129916%_
               _%path129917%_)
        (let* ((_%self129919%_ _%self126383129912%_)
               (_%self129921%_ _%self129919%_))
          (if (##fx< '11 (##structure-length _%self129921%_))
              (begin
                (##unchecked-structure-set!
                 _%self129921%_
                 _%id129914%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self129921%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self129921%_
                 _%super129915%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self129921%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self129921%_ '#f '5 '#f '#f)
                (##unchecked-structure-set!
                 _%self129921%_
                 _%ns129916%_
                 '6
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self129921%_
                 _%path129917%_
                 '7
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self129921%_ '() '8 '#f '#f)
                (##unchecked-structure-set! _%self129921%_ '() '9 '#f '#f)
                (##unchecked-structure-set! _%self129921%_ '#f '10 '#f '#f)
                (##unchecked-structure-set! _%self129921%_ '#f '11 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self129921%_
                     '11
                     (##vector-length _%self129921%_))))))
    (__bind-method!__%
     gx#module-context::t
     ':init!
     gx#module-context:::init!
     '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_%self126384129743%_ _%ctx129745%_ _%root129746%_)
        (let* ((_%self129748%_ _%self126384129743%_)
               (_%self129750%_ _%self129748%_)
               (_%super129766%_
                (let ((_%$e129760%_ _%root129746%_))
                  (if _%$e129760%_
                      _%$e129760%_
                      (let ((_%$e129763%_ (gx#core-context-root__0)))
                        (if _%$e129763%_
                            _%$e129763%_
                            (let ((__obj129996
                                   (##structure gx#root-context::t '#f '#f)))
                              (let ((__constructor129997
                                     (direct-method-ref
                                      gx#root-context::t
                                      __obj129996
                                      ':init!)))
                                (if __constructor129997
                                    (__constructor129997 __obj129996)
                                    (error '"missing constructor method implementation"
                                           'class:
                                           gx#root-context::t
                                           'method:
                                           ':init!)))
                              __obj129996)))))))
          (if _%ctx129745%_
              (let ((_%id129769%_
                     (##structure-ref
                      _%ctx129745%_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_%path129770%_
                     (##structure-ref
                      _%ctx129745%_
                      '7
                      gx#module-context::t
                      '#f))
                    (_%in129771%_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _%ctx129745%_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_%e129772%_
                     (__make-promise
                      (lambda () (gx#eval-module _%ctx129745%_)))))
                (if (##fx< '8 (##structure-length _%self129750%_))
                    (begin
                      (##unchecked-structure-set!
                       _%self129750%_
                       _%id129769%_
                       '1
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self129750%_
                       (make-hash-table-eq 'size: (##length _%in129771%_))
                       '2
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self129750%_
                       _%super129766%_
                       '3
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self129750%_
                       '#f
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self129750%_
                       '#f
                       '5
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self129750%_
                       _%path129770%_
                       '6
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self129750%_
                       _%in129771%_
                       '7
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self129750%_
                       _%e129772%_
                       '8
                       '#f
                       '#f)
                      '#!void)
                    (error '"struct-instance-init!: too many arguments for struct"
                           _%self129750%_
                           '8
                           (##vector-length _%self129750%_)))
                (##for-each
                 (lambda (_%g129773129775%_)
                   (gx#core-bind-weak-import!__%
                    _%g129773129775%_
                    _%self129750%_))
                 _%in129771%_))
              (if (##fx< '8 (##structure-length _%self129750%_))
                  (begin
                    (##unchecked-structure-set! _%self129750%_ '#f '1 '#f '#f)
                    (##unchecked-structure-set!
                     _%self129750%_
                     (make-hash-table-eq)
                     '2
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self129750%_
                     _%super129766%_
                     '3
                     '#f
                     '#f)
                    (##unchecked-structure-set! _%self129750%_ '#f '4 '#f '#f)
                    (##unchecked-structure-set! _%self129750%_ '#f '5 '#f '#f)
                    (##unchecked-structure-set! _%self129750%_ '#f '6 '#f '#f)
                    (##unchecked-structure-set! _%self129750%_ '() '7 '#f '#f)
                    (##unchecked-structure-set! _%self129750%_ '#f '8 '#f '#f)
                    '#!void)
                  (error '"struct-instance-init!: too many arguments for struct"
                         _%self129750%_
                         '8
                         (##vector-length _%self129750%_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_%self126384129781%_ _%ctx129782%_)
        (let ((_%root129784%_ '#f))
          (gx#prelude-context:::init!__%
           _%self126384129781%_
           _%ctx129782%_
           _%root129784%_))))
    (define gx#prelude-context:::init!
      (lambda _g130003_
        (let ((_g130002_ (##length _g130003_)))
          (cond ((##fx= _g130002_ 2)
                 (apply gx#prelude-context:::init!__0 _g130003_))
                ((##fx= _g130002_ 3)
                 (apply gx#prelude-context:::init!__% _g130003_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g130003_))))))
    (__bind-method!__%
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_%self129617%_ _%e129618%_)
        (if (##fx< '3 (##structure-length _%self129617%_))
            (begin
              (##unchecked-structure-set!
               _%self129617%_
               _%e129618%_
               '1
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self129617%_
               (gx#current-expander-context)
               '2
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self129617%_
               (##fx- (gx#current-expander-phi) '1)
               '3
               '#f
               '#f)
              '#!void)
            (error '"struct-instance-init!: too many arguments for struct"
                   _%self129617%_
                   '3
                   (##vector-length _%self129617%_)))))
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
      (lambda (_%g129243129246%_ _%g129244129248%_)
        (gx#core-apply-user-expander__%
         _%g129243129246%_
         _%g129244129248%_
         'apply-import-expander)))
    (__bind-method!__%
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_%g129114129117%_ _%g129115129119%_)
        (gx#core-apply-user-expander__%
         _%g129114129117%_
         _%g129115129119%_
         'apply-export-expander)))
    (__bind-method!__%
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_%ctx128985%_)
        (let* ((_%path128987%_
                (##structure-ref _%ctx128985%_ '7 gx#module-context::t '#f))
               (_%path128989%_
                (if (pair? _%path128987%_)
                    (##last _%path128987%_)
                    _%path128987%_)))
          (if (string? _%path128989%_) _%path128989%_ '#f))))
    (define gx#import-module__%
      (lambda (_%path128961%_ _%reload?128962%_ _%eval?128963%_)
        (let ((_%ctx128965%_
               ((gx#current-expander-module-import)
                _%path128961%_
                _%reload?128962%_)))
          (if (and _%ctx128965%_ _%eval?128963%_)
              (gx#eval-module _%ctx128965%_)
              '#!void)
          _%ctx128965%_)))
    (define gx#import-module__0
      (lambda (_%path128970%_)
        (let* ((_%reload?128972%_ '#f) (_%eval?128974%_ '#f))
          (gx#import-module__%
           _%path128970%_
           _%reload?128972%_
           _%eval?128974%_))))
    (define gx#import-module__1
      (lambda (_%path128976%_ _%reload?128977%_)
        (let ((_%eval?128979%_ '#f))
          (gx#import-module__%
           _%path128976%_
           _%reload?128977%_
           _%eval?128979%_))))
    (define gx#import-module
      (lambda _g130005_
        (let ((_g130004_ (##length _g130005_)))
          (cond ((##fx= _g130004_ 1) (apply gx#import-module__0 _g130005_))
                ((##fx= _g130004_ 2) (apply gx#import-module__1 _g130005_))
                ((##fx= _g130004_ 3) (apply gx#import-module__% _g130005_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g130005_))))))
    (define gx#eval-module
      (lambda (_%mod128958%_)
        ((gx#current-expander-module-eval) _%mod128958%_)))
    (define gx#core-eval-module
      (lambda (_%obj128938%_)
        (letrec ((_%force-e128940%_
                  (lambda (_%getf128954%_ _%e128955%_)
                    (__call-with-parameters
                     (lambda () (force (_%getf128954%_ _%e128955%_)))
                     gx#current-expander-context
                     _%e128955%_
                     gx#current-expander-phi
                     '0))))
          (let _%recur128942%_ ((_%e128944%_ _%obj128938%_))
            (if (##structure-instance-of? _%e128944%_ 'gx#module-context::t)
                (let ()
                  (let ((_%$e128947%_
                         (gx#core-context-prelude__% _%e128944%_)))
                    (if _%$e128947%_ (_%recur128942%_ _%$e128947%_) '#!void))
                  (_%force-e128940%_ gx#module-context-e _%e128944%_))
                (if (##structure-instance-of?
                     _%e128944%_
                     'gx#prelude-context::t)
                    (_%force-e128940%_ gx#prelude-context-e _%e128944%_)
                    (if (gx#stx-string? _%e128944%_)
                        (_%recur128942%_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _%e128944%_)))
                        (if (gx#core-library-module-path? _%e128944%_)
                            (_%recur128942%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%e128944%_)))
                            (error '"cannot eval module" _%obj128938%_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_%ctx128918%_)
        (let _%lp128920%_ ((_%e128922%_ _%ctx128918%_))
          (if (or (##structure-instance-of? _%e128922%_ 'gx#module-context::t)
                  (##structure-instance-of? _%e128922%_ 'gx#local-context::t))
              (_%lp128920%_ (##unchecked-structure-ref _%e128922%_ '3 '#f '#f))
              (if (##structure-instance-of? _%e128922%_ 'gx#prelude-context::t)
                  _%e128922%_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_%ctx128934%_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _%ctx128934%_))))
    (define gx#core-context-prelude
      (lambda _g130007_
        (let ((_g130006_ (##length _g130007_)))
          (cond ((##fx= _g130006_ 0)
                 (apply gx#core-context-prelude__0 _g130007_))
                ((##fx= _g130006_ 1)
                 (apply gx#core-context-prelude__% _g130007_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g130007_))))))
    (define gx#core-module->prelude-context
      (lambda (_%ctx128909%_)
        (let ((_%$e128911%_ (__hash-get gx#__module-registry _%ctx128909%_)))
          (if _%$e128911%_
              _%$e128911%_
              (let ((_%pre128915%_
                     (let ((__obj129998
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
                        __obj129998
                        _%ctx128909%_)
                       __obj129998)))
                (__hash-put! gx#__module-registry _%ctx128909%_ _%pre128915%_)
                _%pre128915%_)))))
    (define gx#core-import-module__%
      (lambda (_%rpath128781%_ _%reload?128782%_)
        (letrec ((_%import-source128784%_
                  (lambda (_%path128873%_)
                    (if (member _%path128873%_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _%path128873%_)
                        '#!void)
                    (__call-with-parameters
                     (lambda ()
                       (let ((_g130008_ (gx#core-read-module _%path128873%_)))
                         (begin
                           (let ((_g130009_
                                  (if (##values? _g130008_)
                                      (##values-length _g130008_)
                                      1)))
                             (if (not (##fx= _g130009_ 4))
                                 (error "Context expects 4 values" _g130009_)))
                           (let ((_%pre128876%_ (##values-ref _g130008_ 0))
                                 (_%id128877%_ (##values-ref _g130008_ 1))
                                 (_%ns128878%_ (##values-ref _g130008_ 2))
                                 (_%body128879%_ (##values-ref _g130008_ 3)))
                             (let* ((_%prelude128889%_
                                     (if (##structure-instance-of?
                                          _%pre128876%_
                                          'gx#prelude-context::t)
                                         _%pre128876%_
                                         (if (##structure-instance-of?
                                              _%pre128876%_
                                              'gx#module-context::t)
                                             (gx#core-module->prelude-context
                                              _%pre128876%_)
                                             (if (string? _%pre128876%_)
                                                 (gx#core-module->prelude-context
                                                  (gx#core-import-module__0
                                                   _%pre128876%_))
                                                 (if (not _%pre128876%_)
                                                     (let ((_%$e128885%_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _%$e128885%_
                                                           _%$e128885%_
                                                           (let ((__obj129999
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
                     (gx#prelude-context:::init!__0 __obj129999 '#f)
                     __obj129999)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error '"cannot import module; unknown prelude"
                                                            _%rpath128781%_
                                                            _%pre128876%_))))))
                                    (_%ctx128891%_
                                     (let ((__obj130000
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
                                        __obj130000
                                        _%id128877%_
                                        _%prelude128889%_
                                        _%ns128878%_
                                        _%path128873%_)
                                       __obj130000))
                                    (_%body128893%_
                                     (gx#core-expand-module-begin
                                      _%body128879%_
                                      _%ctx128891%_))
                                    (_%body128895%_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _%body128893%_)
                                      _%path128873%_
                                      _%ctx128891%_
                                      '())))
                               (##unchecked-structure-set!
                                _%ctx128891%_
                                (__make-promise
                                 (lambda () (gx#eval-syntax* _%body128895%_)))
                                '10
                                '#f
                                '#f)
                               (##unchecked-structure-set!
                                _%ctx128891%_
                                _%body128895%_
                                '11
                                '#f
                                '#f)
                               (__hash-put!
                                gx#__module-registry
                                _%path128873%_
                                _%ctx128891%_)
                               (__hash-put!
                                gx#__module-registry
                                _%id128877%_
                                _%ctx128891%_)
                               _%ctx128891%_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _%path128873%_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_%import-submodule128785%_
                  (lambda (_%rpath128801%_)
                    (let* ((_%rpath128802128809%_ _%rpath128801%_)
                           (_%E128804128813%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%rpath128802128809%_
                                     '([origin . refs]))
                              '#!void))
                           (_%K128805128861%_
                            (lambda (_%refs128816%_ _%origin128817%_)
                              (let ((_%ctx128819%_
                                     (if _%origin128817%_
                                         (gx#core-import-module__%
                                          _%origin128817%_
                                          _%reload?128782%_)
                                         (gx#current-expander-context))))
                                (let _%lp128821%_ ((_%rest128823%_
                                                    _%refs128816%_)
                                                   (_%ctx128824%_
                                                    _%ctx128819%_))
                                  (let* ((_%rest128825128833%_ _%rest128823%_)
                                         (_%else128827128841%_
                                          (lambda () _%ctx128824%_))
                                         (_%K128829128849%_
                                          (lambda (_%rest128844%_ _%id128845%_)
                                            (let ((_%bind128847%_
                                                   (gx#resolve-identifier__%
                                                    _%id128845%_
                                                    '0
                                                    _%ctx128824%_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _%bind128847%_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _%bind128847%_
                                                         '4
                                                         '#f
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_%lp128821%_
                                                   _%rest128844%_
                                                   (##unchecked-structure-ref
                                                    _%bind128847%_
                                                    '4
                                                    '#f
                                                    '#f))
                                                  (error '"cannot import submodule; not bound as a module"
                                                         _%rpath128801%_
                                                         _%id128845%_
                                                         _%bind128847%_))))))
                                    (if (pair? _%rest128825128833%_)
                                        (let ((_%hd128830128852%_
                                               (##car _%rest128825128833%_))
                                              (_%tl128831128854%_
                                               (##cdr _%rest128825128833%_)))
                                          (let* ((_%id128857%_
                                                  _%hd128830128852%_)
                                                 (_%rest128859%_
                                                  _%tl128831128854%_))
                                            (_%K128829128849%_
                                             _%rest128859%_
                                             _%id128857%_)))
                                        (_%else128827128841%_))))))))
                      (if (pair? _%rpath128802128809%_)
                          (let ((_%hd128806128864%_
                                 (##car _%rpath128802128809%_))
                                (_%tl128807128866%_
                                 (##cdr _%rpath128802128809%_)))
                            (let* ((_%origin128869%_ _%hd128806128864%_)
                                   (_%refs128871%_ _%tl128807128866%_))
                              (_%K128805128861%_
                               _%refs128871%_
                               _%origin128869%_)))
                          (_%E128804128813%_))))))
          (let ((_%$e128787%_
                 (if (not _%reload?128782%_)
                     (__hash-get gx#__module-registry _%rpath128781%_)
                     '#f)))
            (if _%$e128787%_
                _%$e128787%_
                (if (list? _%rpath128781%_)
                    (_%import-submodule128785%_ _%rpath128781%_)
                    (if (gx#core-library-module-path? _%rpath128781%_)
                        (let ((_%ctx128792%_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _%rpath128781%_)
                                _%reload?128782%_)))
                          (__hash-put!
                           gx#__module-registry
                           _%rpath128781%_
                           _%ctx128792%_)
                          _%ctx128792%_)
                        (let* ((_%npath128795%_
                                (path-normalize _%rpath128781%_))
                               (_%$e128797%_
                                (if (not _%reload?128782%_)
                                    (__hash-get
                                     gx#__module-registry
                                     _%npath128795%_)
                                    '#f)))
                          (if _%$e128797%_
                              _%$e128797%_
                              (_%import-source128784%_
                               _%npath128795%_))))))))))
    (define gx#core-import-module__0
      (lambda (_%rpath128902%_)
        (let ((_%reload?128904%_ '#f))
          (gx#core-import-module__% _%rpath128902%_ _%reload?128904%_))))
    (define gx#core-import-module
      (lambda _g130011_
        (let ((_g130010_ (##length _g130011_)))
          (cond ((##fx= _g130010_ 1)
                 (apply gx#core-import-module__0 _g130011_))
                ((##fx= _g130010_ 2)
                 (apply gx#core-import-module__% _g130011_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g130011_))))))
    (define gx#core-read-module
      (lambda (_%path128770%_)
        (__with-catch
         (lambda (_%exn128772%_)
           (if (and (datum-parsing-exception? _%exn128772%_)
                    (eq? (datum-parsing-exception-filepos _%exn128772%_) '0))
               (gx#core-read-module/lang _%path128770%_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _%path128770%_
                (__call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_%g128774128776%_)
                      (display-exception__% _%exn128772%_ _%g128774128776%_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _%path128770%_)))))
    (define gx#core-read-module/sexp
      (lambda (_%path128622%_)
        (let _%lp128624%_ ((_%body128626%_
                            (read-syntax-from-file _%path128622%_))
                           (_%pre128627%_ '#f)
                           (_%ns128628%_ '#f)
                           (_%pkg128629%_ '#f))
          (let* ((_%e128630128654%_ _%body128626%_)
                 (_%E128646128680%_
                  (lambda ()
                    (let ((_g130012_
                           (if _%pkg128629%_
                               (values _%pre128627%_
                                       _%ns128628%_
                                       _%pkg128629%_)
                               (gx#core-read-module-package
                                _%path128622%_
                                _%pre128627%_
                                _%ns128628%_))))
                      (begin
                        (let ((_g130013_
                               (if (##values? _g130012_)
                                   (##values-length _g130012_)
                                   1)))
                          (if (not (##fx= _g130013_ 3))
                              (error "Context expects 3 values" _g130013_)))
                        (let ((_%pre128658%_ (##values-ref _g130012_ 0))
                              (_%ns128659%_ (##values-ref _g130012_ 1))
                              (_%pkg128660%_ (##values-ref _g130012_ 2)))
                          (let* ((_%prelude128666%_
                                  (if (gx#core-bound-module-prelude?
                                       _%pre128658%_)
                                      (gx#syntax-local-e__0 _%pre128658%_)
                                      (if (gx#core-library-module-path?
                                           _%pre128658%_)
                                          (gx#core-resolve-library-module-path
                                           _%pre128658%_)
                                          (if (gx#stx-string? _%pre128658%_)
                                              (gx#core-resolve-module-path__%
                                               _%pre128658%_
                                               _%path128622%_)
                                              (gx#stx-e _%pre128658%_)))))
                                 (_%path-id128668%_
                                  (gx#core-module-path->namespace
                                   _%path128622%_))
                                 (_%pkg-id128670%_
                                  (if _%pkg128660%_
                                      (##string-append
                                       _%pkg128660%_
                                       '"/"
                                       _%path-id128668%_)
                                      _%path-id128668%_))
                                 (_%module-id128672%_
                                  (##string->symbol _%pkg-id128670%_))
                                 (_%module-ns128677%_
                                  (if (eq? _%ns128659%_ '#!void)
                                      '#f
                                      (let ((_%$e128674%_ _%ns128659%_))
                                        (if _%$e128674%_
                                            _%$e128674%_
                                            _%pkg-id128670%_)))))
                            (values _%prelude128666%_
                                    _%module-id128672%_
                                    _%module-ns128677%_
                                    _%body128626%_)))))))
                 (_%E128639128712%_
                  (lambda ()
                    (if (gx#stx-pair? _%e128630128654%_)
                        (let ((_%e128647128684%_
                               (gx#syntax-e _%e128630128654%_)))
                          (let ((_%hd128648128687%_ (##car _%e128647128684%_))
                                (_%tl128649128689%_ (##cdr _%e128647128684%_)))
                            (if (eq? (gx#stx-e _%hd128648128687%_) 'package:)
                                (if (gx#stx-pair? _%tl128649128689%_)
                                    (let ((_%e128650128692%_
                                           (gx#syntax-e _%tl128649128689%_)))
                                      (let ((_%hd128651128695%_
                                             (##car _%e128650128692%_))
                                            (_%tl128652128697%_
                                             (##cdr _%e128650128692%_)))
                                        (let* ((_%pkg128700%_
                                                _%hd128651128695%_)
                                               (_%rest128702%_
                                                _%tl128652128697%_)
                                               (_%pkg128710%_
                                                (if (gx#identifier?
                                                     _%pkg128700%_)
                                                    (symbol->string
                                                     (gx#stx-e _%pkg128700%_))
                                                    (if (or (gx#stx-string?
                                                             _%pkg128700%_)
                                                            (gx#stx-false?
                                                             _%pkg128700%_))
                                                        (gx#stx-e
                                                         _%pkg128700%_)
                                                        (gx#raise-syntax-error
                                                         'import
                                                         '"Bad syntax; Illegal package name"
                                                         _%pkg128700%_)))))
                                          (_%lp128624%_
                                           _%rest128702%_
                                           _%pre128627%_
                                           _%ns128628%_
                                           _%pkg128710%_))))
                                    (_%E128646128680%_))
                                (_%E128646128680%_))))
                        (_%E128646128680%_))))
                 (_%E128632128742%_
                  (lambda ()
                    (if (gx#stx-pair? _%e128630128654%_)
                        (let ((_%e128640128716%_
                               (gx#syntax-e _%e128630128654%_)))
                          (let ((_%hd128641128719%_ (##car _%e128640128716%_))
                                (_%tl128642128721%_ (##cdr _%e128640128716%_)))
                            (if (eq? (gx#stx-e _%hd128641128719%_) 'namespace:)
                                (if (gx#stx-pair? _%tl128642128721%_)
                                    (let ((_%e128643128724%_
                                           (gx#syntax-e _%tl128642128721%_)))
                                      (let ((_%hd128644128727%_
                                             (##car _%e128643128724%_))
                                            (_%tl128645128729%_
                                             (##cdr _%e128643128724%_)))
                                        (let* ((_%ns128732%_
                                                _%hd128644128727%_)
                                               (_%rest128734%_
                                                _%tl128645128729%_)
                                               (_%ns128740%_
                                                (if (gx#identifier?
                                                     _%ns128732%_)
                                                    (symbol->string
                                                     (gx#stx-e _%ns128732%_))
                                                    (if (gx#stx-string?
                                                         _%ns128732%_)
                                                        (gx#stx-e _%ns128732%_)
                                                        (if (gx#stx-false?
                                                             _%ns128732%_)
                                                            '#!void
                                                            (gx#raise-syntax-error
                                                             'import
                                                             '"Bad syntax; illegal namespace"
                                                             _%ns128732%_))))))
                                          (_%lp128624%_
                                           _%rest128734%_
                                           _%pre128627%_
                                           _%ns128740%_
                                           _%pkg128629%_))))
                                    (_%E128639128712%_))
                                (_%E128639128712%_))))
                        (_%E128639128712%_))))
                 (_%E128631128766%_
                  (lambda ()
                    (if (gx#stx-pair? _%e128630128654%_)
                        (let ((_%e128633128746%_
                               (gx#syntax-e _%e128630128654%_)))
                          (let ((_%hd128634128749%_ (##car _%e128633128746%_))
                                (_%tl128635128751%_ (##cdr _%e128633128746%_)))
                            (if (eq? (gx#stx-e _%hd128634128749%_) 'prelude:)
                                (if (gx#stx-pair? _%tl128635128751%_)
                                    (let ((_%e128636128754%_
                                           (gx#syntax-e _%tl128635128751%_)))
                                      (let ((_%hd128637128757%_
                                             (##car _%e128636128754%_))
                                            (_%tl128638128759%_
                                             (##cdr _%e128636128754%_)))
                                        (let* ((_%prelude128762%_
                                                _%hd128637128757%_)
                                               (_%rest128764%_
                                                _%tl128638128759%_))
                                          (_%lp128624%_
                                           _%rest128764%_
                                           _%prelude128762%_
                                           _%ns128628%_
                                           _%pkg128629%_))))
                                    (_%E128632128742%_))
                                (_%E128632128742%_))))
                        (_%E128632128742%_)))))
            (_%E128631128766%_)))))
    (define gx#core-read-module/lang
      (lambda (_%path128444%_)
        (letrec ((_%default-read-module-body128446%_
                  (lambda (_%inp128614%_)
                    (let _%lp128616%_ ((_%body128618%_ '()))
                      (let ((_%next128620%_ (read-syntax__% _%inp128614%_)))
                        (if (eof-object? _%next128620%_)
                            (reverse _%body128618%_)
                            (_%lp128616%_
                             (cons _%next128620%_ _%body128618%_)))))))
                 (_%read-body128447%_
                  (lambda (_%inp128532%_
                           _%pre128533%_
                           _%ns128534%_
                           _%pkg128535%_
                           _%args128536%_)
                    (let ((_g130014_
                           (if _%pkg128535%_
                               (values _%pre128533%_
                                       _%ns128534%_
                                       _%pkg128535%_)
                               (gx#core-read-module-package
                                _%path128444%_
                                _%pre128533%_
                                _%ns128534%_))))
                      (begin
                        (let ((_g130015_
                               (if (##values? _g130014_)
                                   (##values-length _g130014_)
                                   1)))
                          (if (not (##fx= _g130015_ 3))
                              (error "Context expects 3 values" _g130015_)))
                        (let ((_%pre128538%_ (##values-ref _g130014_ 0))
                              (_%ns128539%_ (##values-ref _g130014_ 1))
                              (_%pkg128540%_ (##values-ref _g130014_ 2)))
                          (let* ((_%prelude128542%_
                                  (gx#import-module__0 _%pre128538%_))
                                 (_%read-module-body128597%_
                                  (let ((_%$e128588%_
                                         (__find (lambda (_%e128543128545%_)
                                                   (let* ((_%g128547128557%_
                                                           _%e128543128545%_)
                                                          (_%else128549128565%_
                                                           (lambda () '#f))
                                                          (_%K128551128569%_
                                                           (lambda () '#t)))
                                                     (if (##structure-direct-instance-of?
                                                          _%g128547128557%_
                                                          'gx#module-export::t)
                                                         (let* ((_%e128552128572%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##unchecked-structure-ref
                          _%g128547128557%_
                          '1
                          '#f
                          '#f))
                        (_%e128553128575%_
                         (##unchecked-structure-ref
                          _%g128547128557%_
                          '2
                          '#f
                          '#f))
                        (_%e128554128578%_
                         (##unchecked-structure-ref
                          _%g128547128557%_
                          '3
                          '#f
                          '#f)))
                   (if (##eq? _%e128554128578%_ '1)
                       (let ((_%e128555128581%_
                              (##unchecked-structure-ref
                               _%g128547128557%_
                               '4
                               '#f
                               '#f)))
                         (if ((lambda (_%g128583128585%_)
                                (eq? _%g128583128585%_ 'read-module-body))
                              _%e128555128581%_)
                             (_%K128551128569%_)
                             (_%else128549128565%_)))
                       (_%else128549128565%_)))
                 (_%else128549128565%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (##unchecked-structure-ref
                                                  _%prelude128542%_
                                                  '9
                                                  '#f
                                                  '#f))))
                                    (if _%$e128588%_
                                        ((lambda (_%xport128591%_)
                                           (let ((_%proc128594%_
                                                  (__with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _%xport128591%_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _%proc128594%_)
                                                 _%proc128594%_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _%path128444%_
                                                  _%pre128538%_
                                                  _%proc128594%_))))
                                         _%$e128588%_)
                                        _%default-read-module-body128446%_)))
                                 (_%path-id128599%_
                                  (gx#core-module-path->namespace
                                   _%path128444%_))
                                 (_%pkg-id128601%_
                                  (if _%pkg128540%_
                                      (##string-append
                                       _%pkg128540%_
                                       '"/"
                                       _%path-id128599%_)
                                      _%path-id128599%_))
                                 (_%module-id128603%_
                                  (##string->symbol _%pkg-id128601%_))
                                 (_%module-ns128608%_
                                  (let ((_%$e128605%_ _%ns128539%_))
                                    (if _%$e128605%_
                                        _%$e128605%_
                                        _%pkg-id128601%_)))
                                 (_%body128611%_
                                  (__call-with-parameters
                                   (lambda ()
                                     (_%read-module-body128597%_
                                      _%inp128532%_))
                                   gx#current-module-reader-path
                                   _%path128444%_
                                   gx#current-module-reader-args
                                   _%args128536%_)))
                            (values _%prelude128542%_
                                    _%module-id128603%_
                                    _%module-ns128608%_
                                    _%body128611%_)))))))
                 (_%string-e128448%_
                  (lambda (_%obj128526%_ _%what128527%_)
                    (if (string? _%obj128526%_)
                        _%obj128526%_
                        (if (symbol? _%obj128526%_)
                            (##symbol->string _%obj128526%_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _%what128527%_)
                             _%path128444%_
                             _%obj128526%_)))))
                 (_%read-lang-args128449%_
                  (lambda (_%inp128481%_ _%args128482%_)
                    (let* ((_%args128483128491%_ _%args128482%_)
                           (_%else128485128499%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _%path128444%_)))
                           (_%K128487128514%_
                            (lambda (_%args128502%_ _%prelude128503%_)
                              (let* ((_%pkg128505%_
                                      (pgetq__0 'package: _%args128502%_))
                                     (_%pkg128507%_
                                      (if _%pkg128505%_
                                          (_%string-e128448%_
                                           _%pkg128505%_
                                           '"package")
                                          '#f))
                                     (_%ns128509%_
                                      (pgetq__0 'namespace: _%args128502%_))
                                     (_%ns128511%_
                                      (if _%ns128509%_
                                          (_%string-e128448%_
                                           _%ns128509%_
                                           '"namespace")
                                          '#f)))
                                (_%read-body128447%_
                                 _%inp128481%_
                                 _%prelude128503%_
                                 _%ns128511%_
                                 _%pkg128507%_
                                 _%args128502%_)))))
                      (if (pair? _%args128483128491%_)
                          (let ((_%hd128488128517%_
                                 (##car _%args128483128491%_))
                                (_%tl128489128519%_
                                 (##cdr _%args128483128491%_)))
                            (let* ((_%prelude128522%_ _%hd128488128517%_)
                                   (_%args128524%_ _%tl128489128519%_))
                              (_%K128487128514%_
                               _%args128524%_
                               _%prelude128522%_)))
                          (_%else128485128499%_)))))
                 (_%read-lang128450%_
                  (lambda (_%inp128455%_)
                    (let* ((_%head128457%_ (read-line _%inp128455%_))
                           (_%$e128459%_
                            (string-index__0 _%head128457%_ '#\space)))
                      (if _%$e128459%_
                          ((lambda (_%ix128462%_)
                             (let ((_%lang128464%_
                                    (substring
                                     _%head128457%_
                                     '0
                                     _%ix128462%_)))
                               (if (equal? _%lang128464%_ '"#lang")
                                   (let* ((_%rest128466%_
                                           (substring
                                            _%head128457%_
                                            (##fx+ _%ix128462%_ '1)
                                            (string-length _%head128457%_)))
                                          (_%args128477%_
                                           (__with-catch
                                            (lambda (_%g128467128469%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _%path128444%_
                                               _%g128467128469%_))
                                            (lambda ()
                                              (call-with-input-string
                                               _%rest128466%_
                                               (lambda (_%g128472128474%_)
                                                 (read-all
                                                  _%g128472128474%_
                                                  read)))))))
                                     (_%read-lang-args128449%_
                                      _%inp128455%_
                                      _%args128477%_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _%path128444%_))))
                           _%$e128459%_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _%path128444%_)))))
                 (_%read-e128451%_
                  (lambda (_%inp128453%_)
                    (if (eq? (peek-char _%inp128453%_) '#\#)
                        (_%read-lang128450%_ _%inp128453%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _%path128444%_)))))
          (gx#call-with-input-source-file _%path128444%_ _%read-e128451%_))))
    (define gx#core-read-module-package
      (lambda (_%path128392%_ _%pre128393%_ _%ns128394%_)
        (letrec ((_%string-e128396%_
                  (lambda (_%e128439%_)
                    (if (symbol? _%e128439%_)
                        (##symbol->string _%e128439%_)
                        (if (string? _%e128439%_)
                            _%e128439%_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%e128439%_))))))
          (let _%lp128398%_ ((_%dir128400%_ (path-directory _%path128392%_))
                             (_%pkg-path128401%_ '()))
            (let ((_%gerbil.pkg128403%_
                   (path-expand '"gerbil.pkg" _%dir128400%_)))
              (if (##file-exists? _%gerbil.pkg128403%_)
                  (let ((_%plist128405%_
                         (gx#core-library-package-plist__% _%dir128400%_ '#t)))
                    (if (null? _%plist128405%_)
                        (let ((_%pkg128408%_
                               (if (null? _%pkg-path128401%_)
                                   '#f
                                   (string-join _%pkg-path128401%_ '"/"))))
                          (values _%pre128393%_ _%ns128394%_ _%pkg128408%_))
                        (if (list? _%plist128405%_)
                            (let* ((_%root128411%_
                                    (pgetq__0 'package: _%plist128405%_))
                                   (_%pkg128415%_
                                    (let ((_%pkg-path128413%_
                                           (if _%root128411%_
                                               (cons (_%string-e128396%_
                                                      _%root128411%_)
                                                     _%pkg-path128401%_)
                                               _%pkg-path128401%_)))
                                      (if (null? _%pkg-path128413%_)
                                          '#f
                                          (string-join
                                           _%pkg-path128413%_
                                           '"/"))))
                                   (_%ns128422%_
                                    (let ((_%ns128420%_
                                           (let ((_%$e128417%_ _%ns128394%_))
                                             (if _%$e128417%_
                                                 _%$e128417%_
                                                 (pgetq__0
                                                  'namespace:
                                                  _%plist128405%_)))))
                                      (if _%ns128420%_
                                          (_%string-e128396%_ _%ns128420%_)
                                          '#f)))
                                   (_%pre128427%_
                                    (let ((_%$e128424%_ _%pre128393%_))
                                      (if _%$e128424%_
                                          _%$e128424%_
                                          (pgetq__0
                                           'prelude:
                                           _%plist128405%_)))))
                              (values _%pre128427%_
                                      _%ns128422%_
                                      _%pkg128415%_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%plist128405%_))))
                  (let ((_%dir*128431%_
                         (path-strip-trailing-directory-separator
                          _%dir128400%_)))
                    (if (or (__string-empty? _%dir*128431%_)
                            (equal? _%dir128400%_ _%dir*128431%_))
                        (values _%pre128393%_ _%ns128394%_ '#f)
                        (let ((_%xpath128436%_
                               (path-strip-directory _%dir*128431%_))
                              (_%xdir128437%_ (path-directory _%dir*128431%_)))
                          (_%lp128398%_
                           _%xdir128437%_
                           (cons _%xpath128436%_ _%pkg-path128401%_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_%path128390%_)
        (path-strip-extension (path-strip-directory _%path128390%_))))
    (define gx#core-module-path->id
      (lambda (_%path128388%_)
        (##string->symbol (gx#core-module-path->namespace _%path128388%_))))
    (define gx#core-resolve-module-path__%
      (lambda (_%stx-path128367%_ _%rel128368%_)
        (let* ((_%path128370%_ (gx#stx-e _%stx-path128367%_))
               (_%path128372%_
                (if (__string-empty? (path-extension _%path128370%_))
                    (##string-append _%path128370%_ '".ss")
                    _%path128370%_)))
          (gx#core-resolve-path__%
           _%path128372%_
           (let ((_%$e128375%_ (gx#stx-source _%stx-path128367%_)))
             (if _%$e128375%_ _%$e128375%_ _%rel128368%_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_%stx-path128381%_)
        (let ((_%rel128383%_ '#f))
          (gx#core-resolve-module-path__% _%stx-path128381%_ _%rel128383%_))))
    (define gx#core-resolve-module-path
      (lambda _g130017_
        (let ((_g130016_ (##length _g130017_)))
          (cond ((##fx= _g130016_ 1)
                 (apply gx#core-resolve-module-path__0 _g130017_))
                ((##fx= _g130016_ 2)
                 (apply gx#core-resolve-module-path__% _g130017_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g130017_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_%libpath128252%_)
        (let* ((_%spath128254%_ (symbol->string (gx#stx-e _%libpath128252%_)))
               (_%spath128256%_
                (substring
                 _%spath128254%_
                 '1
                 (##string-length _%spath128254%_)))
               (_%ext128258%_ (path-extension _%spath128256%_))
               (_%ssi128260%_
                (if (__string-empty? _%ext128258%_)
                    (##string-append _%spath128256%_ '".ssi")
                    (##string-append
                     (path-strip-extension _%spath128256%_)
                     '".ssi")))
               (_%srcs128264%_
                (if (__string-empty? _%ext128258%_)
                    (##map (lambda (_%ext128262%_)
                             (string-append _%spath128256%_ _%ext128262%_))
                           '(".ss" ".sld" ".scm"))
                    (cons _%spath128256%_ '()))))
          (let _%lp128267%_ ((_%rest128269%_ (load-path)))
            (let* ((_%rest128270128279%_ _%rest128269%_)
                   (_%E128273128283%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rest128270128279%_
                             '([dir . rest])
                             '([]))
                      '#!void)))
              (let ((_%K128275128354%_
                     (lambda (_%rest128294%_ _%dir128295%_)
                       (letrec ((_%resolve128297%_
                                 (lambda (_%ssi128310%_ _%srcs128311%_)
                                   (let ((_%compiled-path128313%_
                                          (path-expand
                                           _%ssi128310%_
                                           _%dir128295%_)))
                                     (if (##file-exists?
                                          _%compiled-path128313%_)
                                         (path-normalize
                                          _%compiled-path128313%_)
                                         (let _%lpr128315%_ ((_%rest-src128317%_
                                                              _%srcs128311%_))
                                           (let* ((_%rest-src128318128326%_
                                                   _%rest-src128317%_)
                                                  (_%else128320128334%_
                                                   (lambda ()
                                                     (_%lp128267%_
                                                      _%rest128294%_)))
                                                  (_%K128322128342%_
                                                   (lambda (_%rest-src128337%_
                                                            _%src128338%_)
                                                     (let ((_%src-path128340%_
                                                            (path-expand
                                                             _%src128338%_
                                                             _%dir128295%_)))
                                                       (if (##file-exists?
                                                            _%src-path128340%_)
                                                           (path-normalize
                                                            _%src-path128340%_)
                                                           (_%lpr128315%_
                                                            _%rest-src128337%_))))))
                                             (if (pair? _%rest-src128318128326%_)
                                                 (let ((_%hd128323128345%_
                                                        (##car _%rest-src128318128326%_))
                                                       (_%tl128324128347%_
                                                        (##cdr _%rest-src128318128326%_)))
                                                   (let* ((_%src128350%_
                                                           _%hd128323128345%_)
                                                          (_%rest-src128352%_
                                                           _%tl128324128347%_))
                                                     (_%K128322128342%_
                                                      _%rest-src128352%_
                                                      _%src128350%_)))
                                                 (_%else128320128334%_)))))))))
                         (let ((_%$e128299%_
                                (gx#core-library-package-path-prefix
                                 _%dir128295%_)))
                           (if _%$e128299%_
                               ((lambda (_%prefix128302%_)
                                  (if (string-prefix?
                                       _%prefix128302%_
                                       _%spath128256%_)
                                      (let ((_%ssi128306%_
                                             (substring
                                              _%ssi128260%_
                                              (string-length _%prefix128302%_)
                                              (##string-length _%ssi128260%_)))
                                            (_%srcs128307%_
                                             (##map (lambda (_%src128304%_)
                                                      (substring
                                                       _%src128304%_
                                                       (string-length
                                                        _%prefix128302%_)
                                                       (string-length
                                                        _%src128304%_)))
                                                    _%srcs128264%_)))
                                        (_%resolve128297%_
                                         _%ssi128306%_
                                         _%srcs128307%_))
                                      (_%lp128267%_ _%rest128294%_)))
                                _%$e128299%_)
                               (_%resolve128297%_
                                _%ssi128260%_
                                _%srcs128264%_))))))
                    (_%K128274128288%_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"cannot find library module"
                        _%libpath128252%_))))
                (let ((_%try-match128272128291%_
                       (lambda ()
                         (if (null? _%rest128270128279%_)
                             (_%K128274128288%_)
                             (_%E128273128283%_)))))
                  (if (pair? _%rest128270128279%_)
                      (let ((_%tl128277128359%_ (##cdr _%rest128270128279%_))
                            (_%hd128276128357%_ (##car _%rest128270128279%_)))
                        (let ((_%dir128362%_ _%hd128276128357%_)
                              (_%rest128364%_ _%tl128277128359%_))
                          (_%K128275128354%_ _%rest128364%_ _%dir128362%_)))
                      (_%try-match128272128291%_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_%modpath128220%_)
        (letrec ((_%resolve128222%_
                  (lambda (_%path128243%_ _%base128244%_)
                    (let ((_%$e128246%_
                           (string-rindex__0 _%base128244%_ '#\/)))
                      (if _%$e128246%_
                          ((lambda (_%idx128249%_)
                             (gx#core-resolve-library-module-path
                              (##string->symbol
                               (string-append
                                '":"
                                (substring _%base128244%_ '0 _%idx128249%_)
                                '"/"
                                _%path128243%_))))
                           _%$e128246%_)
                          (gx#core-resolve-library-module-path
                           (##string->symbol
                            (string-append '":" _%path128243%_))))))))
          (let ((_%spath128224%_ (symbol->string (gx#stx-e _%modpath128220%_)))
                (_%mod128225%_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _%mod128225%_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"cannot resolve relative module path; not in module context"
                 _%modpath128220%_))
            (let ((_%mpath128227%_
                   (symbol->string
                    (##structure-ref
                     _%mod128225%_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _%lp128229%_ ((_%spath128231%_ _%spath128224%_)
                                 (_%mpath128232%_ _%mpath128227%_))
                (if (string-prefix? '"../" _%spath128231%_)
                    (let ((_%$e128235%_
                           (string-rindex__0 _%mpath128232%_ '#\/)))
                      (if _%$e128235%_
                          ((lambda (_%idx128238%_)
                             (_%lp128229%_
                              (substring
                               _%spath128231%_
                               '3
                               (string-length _%spath128231%_))
                              (substring _%mpath128232%_ '0 _%idx128238%_)))
                           _%$e128235%_)
                          (gx#raise-syntax-error
                           '#f
                           '"cannot resolve relative module path; illegal traversal"
                           _%modpath128220%_)))
                    (if (string-prefix? '"./" _%spath128231%_)
                        (_%lp128229%_
                         (substring
                          _%spath128231%_
                          '2
                          (string-length _%spath128231%_))
                         _%mpath128232%_)
                        (_%resolve128222%_
                         _%spath128231%_
                         _%mpath128232%_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_%dir128212%_)
        (let ((_%$e128214%_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _%dir128212%_))))
          (if _%$e128214%_
              ((lambda (_%pkg128217%_)
                 (##string-append (symbol->string _%pkg128217%_) '"/"))
               _%$e128214%_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_%dir128182%_ _%exists?128183%_)
        (let ((_%$e128185%_ (__hash-get gx#__module-pkg-cache _%dir128182%_)))
          (if _%$e128185%_
              _%$e128185%_
              (let* ((_%gerbil.pkg128189%_
                      (path-expand '"gerbil.pkg" _%dir128182%_))
                     (_%plist128199%_
                      (if (or _%exists?128183%_
                              (##file-exists? _%gerbil.pkg128189%_))
                          (let ((_%e128194%_
                                 (gx#call-with-input-source-file
                                  _%gerbil.pkg128189%_
                                  read)))
                            (if (eof-object? _%e128194%_)
                                '()
                                (if (list? _%e128194%_)
                                    _%e128194%_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _%gerbil.pkg128189%_
                                     _%e128194%_))))
                          '())))
                (__hash-put!
                 gx#__module-pkg-cache
                 _%dir128182%_
                 _%plist128199%_)
                _%plist128199%_)))))
    (define gx#core-library-package-plist__0
      (lambda (_%dir128205%_)
        (let ((_%exists?128207%_ '#f))
          (gx#core-library-package-plist__% _%dir128205%_ _%exists?128207%_))))
    (define gx#core-library-package-plist
      (lambda _g130019_
        (let ((_g130018_ (##length _g130019_)))
          (cond ((##fx= _g130018_ 1)
                 (apply gx#core-library-package-plist__0 _g130019_))
                ((##fx= _g130018_ 2)
                 (apply gx#core-library-package-plist__% _g130019_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g130019_))))))
    (define gx#core-library-module-path?
      (lambda (_%stx128179%_)
        (gx#core-special-module-path? _%stx128179%_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_%stx128177%_)
        (gx#core-special-module-path? _%stx128177%_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_%stx128172%_ _%char128173%_)
        (if (gx#identifier? _%stx128172%_)
            (if (interned-symbol? (gx#stx-e _%stx128172%_))
                (let ((_%str128175%_
                       (symbol->string (gx#stx-e _%stx128172%_))))
                  (if (##fx> (##string-length _%str128175%_) '1)
                      (eq? (string-ref _%str128175%_ '0) _%char128173%_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_%stx128166%_)
        (gx#core-bound-identifier?__%
         _%stx128166%_
         (lambda (_%g128167128169%_)
           (gx#expander-binding?__% _%g128167128169%_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_%stx128160%_)
        (gx#core-bound-identifier?__%
         _%stx128160%_
         (lambda (_%g128161128163%_)
           (gx#expander-binding?__% _%g128161128163%_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_%stx128147%_)
        (letrec ((_%module-prelude?128149%_
                  (lambda (_%e128155%_)
                    (let ((_%$e128157%_
                           (##structure-instance-of?
                            _%e128155%_
                            'gx#module-context::t)))
                      (if _%$e128157%_
                          _%$e128157%_
                          (##structure-instance-of?
                           _%e128155%_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _%stx128147%_
           (lambda (_%g128150128152%_)
             (gx#expander-binding?__%
              _%g128150128152%_
              _%module-prelude?128149%_))))))
    (define gx#core-bind-import!__%
      (lambda (_%in128077%_ _%ctx128078%_ _%force-weak?128079%_)
        (let* ((_%in128080128089%_ _%in128077%_)
               (_%E128082128093%_
                (lambda ()
                  (error '"No clause matching"
                         _%in128080128089%_
                         '((module-import source key phi weak?)))
                  '#!void))
               (_%K128083128106%_
                (lambda (_%weak?128096%_
                         _%phi128097%_
                         _%key128098%_
                         _%source128099%_)
                  (gx#core-bind!__%
                   _%key128098%_
                   (let ((_%e128101%_
                          (gx#core-resolve-module-export _%source128099%_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref _%e128101%_ '1 '#f '#f)
                      _%key128098%_
                      _%phi128097%_
                      _%e128101%_
                      (##unchecked-structure-ref _%source128099%_ '1 '#f '#f)
                      (let ((_%$e128103%_ _%force-weak?128079%_))
                        (if _%$e128103%_ _%$e128103%_ _%weak?128096%_))))
                   gx#core-context-rebind?
                   _%phi128097%_
                   _%ctx128078%_))))
          (if (##structure-direct-instance-of?
               _%in128080128089%_
               'gx#module-import::t)
              (let* ((_%e128084128109%_
                      (##unchecked-structure-ref
                       _%in128080128089%_
                       '1
                       '#f
                       '#f))
                     (_%source128112%_ _%e128084128109%_)
                     (_%e128085128114%_
                      (##unchecked-structure-ref
                       _%in128080128089%_
                       '2
                       '#f
                       '#f))
                     (_%key128117%_ _%e128085128114%_)
                     (_%e128086128119%_
                      (##unchecked-structure-ref
                       _%in128080128089%_
                       '3
                       '#f
                       '#f))
                     (_%phi128122%_ _%e128086128119%_)
                     (_%e128087128124%_
                      (##unchecked-structure-ref
                       _%in128080128089%_
                       '4
                       '#f
                       '#f))
                     (_%weak?128127%_ _%e128087128124%_))
                (_%K128083128106%_
                 _%weak?128127%_
                 _%phi128122%_
                 _%key128117%_
                 _%source128112%_))
              (_%E128082128093%_)))))
    (define gx#core-bind-import!__0
      (lambda (_%in128132%_)
        (let* ((_%ctx128134%_ (gx#current-expander-context))
               (_%force-weak?128136%_ '#f))
          (gx#core-bind-import!__%
           _%in128132%_
           _%ctx128134%_
           _%force-weak?128136%_))))
    (define gx#core-bind-import!__1
      (lambda (_%in128138%_ _%ctx128139%_)
        (let ((_%force-weak?128141%_ '#f))
          (gx#core-bind-import!__%
           _%in128138%_
           _%ctx128139%_
           _%force-weak?128141%_))))
    (define gx#core-bind-import!
      (lambda _g130021_
        (let ((_g130020_ (##length _g130021_)))
          (cond ((##fx= _g130020_ 1) (apply gx#core-bind-import!__0 _g130021_))
                ((##fx= _g130020_ 2) (apply gx#core-bind-import!__1 _g130021_))
                ((##fx= _g130020_ 3) (apply gx#core-bind-import!__% _g130021_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g130021_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_%in128063%_ _%ctx128064%_)
        (gx#core-bind-import!__% _%in128063%_ _%ctx128064%_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_%in128069%_)
        (let ((_%ctx128071%_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _%in128069%_ _%ctx128071%_))))
    (define gx#core-bind-weak-import!
      (lambda _g130023_
        (let ((_g130022_ (##length _g130023_)))
          (cond ((##fx= _g130022_ 1)
                 (apply gx#core-bind-weak-import!__0 _g130023_))
                ((##fx= _g130022_ 2)
                 (apply gx#core-bind-weak-import!__% _g130023_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g130023_))))))
    (define gx#core-resolve-module-export
      (lambda (_%out127954%_)
        (letrec ((_%subst127956%_
                  (lambda (_%key128002%_)
                    (let* ((_%key128003128011%_ _%key128002%_)
                           (_%else128005128019%_ (lambda () _%key128002%_))
                           (_%K128007128050%_
                            (lambda (_%mark128022%_ _%id128023%_)
                              (let* ((_%mark128024128030%_ _%mark128022%_)
                                     (_%E128026128034%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark128024128030%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K128027128042%_
                                      (lambda (_%subst128037%_)
                                        (let ((_%$e128039%_
                                               (if _%subst128037%_
                                                   (hash-get
                                                    _%subst128037%_
                                                    _%id128023%_)
                                                   '#f)))
                                          (if _%$e128039%_
                                              _%$e128039%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _%key128002%_))))))
                                (if (##structure-instance-of?
                                     _%mark128024128030%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e128028128045%_
                                            (##unchecked-structure-ref
                                             _%mark128024128030%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst128048%_ _%e128028128045%_))
                                      (_%K128027128042%_ _%subst128048%_))
                                    (_%E128026128034%_))))))
                      (if (pair? _%key128003128011%_)
                          (let ((_%hd128008128053%_
                                 (##car _%key128003128011%_))
                                (_%tl128009128055%_
                                 (##cdr _%key128003128011%_)))
                            (let* ((_%id128058%_ _%hd128008128053%_)
                                   (_%mark128060%_ _%tl128009128055%_))
                              (_%K128007128050%_ _%mark128060%_ _%id128058%_)))
                          (_%else128005128019%_))))))
          (let* ((_%out127957127967%_ _%out127954%_)
                 (_%E127959127971%_
                  (lambda ()
                    (error '"No clause matching"
                           _%out127957127967%_
                           '((module-export ctx key phi _ _)))
                    '#!void))
                 (_%K127960127978%_
                  (lambda (_%phi127974%_ _%key127975%_ _%ctx127976%_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _%ctx127976%_ _%phi127974%_)
                     (_%subst127956%_ _%key127975%_)))))
            (if (##structure-direct-instance-of?
                 _%out127957127967%_
                 'gx#module-export::t)
                (let* ((_%e127961127981%_
                        (##unchecked-structure-ref
                         _%out127957127967%_
                         '1
                         '#f
                         '#f))
                       (_%ctx127984%_ _%e127961127981%_)
                       (_%e127962127986%_
                        (##unchecked-structure-ref
                         _%out127957127967%_
                         '2
                         '#f
                         '#f))
                       (_%key127989%_ _%e127962127986%_)
                       (_%e127963127991%_
                        (##unchecked-structure-ref
                         _%out127957127967%_
                         '3
                         '#f
                         '#f))
                       (_%phi127994%_ _%e127963127991%_)
                       (_%e127964127996%_
                        (##unchecked-structure-ref
                         _%out127957127967%_
                         '4
                         '#f
                         '#f))
                       (_%e127965127999%_
                        (##unchecked-structure-ref
                         _%out127957127967%_
                         '5
                         '#f
                         '#f)))
                  (_%K127960127978%_
                   _%phi127994%_
                   _%key127989%_
                   _%ctx127984%_))
                (_%E127959127971%_))))))
    (define gx#core-module-export->import__%
      (lambda (_%out127879%_ _%rename127880%_ _%dphi127881%_)
        (let* ((_%out127882127892%_ _%out127879%_)
               (_%E127884127896%_
                (lambda ()
                  (error '"No clause matching"
                         _%out127882127892%_
                         '((module-export ctx key phi name weak?)))
                  '#!void))
               (_%K127885127908%_
                (lambda (_%weak?127899%_
                         _%name127900%_
                         _%phi127901%_
                         _%key127902%_
                         _%ctx127903%_)
                  (##structure
                   gx#module-import::t
                   _%out127879%_
                   (let ((_%$e127905%_ _%rename127880%_))
                     (if _%$e127905%_ _%$e127905%_ _%name127900%_))
                   (fx+ _%phi127901%_ _%dphi127881%_)
                   _%weak?127899%_))))
          (if (##structure-direct-instance-of?
               _%out127882127892%_
               'gx#module-export::t)
              (let* ((_%e127886127911%_
                      (##unchecked-structure-ref
                       _%out127882127892%_
                       '1
                       '#f
                       '#f))
                     (_%ctx127914%_ _%e127886127911%_)
                     (_%e127887127916%_
                      (##unchecked-structure-ref
                       _%out127882127892%_
                       '2
                       '#f
                       '#f))
                     (_%key127919%_ _%e127887127916%_)
                     (_%e127888127921%_
                      (##unchecked-structure-ref
                       _%out127882127892%_
                       '3
                       '#f
                       '#f))
                     (_%phi127924%_ _%e127888127921%_)
                     (_%e127889127926%_
                      (##unchecked-structure-ref
                       _%out127882127892%_
                       '4
                       '#f
                       '#f))
                     (_%name127929%_ _%e127889127926%_)
                     (_%e127890127931%_
                      (##unchecked-structure-ref
                       _%out127882127892%_
                       '5
                       '#f
                       '#f))
                     (_%weak?127934%_ _%e127890127931%_))
                (_%K127885127908%_
                 _%weak?127934%_
                 _%name127929%_
                 _%phi127924%_
                 _%key127919%_
                 _%ctx127914%_))
              (_%E127884127896%_)))))
    (define gx#core-module-export->import__0
      (lambda (_%out127939%_)
        (let* ((_%rename127941%_ '#f) (_%dphi127943%_ '0))
          (gx#core-module-export->import__%
           _%out127939%_
           _%rename127941%_
           _%dphi127943%_))))
    (define gx#core-module-export->import__1
      (lambda (_%out127945%_ _%rename127946%_)
        (let ((_%dphi127948%_ '0))
          (gx#core-module-export->import__%
           _%out127945%_
           _%rename127946%_
           _%dphi127948%_))))
    (define gx#core-module-export->import
      (lambda _g130025_
        (let ((_g130024_ (##length _g130025_)))
          (cond ((##fx= _g130024_ 1)
                 (apply gx#core-module-export->import__0 _g130025_))
                ((##fx= _g130024_ 2)
                 (apply gx#core-module-export->import__1 _g130025_))
                ((##fx= _g130024_ 3)
                 (apply gx#core-module-export->import__% _g130025_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g130025_))))))
    (define gx#core-expand-module%
      (lambda (_%stx127778%_)
        (letrec ((_%make-context127780%_
                  (lambda (_%id127857%_)
                    (let* ((_%super127859%_ (gx#current-expander-context))
                           (_%bind-id127861%_ (gx#stx-e _%id127857%_))
                           (_%mod-id127863%_
                            (if (##structure-instance-of?
                                 _%super127859%_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##unchecked-structure-ref
                                  _%super127859%_
                                  '1
                                  '#f
                                  '#f)
                                 '"~"
                                 _%bind-id127861%_)
                                _%bind-id127861%_))
                           (_%ns127865%_ (symbol->string _%mod-id127863%_))
                           (_%path127875%_
                            (if (##structure-instance-of?
                                 _%super127859%_
                                 'gx#module-context::t)
                                (let ((_%path127867%_
                                       (##unchecked-structure-ref
                                        _%super127859%_
                                        '7
                                        '#f
                                        '#f)))
                                  (if (or (pair? _%path127867%_)
                                          (null? _%path127867%_))
                                      (cons _%bind-id127861%_ _%path127867%_)
                                      (if (not _%path127867%_)
                                          _%bind-id127861%_
                                          (cons _%bind-id127861%_
                                                (cons _%path127867%_ '())))))
                                _%bind-id127861%_))
                           (__obj130001
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
                       __obj130001
                       _%mod-id127863%_
                       _%super127859%_
                       _%ns127865%_
                       _%path127875%_)
                      __obj130001)))
                 (_%valid-module-id?127781%_
                  (lambda (_%id127832%_)
                    (let* ((_%str127834%_ (symbol->string _%id127832%_))
                           (_%len127836%_ (##string-length _%str127834%_)))
                      (if (##fx>= _%len127836%_ '1)
                          (let _%loop127839%_ ((_%index127841%_
                                                (##fx- (##string-length
                                                        _%str127834%_)
                                                       '1)))
                            (if (##fx>= _%index127841%_ '0)
                                (let ((_%c127843%_
                                       (string-ref
                                        _%str127834%_
                                        _%index127841%_)))
                                  (if (or (and (##char>=? _%c127843%_ '#\a)
                                               (##char<=? _%c127843%_ '#\z))
                                          (and (##char>=? _%c127843%_ '#\A)
                                               (##char<=? _%c127843%_ '#\Z))
                                          (and (##char>=? _%c127843%_ '#\0)
                                               (##char<=? _%c127843%_ '#\9))
                                          (##char=? _%c127843%_ '#\_)
                                          (##char=? _%c127843%_ '#\-))
                                      (_%loop127839%_
                                       (##fx- _%index127841%_ '1))
                                      '#f))
                                '#t))
                          '#f)))))
          (let* ((_%e127782127792%_ _%stx127778%_)
                 (_%E127784127796%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e127782127792%_)))
                 (_%E127783127828%_
                  (lambda ()
                    (if (gx#stx-pair? _%e127782127792%_)
                        (let ((_%e127785127800%_
                               (gx#syntax-e _%e127782127792%_)))
                          (let ((_%hd127786127803%_ (##car _%e127785127800%_))
                                (_%tl127787127805%_ (##cdr _%e127785127800%_)))
                            (if (gx#stx-pair? _%tl127787127805%_)
                                (let ((_%e127788127808%_
                                       (gx#syntax-e _%tl127787127805%_)))
                                  (let ((_%hd127789127811%_
                                         (##car _%e127788127808%_))
                                        (_%tl127790127813%_
                                         (##cdr _%e127788127808%_)))
                                    (let* ((_%id127816%_ _%hd127789127811%_)
                                           (_%body127818%_ _%tl127790127813%_))
                                      (if (and (gx#identifier? _%id127816%_)
                                               (gx#stx-list? _%body127818%_))
                                          (if (_%valid-module-id?127781%_
                                               (gx#stx-e
                                                (gx#datum->syntax__0 '#f 'id)))
                                              (let* ((_%ctx127820%_
                                                      (_%make-context127780%_
                                                       _%id127816%_))
                                                     (_%body127822%_
                                                      (gx#core-expand-module-begin
                                                       _%body127818%_
                                                       _%ctx127820%_))
                                                     (_%body127824%_
                                                      (gx#core-quote-syntax__1
                                                       (gx#core-cons
                                                        '%#begin
                                                        _%body127822%_)
                                                       (gx#stx-source
                                                        _%stx127778%_))))
                                                (##unchecked-structure-set!
                                                 _%ctx127820%_
                                                 (__make-promise
                                                  (lambda ()
                                                    (gx#eval-syntax*
                                                     _%body127824%_)))
                                                 '10
                                                 '#f
                                                 '#f)
                                                (##unchecked-structure-set!
                                                 _%ctx127820%_
                                                 _%body127824%_
                                                 '11
                                                 '#f
                                                 '#f)
                                                (gx#core-bind-syntax!__0
                                                 _%id127816%_
                                                 _%ctx127820%_)
                                                (gx#core-quote-syntax__1
                                                 (gx#core-list
                                                  '%#module
                                                  (gx#core-quote-syntax__0
                                                   _%id127816%_)
                                                  _%body127824%_)
                                                 (gx#stx-source
                                                  _%stx127778%_)))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"invalid module id; allowed characters are A-Z,a-z,0-9,_,-"
                                               _%stx127778%_
                                               (gx#datum->syntax__0 '#f 'id)))
                                          (_%E127784127796%_)))))
                                (_%E127784127796%_))))
                        (_%E127784127796%_)))))
            (_%E127783127828%_)))))
    (define gx#core-expand-module-begin
      (lambda (_%body127744%_ _%ctx127745%_)
        (__call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_%stx127748%_
                   (gx#core-expand-head (cons '%%begin-module _%body127744%_)))
                  (_%e127749127756%_ _%stx127748%_)
                  (_%E127751127760%_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _%stx127748%_)))
                  (_%E127750127774%_
                   (lambda ()
                     (if (gx#stx-pair? _%e127749127756%_)
                         (let ((_%e127752127764%_
                                (gx#syntax-e _%e127749127756%_)))
                           (let ((_%hd127753127767%_ (##car _%e127752127764%_))
                                 (_%tl127754127769%_
                                  (##cdr _%e127752127764%_)))
                             (if (and (gx#identifier? _%hd127753127767%_)
                                      (gx#core-identifier=?
                                       _%hd127753127767%_
                                       '%#begin-module))
                                 (let ((_%body127772%_ _%tl127754127769%_))
                                   (if (gx#sealed-syntax? _%stx127748%_)
                                       _%body127772%_
                                       (gx#core-expand-module-body
                                        _%body127772%_)))
                                 (_%E127751127760%_))))
                         (_%E127751127760%_)))))
             (_%E127750127774%_)))
         gx#current-expander-context
         _%ctx127745%_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_%body127540%_)
        (letrec ((_%expand-special127542%_
                  (lambda (_%hd127671%_ _%K127672%_ _%rest127673%_ _%r127674%_)
                    (let* ((_%e127675127692%_ _%hd127671%_)
                           (_%E127687127696%_
                            (lambda ()
                              (_%K127672%_
                               _%rest127673%_
                               (cons (gx#core-expand-top _%hd127671%_)
                                     _%r127674%_))))
                           (_%E127677127708%_
                            (lambda ()
                              (if (gx#stx-pair? _%e127675127692%_)
                                  (let ((_%e127688127700%_
                                         (gx#syntax-e _%e127675127692%_)))
                                    (let ((_%hd127689127703%_
                                           (##car _%e127688127700%_))
                                          (_%tl127690127705%_
                                           (##cdr _%e127688127700%_)))
                                      (if (and (gx#identifier?
                                                _%hd127689127703%_)
                                               (gx#core-identifier=?
                                                _%hd127689127703%_
                                                '%#export))
                                          (_%K127672%_
                                           _%rest127673%_
                                           (cons _%hd127671%_ _%r127674%_))
                                          (_%E127687127696%_))))
                                  (_%E127687127696%_))))
                           (_%E127676127740%_
                            (lambda ()
                              (if (gx#stx-pair? _%e127675127692%_)
                                  (let ((_%e127678127712%_
                                         (gx#syntax-e _%e127675127692%_)))
                                    (let ((_%hd127679127715%_
                                           (##car _%e127678127712%_))
                                          (_%tl127680127717%_
                                           (##cdr _%e127678127712%_)))
                                      (if (and (gx#identifier?
                                                _%hd127679127715%_)
                                               (gx#core-identifier=?
                                                _%hd127679127715%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl127680127717%_)
                                              (let ((_%e127681127720%_
                                                     (gx#syntax-e
                                                      _%tl127680127717%_)))
                                                (let ((_%hd127682127723%_
                                                       (##car _%e127681127720%_))
                                                      (_%tl127683127725%_
                                                       (##cdr _%e127681127720%_)))
                                                  (let ((_%hd-bind127728%_
                                                         _%hd127682127723%_))
                                                    (if (gx#stx-pair?
                                                         _%tl127683127725%_)
                                                        (let ((_%e127684127730%_
                                                               (gx#syntax-e
                                                                _%tl127683127725%_)))
                                                          (let ((_%hd127685127733%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e127684127730%_))
                        (_%tl127686127735%_ (##cdr _%e127684127730%_)))
                    (let ((_%expr127738%_ _%hd127685127733%_))
                      (if (gx#stx-null? _%tl127686127735%_)
                          (if (gx#core-bind-values? _%hd-bind127728%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind127728%_)
                                (_%K127672%_
                                 _%rest127673%_
                                 (cons _%hd127671%_ _%r127674%_)))
                              (_%E127677127708%_))
                          (_%E127677127708%_)))))
                (_%E127677127708%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E127677127708%_))
                                          (_%E127677127708%_))))
                                  (_%E127677127708%_)))))
                      (_%E127676127740%_))))
                 (_%expand-body127543%_
                  (lambda (_%rbody127545%_)
                    (let _%lp127547%_ ((_%rest127549%_ _%rbody127545%_)
                                       (_%body127550%_ '()))
                      (let* ((_%rest127551127559%_ _%rest127549%_)
                             (_%else127553127567%_ (lambda () _%body127550%_))
                             (_%K127555127659%_
                              (lambda (_%rest127570%_ _%hd127571%_)
                                (let* ((_%e127572127593%_ _%hd127571%_)
                                       (_%E127588127597%_
                                        (lambda ()
                                          (_%lp127547%_
                                           _%rest127570%_
                                           (cons (gx#core-expand-expression
                                                  _%hd127571%_)
                                                 _%body127550%_))))
                                       (_%E127584127611%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e127572127593%_)
                                              (let ((_%e127589127601%_
                                                     (gx#syntax-e
                                                      _%e127572127593%_)))
                                                (let ((_%hd127590127604%_
                                                       (##car _%e127589127601%_))
                                                      (_%tl127591127606%_
                                                       (##cdr _%e127589127601%_)))
                                                  (let ((_%form127609%_
                                                         _%hd127590127604%_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _%form127609%_
                                                         gx#special-form-binding?)
                                                        (_%lp127547%_
                                                         _%rest127570%_
                                                         (cons _%hd127571%_
                                                               _%body127550%_))
                                                        (_%E127588127597%_)))))
                                              (_%E127588127597%_))))
                                       (_%E127574127623%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e127572127593%_)
                                              (let ((_%e127585127615%_
                                                     (gx#syntax-e
                                                      _%e127572127593%_)))
                                                (let ((_%hd127586127618%_
                                                       (##car _%e127585127615%_))
                                                      (_%tl127587127620%_
                                                       (##cdr _%e127585127615%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd127586127618%_)
                                                           (gx#core-identifier=?
                                                            _%hd127586127618%_
                                                            '%#export))
                                                      (_%lp127547%_
                                                       _%rest127570%_
                                                       (cons (gx#core-expand-export%__0
                                                              _%hd127571%_)
                                                             _%body127550%_))
                                                      (_%E127584127611%_))))
                                              (_%E127584127611%_))))
                                       (_%E127573127655%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e127572127593%_)
                                              (let ((_%e127575127627%_
                                                     (gx#syntax-e
                                                      _%e127572127593%_)))
                                                (let ((_%hd127576127630%_
                                                       (##car _%e127575127627%_))
                                                      (_%tl127577127632%_
                                                       (##cdr _%e127575127627%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd127576127630%_)
                                                           (gx#core-identifier=?
                                                            _%hd127576127630%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl127577127632%_)
                                                          (let ((_%e127578127635%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl127577127632%_)))
                    (let ((_%hd127579127638%_ (##car _%e127578127635%_))
                          (_%tl127580127640%_ (##cdr _%e127578127635%_)))
                      (let ((_%hd-bind127643%_ _%hd127579127638%_))
                        (if (gx#stx-pair? _%tl127580127640%_)
                            (let ((_%e127581127645%_
                                   (gx#syntax-e _%tl127580127640%_)))
                              (let ((_%hd127582127648%_
                                     (##car _%e127581127645%_))
                                    (_%tl127583127650%_
                                     (##cdr _%e127581127645%_)))
                                (let ((_%expr127653%_ _%hd127582127648%_))
                                  (if (gx#stx-null? _%tl127583127650%_)
                                      (_%lp127547%_
                                       _%rest127570%_
                                       (cons (gx#core-quote-syntax__1
                                              (gx#core-list
                                               '%#define-values
                                               (gx#core-quote-bind-values
                                                _%hd-bind127643%_)
                                               (gx#core-expand-expression
                                                _%expr127653%_))
                                              (gx#stx-source _%hd127571%_))
                                             _%body127550%_))
                                      (_%E127574127623%_)))))
                            (_%E127574127623%_)))))
                  (_%E127574127623%_))
              (_%E127574127623%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E127574127623%_)))))
                                  (_%E127573127655%_)))))
                        (if (pair? _%rest127551127559%_)
                            (let ((_%hd127556127662%_
                                   (##car _%rest127551127559%_))
                                  (_%tl127557127664%_
                                   (##cdr _%rest127551127559%_)))
                              (let* ((_%hd127667%_ _%hd127556127662%_)
                                     (_%rest127669%_ _%tl127557127664%_))
                                (_%K127555127659%_
                                 _%rest127669%_
                                 _%hd127667%_)))
                            (_%else127553127567%_)))))))
          (_%expand-body127543%_
           (gx#core-expand-block__%
            (cons '%#begin-module _%body127540%_)
            _%expand-special127542%_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_%stx127381%_
               _%expanded?127382%_
               _%method127383%_
               _%current-phi127384%_
               _%expand1127385%_)
        (letrec ((_%K127387%_
                  (lambda (_%rest127507%_ _%r127508%_)
                    (let* ((_%e127509127516%_ _%rest127507%_)
                           (_%E127511127520%_ (lambda () _%r127508%_))
                           (_%E127510127536%_
                            (lambda ()
                              (if (gx#stx-pair? _%e127509127516%_)
                                  (let ((_%e127512127524%_
                                         (gx#syntax-e _%e127509127516%_)))
                                    (let ((_%hd127513127527%_
                                           (##car _%e127512127524%_))
                                          (_%tl127514127529%_
                                           (##cdr _%e127512127524%_)))
                                      (let* ((_%hd127532%_ _%hd127513127527%_)
                                             (_%rest127534%_
                                              _%tl127514127529%_))
                                        (_%step127388%_
                                         _%hd127532%_
                                         _%rest127534%_
                                         _%r127508%_))))
                                  (_%E127511127520%_)))))
                      (_%E127510127536%_))))
                 (_%step127388%_
                  (lambda (_%hd127421%_ _%rest127422%_ _%r127423%_)
                    (let* ((_%e127424127442%_ _%hd127421%_)
                           (_%E127437127446%_
                            (lambda ()
                              (if (_%expanded?127382%_ (gx#stx-e _%hd127421%_))
                                  (_%K127387%_
                                   _%rest127422%_
                                   (cons (gx#stx-e _%hd127421%_) _%r127423%_))
                                  (_%expand1127385%_
                                   _%hd127421%_
                                   _%K127387%_
                                   _%rest127422%_
                                   _%r127423%_))))
                           (_%E127433127462%_
                            (lambda ()
                              (if (gx#stx-pair? _%e127424127442%_)
                                  (let ((_%e127438127450%_
                                         (gx#syntax-e _%e127424127442%_)))
                                    (let ((_%hd127439127453%_
                                           (##car _%e127438127450%_))
                                          (_%tl127440127455%_
                                           (##cdr _%e127438127450%_)))
                                      (let* ((_%macro127458%_
                                              _%hd127439127453%_)
                                             (_%body127460%_
                                              _%tl127440127455%_))
                                        (if (gx#core-bound-identifier?__%
                                             _%macro127458%_
                                             gx#syntax-binding?)
                                            (_%K127387%_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _%macro127458%_)
                                                    _%hd127421%_
                                                    _%method127383%_)
                                                   _%rest127422%_)
                                             _%r127423%_)
                                            (_%E127437127446%_)))))
                                  (_%E127437127446%_))))
                           (_%E127426127476%_
                            (lambda ()
                              (if (gx#stx-pair? _%e127424127442%_)
                                  (let ((_%e127434127466%_
                                         (gx#syntax-e _%e127424127442%_)))
                                    (let ((_%hd127435127469%_
                                           (##car _%e127434127466%_))
                                          (_%tl127436127471%_
                                           (##cdr _%e127434127466%_)))
                                      (if (eq? (gx#stx-e _%hd127435127469%_)
                                               'begin:)
                                          (let ((_%body127474%_
                                                 _%tl127436127471%_))
                                            (_%K127387%_
                                             (gx#stx-foldr
                                              cons
                                              _%rest127422%_
                                              _%body127474%_)
                                             _%r127423%_))
                                          (_%E127433127462%_))))
                                  (_%E127433127462%_))))
                           (_%E127425127503%_
                            (lambda ()
                              (if (gx#stx-pair? _%e127424127442%_)
                                  (let ((_%e127427127480%_
                                         (gx#syntax-e _%e127424127442%_)))
                                    (let ((_%hd127428127483%_
                                           (##car _%e127427127480%_))
                                          (_%tl127429127485%_
                                           (##cdr _%e127427127480%_)))
                                      (if (eq? (gx#stx-e _%hd127428127483%_)
                                               'phi:)
                                          (if (gx#stx-pair? _%tl127429127485%_)
                                              (let ((_%e127430127488%_
                                                     (gx#syntax-e
                                                      _%tl127429127485%_)))
                                                (let ((_%hd127431127491%_
                                                       (##car _%e127430127488%_))
                                                      (_%tl127432127493%_
                                                       (##cdr _%e127430127488%_)))
                                                  (let* ((_%dphi127496%_
                                                          _%hd127431127491%_)
                                                         (_%body127498%_
                                                          _%tl127432127493%_))
                                                    (if (gx#stx-fixnum?
                                                         _%dphi127496%_)
                                                        (let ((_%rbody127501%_
                                                               (__call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%K127387%_ _%body127498%_ '()))
                        _%current-phi127384%_
                        (fx+ (gx#stx-e _%dphi127496%_)
                             (_%current-phi127384%_)))))
                  (_%K127387%_
                   _%rest127422%_
                   (__foldr1 cons _%r127423%_ _%rbody127501%_)))
                (_%E127426127476%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E127426127476%_))
                                          (_%E127426127476%_))))
                                  (_%E127426127476%_)))))
                      (_%E127425127503%_)))))
          (let* ((_%e127389127396%_ _%stx127381%_)
                 (_%E127391127400%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e127389127396%_)))
                 (_%E127390127417%_
                  (lambda ()
                    (if (gx#stx-pair? _%e127389127396%_)
                        (let ((_%e127392127404%_
                               (gx#syntax-e _%e127389127396%_)))
                          (let ((_%hd127393127407%_ (##car _%e127392127404%_))
                                (_%tl127394127409%_ (##cdr _%e127392127404%_)))
                            (let ((_%body127412%_ _%tl127394127409%_))
                              (if (_%current-phi127384%_)
                                  (_%K127387%_ _%body127412%_ '())
                                  (__call-with-parameters
                                   (lambda () (_%K127387%_ _%body127412%_ '()))
                                   _%current-phi127384%_
                                   (gx#current-expander-phi))))))
                        (_%E127391127400%_)))))
            (_%E127390127417%_)))))
    (define gx#core-expand-import%__%
      (lambda (_%stx127035%_ _%internal-expand?127036%_)
        (letrec ((_%expand1127038%_
                  (lambda (_%hd127353%_ _%K127354%_ _%rest127355%_ _%r127356%_)
                    (if (gx#core-bound-module? _%hd127353%_)
                        (_%import1127039%_
                         (gx#syntax-local-e__0 _%hd127353%_)
                         _%K127354%_
                         _%rest127355%_
                         _%r127356%_)
                        (if (gx#core-library-module-path? _%hd127353%_)
                            (_%import1127039%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%hd127353%_))
                             _%K127354%_
                             _%rest127355%_
                             _%r127356%_)
                            (if (gx#core-library-relative-module-path?
                                 _%hd127353%_)
                                (_%import1127039%_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _%hd127353%_))
                                 _%K127354%_
                                 _%rest127355%_
                                 _%r127356%_)
                                (let ((_%e127362%_ (gx#stx-e _%hd127353%_)))
                                  (if (pair? _%e127362%_)
                                      (let ((_%$e127365%_
                                             (gx#stx-e (##car _%e127362%_))))
                                        (if (eq? 'spec: _%$e127365%_)
                                            (_%import-spec127042%_
                                             _%hd127353%_
                                             _%K127354%_
                                             _%rest127355%_
                                             _%r127356%_)
                                            (if (eq? 'in: _%$e127365%_)
                                                (_%import-submodule127040%_
                                                 _%hd127353%_
                                                 _%K127354%_
                                                 _%rest127355%_
                                                 _%r127356%_)
                                                (if (eq? 'runtime:
                                                         _%$e127365%_)
                                                    (_%import-runtime127041%_
                                                     _%hd127353%_
                                                     _%K127354%_
                                                     _%rest127355%_
                                                     _%r127356%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _%stx127035%_
                                                     _%hd127353%_)))))
                                      (if (string? _%e127362%_)
                                          (_%import1127039%_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _%hd127353%_
                                             (gx#stx-source _%stx127035%_)))
                                           _%K127354%_
                                           _%rest127355%_
                                           _%r127356%_)
                                          (if (##structure-instance-of?
                                               _%e127362%_
                                               'gx#module-context::t)
                                              (_%K127354%_
                                               _%rest127355%_
                                               (cons _%e127362%_ _%r127356%_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _%stx127035%_
                                               _%hd127353%_))))))))))
                 (_%import1127039%_
                  (lambda (_%ctx127342%_
                           _%K127343%_
                           _%rest127344%_
                           _%r127345%_)
                    (let ((_%dphi127347%_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_%K127343%_
                       _%rest127344%_
                       (cons (##structure
                              gx#import-set::t
                              _%ctx127342%_
                              _%dphi127347%_
                              (map (lambda (_%g127348127350%_)
                                     (gx#core-module-export->import__%
                                      _%g127348127350%_
                                      '#f
                                      _%dphi127347%_))
                                   (##unchecked-structure-ref
                                    _%ctx127342%_
                                    '9
                                    '#f
                                    '#f)))
                             _%r127345%_)))))
                 (_%import-submodule127040%_
                  (lambda (_%hd127309%_ _%K127310%_ _%rest127311%_ _%r127312%_)
                    (let* ((_%e127313127320%_ _%hd127309%_)
                           (_%E127315127324%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e127313127320%_)))
                           (_%E127314127338%_
                            (lambda ()
                              (if (gx#stx-pair? _%e127313127320%_)
                                  (let ((_%e127316127328%_
                                         (gx#syntax-e _%e127313127320%_)))
                                    (let ((_%hd127317127331%_
                                           (##car _%e127316127328%_))
                                          (_%tl127318127333%_
                                           (##cdr _%e127316127328%_)))
                                      (let ((_%spath127336%_
                                             _%tl127318127333%_))
                                        (_%import1127039%_
                                         (_%import-spec-source127043%_
                                          _%spath127336%_)
                                         _%K127310%_
                                         _%rest127311%_
                                         _%r127312%_))))
                                  (_%E127315127324%_)))))
                      (_%E127314127338%_))))
                 (_%import-runtime127041%_
                  (lambda (_%hd127276%_ _%K127277%_ _%rest127278%_ _%r127279%_)
                    (let* ((_%e127280127287%_ _%hd127276%_)
                           (_%E127282127291%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e127280127287%_)))
                           (_%E127281127305%_
                            (lambda ()
                              (if (gx#stx-pair? _%e127280127287%_)
                                  (let ((_%e127283127295%_
                                         (gx#syntax-e _%e127280127287%_)))
                                    (let ((_%hd127284127298%_
                                           (##car _%e127283127295%_))
                                          (_%tl127285127300%_
                                           (##cdr _%e127283127295%_)))
                                      (let ((_%spath127303%_
                                             _%tl127285127300%_))
                                        (_%K127277%_
                                         _%rest127278%_
                                         (cons (_%import-spec-source127043%_
                                                _%spath127303%_)
                                               _%r127279%_)))))
                                  (_%E127282127291%_)))))
                      (_%E127281127305%_))))
                 (_%import-spec127042%_
                  (lambda (_%hd127114%_ _%K127115%_ _%rest127116%_ _%r127117%_)
                    (let* ((_%e127118127135%_ _%hd127114%_)
                           (_%E127127127139%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e127118127135%_)))
                           (_%E127120127250%_
                            (lambda ()
                              (if (gx#stx-pair? _%e127118127135%_)
                                  (let ((_%e127128127143%_
                                         (gx#syntax-e _%e127118127135%_)))
                                    (let ((_%hd127129127146%_
                                           (##car _%e127128127143%_))
                                          (_%tl127130127148%_
                                           (##cdr _%e127128127143%_)))
                                      (if (gx#stx-pair? _%tl127130127148%_)
                                          (let ((_%e127131127151%_
                                                 (gx#syntax-e
                                                  _%tl127130127148%_)))
                                            (let ((_%hd127132127154%_
                                                   (##car _%e127131127151%_))
                                                  (_%tl127133127156%_
                                                   (##cdr _%e127131127151%_)))
                                              (let* ((_%path127159%_
                                                      _%hd127132127154%_)
                                                     (_%specs127161%_
                                                      _%tl127133127156%_))
                                                (let ((_%src-ctx127163%_
                                                       (_%import-spec-source127043%_
                                                        _%path127159%_))
                                                      (_%exports127164%_
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
                                                      (_%specs127165%_
                                                       (gx#syntax->list
                                                        _%specs127161%_)))
                                                  (for-each
                                                   (lambda (_%out127167%_)
                                                     (__hash-put!
                                                      _%exports127164%_
                                                      (cons (##unchecked-structure-ref
                                                             _%out127167%_
                                                             '3
                                                             '#f
                                                             '#f)
                                                            (##unchecked-structure-ref
                                                             _%out127167%_
                                                             '4
                                                             '#f
                                                             '#f))
                                                      _%out127167%_))
                                                   (##unchecked-structure-ref
                                                    _%src-ctx127163%_
                                                    '9
                                                    '#f
                                                    '#f))
                                                  (_%K127115%_
                                                   _%rest127116%_
                                                   (__foldl1
                                                    (lambda (_%spec127169%_
                                                             _%r127170%_)
                                                      (let* ((_%e127171127187%_
                                                              _%spec127169%_)
                                                             (_%E127173127191%_
                                                              (lambda ()
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid syntax-case clause"
                         _%e127171127187%_)))
                     (_%E127172127246%_
                      (lambda ()
                        (if (gx#stx-pair? _%e127171127187%_)
                            (let ((_%e127174127195%_
                                   (gx#syntax-e _%e127171127187%_)))
                              (let ((_%hd127175127198%_
                                     (##car _%e127174127195%_))
                                    (_%tl127176127200%_
                                     (##cdr _%e127174127195%_)))
                                (let ((_%phi127203%_ _%hd127175127198%_))
                                  (if (gx#stx-pair? _%tl127176127200%_)
                                      (let ((_%e127177127205%_
                                             (gx#syntax-e _%tl127176127200%_)))
                                        (let ((_%hd127178127208%_
                                               (##car _%e127177127205%_))
                                              (_%tl127179127210%_
                                               (##cdr _%e127177127205%_)))
                                          (let ((_%name127213%_
                                                 _%hd127178127208%_))
                                            (if (gx#stx-pair?
                                                 _%tl127179127210%_)
                                                (let ((_%e127180127215%_
                                                       (gx#syntax-e
                                                        _%tl127179127210%_)))
                                                  (let ((_%hd127181127218%_
                                                         (##car _%e127180127215%_))
                                                        (_%tl127182127220%_
                                                         (##cdr _%e127180127215%_)))
                                                    (let ((_%src-phi127223%_
                                                           _%hd127181127218%_))
                                                      (if (gx#stx-pair?
                                                           _%tl127182127220%_)
                                                          (let ((_%e127183127225%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl127182127220%_)))
                    (let ((_%hd127184127228%_ (##car _%e127183127225%_))
                          (_%tl127185127230%_ (##cdr _%e127183127225%_)))
                      (let ((_%src-name127233%_ _%hd127184127228%_))
                        (if (gx#stx-null? _%tl127185127230%_)
                            (if (and (gx#stx-fixnum? _%src-phi127223%_)
                                     (gx#identifier? _%src-name127233%_)
                                     (gx#stx-fixnum? _%phi127203%_)
                                     (gx#identifier? _%name127213%_))
                                (let ((_%src-phi127235%_
                                       (gx#stx-e _%src-phi127223%_))
                                      (_%src-name127236%_
                                       (gx#core-identifier-key
                                        _%src-name127233%_))
                                      (_%phi127237%_ (gx#stx-e _%phi127203%_))
                                      (_%name127238%_
                                       (gx#core-identifier-key
                                        _%name127213%_)))
                                  (let ((_%$e127240%_
                                         (__hash-get
                                          _%exports127164%_
                                          (cons _%src-phi127235%_
                                                _%src-name127236%_))))
                                    (if _%$e127240%_
                                        ((lambda (_%out127243%_)
                                           (cons (gx#core-module-export->import__%
                                                  _%out127243%_
                                                  _%name127238%_
                                                  (fx- _%phi127237%_
                                                       _%src-phi127235%_))
                                                 _%r127170%_))
                                         _%$e127240%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; no matching export"
                                         _%stx127035%_
                                         _%hd127114%_))))
                                (_%E127173127191%_))
                            (_%E127173127191%_)))))
                  (_%E127173127191%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E127173127191%_)))))
                                      (_%E127173127191%_)))))
                            (_%E127173127191%_)))))
                (_%E127172127246%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r127117%_
                                                    _%specs127165%_))))))
                                          (_%E127127127139%_))))
                                  (_%E127127127139%_))))
                           (_%E127119127272%_
                            (lambda ()
                              (if (gx#stx-pair? _%e127118127135%_)
                                  (let ((_%e127121127254%_
                                         (gx#syntax-e _%e127118127135%_)))
                                    (let ((_%hd127122127257%_
                                           (##car _%e127121127254%_))
                                          (_%tl127123127259%_
                                           (##cdr _%e127121127254%_)))
                                      (if (gx#stx-pair? _%tl127123127259%_)
                                          (let ((_%e127124127262%_
                                                 (gx#syntax-e
                                                  _%tl127123127259%_)))
                                            (let ((_%hd127125127265%_
                                                   (##car _%e127124127262%_))
                                                  (_%tl127126127267%_
                                                   (##cdr _%e127124127262%_)))
                                              (let ((_%path127270%_
                                                     _%hd127125127265%_))
                                                (if (gx#stx-null?
                                                     _%tl127126127267%_)
                                                    (_%K127115%_
                                                     _%rest127116%_
                                                     (cons (_%import-spec-source127043%_
                                                            _%path127270%_)
                                                           _%r127117%_))
                                                    (_%E127120127250%_)))))
                                          (_%E127120127250%_))))
                                  (_%E127120127250%_)))))
                      (_%E127119127272%_))))
                 (_%import-spec-source127043%_
                  (lambda (_%spath127112%_)
                    (gx#core-import-nested-module
                     _%spath127112%_
                     _%stx127035%_)))
                 (_%import!127044%_
                  (lambda (_%rbody127057%_)
                    (letrec* ((_%current-ctx127059%_
                               (gx#current-expander-context))
                              (_%deps127060%_ (make-hash-table-eq))
                              (_%bind!127061%_
                               (lambda (_%hd127110%_)
                                 (gx#core-bind-import!__1
                                  _%hd127110%_
                                  _%current-ctx127059%_))))
                      (let _%lp127063%_ ((_%rest127065%_ _%rbody127057%_)
                                         (_%body127066%_ '()))
                        (let* ((_%rest127067127075%_ _%rest127065%_)
                               (_%else127069127086%_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _%current-ctx127059%_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _%current-ctx127059%_
                                       (__foldl1
                                        cons
                                        (##unchecked-structure-ref
                                         _%current-ctx127059%_
                                         '8
                                         '#f
                                         '#f)
                                        _%body127066%_)
                                       '8
                                       '#f
                                       '#f)
                                      '#!void)
                                  (__hash-for-each
                                   (lambda (_%ctx127083%_ _%_127084%_)
                                     (gx#eval-module _%ctx127083%_))
                                   _%deps127060%_)
                                  _%body127066%_))
                               (_%K127071127098%_
                                (lambda (_%rest127089%_ _%hd127090%_)
                                  (if (##structure-direct-instance-of?
                                       _%hd127090%_
                                       'gx#module-import::t)
                                      (let ()
                                        (_%bind!127061%_ _%hd127090%_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _%hd127090%_
                                                   '3
                                                   '#f
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _%hd127090%_
                                                            '1
                                                            '#f
                                                            '#f)
                                                           '3
                                                           '#f
                                                           '#f)))
                                            (__hash-put!
                                             _%deps127060%_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _%hd127090%_
                                               '1
                                               '#f
                                               '#f)
                                              '1
                                              '#f
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _%hd127090%_
                                           'gx#import-set::t)
                                          (let ()
                                            (for-each
                                             _%bind!127061%_
                                             (##unchecked-structure-ref
                                              _%hd127090%_
                                              '3
                                              '#f
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _%hd127090%_
                                                  '2
                                                  '#f
                                                  '#f))
                                                (__hash-put!
                                                 _%deps127060%_
                                                 (##unchecked-structure-ref
                                                  _%hd127090%_
                                                  '1
                                                  '#f
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_%$e127094%_
                                                 (##structure-instance-of?
                                                  _%hd127090%_
                                                  'gx#module-context::t)))
                                            (if _%$e127094%_
                                                _%$e127094%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _%stx127035%_
                                                 _%hd127090%_)))))
                                  (_%lp127063%_
                                   _%rest127089%_
                                   (cons _%hd127090%_ _%body127066%_)))))
                          (if (pair? _%rest127067127075%_)
                              (let ((_%hd127072127101%_
                                     (##car _%rest127067127075%_))
                                    (_%tl127073127103%_
                                     (##cdr _%rest127067127075%_)))
                                (let* ((_%hd127106%_ _%hd127072127101%_)
                                       (_%rest127108%_ _%tl127073127103%_))
                                  (_%K127071127098%_
                                   _%rest127108%_
                                   _%hd127106%_)))
                              (_%else127069127086%_)))))))
                 (_%expanded-import?127045%_
                  (lambda (_%e127049%_)
                    (let ((_%$e127051%_
                           (##structure-direct-instance-of?
                            _%e127049%_
                            'gx#import-set::t)))
                      (if _%$e127051%_
                          _%$e127051%_
                          (let ((_%$e127054%_
                                 (##structure-direct-instance-of?
                                  _%e127049%_
                                  'gx#module-import::t)))
                            (if _%$e127054%_
                                _%$e127054%_
                                (##structure-instance-of?
                                 _%e127049%_
                                 'gx#module-context::t))))))))
          (let ((_%rbody127047%_
                 (gx#core-expand-import/export
                  _%stx127035%_
                  _%expanded-import?127045%_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _%expand1127038%_)))
            (if _%internal-expand?127036%_
                (reverse _%rbody127047%_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_%import!127044%_ _%rbody127047%_))
                 (gx#stx-source _%stx127035%_)))))))
    (define gx#core-expand-import%__0
      (lambda (_%stx127374%_)
        (let ((_%internal-expand?127376%_ '#f))
          (gx#core-expand-import%__%
           _%stx127374%_
           _%internal-expand?127376%_))))
    (define gx#core-expand-import%
      (lambda _g130027_
        (let ((_g130026_ (##length _g130027_)))
          (cond ((##fx= _g130026_ 1)
                 (apply gx#core-expand-import%__0 _g130027_))
                ((##fx= _g130026_ 2)
                 (apply gx#core-expand-import%__% _g130027_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g130027_))))))
    (define gx#core-import-nested-module
      (lambda (_%spath126962%_ _%where126963%_)
        (let* ((_%e126964126971%_ _%spath126962%_)
               (_%E126966126975%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126964126971%_)))
               (_%E126965127030%_
                (lambda ()
                  (if (gx#stx-pair? _%e126964126971%_)
                      (let ((_%e126967126979%_
                             (gx#syntax-e _%e126964126971%_)))
                        (let ((_%hd126968126982%_ (##car _%e126967126979%_))
                              (_%tl126969126984%_ (##cdr _%e126967126979%_)))
                          (let* ((_%origin126987%_ _%hd126968126982%_)
                                 (_%sub126989%_ _%tl126969126984%_)
                                 (_%origin-ctx126991%_
                                  (if (gx#stx-false? _%origin126987%_)
                                      (gx#current-expander-context)
                                      (gx#import-module__0 _%origin126987%_))))
                            (let _%lp126993%_ ((_%rest126995%_ _%sub126989%_)
                                               (_%ctx126996%_
                                                _%origin-ctx126991%_))
                              (let* ((_%e126997127004%_ _%rest126995%_)
                                     (_%E126999127008%_
                                      (lambda () _%ctx126996%_))
                                     (_%E126998127026%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e126997127004%_)
                                            (let ((_%e127000127012%_
                                                   (gx#syntax-e
                                                    _%e126997127004%_)))
                                              (let ((_%hd127001127015%_
                                                     (##car _%e127000127012%_))
                                                    (_%tl127002127017%_
                                                     (##cdr _%e127000127012%_)))
                                                (let* ((_%id127020%_
                                                        _%hd127001127015%_)
                                                       (_%rest127022%_
                                                        _%tl127002127017%_)
                                                       (_%bind127024%_
                                                        (gx#resolve-identifier__%
                                                         _%id127020%_
                                                         '0
                                                         _%ctx126996%_)))
                                                  (if (and (##structure-direct-instance-of?
                                                            _%bind127024%_
                                                            'gx#syntax-binding::t)
                                                           (##structure-instance-of?
                                                            (##unchecked-structure-ref
                                                             _%bind127024%_
                                                             '4
                                                             '#f
                                                             '#f)
                                                            'gx#module-context::t))
                                                      '#!void
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; not bound as module"
                                                       _%where126963%_
                                                       _%spath126962%_
                                                       _%id127020%_))
                                                  (_%lp126993%_
                                                   _%rest127022%_
                                                   (##unchecked-structure-ref
                                                    _%bind127024%_
                                                    '4
                                                    '#f
                                                    '#f)))))
                                            (_%E126999127008%_)))))
                                (_%E126998127026%_))))))
                      (_%E126966126975%_)))))
          (_%E126965127030%_))))
    (define gx#core-expand-import-source
      (lambda (_%hd126960%_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _%hd126960%_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_%stx126454%_ _%internal-expand?126455%_)
        (letrec* ((_%make-export__129955129956%_
                   (lambda (_%bind126908%_
                            _%phi126909%_
                            _%ctx126910%_
                            _%name126911%_)
                     (let* ((_%key126913%_
                             (##unchecked-structure-ref
                              _%bind126908%_
                              '2
                              '#f
                              '#f))
                            (_%export-key126915%_
                             (if _%name126911%_
                                 (gx#core-identifier-key _%name126911%_)
                                 _%key126913%_)))
                       (##structure
                        gx#module-export::t
                        _%ctx126910%_
                        _%key126913%_
                        _%phi126909%_
                        _%export-key126915%_
                        (let ((_%$e126918%_
                               (##structure-instance-of?
                                _%bind126908%_
                                'gx#extern-binding::t)))
                          (if _%$e126918%_
                              _%$e126918%_
                              (##structure-direct-instance-of?
                               _%bind126908%_
                               'gx#import-binding::t)))))))
                  (_%make-export__0__129957129960%_
                   (lambda (_%bind126924%_)
                     (let* ((_%phi126926%_ (gx#current-export-expander-phi))
                            (_%ctx126928%_ (gx#current-expander-context))
                            (_%name126930%_ '#f))
                       (_%make-export__129955129956%_
                        _%bind126924%_
                        _%phi126926%_
                        _%ctx126928%_
                        _%name126930%_))))
                  (_%make-export__1__129958129961%_
                   (lambda (_%bind126932%_ _%phi126933%_)
                     (let* ((_%ctx126935%_ (gx#current-expander-context))
                            (_%name126937%_ '#f))
                       (_%make-export__129955129956%_
                        _%bind126932%_
                        _%phi126933%_
                        _%ctx126935%_
                        _%name126937%_))))
                  (_%make-export__2__129959129962%_
                   (lambda (_%bind126939%_ _%phi126940%_ _%ctx126941%_)
                     (let ((_%name126943%_ '#f))
                       (_%make-export__129955129956%_
                        _%bind126939%_
                        _%phi126940%_
                        _%ctx126941%_
                        _%name126943%_))))
                  (_%make-export126457%_
                   (lambda _g130029_
                     (let ((_g130028_ (##length _g130029_)))
                       (cond ((##fx= _g130028_ 1)
                              (apply _%make-export__0__129957129960%_
                                     _g130029_))
                             ((##fx= _g130028_ 2)
                              (apply _%make-export__1__129958129961%_
                                     _g130029_))
                             ((##fx= _g130028_ 3)
                              (apply _%make-export__2__129959129962%_
                                     _g130029_))
                             ((##fx= _g130028_ 4)
                              (apply _%make-export__129955129956%_ _g130029_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g130029_))))))
                  (_%expand1126458%_
                   (lambda (_%hd126613%_
                            _%K126614%_
                            _%rest126615%_
                            _%r126616%_)
                     (let* ((_%e126617126649%_ _%hd126613%_)
                            (_%E126644126653%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _%stx126454%_
                                _%hd126613%_)))
                            (_%E126634126737%_
                             (lambda ()
                               (if (gx#stx-pair? _%e126617126649%_)
                                   (let ((_%e126645126657%_
                                          (gx#syntax-e _%e126617126649%_)))
                                     (let ((_%hd126646126660%_
                                            (##car _%e126645126657%_))
                                           (_%tl126647126662%_
                                            (##cdr _%e126645126657%_)))
                                       (if (eq? (gx#stx-e _%hd126646126660%_)
                                                'import:)
                                           (let ((_%in126665%_
                                                  _%tl126647126662%_))
                                             (if (gx#stx-list? _%in126665%_)
                                                 (let _%lp126667%_ ((_%in-rest126669%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%in126665%_)
                            (_%r126670%_ _%r126616%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%e126671126678%_
                                                           _%in-rest126669%_)
                                                          (_%E126673126682%_
                                                           (lambda ()
                                                             (_%K126614%_
                                                              _%rest126615%_
                                                              _%r126670%_)))
                                                          (_%E126672126733%_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%e126671126678%_)
                         (let ((_%e126674126686%_
                                (gx#syntax-e _%e126671126678%_)))
                           (let ((_%hd126675126689%_ (##car _%e126674126686%_))
                                 (_%tl126676126691%_
                                  (##cdr _%e126674126686%_)))
                             (let* ((_%hd126694%_ _%hd126675126689%_)
                                    (_%in-rest126696%_ _%tl126676126691%_)
                                    (_%src126731%_
                                     (if (gx#core-bound-module? _%hd126694%_)
                                         (gx#syntax-local-e__0 _%hd126694%_)
                                         (if (gx#core-library-module-path?
                                              _%hd126694%_)
                                             (gx#import-module__0
                                              (gx#core-resolve-library-module-path
                                               _%hd126694%_))
                                             (if (gx#core-library-relative-module-path?
                                                  _%hd126694%_)
                                                 (gx#import-module__0
                                                  (gx#core-resolve-library-relative-module-path
                                                   _%hd126694%_))
                                                 (if (gx#stx-string?
                                                      _%hd126694%_)
                                                     (gx#import-module__0
                                                      (gx#core-resolve-module-path__%
                                                       _%hd126694%_
                                                       (gx#stx-source
                                                        _%stx126454%_)))
                                                     (let* ((_%e126702126709%_
                                                             _%hd126694%_)
                                                            (_%E126704126713%_
                                                             (lambda ()
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; illegal re-export"
                                                                _%stx126454%_
                                                                _%hd126694%_)))
                                                            (_%E126703126727%_
                                                             (lambda ()
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%e126702126709%_)
                           (let ((_%e126705126717%_
                                  (gx#syntax-e _%e126702126709%_)))
                             (let ((_%hd126706126720%_
                                    (##car _%e126705126717%_))
                                   (_%tl126707126722%_
                                    (##cdr _%e126705126717%_)))
                               (if (eq? (gx#stx-e _%hd126706126720%_) 'in:)
                                   (let ((_%spath126725%_ _%tl126707126722%_))
                                     (gx#core-import-nested-module
                                      _%spath126725%_
                                      _%stx126454%_))
                                   (_%E126704126713%_))))
                           (_%E126704126713%_)))))
               (_%E126703126727%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (_%lp126667%_
                                _%in-rest126696%_
                                (_%export-imports126459%_
                                 _%src126731%_
                                 _%r126670%_)))))
                         (_%E126673126682%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E126672126733%_)))
                                                 (_%E126644126653%_)))
                                           (_%E126644126653%_))))
                                   (_%E126644126653%_))))
                            (_%E126621126777%_
                             (lambda ()
                               (if (gx#stx-pair? _%e126617126649%_)
                                   (let ((_%e126635126741%_
                                          (gx#syntax-e _%e126617126649%_)))
                                     (let ((_%hd126636126744%_
                                            (##car _%e126635126741%_))
                                           (_%tl126637126746%_
                                            (##cdr _%e126635126741%_)))
                                       (if (eq? (gx#stx-e _%hd126636126744%_)
                                                'rename:)
                                           (if (gx#stx-pair?
                                                _%tl126637126746%_)
                                               (let ((_%e126638126749%_
                                                      (gx#syntax-e
                                                       _%tl126637126746%_)))
                                                 (let ((_%hd126639126752%_
                                                        (##car _%e126638126749%_))
                                                       (_%tl126640126754%_
                                                        (##cdr _%e126638126749%_)))
                                                   (let ((_%id126757%_
                                                          _%hd126639126752%_))
                                                     (if (gx#stx-pair?
                                                          _%tl126640126754%_)
                                                         (let ((_%e126641126759%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl126640126754%_)))
                   (let ((_%hd126642126762%_ (##car _%e126641126759%_))
                         (_%tl126643126764%_ (##cdr _%e126641126759%_)))
                     (let ((_%name126767%_ _%hd126642126762%_))
                       (if (gx#stx-null? _%tl126643126764%_)
                           (let* ((_%phi126769%_
                                   (gx#current-export-expander-phi))
                                  (_%$e126771%_
                                   (gx#core-resolve-identifier__1
                                    _%id126757%_
                                    _%phi126769%_)))
                             (if _%$e126771%_
                                 ((lambda (_%bind126774%_)
                                    (_%K126614%_
                                     _%rest126615%_
                                     (cons (_%make-export__129955129956%_
                                            _%bind126774%_
                                            _%phi126769%_
                                            (gx#current-expander-context)
                                            _%name126767%_)
                                           _%r126616%_)))
                                  _%$e126771%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Reference to unbound identifier"
                                  _%stx126454%_
                                  _%hd126613%_
                                  _%id126757%_)))
                           (_%E126634126737%_)))))
                 (_%E126634126737%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E126634126737%_))
                                           (_%E126634126737%_))))
                                   (_%E126634126737%_))))
                            (_%E126620126827%_
                             (lambda ()
                               (if (gx#stx-pair? _%e126617126649%_)
                                   (let ((_%e126622126781%_
                                          (gx#syntax-e _%e126617126649%_)))
                                     (let ((_%hd126623126784%_
                                            (##car _%e126622126781%_))
                                           (_%tl126624126786%_
                                            (##cdr _%e126622126781%_)))
                                       (if (eq? (gx#stx-e _%hd126623126784%_)
                                                'spec:)
                                           (if (gx#stx-pair?
                                                _%tl126624126786%_)
                                               (let ((_%e126625126789%_
                                                      (gx#syntax-e
                                                       _%tl126624126786%_)))
                                                 (let ((_%hd126626126792%_
                                                        (##car _%e126625126789%_))
                                                       (_%tl126627126794%_
                                                        (##cdr _%e126625126789%_)))
                                                   (let ((_%phi126797%_
                                                          _%hd126626126792%_))
                                                     (if (gx#stx-pair?
                                                          _%tl126627126794%_)
                                                         (let ((_%e126628126799%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl126627126794%_)))
                   (let ((_%hd126629126802%_ (##car _%e126628126799%_))
                         (_%tl126630126804%_ (##cdr _%e126628126799%_)))
                     (let ((_%id126807%_ _%hd126629126802%_))
                       (if (gx#stx-pair? _%tl126630126804%_)
                           (let ((_%e126631126809%_
                                  (gx#syntax-e _%tl126630126804%_)))
                             (let ((_%hd126632126812%_
                                    (##car _%e126631126809%_))
                                   (_%tl126633126814%_
                                    (##cdr _%e126631126809%_)))
                               (let ((_%name126817%_ _%hd126632126812%_))
                                 (if (gx#stx-null? _%tl126633126814%_)
                                     (if (and (gx#stx-fixnum? _%phi126797%_)
                                              (gx#identifier? _%id126807%_)
                                              (gx#identifier? _%name126817%_))
                                         (let* ((_%phi126819%_
                                                 (gx#stx-e _%phi126797%_))
                                                (_%$e126821%_
                                                 (gx#core-resolve-identifier__1
                                                  _%id126807%_
                                                  _%phi126819%_)))
                                           (if _%$e126821%_
                                               ((lambda (_%bind126824%_)
                                                  (_%K126614%_
                                                   _%rest126615%_
                                                   (cons (_%make-export__129955129956%_
                                                          _%bind126824%_
                                                          _%phi126819%_
                                                          (gx#current-expander-context)
                                                          _%name126817%_)
                                                         _%r126616%_)))
                                                _%$e126821%_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _%stx126454%_
                                                _%hd126613%_
                                                _%id126807%_)))
                                         (_%E126621126777%_))
                                     (_%E126621126777%_)))))
                           (_%E126621126777%_)))))
                 (_%E126621126777%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E126621126777%_))
                                           (_%E126621126777%_))))
                                   (_%E126621126777%_))))
                            (_%E126619126839%_
                             (lambda ()
                               (let ((_%id126831%_ _%e126617126649%_))
                                 (if (gx#identifier? _%id126831%_)
                                     (let ((_%$e126833%_
                                            (gx#core-resolve-identifier__1
                                             _%id126831%_
                                             (gx#current-export-expander-phi))))
                                       (if _%$e126833%_
                                           ((lambda (_%bind126836%_)
                                              (_%K126614%_
                                               _%rest126615%_
                                               (cons (_%make-export__0__129957129960%_
                                                      _%bind126836%_)
                                                     _%r126616%_)))
                                            _%$e126833%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _%stx126454%_
                                            _%hd126613%_)))
                                     (_%E126620126827%_)))))
                            (_%E126618126903%_
                             (lambda ()
                               (if (eq? (gx#stx-e _%e126617126649%_) '#t)
                                   (let* ((_%current-ctx126843%_
                                           (gx#current-expander-context))
                                          (_%current-phi126845%_
                                           (gx#current-export-expander-phi))
                                          (_%phi-ctx126847%_
                                           (gx#core-context-shift
                                            _%current-ctx126843%_
                                            _%current-phi126845%_))
                                          (_%phi-bind126849%_
                                           (hash->list
                                            (##unchecked-structure-ref
                                             _%phi-ctx126847%_
                                             '2
                                             '#f
                                             '#f))))
                                     (let _%lp126852%_ ((_%bind-rest126854%_
                                                         _%phi-bind126849%_)
                                                        (_%set126855%_ '()))
                                       (let* ((_%bind-rest126856126866%_
                                               _%bind-rest126854%_)
                                              (_%else126858126874%_
                                               (lambda ()
                                                 (_%K126614%_
                                                  _%rest126615%_
                                                  (cons (##structure
                                                         gx#export-set::t
                                                         '#f
                                                         _%current-phi126845%_
                                                         _%set126855%_)
                                                        _%r126616%_))))
                                              (_%K126860126884%_
                                               (lambda (_%bind-rest126877%_
                                                        _%bind126878%_
                                                        _%key126879%_)
                                                 (if (or (##structure-direct-instance-of?
                                                          _%bind126878%_
                                                          'gx#import-binding::t)
                                                         (gx#private-feature-binding?
                                                          _%bind126878%_))
                                                     (_%lp126852%_
                                                      _%bind-rest126877%_
                                                      _%set126855%_)
                                                     (_%lp126852%_
                                                      _%bind-rest126877%_
                                                      (cons (_%make-export__2__129959129962%_
                                                             _%bind126878%_
                                                             _%current-phi126845%_
                                                             _%current-ctx126843%_)
                                                            _%set126855%_))))))
                                         (if (pair? _%bind-rest126856126866%_)
                                             (let ((_%hd126861126887%_
                                                    (##car _%bind-rest126856126866%_))
                                                   (_%tl126862126889%_
                                                    (##cdr _%bind-rest126856126866%_)))
                                               (if (pair? _%hd126861126887%_)
                                                   (let ((_%hd126863126892%_
                                                          (##car _%hd126861126887%_))
                                                         (_%tl126864126894%_
                                                          (##cdr _%hd126861126887%_)))
                                                     (let* ((_%key126897%_
                                                             _%hd126863126892%_)
                                                            (_%bind126899%_
                                                             _%tl126864126894%_)
                                                            (_%bind-rest126901%_
                                                             _%tl126862126889%_))
                                                       (_%K126860126884%_
                                                        _%bind-rest126901%_
                                                        _%bind126899%_
                                                        _%key126897%_)))
                                                   (_%else126858126874%_)))
                                             (_%else126858126874%_)))))
                                   (_%E126619126839%_)))))
                       (_%E126618126903%_))))
                  (_%export-imports126459%_
                   (lambda (_%src126489%_ _%r126490%_)
                     (letrec* ((_%current-ctx126492%_
                                (gx#current-expander-context))
                               (_%current-phi126493%_
                                (gx#current-export-expander-phi))
                               (_%import->export126494%_
                                (lambda (_%in126575%_)
                                  (let* ((_%in126576126584%_ _%in126575%_)
                                         (_%E126578126588%_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _%in126576126584%_
                                                   '((module-import
                                                      out
                                                      key
                                                      phi)))
                                            '#!void))
                                         (_%K126579126595%_
                                          (lambda (_%phi126591%_
                                                   _%key126592%_
                                                   _%out126593%_)
                                            (##structure
                                             gx#module-export::t
                                             _%current-ctx126492%_
                                             _%key126592%_
                                             _%phi126591%_
                                             _%key126592%_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _%in126576126584%_
                                         'gx#module-import::t)
                                        (let* ((_%e126580126598%_
                                                (##unchecked-structure-ref
                                                 _%in126576126584%_
                                                 '1
                                                 '#f
                                                 '#f))
                                               (_%out126601%_
                                                _%e126580126598%_)
                                               (_%e126581126603%_
                                                (##unchecked-structure-ref
                                                 _%in126576126584%_
                                                 '2
                                                 '#f
                                                 '#f))
                                               (_%key126606%_
                                                _%e126581126603%_)
                                               (_%e126582126608%_
                                                (##unchecked-structure-ref
                                                 _%in126576126584%_
                                                 '3
                                                 '#f
                                                 '#f))
                                               (_%phi126611%_
                                                _%e126582126608%_))
                                          (_%K126579126595%_
                                           _%phi126611%_
                                           _%key126606%_
                                           _%out126601%_))
                                        (_%E126578126588%_)))))
                               (_%fold-e126495%_
                                (lambda (_%in126497%_ _%r126498%_)
                                  (let* ((_%in126499126513%_ _%in126497%_)
                                         (_%else126502126521%_
                                          (lambda () _%r126498%_)))
                                    (let ((_%K126508126557%_
                                           (lambda (_%phi126553%_
                                                    _%key126554%_
                                                    _%out126555%_)
                                             (if (and (fx= _%phi126553%_
                                                           _%current-phi126493%_)
                                                      (eq? _%src126489%_
                                                           (##unchecked-structure-ref
                                                            _%out126555%_
                                                            '1
                                                            '#f
                                                            '#f)))
                                                 (cons (_%import->export126494%_
                                                        _%in126497%_)
                                                       _%r126498%_)
                                                 _%r126498%_)))
                                          (_%K126504126532%_
                                           (lambda (_%imports126525%_
                                                    _%phi126526%_
                                                    _%ctx126527%_)
                                             (if (and (fx= _%phi126526%_
                                                           _%current-phi126493%_)
                                                      (eq? _%src126489%_
                                                           _%ctx126527%_))
                                                 (__foldl1
                                                  (lambda (_%in126529%_
                                                           _%r126530%_)
                                                    (cons (_%import->export126494%_
                                                           _%in126529%_)
                                                          _%r126530%_))
                                                  _%r126498%_
                                                  _%imports126525%_)
                                                 _%r126498%_))))
                                      (let ((_%try-match126501126550%_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _%in126499126513%_
                                                    'gx#import-set::t)
                                                   (let* ((_%e126505126535%_
                                                           (##unchecked-structure-ref
                                                            _%in126499126513%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                          (_%e126506126540%_
                                                           (##unchecked-structure-ref
                                                            _%in126499126513%_
                                                            '2
                                                            '#f
                                                            '#f))
                                                          (_%e126507126545%_
                                                           (##unchecked-structure-ref
                                                            _%in126499126513%_
                                                            '3
                                                            '#f
                                                            '#f)))
                                                     (let ((_%ctx126538%_
                                                            _%e126505126535%_)
                                                           (_%phi126543%_
                                                            _%e126506126540%_)
                                                           (_%imports126548%_
                                                            _%e126507126545%_))
                                                       (_%K126504126532%_
                                                        _%imports126548%_
                                                        _%phi126543%_
                                                        _%ctx126538%_)))
                                                   (_%else126502126521%_)))))
                                        (if (##structure-direct-instance-of?
                                             _%in126499126513%_
                                             'gx#module-import::t)
                                            (let* ((_%e126509126560%_
                                                    (##unchecked-structure-ref
                                                     _%in126499126513%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                   (_%e126510126565%_
                                                    (##unchecked-structure-ref
                                                     _%in126499126513%_
                                                     '2
                                                     '#f
                                                     '#f))
                                                   (_%e126511126570%_
                                                    (##unchecked-structure-ref
                                                     _%in126499126513%_
                                                     '3
                                                     '#f
                                                     '#f)))
                                              (let ((_%out126563%_
                                                     _%e126509126560%_)
                                                    (_%key126568%_
                                                     _%e126510126565%_)
                                                    (_%phi126573%_
                                                     _%e126511126570%_))
                                                (_%K126508126557%_
                                                 _%phi126573%_
                                                 _%key126568%_
                                                 _%out126563%_)))
                                            (_%try-match126501126550%_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _%src126489%_
                              _%current-phi126493%_
                              (__foldl1
                               _%fold-e126495%_
                               '()
                               (##unchecked-structure-ref
                                _%current-ctx126492%_
                                '8
                                '#f
                                '#f)))
                             _%r126490%_))))
                  (_%export!126460%_
                   (lambda (_%rbody126476%_)
                     (letrec* ((_%current-ctx126478%_
                                (gx#current-expander-context))
                               (_%fold-e126479%_
                                (lambda (_%out126483%_ _%r126484%_)
                                  (if (##structure-direct-instance-of?
                                       _%out126483%_
                                       'gx#module-export::t)
                                      (cons _%out126483%_ _%r126484%_)
                                      (if (##structure-direct-instance-of?
                                           _%out126483%_
                                           'gx#export-set::t)
                                          (__foldl1
                                           cons
                                           _%r126484%_
                                           (##unchecked-structure-ref
                                            _%out126483%_
                                            '3
                                            '#f
                                            '#f))
                                          _%r126484%_)))))
                       (let ((_%body126481%_ (reverse _%rbody126476%_)))
                         (##unchecked-structure-set!
                          _%current-ctx126478%_
                          (__foldl1
                           _%fold-e126479%_
                           (##unchecked-structure-ref
                            _%current-ctx126478%_
                            '9
                            '#f
                            '#f)
                           _%body126481%_)
                          '9
                          '#f
                          '#f)
                         _%body126481%_))))
                  (_%expanded-export?126461%_
                   (lambda (_%e126471%_)
                     (let ((_%$e126473%_
                            (##structure-direct-instance-of?
                             _%e126471%_
                             'gx#module-export::t)))
                       (if _%$e126473%_
                           _%$e126473%_
                           (##structure-direct-instance-of?
                            _%e126471%_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _%internal-expand?126455%_)
              (let ((_%rbody126467%_
                     (gx#core-expand-import/export
                      _%stx126454%_
                      _%expanded-export?126461%_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _%expand1126458%_)))
                (if _%internal-expand?126455%_
                    (reverse _%rbody126467%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons
                      '%#export
                      (_%export!126460%_ _%rbody126467%_))
                     (gx#stx-source _%stx126454%_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _%stx126454%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _%stx126454%_))))))
    (define gx#core-expand-export%__0
      (lambda (_%stx126953%_)
        (let ((_%internal-expand?126955%_ '#f))
          (gx#core-expand-export%__%
           _%stx126953%_
           _%internal-expand?126955%_))))
    (define gx#core-expand-export%
      (lambda _g130031_
        (let ((_g130030_ (##length _g130031_)))
          (cond ((##fx= _g130030_ 1)
                 (apply gx#core-expand-export%__0 _g130031_))
                ((##fx= _g130030_ 2)
                 (apply gx#core-expand-export%__% _g130031_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g130031_))))))
    (define gx#core-expand-export-source
      (lambda (_%hd126451%_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _%hd126451%_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_%stx126421%_)
        (let* ((_%e126422126429%_ _%stx126421%_)
               (_%E126424126433%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126422126429%_)))
               (_%E126423126447%_
                (lambda ()
                  (if (gx#stx-pair? _%e126422126429%_)
                      (let ((_%e126425126437%_
                             (gx#syntax-e _%e126422126429%_)))
                        (let ((_%hd126426126440%_ (##car _%e126425126437%_))
                              (_%tl126427126442%_ (##cdr _%e126425126437%_)))
                          (let ((_%body126445%_ _%tl126427126442%_))
                            (if (gx#identifier-list? _%body126445%_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _%body126445%_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _%body126445%_))
                                   (gx#stx-source _%stx126421%_)))
                                (_%E126424126433%_)))))
                      (_%E126424126433%_)))))
          (_%E126423126447%_))))
    (define gx#core-bind-feature!__%
      (lambda (_%id126387%_ _%private?126388%_ _%phi126389%_ _%ctx126390%_)
        (gx#core-bind-syntax!__%
         _%id126387%_
         ((if _%private?126388%_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _%id126387%_))
         _%private?126388%_
         _%phi126389%_
         _%ctx126390%_)))
    (define gx#core-bind-feature!__0
      (lambda (_%id126395%_)
        (let* ((_%private?126397%_ '#f)
               (_%phi126399%_ (gx#current-expander-phi))
               (_%ctx126401%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id126395%_
           _%private?126397%_
           _%phi126399%_
           _%ctx126401%_))))
    (define gx#core-bind-feature!__1
      (lambda (_%id126403%_ _%private?126404%_)
        (let* ((_%phi126406%_ (gx#current-expander-phi))
               (_%ctx126408%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id126403%_
           _%private?126404%_
           _%phi126406%_
           _%ctx126408%_))))
    (define gx#core-bind-feature!__2
      (lambda (_%id126410%_ _%private?126411%_ _%phi126412%_)
        (let ((_%ctx126414%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id126410%_
           _%private?126411%_
           _%phi126412%_
           _%ctx126414%_))))
    (define gx#core-bind-feature!
      (lambda _g130033_
        (let ((_g130032_ (##length _g130033_)))
          (cond ((##fx= _g130032_ 1)
                 (apply gx#core-bind-feature!__0 _g130033_))
                ((##fx= _g130032_ 2)
                 (apply gx#core-bind-feature!__1 _g130033_))
                ((##fx= _g130032_ 3)
                 (apply gx#core-bind-feature!__2 _g130033_))
                ((##fx= _g130032_ 4)
                 (apply gx#core-bind-feature!__% _g130033_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g130033_))))))))
