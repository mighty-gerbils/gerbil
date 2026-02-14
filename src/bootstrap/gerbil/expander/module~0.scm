(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1771092629)
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
      (lambda _%$args185427%_
        (apply make-instance gx#module-import::t _%$args185427%_)))
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
      (lambda _%$args185424%_
        (apply make-instance gx#module-export::t _%$args185424%_)))
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
      (lambda _%$args185421%_
        (apply make-instance gx#import-set::t _%$args185421%_)))
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
      (lambda _%$args185418%_
        (apply make-instance gx#export-set::t _%$args185418%_)))
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
      (lambda _%$args185415%_
        (apply make-instance gx#import-expander::t _%$args185415%_)))
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
      (lambda _%$args185412%_
        (apply make-instance gx#export-expander::t _%$args185412%_)))
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
      (lambda _%$args185409%_
        (apply make-instance gx#import-export-expander::t _%$args185409%_)))
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
      (lambda (_%path185406%_ _%fun185407%_)
        (call-with-input-file
         (cons 'path: (cons _%path185406%_ gx#source-file-settings))
         _%fun185407%_)))
    (define gx#module-context:::init!
      (lambda (_%self185389%_
               _%id185390%_
               _%super185391%_
               _%ns185392%_
               _%path185393%_)
        (let ((_%self185396%_ _%self185389%_))
          (if (##fx< '11 (##structure-length _%self185396%_))
              (begin
                (##unchecked-structure-set!
                 _%self185396%_
                 _%id185390%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self185396%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self185396%_
                 _%super185391%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self185396%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self185396%_ '#f '5 '#f '#f)
                (##unchecked-structure-set!
                 _%self185396%_
                 _%ns185392%_
                 '6
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self185396%_
                 _%path185393%_
                 '7
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self185396%_ '() '8 '#f '#f)
                (##unchecked-structure-set! _%self185396%_ '() '9 '#f '#f)
                (##unchecked-structure-set! _%self185396%_ '#f '10 '#f '#f)
                (##unchecked-structure-set! _%self185396%_ '#f '11 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self185396%_
                     '11
                     (##structure-length _%self185396%_))))))
    (__bind-method!__%
     gx#module-context::t
     ':init!
     gx#module-context:::init!
     '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_%self185222%_ _%ctx185223%_ _%root185224%_)
        (let* ((_%self185227%_ _%self185222%_)
               (_%super185243%_
                (let ((_%$e185237%_ _%root185224%_))
                  (if _%$e185237%_
                      _%$e185237%_
                      (let ((_%$e185240%_ (gx#core-context-root__0)))
                        (if _%$e185240%_
                            _%$e185240%_
                            (let ((__obj185471
                                   (##structure gx#root-context::t '#f '#f)))
                              (let ((__constructor185472
                                     (direct-method-ref
                                      gx#root-context::t
                                      __obj185471
                                      ':init!)))
                                (if __constructor185472
                                    (__constructor185472 __obj185471)
                                    (error '"missing constructor method implementation"
                                           'class:
                                           gx#root-context::t
                                           'method:
                                           ':init!)))
                              __obj185471)))))))
          (if _%ctx185223%_
              (let ((_%id185246%_
                     (##structure-ref
                      _%ctx185223%_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_%path185247%_
                     (##structure-ref
                      _%ctx185223%_
                      '7
                      gx#module-context::t
                      '#f))
                    (_%in185248%_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _%ctx185223%_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_%e185249%_
                     (__make-atomic-promise
                      (lambda () (gx#eval-module _%ctx185223%_)))))
                (if (##fx< '8 (##structure-length _%self185227%_))
                    (begin
                      (##unchecked-structure-set!
                       _%self185227%_
                       _%id185246%_
                       '1
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self185227%_
                       (make-hash-table-eq 'size: (##length _%in185248%_))
                       '2
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self185227%_
                       _%super185243%_
                       '3
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self185227%_
                       '#f
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self185227%_
                       '#f
                       '5
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self185227%_
                       _%path185247%_
                       '6
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self185227%_
                       _%in185248%_
                       '7
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self185227%_
                       _%e185249%_
                       '8
                       '#f
                       '#f)
                      '#!void)
                    (error '"struct-instance-init!: too many arguments for struct"
                           _%self185227%_
                           '8
                           (##structure-length _%self185227%_)))
                (##for-each
                 (lambda (_%g185250185252%_)
                   (gx#core-bind-weak-import!__%
                    _%g185250185252%_
                    _%self185227%_))
                 _%in185248%_))
              (if (##fx< '8 (##structure-length _%self185227%_))
                  (begin
                    (##unchecked-structure-set! _%self185227%_ '#f '1 '#f '#f)
                    (##unchecked-structure-set!
                     _%self185227%_
                     (make-hash-table-eq)
                     '2
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self185227%_
                     _%super185243%_
                     '3
                     '#f
                     '#f)
                    (##unchecked-structure-set! _%self185227%_ '#f '4 '#f '#f)
                    (##unchecked-structure-set! _%self185227%_ '#f '5 '#f '#f)
                    (##unchecked-structure-set! _%self185227%_ '#f '6 '#f '#f)
                    (##unchecked-structure-set! _%self185227%_ '() '7 '#f '#f)
                    (##unchecked-structure-set! _%self185227%_ '#f '8 '#f '#f)
                    '#!void)
                  (error '"struct-instance-init!: too many arguments for struct"
                         _%self185227%_
                         '8
                         (##structure-length _%self185227%_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_%self185258%_ _%ctx185259%_)
        (let ((_%root185261%_ '#f))
          (gx#prelude-context:::init!__%
           _%self185258%_
           _%ctx185259%_
           _%root185261%_))))
    (define gx#prelude-context:::init!
      (lambda _g185478_
        (let ((_g185479_ (##length _g185478_)))
          (cond ((##fx= _g185479_ 2)
                 (apply gx#prelude-context:::init!__0 _g185478_))
                ((##fx= _g185479_ 3)
                 (apply gx#prelude-context:::init!__% _g185478_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g185478_))))))
    (__bind-method!__%
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_%self185096%_ _%e185097%_)
        (if (##fx< '3 (##structure-length _%self185096%_))
            (begin
              (##unchecked-structure-set!
               _%self185096%_
               _%e185097%_
               '1
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self185096%_
               (gx#current-expander-context)
               '2
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self185096%_
               (##fx- (gx#current-expander-phi) '1)
               '3
               '#f
               '#f)
              '#!void)
            (error '"struct-instance-init!: too many arguments for struct"
                   _%self185096%_
                   '3
                   (##structure-length _%self185096%_)))))
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
      (lambda (_%g184722184725%_ _%g184723184727%_)
        (gx#core-apply-user-expander__%
         _%g184722184725%_
         _%g184723184727%_
         'apply-import-expander)))
    (__bind-method!__%
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_%g184593184596%_ _%g184594184598%_)
        (gx#core-apply-user-expander__%
         _%g184593184596%_
         _%g184594184598%_
         'apply-export-expander)))
    (__bind-method!__%
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_%ctx184464%_)
        (let* ((_%path184466%_
                (##structure-ref _%ctx184464%_ '7 gx#module-context::t '#f))
               (_%path184468%_
                (if (pair? _%path184466%_)
                    (##last _%path184466%_)
                    _%path184466%_)))
          (if (string? _%path184468%_) _%path184468%_ '#f))))
    (define gx#import-module__%
      (lambda (_%path184440%_ _%reload?184441%_ _%eval?184442%_)
        (let ((_%ctx184444%_
               ((gx#current-expander-module-import)
                _%path184440%_
                _%reload?184441%_)))
          (if (and _%ctx184444%_ _%eval?184442%_)
              (gx#eval-module _%ctx184444%_)
              '#!void)
          _%ctx184444%_)))
    (define gx#import-module__0
      (lambda (_%path184449%_)
        (let* ((_%reload?184451%_ '#f) (_%eval?184453%_ '#f))
          (gx#import-module__%
           _%path184449%_
           _%reload?184451%_
           _%eval?184453%_))))
    (define gx#import-module__1
      (lambda (_%path184455%_ _%reload?184456%_)
        (let ((_%eval?184458%_ '#f))
          (gx#import-module__%
           _%path184455%_
           _%reload?184456%_
           _%eval?184458%_))))
    (define gx#import-module
      (lambda _g185480_
        (let ((_g185481_ (##length _g185480_)))
          (cond ((##fx= _g185481_ 1) (apply gx#import-module__0 _g185480_))
                ((##fx= _g185481_ 2) (apply gx#import-module__1 _g185480_))
                ((##fx= _g185481_ 3) (apply gx#import-module__% _g185480_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g185480_))))))
    (define gx#eval-module
      (lambda (_%mod184437%_)
        ((gx#current-expander-module-eval) _%mod184437%_)))
    (define gx#core-eval-module
      (lambda (_%obj184416%_)
        (letrec ((_%force-e184418%_
                  (lambda (_%getf184432%_ _%e184433%_)
                    (call-with-parameters__1
                     (lambda ()
                       (call-with-parameters__1
                        (lambda () (force (_%getf184432%_ _%e184433%_)))
                        gx#current-expander-phi
                        '0))
                     gx#current-expander-context
                     _%e184433%_))))
          (let _%recur184420%_ ((_%e184422%_ _%obj184416%_))
            (if (##structure-instance-of? _%e184422%_ 'gx#module-context::t)
                (let ()
                  (let ((_%$e184425%_
                         (gx#core-context-prelude__% _%e184422%_)))
                    (if _%$e184425%_ (_%recur184420%_ _%$e184425%_) '#!void))
                  (_%force-e184418%_ gx#module-context-e _%e184422%_))
                (if (##structure-instance-of?
                     _%e184422%_
                     'gx#prelude-context::t)
                    (_%force-e184418%_ gx#prelude-context-e _%e184422%_)
                    (if (gx#stx-string? _%e184422%_)
                        (_%recur184420%_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _%e184422%_)))
                        (if (gx#core-library-module-path? _%e184422%_)
                            (_%recur184420%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%e184422%_)))
                            (error '"cannot eval module" _%obj184416%_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_%ctx184396%_)
        (let _%lp184398%_ ((_%e184400%_ _%ctx184396%_))
          (if (or (##structure-instance-of? _%e184400%_ 'gx#module-context::t)
                  (##structure-instance-of? _%e184400%_ 'gx#local-context::t))
              (_%lp184398%_ (##unchecked-structure-ref _%e184400%_ '3 '#f '#f))
              (if (##structure-instance-of? _%e184400%_ 'gx#prelude-context::t)
                  _%e184400%_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_%ctx184412%_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _%ctx184412%_))))
    (define gx#core-context-prelude
      (lambda _g185482_
        (let ((_g185483_ (##length _g185482_)))
          (cond ((##fx= _g185483_ 0)
                 (apply gx#core-context-prelude__0 _g185482_))
                ((##fx= _g185483_ 1)
                 (apply gx#core-context-prelude__% _g185482_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g185482_))))))
    (define gx#core-module->prelude-context
      (lambda (_%ctx184387%_)
        (let ((_%$e184389%_ (__hash-get gx#__module-registry _%ctx184387%_)))
          (if _%$e184389%_
              _%$e184389%_
              (let ((_%pre184393%_
                     (let ((__obj185473
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
                        __obj185473
                        _%ctx184387%_)
                       __obj185473)))
                (__hash-put! gx#__module-registry _%ctx184387%_ _%pre184393%_)
                _%pre184393%_)))))
    (define gx#core-import-module__%
      (lambda (_%rpath184255%_ _%reload?184256%_)
        (letrec ((_%import-source184258%_
                  (lambda (_%path184346%_)
                    (if (member _%path184346%_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _%path184346%_)
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
                                      (let ((_g185484_
                                             (gx#core-read-module
                                              _%path184346%_)))
                                        (begin
                                          (let ((_g185485_
                                                 (if (##values? _g185484_)
                                                     (##values-length
                                                      _g185484_)
                                                     1)))
                                            (if (not (##fx= _g185485_ 4))
                                                (error "Context expects 4 values"
                                                       _g185485_)))
                                          (let ((_%pre184354%_
                                                 (##values-ref _g185484_ 0))
                                                (_%id184355%_
                                                 (##values-ref _g185484_ 1))
                                                (_%ns184356%_
                                                 (##values-ref _g185484_ 2))
                                                (_%body184357%_
                                                 (##values-ref _g185484_ 3)))
                                            (let* ((_%prelude184367%_
                                                    (if (##structure-instance-of?
                                                         _%pre184354%_
                                                         'gx#prelude-context::t)
                                                        _%pre184354%_
                                                        (if (##structure-instance-of?
                                                             _%pre184354%_
                                                             'gx#module-context::t)
                                                            (gx#core-module->prelude-context
                                                             _%pre184354%_)
                                                            (if (string? _%pre184354%_)
                                                                (gx#core-module->prelude-context
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#core-import-module__0 _%pre184354%_))
                        (if (not _%pre184354%_)
                            (let ((_%$e184363%_
                                   (gx#current-expander-module-prelude)))
                              (if _%$e184363%_
                                  _%$e184363%_
                                  (let ((__obj185474
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
                                     __obj185474
                                     '#f)
                                    __obj185474)))
                            (error '"cannot import module; unknown prelude"
                                   _%rpath184255%_
                                   _%pre184354%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%ctx184369%_
                                                    (let ((__obj185475
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
                                                       __obj185475
                                                       _%id184355%_
                                                       _%prelude184367%_
                                                       _%ns184356%_
                                                       _%path184346%_)
                                                      __obj185475))
                                                   (_%body184371%_
                                                    (gx#core-expand-module-begin
                                                     _%body184357%_
                                                     _%ctx184369%_))
                                                   (_%body184373%_
                                                    (gx#core-quote-syntax__%
                                                     (gx#core-cons
                                                      '%#begin
                                                      _%body184371%_)
                                                     _%path184346%_
                                                     _%ctx184369%_
                                                     '())))
                                              (##unchecked-structure-set!
                                               _%ctx184369%_
                                               (__make-atomic-promise
                                                (lambda ()
                                                  (gx#eval-syntax*
                                                   _%body184373%_)))
                                               '10
                                               '#f
                                               '#f)
                                              (##unchecked-structure-set!
                                               _%ctx184369%_
                                               _%body184373%_
                                               '11
                                               '#f
                                               '#f)
                                              (__hash-put!
                                               gx#__module-registry
                                               _%path184346%_
                                               _%ctx184369%_)
                                              (__hash-put!
                                               gx#__module-registry
                                               _%id184355%_
                                               _%ctx184369%_)
                                              _%ctx184369%_)))))
                                    gx#current-export-expander-phi
                                    '#f))
                                 gx#current-import-expander-phi
                                 '#f))
                              gx#current-expander-path
                              (cons _%path184346%_
                                    (gx#current-expander-path))))
                           gx#current-expander-phi
                           '0))
                        gx#current-expander-marks
                        '()))
                     gx#current-expander-context
                     (gx#core-context-root__0))))
                 (_%import-submodule184259%_
                  (lambda (_%rpath184275%_)
                    (let* ((_%rpath184276184283%_ _%rpath184275%_)
                           (_%E184278184286%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%rpath184276184283%_
                                     '([origin . refs]))
                              '#!void))
                           (_%K184279184334%_
                            (lambda (_%refs184289%_ _%origin184290%_)
                              (let ((_%ctx184292%_
                                     (if _%origin184290%_
                                         (gx#core-import-module__%
                                          _%origin184290%_
                                          _%reload?184256%_)
                                         (gx#current-expander-context))))
                                (let _%lp184294%_ ((_%rest184296%_
                                                    _%refs184289%_)
                                                   (_%ctx184297%_
                                                    _%ctx184292%_))
                                  (let* ((_%rest184298184306%_ _%rest184296%_)
                                         (_%else184300184314%_
                                          (lambda () _%ctx184297%_))
                                         (_%K184302184322%_
                                          (lambda (_%rest184317%_ _%id184318%_)
                                            (let ((_%bind184320%_
                                                   (gx#resolve-identifier__%
                                                    _%id184318%_
                                                    '0
                                                    _%ctx184297%_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _%bind184320%_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _%bind184320%_
                                                         '5
                                                         '#f
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_%lp184294%_
                                                   _%rest184317%_
                                                   (##unchecked-structure-ref
                                                    _%bind184320%_
                                                    '5
                                                    '#f
                                                    '#f))
                                                  (error '"cannot import submodule; not bound as a module"
                                                         _%rpath184275%_
                                                         _%id184318%_
                                                         _%bind184320%_))))))
                                    (if (pair? _%rest184298184306%_)
                                        (let ((_%hd184303184325%_
                                               (##car _%rest184298184306%_))
                                              (_%tl184304184327%_
                                               (##cdr _%rest184298184306%_)))
                                          (let* ((_%id184330%_
                                                  _%hd184303184325%_)
                                                 (_%rest184332%_
                                                  _%tl184304184327%_))
                                            (_%K184302184322%_
                                             _%rest184332%_
                                             _%id184330%_)))
                                        (_%else184300184314%_))))))))
                      (if (pair? _%rpath184276184283%_)
                          (let ((_%hd184280184337%_
                                 (##car _%rpath184276184283%_))
                                (_%tl184281184339%_
                                 (##cdr _%rpath184276184283%_)))
                            (let* ((_%origin184342%_ _%hd184280184337%_)
                                   (_%refs184344%_ _%tl184281184339%_))
                              (_%K184279184334%_
                               _%refs184344%_
                               _%origin184342%_)))
                          (_%E184278184286%_))))))
          (let ((_%$e184261%_
                 (if (not _%reload?184256%_)
                     (__hash-get gx#__module-registry _%rpath184255%_)
                     '#f)))
            (if _%$e184261%_
                _%$e184261%_
                (if (list? _%rpath184255%_)
                    (_%import-submodule184259%_ _%rpath184255%_)
                    (if (gx#core-library-module-path? _%rpath184255%_)
                        (let ((_%ctx184266%_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _%rpath184255%_)
                                _%reload?184256%_)))
                          (__hash-put!
                           gx#__module-registry
                           _%rpath184255%_
                           _%ctx184266%_)
                          _%ctx184266%_)
                        (let* ((_%npath184269%_
                                (path-normalize _%rpath184255%_))
                               (_%$e184271%_
                                (if (not _%reload?184256%_)
                                    (__hash-get
                                     gx#__module-registry
                                     _%npath184269%_)
                                    '#f)))
                          (if _%$e184271%_
                              _%$e184271%_
                              (_%import-source184258%_
                               _%npath184269%_))))))))))
    (define gx#core-import-module__0
      (lambda (_%rpath184380%_)
        (let ((_%reload?184382%_ '#f))
          (gx#core-import-module__% _%rpath184380%_ _%reload?184382%_))))
    (define gx#core-import-module
      (lambda _g185486_
        (let ((_g185487_ (##length _g185486_)))
          (cond ((##fx= _g185487_ 1)
                 (apply gx#core-import-module__0 _g185486_))
                ((##fx= _g185487_ 2)
                 (apply gx#core-import-module__% _g185486_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g185486_))))))
    (define gx#core-read-module
      (lambda (_%path184237%_)
        (__with-catch
         (lambda (_%exn184239%_)
           (if (datum-parsing-exception? _%exn184239%_)
               (let ((_%pos184241%_
                      (datum-parsing-exception-filepos _%exn184239%_)))
                 (if (= _%pos184241%_ '0)
                     (gx#core-read-module/lang _%path184237%_)
                     (gx#raise-syntax-error
                      'read-module
                      '"error reading module"
                      _%path184237%_
                      (call-with-parameters__1
                       (lambda ()
                         (call-with-output-string
                          '""
                          (lambda (_%g184243184245%_)
                            (display-exception__%
                             _%exn184239%_
                             _%g184243184245%_))))
                       dump-stack-trace?
                       '#f)
                      (cons 'line:
                            (cons (##filepos-line _%pos184241%_)
                                  (cons 'col:
                                        (cons (##filepos-col _%pos184241%_)
                                              '())))))))
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _%path184237%_
                (call-with-parameters__1
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_%g184248184250%_)
                      (display-exception__% _%exn184239%_ _%g184248184250%_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _%path184237%_)))))
    (define gx#core-read-module/sexp
      (lambda (_%path184089%_)
        (let _%lp184091%_ ((_%body184093%_
                            (read-syntax-from-file _%path184089%_))
                           (_%pre184094%_ '#f)
                           (_%ns184095%_ '#f)
                           (_%pkg184096%_ '#f))
          (let* ((_%e184097184121%_ _%body184093%_)
                 (_%E184113184147%_
                  (lambda ()
                    (let ((_g185488_
                           (if _%pkg184096%_
                               (values _%pre184094%_
                                       _%ns184095%_
                                       _%pkg184096%_)
                               (gx#core-read-module-package
                                _%path184089%_
                                _%pre184094%_
                                _%ns184095%_))))
                      (begin
                        (let ((_g185489_
                               (if (##values? _g185488_)
                                   (##values-length _g185488_)
                                   1)))
                          (if (not (##fx= _g185489_ 3))
                              (error "Context expects 3 values" _g185489_)))
                        (let ((_%pre184125%_ (##values-ref _g185488_ 0))
                              (_%ns184126%_ (##values-ref _g185488_ 1))
                              (_%pkg184127%_ (##values-ref _g185488_ 2)))
                          (let* ((_%prelude184133%_
                                  (if (gx#core-bound-module-prelude?
                                       _%pre184125%_)
                                      (gx#syntax-local-e__0 _%pre184125%_)
                                      (if (gx#core-library-module-path?
                                           _%pre184125%_)
                                          (gx#core-resolve-library-module-path
                                           _%pre184125%_)
                                          (if (gx#stx-string? _%pre184125%_)
                                              (gx#core-resolve-module-path__%
                                               _%pre184125%_
                                               _%path184089%_)
                                              (gx#stx-e _%pre184125%_)))))
                                 (_%path-id184135%_
                                  (gx#core-module-path->namespace
                                   _%path184089%_))
                                 (_%pkg-id184137%_
                                  (if _%pkg184127%_
                                      (##string-append
                                       _%pkg184127%_
                                       '"/"
                                       _%path-id184135%_)
                                      _%path-id184135%_))
                                 (_%module-id184139%_
                                  (##string->symbol _%pkg-id184137%_))
                                 (_%module-ns184144%_
                                  (if (eq? _%ns184126%_ '#!void)
                                      '#f
                                      (let ((_%$e184141%_ _%ns184126%_))
                                        (if _%$e184141%_
                                            _%$e184141%_
                                            _%pkg-id184137%_)))))
                            (values _%prelude184133%_
                                    _%module-id184139%_
                                    _%module-ns184144%_
                                    _%body184093%_)))))))
                 (_%E184106184179%_
                  (lambda ()
                    (if (gx#stx-pair? _%e184097184121%_)
                        (let ((_%e184114184151%_
                               (gx#syntax-e _%e184097184121%_)))
                          (let ((_%hd184115184154%_ (##car _%e184114184151%_))
                                (_%tl184116184156%_ (##cdr _%e184114184151%_)))
                            (if (eq? (gx#stx-e _%hd184115184154%_) 'package:)
                                (if (gx#stx-pair? _%tl184116184156%_)
                                    (let ((_%e184117184159%_
                                           (gx#syntax-e _%tl184116184156%_)))
                                      (let ((_%hd184118184162%_
                                             (##car _%e184117184159%_))
                                            (_%tl184119184164%_
                                             (##cdr _%e184117184159%_)))
                                        (let* ((_%pkg184167%_
                                                _%hd184118184162%_)
                                               (_%rest184169%_
                                                _%tl184119184164%_)
                                               (_%pkg184177%_
                                                (if (gx#identifier?
                                                     _%pkg184167%_)
                                                    (symbol->string
                                                     (gx#stx-e _%pkg184167%_))
                                                    (if (or (gx#stx-string?
                                                             _%pkg184167%_)
                                                            (gx#stx-false?
                                                             _%pkg184167%_))
                                                        (gx#stx-e
                                                         _%pkg184167%_)
                                                        (gx#raise-syntax-error
                                                         'import
                                                         '"Bad syntax; Illegal package name"
                                                         _%pkg184167%_)))))
                                          (_%lp184091%_
                                           _%rest184169%_
                                           _%pre184094%_
                                           _%ns184095%_
                                           _%pkg184177%_))))
                                    (_%E184113184147%_))
                                (_%E184113184147%_))))
                        (_%E184113184147%_))))
                 (_%E184099184209%_
                  (lambda ()
                    (if (gx#stx-pair? _%e184097184121%_)
                        (let ((_%e184107184183%_
                               (gx#syntax-e _%e184097184121%_)))
                          (let ((_%hd184108184186%_ (##car _%e184107184183%_))
                                (_%tl184109184188%_ (##cdr _%e184107184183%_)))
                            (if (eq? (gx#stx-e _%hd184108184186%_) 'namespace:)
                                (if (gx#stx-pair? _%tl184109184188%_)
                                    (let ((_%e184110184191%_
                                           (gx#syntax-e _%tl184109184188%_)))
                                      (let ((_%hd184111184194%_
                                             (##car _%e184110184191%_))
                                            (_%tl184112184196%_
                                             (##cdr _%e184110184191%_)))
                                        (let* ((_%ns184199%_
                                                _%hd184111184194%_)
                                               (_%rest184201%_
                                                _%tl184112184196%_)
                                               (_%ns184207%_
                                                (if (gx#identifier?
                                                     _%ns184199%_)
                                                    (symbol->string
                                                     (gx#stx-e _%ns184199%_))
                                                    (if (gx#stx-string?
                                                         _%ns184199%_)
                                                        (gx#stx-e _%ns184199%_)
                                                        (if (gx#stx-false?
                                                             _%ns184199%_)
                                                            '#!void
                                                            (gx#raise-syntax-error
                                                             'import
                                                             '"Bad syntax; illegal namespace"
                                                             _%ns184199%_))))))
                                          (_%lp184091%_
                                           _%rest184201%_
                                           _%pre184094%_
                                           _%ns184207%_
                                           _%pkg184096%_))))
                                    (_%E184106184179%_))
                                (_%E184106184179%_))))
                        (_%E184106184179%_))))
                 (_%E184098184233%_
                  (lambda ()
                    (if (gx#stx-pair? _%e184097184121%_)
                        (let ((_%e184100184213%_
                               (gx#syntax-e _%e184097184121%_)))
                          (let ((_%hd184101184216%_ (##car _%e184100184213%_))
                                (_%tl184102184218%_ (##cdr _%e184100184213%_)))
                            (if (eq? (gx#stx-e _%hd184101184216%_) 'prelude:)
                                (if (gx#stx-pair? _%tl184102184218%_)
                                    (let ((_%e184103184221%_
                                           (gx#syntax-e _%tl184102184218%_)))
                                      (let ((_%hd184104184224%_
                                             (##car _%e184103184221%_))
                                            (_%tl184105184226%_
                                             (##cdr _%e184103184221%_)))
                                        (let* ((_%prelude184229%_
                                                _%hd184104184224%_)
                                               (_%rest184231%_
                                                _%tl184105184226%_))
                                          (_%lp184091%_
                                           _%rest184231%_
                                           _%prelude184229%_
                                           _%ns184095%_
                                           _%pkg184096%_))))
                                    (_%E184099184209%_))
                                (_%E184099184209%_))))
                        (_%E184099184209%_)))))
            (_%E184098184233%_)))))
    (define gx#core-read-module/lang
      (lambda (_%path183910%_)
        (letrec ((_%default-read-module-body183912%_
                  (lambda (_%inp184081%_)
                    (let _%lp184083%_ ((_%body184085%_ '()))
                      (let ((_%next184087%_ (read-syntax__% _%inp184081%_)))
                        (if (eof-object? _%next184087%_)
                            (reverse _%body184085%_)
                            (_%lp184083%_
                             (cons _%next184087%_ _%body184085%_)))))))
                 (_%read-body183913%_
                  (lambda (_%inp183998%_
                           _%pre183999%_
                           _%ns184000%_
                           _%pkg184001%_
                           _%args184002%_)
                    (let ((_g185490_
                           (if _%pkg184001%_
                               (values _%pre183999%_
                                       _%ns184000%_
                                       _%pkg184001%_)
                               (gx#core-read-module-package
                                _%path183910%_
                                _%pre183999%_
                                _%ns184000%_))))
                      (begin
                        (let ((_g185491_
                               (if (##values? _g185490_)
                                   (##values-length _g185490_)
                                   1)))
                          (if (not (##fx= _g185491_ 3))
                              (error "Context expects 3 values" _g185491_)))
                        (let ((_%pre184004%_ (##values-ref _g185490_ 0))
                              (_%ns184005%_ (##values-ref _g185490_ 1))
                              (_%pkg184006%_ (##values-ref _g185490_ 2)))
                          (let* ((_%prelude184008%_
                                  (gx#import-module__0 _%pre184004%_))
                                 (_%read-module-body184063%_
                                  (let ((_%$e184054%_
                                         (__find (lambda (_%e184009184011%_)
                                                   (let* ((_%e184009184013184023%_
                                                           _%e184009184011%_)
                                                          (_%else184015184031%_
                                                           (lambda () '#f))
                                                          (_%K184017184035%_
                                                           (lambda () '#t)))
                                                     (if (##structure-direct-instance-of?
                                                          _%e184009184013184023%_
                                                          'gx#module-export::t)
                                                         (let* ((_%e184018184038%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##unchecked-structure-ref
                          _%e184009184013184023%_
                          '1
                          '#f
                          '#f))
                        (_%e184019184041%_
                         (##unchecked-structure-ref
                          _%e184009184013184023%_
                          '2
                          '#f
                          '#f))
                        (_%e184020184044%_
                         (##unchecked-structure-ref
                          _%e184009184013184023%_
                          '3
                          '#f
                          '#f)))
                   (if (##eq? _%e184020184044%_ '1)
                       (let ((_%e184021184047%_
                              (##unchecked-structure-ref
                               _%e184009184013184023%_
                               '4
                               '#f
                               '#f)))
                         (if ((lambda (_%g184049184051%_)
                                (eq? _%g184049184051%_ 'read-module-body))
                              _%e184021184047%_)
                             (_%K184017184035%_)
                             (_%else184015184031%_)))
                       (_%else184015184031%_)))
                 (_%else184015184031%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (##unchecked-structure-ref
                                                  _%prelude184008%_
                                                  '9
                                                  '#f
                                                  '#f))))
                                    (if _%$e184054%_
                                        ((lambda (_%xport184057%_)
                                           (let ((_%proc184060%_
                                                  (__with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _%xport184057%_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _%proc184060%_)
                                                 _%proc184060%_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _%path183910%_
                                                  _%pre184004%_
                                                  _%proc184060%_))))
                                         _%$e184054%_)
                                        _%default-read-module-body183912%_)))
                                 (_%path-id184065%_
                                  (gx#core-module-path->namespace
                                   _%path183910%_))
                                 (_%pkg-id184067%_
                                  (if _%pkg184006%_
                                      (##string-append
                                       _%pkg184006%_
                                       '"/"
                                       _%path-id184065%_)
                                      _%path-id184065%_))
                                 (_%module-id184069%_
                                  (##string->symbol _%pkg-id184067%_))
                                 (_%module-ns184074%_
                                  (let ((_%$e184071%_ _%ns184005%_))
                                    (if _%$e184071%_
                                        _%$e184071%_
                                        _%pkg-id184067%_)))
                                 (_%body184078%_
                                  (call-with-parameters__1
                                   (lambda ()
                                     (call-with-parameters__1
                                      (lambda ()
                                        (_%read-module-body184063%_
                                         _%inp183998%_))
                                      gx#current-module-reader-args
                                      _%args184002%_))
                                   gx#current-module-reader-path
                                   _%path183910%_)))
                            (values _%prelude184008%_
                                    _%module-id184069%_
                                    _%module-ns184074%_
                                    _%body184078%_)))))))
                 (_%string-e183914%_
                  (lambda (_%obj183992%_ _%what183993%_)
                    (if (string? _%obj183992%_)
                        _%obj183992%_
                        (if (symbol? _%obj183992%_)
                            (##symbol->string _%obj183992%_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _%what183993%_)
                             _%path183910%_
                             _%obj183992%_)))))
                 (_%read-lang-args183915%_
                  (lambda (_%inp183947%_ _%args183948%_)
                    (let* ((_%args183949183957%_ _%args183948%_)
                           (_%else183951183965%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _%path183910%_)))
                           (_%K183953183980%_
                            (lambda (_%args183968%_ _%prelude183969%_)
                              (let* ((_%pkg183971%_
                                      (pgetq__0 'package: _%args183968%_))
                                     (_%pkg183973%_
                                      (if _%pkg183971%_
                                          (_%string-e183914%_
                                           _%pkg183971%_
                                           '"package")
                                          '#f))
                                     (_%ns183975%_
                                      (pgetq__0 'namespace: _%args183968%_))
                                     (_%ns183977%_
                                      (if _%ns183975%_
                                          (_%string-e183914%_
                                           _%ns183975%_
                                           '"namespace")
                                          '#f)))
                                (_%read-body183913%_
                                 _%inp183947%_
                                 _%prelude183969%_
                                 _%ns183977%_
                                 _%pkg183973%_
                                 _%args183968%_)))))
                      (if (pair? _%args183949183957%_)
                          (let ((_%hd183954183983%_
                                 (##car _%args183949183957%_))
                                (_%tl183955183985%_
                                 (##cdr _%args183949183957%_)))
                            (let* ((_%prelude183988%_ _%hd183954183983%_)
                                   (_%args183990%_ _%tl183955183985%_))
                              (_%K183953183980%_
                               _%args183990%_
                               _%prelude183988%_)))
                          (_%else183951183965%_)))))
                 (_%read-lang183916%_
                  (lambda (_%inp183921%_)
                    (let* ((_%head183923%_ (read-line _%inp183921%_))
                           (_%$e183925%_
                            (string-index__0 _%head183923%_ '#\space)))
                      (if _%$e183925%_
                          ((lambda (_%ix183928%_)
                             (let ((_%lang183930%_
                                    (substring
                                     _%head183923%_
                                     '0
                                     _%ix183928%_)))
                               (if (equal? _%lang183930%_ '"#lang")
                                   (let* ((_%rest183932%_
                                           (substring
                                            _%head183923%_
                                            (##fx+ _%ix183928%_ '1)
                                            (string-length _%head183923%_)))
                                          (_%args183943%_
                                           (__with-catch
                                            (lambda (_%g183933183935%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _%path183910%_
                                               _%g183933183935%_))
                                            (lambda ()
                                              (call-with-input-string
                                               _%rest183932%_
                                               (lambda (_%g183938183940%_)
                                                 (read-all
                                                  _%g183938183940%_
                                                  read)))))))
                                     (_%read-lang-args183915%_
                                      _%inp183921%_
                                      _%args183943%_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _%path183910%_))))
                           _%$e183925%_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _%path183910%_)))))
                 (_%read-e183917%_
                  (lambda (_%inp183919%_)
                    (if (eq? (peek-char _%inp183919%_) '#\#)
                        (_%read-lang183916%_ _%inp183919%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _%path183910%_)))))
          (gx#call-with-input-source-file _%path183910%_ _%read-e183917%_))))
    (define gx#core-read-module-package
      (lambda (_%path183858%_ _%pre183859%_ _%ns183860%_)
        (letrec ((_%string-e183862%_
                  (lambda (_%e183905%_)
                    (if (symbol? _%e183905%_)
                        (##symbol->string _%e183905%_)
                        (if (string? _%e183905%_)
                            _%e183905%_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%e183905%_))))))
          (let _%lp183864%_ ((_%dir183866%_ (path-directory _%path183858%_))
                             (_%pkg-path183867%_ '()))
            (let ((_%gerbil.pkg183869%_
                   (path-expand '"gerbil.pkg" _%dir183866%_)))
              (if (##file-exists? _%gerbil.pkg183869%_)
                  (let ((_%plist183871%_
                         (gx#core-library-package-plist__% _%dir183866%_ '#t)))
                    (if (null? _%plist183871%_)
                        (let ((_%pkg183874%_
                               (if (null? _%pkg-path183867%_)
                                   '#f
                                   (string-join _%pkg-path183867%_ '"/"))))
                          (values _%pre183859%_ _%ns183860%_ _%pkg183874%_))
                        (if (list? _%plist183871%_)
                            (let* ((_%root183877%_
                                    (pgetq__0 'package: _%plist183871%_))
                                   (_%pkg183881%_
                                    (let ((_%pkg-path183879%_
                                           (if _%root183877%_
                                               (cons (_%string-e183862%_
                                                      _%root183877%_)
                                                     _%pkg-path183867%_)
                                               _%pkg-path183867%_)))
                                      (if (null? _%pkg-path183879%_)
                                          '#f
                                          (string-join
                                           _%pkg-path183879%_
                                           '"/"))))
                                   (_%ns183888%_
                                    (let ((_%ns183886%_
                                           (let ((_%$e183883%_ _%ns183860%_))
                                             (if _%$e183883%_
                                                 _%$e183883%_
                                                 (pgetq__0
                                                  'namespace:
                                                  _%plist183871%_)))))
                                      (if _%ns183886%_
                                          (_%string-e183862%_ _%ns183886%_)
                                          '#f)))
                                   (_%pre183893%_
                                    (let ((_%$e183890%_ _%pre183859%_))
                                      (if _%$e183890%_
                                          _%$e183890%_
                                          (pgetq__0
                                           'prelude:
                                           _%plist183871%_)))))
                              (values _%pre183893%_
                                      _%ns183888%_
                                      _%pkg183881%_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%plist183871%_))))
                  (let ((_%dir*183897%_
                         (path-strip-trailing-directory-separator
                          _%dir183866%_)))
                    (if (or (__string-empty? _%dir*183897%_)
                            (equal? _%dir183866%_ _%dir*183897%_))
                        (values _%pre183859%_ _%ns183860%_ '#f)
                        (let ((_%xpath183902%_
                               (path-strip-directory _%dir*183897%_))
                              (_%xdir183903%_ (path-directory _%dir*183897%_)))
                          (_%lp183864%_
                           _%xdir183903%_
                           (cons _%xpath183902%_ _%pkg-path183867%_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_%path183856%_)
        (path-strip-extension (path-strip-directory _%path183856%_))))
    (define gx#core-module-path->id
      (lambda (_%path183854%_)
        (##string->symbol (gx#core-module-path->namespace _%path183854%_))))
    (define gx#core-resolve-module-path__%
      (lambda (_%stx-path183833%_ _%rel183834%_)
        (let* ((_%path183836%_ (gx#stx-e _%stx-path183833%_))
               (_%path183838%_
                (if (__string-empty? (path-extension _%path183836%_))
                    (##string-append _%path183836%_ '".ss")
                    _%path183836%_)))
          (gx#core-resolve-path__%
           _%path183838%_
           (let ((_%$e183841%_ (gx#stx-source _%stx-path183833%_)))
             (if _%$e183841%_ _%$e183841%_ _%rel183834%_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_%stx-path183847%_)
        (let ((_%rel183849%_ '#f))
          (gx#core-resolve-module-path__% _%stx-path183847%_ _%rel183849%_))))
    (define gx#core-resolve-module-path
      (lambda _g185492_
        (let ((_g185493_ (##length _g185492_)))
          (cond ((##fx= _g185493_ 1)
                 (apply gx#core-resolve-module-path__0 _g185492_))
                ((##fx= _g185493_ 2)
                 (apply gx#core-resolve-module-path__% _g185492_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g185492_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_%libpath183718%_)
        (let* ((_%spath183720%_ (symbol->string (gx#stx-e _%libpath183718%_)))
               (_%spath183722%_
                (substring
                 _%spath183720%_
                 '1
                 (##string-length _%spath183720%_)))
               (_%ext183724%_ (path-extension _%spath183722%_))
               (_%ssi183726%_
                (if (__string-empty? _%ext183724%_)
                    (##string-append _%spath183722%_ '".ssi")
                    (##string-append
                     (path-strip-extension _%spath183722%_)
                     '".ssi")))
               (_%srcs183730%_
                (if (__string-empty? _%ext183724%_)
                    (##map (lambda (_%ext183728%_)
                             (string-append _%spath183722%_ _%ext183728%_))
                           '(".ss" ".sld" ".scm"))
                    (cons _%spath183722%_ '()))))
          (let _%lp183733%_ ((_%rest183735%_ (load-path)))
            (let* ((_%rest183736183745%_ _%rest183735%_)
                   (_%E183739183749%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rest183736183745%_
                             '([dir . rest])
                             '([]))
                      '#!void)))
              (let ((_%K183741183820%_
                     (lambda (_%rest183760%_ _%dir183761%_)
                       (letrec ((_%resolve183763%_
                                 (lambda (_%ssi183776%_ _%srcs183777%_)
                                   (let ((_%compiled-path183779%_
                                          (path-expand
                                           _%ssi183776%_
                                           _%dir183761%_)))
                                     (if (##file-exists?
                                          _%compiled-path183779%_)
                                         (path-normalize
                                          _%compiled-path183779%_)
                                         (let _%lpr183781%_ ((_%rest-src183783%_
                                                              _%srcs183777%_))
                                           (let* ((_%rest-src183784183792%_
                                                   _%rest-src183783%_)
                                                  (_%else183786183800%_
                                                   (lambda ()
                                                     (_%lp183733%_
                                                      _%rest183760%_)))
                                                  (_%K183788183808%_
                                                   (lambda (_%rest-src183803%_
                                                            _%src183804%_)
                                                     (let ((_%src-path183806%_
                                                            (path-expand
                                                             _%src183804%_
                                                             _%dir183761%_)))
                                                       (if (##file-exists?
                                                            _%src-path183806%_)
                                                           (path-normalize
                                                            _%src-path183806%_)
                                                           (_%lpr183781%_
                                                            _%rest-src183803%_))))))
                                             (if (pair? _%rest-src183784183792%_)
                                                 (let ((_%hd183789183811%_
                                                        (##car _%rest-src183784183792%_))
                                                       (_%tl183790183813%_
                                                        (##cdr _%rest-src183784183792%_)))
                                                   (let* ((_%src183816%_
                                                           _%hd183789183811%_)
                                                          (_%rest-src183818%_
                                                           _%tl183790183813%_))
                                                     (_%K183788183808%_
                                                      _%rest-src183818%_
                                                      _%src183816%_)))
                                                 (_%else183786183800%_)))))))))
                         (let ((_%$e183765%_
                                (gx#core-library-package-path-prefix
                                 _%dir183761%_)))
                           (if _%$e183765%_
                               ((lambda (_%prefix183768%_)
                                  (if (string-prefix?
                                       _%prefix183768%_
                                       _%spath183722%_)
                                      (let ((_%ssi183772%_
                                             (substring
                                              _%ssi183726%_
                                              (string-length _%prefix183768%_)
                                              (##string-length _%ssi183726%_)))
                                            (_%srcs183773%_
                                             (##map (lambda (_%src183770%_)
                                                      (substring
                                                       _%src183770%_
                                                       (string-length
                                                        _%prefix183768%_)
                                                       (string-length
                                                        _%src183770%_)))
                                                    _%srcs183730%_)))
                                        (_%resolve183763%_
                                         _%ssi183772%_
                                         _%srcs183773%_))
                                      (_%lp183733%_ _%rest183760%_)))
                                _%$e183765%_)
                               (_%resolve183763%_
                                _%ssi183726%_
                                _%srcs183730%_))))))
                    (_%K183740183754%_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"cannot find library module"
                        _%libpath183718%_))))
                (let ((_%try-match183738183757%_
                       (lambda ()
                         (if (null? _%rest183736183745%_)
                             (_%K183740183754%_)
                             (_%E183739183749%_)))))
                  (if (pair? _%rest183736183745%_)
                      (let ((_%tl183743183825%_ (##cdr _%rest183736183745%_))
                            (_%hd183742183823%_ (##car _%rest183736183745%_)))
                        (let ((_%dir183828%_ _%hd183742183823%_)
                              (_%rest183830%_ _%tl183743183825%_))
                          (_%K183741183820%_ _%rest183830%_ _%dir183828%_)))
                      (_%try-match183738183757%_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_%modpath183686%_)
        (letrec ((_%resolve183688%_
                  (lambda (_%path183709%_ _%base183710%_)
                    (let ((_%$e183712%_
                           (string-rindex__0 _%base183710%_ '#\/)))
                      (if _%$e183712%_
                          ((lambda (_%idx183715%_)
                             (gx#core-resolve-library-module-path
                              (##string->symbol
                               (string-append
                                '":"
                                (substring _%base183710%_ '0 _%idx183715%_)
                                '"/"
                                _%path183709%_))))
                           _%$e183712%_)
                          (gx#core-resolve-library-module-path
                           (##string->symbol
                            (string-append '":" _%path183709%_))))))))
          (let ((_%spath183690%_ (symbol->string (gx#stx-e _%modpath183686%_)))
                (_%mod183691%_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _%mod183691%_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"cannot resolve relative module path; not in module context"
                 _%modpath183686%_))
            (let ((_%mpath183693%_
                   (symbol->string
                    (##structure-ref
                     _%mod183691%_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _%lp183695%_ ((_%spath183697%_ _%spath183690%_)
                                 (_%mpath183698%_ _%mpath183693%_))
                (if (string-prefix? '"../" _%spath183697%_)
                    (let ((_%$e183701%_
                           (string-rindex__0 _%mpath183698%_ '#\/)))
                      (if _%$e183701%_
                          ((lambda (_%idx183704%_)
                             (_%lp183695%_
                              (substring
                               _%spath183697%_
                               '3
                               (string-length _%spath183697%_))
                              (substring _%mpath183698%_ '0 _%idx183704%_)))
                           _%$e183701%_)
                          (gx#raise-syntax-error
                           '#f
                           '"cannot resolve relative module path; illegal traversal"
                           _%modpath183686%_)))
                    (if (string-prefix? '"./" _%spath183697%_)
                        (_%lp183695%_
                         (substring
                          _%spath183697%_
                          '2
                          (string-length _%spath183697%_))
                         _%mpath183698%_)
                        (_%resolve183688%_
                         _%spath183697%_
                         _%mpath183698%_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_%dir183678%_)
        (let ((_%$e183680%_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _%dir183678%_))))
          (if _%$e183680%_
              ((lambda (_%pkg183683%_)
                 (##string-append (symbol->string _%pkg183683%_) '"/"))
               _%$e183680%_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_%dir183648%_ _%exists?183649%_)
        (let ((_%$e183651%_ (__hash-get gx#__module-pkg-cache _%dir183648%_)))
          (if _%$e183651%_
              _%$e183651%_
              (let* ((_%gerbil.pkg183655%_
                      (path-expand '"gerbil.pkg" _%dir183648%_))
                     (_%plist183665%_
                      (if (or _%exists?183649%_
                              (##file-exists? _%gerbil.pkg183655%_))
                          (let ((_%e183660%_
                                 (gx#call-with-input-source-file
                                  _%gerbil.pkg183655%_
                                  read)))
                            (if (eof-object? _%e183660%_)
                                '()
                                (if (list? _%e183660%_)
                                    _%e183660%_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _%gerbil.pkg183655%_
                                     _%e183660%_))))
                          '())))
                (__hash-put!
                 gx#__module-pkg-cache
                 _%dir183648%_
                 _%plist183665%_)
                _%plist183665%_)))))
    (define gx#core-library-package-plist__0
      (lambda (_%dir183671%_)
        (let ((_%exists?183673%_ '#f))
          (gx#core-library-package-plist__% _%dir183671%_ _%exists?183673%_))))
    (define gx#core-library-package-plist
      (lambda _g185494_
        (let ((_g185495_ (##length _g185494_)))
          (cond ((##fx= _g185495_ 1)
                 (apply gx#core-library-package-plist__0 _g185494_))
                ((##fx= _g185495_ 2)
                 (apply gx#core-library-package-plist__% _g185494_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g185494_))))))
    (define gx#core-library-module-path?
      (lambda (_%stx183645%_)
        (gx#core-special-module-path? _%stx183645%_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_%stx183643%_)
        (gx#core-special-module-path? _%stx183643%_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_%stx183638%_ _%char183639%_)
        (if (gx#identifier? _%stx183638%_)
            (if (interned-symbol? (gx#stx-e _%stx183638%_))
                (let ((_%str183641%_
                       (symbol->string (gx#stx-e _%stx183638%_))))
                  (if (##fx> (##string-length _%str183641%_) '1)
                      (eq? (string-ref _%str183641%_ '0) _%char183639%_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_%stx183632%_)
        (gx#core-bound-identifier?__%
         _%stx183632%_
         (lambda (_%g183633183635%_)
           (gx#expander-binding?__% _%g183633183635%_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_%stx183626%_)
        (gx#core-bound-identifier?__%
         _%stx183626%_
         (lambda (_%g183627183629%_)
           (gx#expander-binding?__% _%g183627183629%_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_%stx183613%_)
        (letrec ((_%module-prelude?183615%_
                  (lambda (_%e183621%_)
                    (let ((_%$e183623%_
                           (##structure-instance-of?
                            _%e183621%_
                            'gx#module-context::t)))
                      (if _%$e183623%_
                          _%$e183623%_
                          (##structure-instance-of?
                           _%e183621%_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _%stx183613%_
           (lambda (_%g183616183618%_)
             (gx#expander-binding?__%
              _%g183616183618%_
              _%module-prelude?183615%_))))))
    (define gx#core-bind-import!__%
      (lambda (_%in183544%_ _%ctx183545%_ _%force-weak?183546%_)
        (let* ((_%in183547183556%_ _%in183544%_)
               (_%E183549183559%_
                (lambda ()
                  (error '"No clause matching"
                         _%in183547183556%_
                         '((module-import source key phi weak?)))
                  '#!void))
               (_%K183550183572%_
                (lambda (_%weak?183562%_
                         _%phi183563%_
                         _%key183564%_
                         _%source183565%_)
                  (gx#core-bind!__%
                   _%key183564%_
                   (let* ((_%e183567%_
                           (gx#core-resolve-module-export _%source183565%_))
                          (__obj185476
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
                      __obj185476
                      (##unchecked-structure-ref _%e183567%_ '1 '#f '#f)
                      _%key183564%_
                      _%phi183563%_
                      _%e183567%_
                      (##unchecked-structure-ref _%source183565%_ '1 '#f '#f)
                      (let ((_%$e183569%_ _%force-weak?183546%_))
                        (if _%$e183569%_ _%$e183569%_ _%weak?183562%_)))
                     __obj185476)
                   gx#core-context-rebind?
                   _%phi183563%_
                   _%ctx183545%_))))
          (if (##structure-direct-instance-of?
               _%in183547183556%_
               'gx#module-import::t)
              (let* ((_%e183551183575%_
                      (##unchecked-structure-ref
                       _%in183547183556%_
                       '1
                       '#f
                       '#f))
                     (_%source183578%_ _%e183551183575%_)
                     (_%e183552183580%_
                      (##unchecked-structure-ref
                       _%in183547183556%_
                       '2
                       '#f
                       '#f))
                     (_%key183583%_ _%e183552183580%_)
                     (_%e183553183585%_
                      (##unchecked-structure-ref
                       _%in183547183556%_
                       '3
                       '#f
                       '#f))
                     (_%phi183588%_ _%e183553183585%_)
                     (_%e183554183590%_
                      (##unchecked-structure-ref
                       _%in183547183556%_
                       '4
                       '#f
                       '#f))
                     (_%weak?183593%_ _%e183554183590%_))
                (_%K183550183572%_
                 _%weak?183593%_
                 _%phi183588%_
                 _%key183583%_
                 _%source183578%_))
              (_%E183549183559%_)))))
    (define gx#core-bind-import!__0
      (lambda (_%in183598%_)
        (let* ((_%ctx183600%_ (gx#current-expander-context))
               (_%force-weak?183602%_ '#f))
          (gx#core-bind-import!__%
           _%in183598%_
           _%ctx183600%_
           _%force-weak?183602%_))))
    (define gx#core-bind-import!__1
      (lambda (_%in183604%_ _%ctx183605%_)
        (let ((_%force-weak?183607%_ '#f))
          (gx#core-bind-import!__%
           _%in183604%_
           _%ctx183605%_
           _%force-weak?183607%_))))
    (define gx#core-bind-import!
      (lambda _g185496_
        (let ((_g185497_ (##length _g185496_)))
          (cond ((##fx= _g185497_ 1) (apply gx#core-bind-import!__0 _g185496_))
                ((##fx= _g185497_ 2) (apply gx#core-bind-import!__1 _g185496_))
                ((##fx= _g185497_ 3) (apply gx#core-bind-import!__% _g185496_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g185496_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_%in183530%_ _%ctx183531%_)
        (gx#core-bind-import!__% _%in183530%_ _%ctx183531%_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_%in183536%_)
        (let ((_%ctx183538%_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _%in183536%_ _%ctx183538%_))))
    (define gx#core-bind-weak-import!
      (lambda _g185498_
        (let ((_g185499_ (##length _g185498_)))
          (cond ((##fx= _g185499_ 1)
                 (apply gx#core-bind-weak-import!__0 _g185498_))
                ((##fx= _g185499_ 2)
                 (apply gx#core-bind-weak-import!__% _g185498_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g185498_))))))
    (define gx#core-resolve-module-export
      (lambda (_%out183423%_)
        (letrec ((_%subst183425%_
                  (lambda (_%key183470%_)
                    (let* ((_%key183471183479%_ _%key183470%_)
                           (_%else183473183487%_ (lambda () _%key183470%_))
                           (_%K183475183517%_
                            (lambda (_%mark183490%_ _%id183491%_)
                              (let* ((_%mark183492183498%_ _%mark183490%_)
                                     (_%E183494183501%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark183492183498%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K183495183509%_
                                      (lambda (_%subst183504%_)
                                        (let ((_%$e183506%_
                                               (if _%subst183504%_
                                                   (hash-get
                                                    _%subst183504%_
                                                    _%id183491%_)
                                                   '#f)))
                                          (if _%$e183506%_
                                              _%$e183506%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _%key183470%_))))))
                                (if (##structure-instance-of?
                                     _%mark183492183498%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e183496183512%_
                                            (##unchecked-structure-ref
                                             _%mark183492183498%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst183515%_ _%e183496183512%_))
                                      (_%K183495183509%_ _%subst183515%_))
                                    (_%E183494183501%_))))))
                      (if (pair? _%key183471183479%_)
                          (let ((_%hd183476183520%_
                                 (##car _%key183471183479%_))
                                (_%tl183477183522%_
                                 (##cdr _%key183471183479%_)))
                            (let* ((_%id183525%_ _%hd183476183520%_)
                                   (_%mark183527%_ _%tl183477183522%_))
                              (_%K183475183517%_ _%mark183527%_ _%id183525%_)))
                          (_%else183473183487%_))))))
          (let* ((_%out183426183436%_ _%out183423%_)
                 (_%E183428183439%_
                  (lambda ()
                    (error '"No clause matching"
                           _%out183426183436%_
                           '((module-export ctx key phi _ _)))
                    '#!void))
                 (_%K183429183446%_
                  (lambda (_%phi183442%_ _%key183443%_ _%ctx183444%_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _%ctx183444%_ _%phi183442%_)
                     (_%subst183425%_ _%key183443%_)))))
            (if (##structure-direct-instance-of?
                 _%out183426183436%_
                 'gx#module-export::t)
                (let* ((_%e183430183449%_
                        (##unchecked-structure-ref
                         _%out183426183436%_
                         '1
                         '#f
                         '#f))
                       (_%ctx183452%_ _%e183430183449%_)
                       (_%e183431183454%_
                        (##unchecked-structure-ref
                         _%out183426183436%_
                         '2
                         '#f
                         '#f))
                       (_%key183457%_ _%e183431183454%_)
                       (_%e183432183459%_
                        (##unchecked-structure-ref
                         _%out183426183436%_
                         '3
                         '#f
                         '#f))
                       (_%phi183462%_ _%e183432183459%_)
                       (_%e183433183464%_
                        (##unchecked-structure-ref
                         _%out183426183436%_
                         '4
                         '#f
                         '#f))
                       (_%e183434183467%_
                        (##unchecked-structure-ref
                         _%out183426183436%_
                         '5
                         '#f
                         '#f)))
                  (_%K183429183446%_
                   _%phi183462%_
                   _%key183457%_
                   _%ctx183452%_))
                (_%E183428183439%_))))))
    (define gx#core-module-export->import__%
      (lambda (_%out183349%_ _%rename183350%_ _%dphi183351%_)
        (let* ((_%out183352183362%_ _%out183349%_)
               (_%E183354183365%_
                (lambda ()
                  (error '"No clause matching"
                         _%out183352183362%_
                         '((module-export ctx key phi name weak?)))
                  '#!void))
               (_%K183355183377%_
                (lambda (_%weak?183368%_
                         _%name183369%_
                         _%phi183370%_
                         _%key183371%_
                         _%ctx183372%_)
                  (##structure
                   gx#module-import::t
                   _%out183349%_
                   (let ((_%$e183374%_ _%rename183350%_))
                     (if _%$e183374%_ _%$e183374%_ _%name183369%_))
                   (fx+ _%phi183370%_ _%dphi183351%_)
                   _%weak?183368%_))))
          (if (##structure-direct-instance-of?
               _%out183352183362%_
               'gx#module-export::t)
              (let* ((_%e183356183380%_
                      (##unchecked-structure-ref
                       _%out183352183362%_
                       '1
                       '#f
                       '#f))
                     (_%ctx183383%_ _%e183356183380%_)
                     (_%e183357183385%_
                      (##unchecked-structure-ref
                       _%out183352183362%_
                       '2
                       '#f
                       '#f))
                     (_%key183388%_ _%e183357183385%_)
                     (_%e183358183390%_
                      (##unchecked-structure-ref
                       _%out183352183362%_
                       '3
                       '#f
                       '#f))
                     (_%phi183393%_ _%e183358183390%_)
                     (_%e183359183395%_
                      (##unchecked-structure-ref
                       _%out183352183362%_
                       '4
                       '#f
                       '#f))
                     (_%name183398%_ _%e183359183395%_)
                     (_%e183360183400%_
                      (##unchecked-structure-ref
                       _%out183352183362%_
                       '5
                       '#f
                       '#f))
                     (_%weak?183403%_ _%e183360183400%_))
                (_%K183355183377%_
                 _%weak?183403%_
                 _%name183398%_
                 _%phi183393%_
                 _%key183388%_
                 _%ctx183383%_))
              (_%E183354183365%_)))))
    (define gx#core-module-export->import__0
      (lambda (_%out183408%_)
        (let* ((_%rename183410%_ '#f) (_%dphi183412%_ '0))
          (gx#core-module-export->import__%
           _%out183408%_
           _%rename183410%_
           _%dphi183412%_))))
    (define gx#core-module-export->import__1
      (lambda (_%out183414%_ _%rename183415%_)
        (let ((_%dphi183417%_ '0))
          (gx#core-module-export->import__%
           _%out183414%_
           _%rename183415%_
           _%dphi183417%_))))
    (define gx#core-module-export->import
      (lambda _g185500_
        (let ((_g185501_ (##length _g185500_)))
          (cond ((##fx= _g185501_ 1)
                 (apply gx#core-module-export->import__0 _g185500_))
                ((##fx= _g185501_ 2)
                 (apply gx#core-module-export->import__1 _g185500_))
                ((##fx= _g185501_ 3)
                 (apply gx#core-module-export->import__% _g185500_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g185500_))))))
    (define gx#core-expand-module%
      (lambda (_%stx183248%_)
        (letrec ((_%make-context183250%_
                  (lambda (_%id183327%_)
                    (let* ((_%super183329%_ (gx#current-expander-context))
                           (_%bind-id183331%_ (gx#stx-e _%id183327%_))
                           (_%mod-id183333%_
                            (if (##structure-instance-of?
                                 _%super183329%_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##unchecked-structure-ref
                                  _%super183329%_
                                  '1
                                  '#f
                                  '#f)
                                 '"~"
                                 _%bind-id183331%_)
                                _%bind-id183331%_))
                           (_%ns183335%_ (symbol->string _%mod-id183333%_))
                           (_%path183345%_
                            (if (##structure-instance-of?
                                 _%super183329%_
                                 'gx#module-context::t)
                                (let ((_%path183337%_
                                       (##unchecked-structure-ref
                                        _%super183329%_
                                        '7
                                        '#f
                                        '#f)))
                                  (if (or (pair? _%path183337%_)
                                          (null? _%path183337%_))
                                      (cons _%bind-id183331%_ _%path183337%_)
                                      (if (not _%path183337%_)
                                          _%bind-id183331%_
                                          (cons _%bind-id183331%_
                                                (cons _%path183337%_ '())))))
                                _%bind-id183331%_))
                           (__obj185477
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
                       __obj185477
                       _%mod-id183333%_
                       _%super183329%_
                       _%ns183335%_
                       _%path183345%_)
                      __obj185477)))
                 (_%valid-module-id?183251%_
                  (lambda (_%id183302%_)
                    (let* ((_%str183304%_ (symbol->string _%id183302%_))
                           (_%len183306%_ (##string-length _%str183304%_)))
                      (if (##fx>= _%len183306%_ '1)
                          (let _%loop183309%_ ((_%index183311%_
                                                (##fx- (##string-length
                                                        _%str183304%_)
                                                       '1)))
                            (if (##fx>= _%index183311%_ '0)
                                (let ((_%c183313%_
                                       (string-ref
                                        _%str183304%_
                                        _%index183311%_)))
                                  (if (or (and (##char>=? _%c183313%_ '#\a)
                                               (##char<=? _%c183313%_ '#\z))
                                          (and (##char>=? _%c183313%_ '#\A)
                                               (##char<=? _%c183313%_ '#\Z))
                                          (and (##char>=? _%c183313%_ '#\0)
                                               (##char<=? _%c183313%_ '#\9))
                                          (##char=? _%c183313%_ '#\_)
                                          (##char=? _%c183313%_ '#\-))
                                      (_%loop183309%_
                                       (##fx- _%index183311%_ '1))
                                      '#f))
                                '#t))
                          '#f)))))
          (let* ((_%e183252183262%_ _%stx183248%_)
                 (_%E183254183266%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e183252183262%_)))
                 (_%E183253183298%_
                  (lambda ()
                    (if (gx#stx-pair? _%e183252183262%_)
                        (let ((_%e183255183270%_
                               (gx#syntax-e _%e183252183262%_)))
                          (let ((_%hd183256183273%_ (##car _%e183255183270%_))
                                (_%tl183257183275%_ (##cdr _%e183255183270%_)))
                            (if (gx#stx-pair? _%tl183257183275%_)
                                (let ((_%e183258183278%_
                                       (gx#syntax-e _%tl183257183275%_)))
                                  (let ((_%hd183259183281%_
                                         (##car _%e183258183278%_))
                                        (_%tl183260183283%_
                                         (##cdr _%e183258183278%_)))
                                    (let* ((_%id183286%_ _%hd183259183281%_)
                                           (_%body183288%_ _%tl183260183283%_))
                                      (if (and (gx#identifier? _%id183286%_)
                                               (gx#stx-list? _%body183288%_))
                                          (if (_%valid-module-id?183251%_
                                               (gx#stx-e
                                                (gx#datum->syntax__0 '#f 'id)))
                                              (let* ((_%ctx183290%_
                                                      (_%make-context183250%_
                                                       _%id183286%_))
                                                     (_%body183292%_
                                                      (gx#core-expand-module-begin
                                                       _%body183288%_
                                                       _%ctx183290%_))
                                                     (_%body183294%_
                                                      (gx#core-quote-syntax__1
                                                       (gx#core-cons
                                                        '%#begin
                                                        _%body183292%_)
                                                       (gx#stx-source
                                                        _%stx183248%_))))
                                                (##unchecked-structure-set!
                                                 _%ctx183290%_
                                                 (__make-atomic-promise
                                                  (lambda ()
                                                    (gx#eval-syntax*
                                                     _%body183294%_)))
                                                 '10
                                                 '#f
                                                 '#f)
                                                (##unchecked-structure-set!
                                                 _%ctx183290%_
                                                 _%body183294%_
                                                 '11
                                                 '#f
                                                 '#f)
                                                (gx#core-bind-syntax!__0
                                                 _%id183286%_
                                                 _%ctx183290%_)
                                                (gx#core-quote-syntax__1
                                                 (gx#core-list
                                                  '%#module
                                                  (gx#core-quote-syntax__0
                                                   _%id183286%_)
                                                  _%body183294%_)
                                                 (gx#stx-source
                                                  _%stx183248%_)))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"invalid module id; allowed characters are A-Z,a-z,0-9,_,-"
                                               _%stx183248%_
                                               (gx#datum->syntax__0 '#f 'id)))
                                          (_%E183254183266%_)))))
                                (_%E183254183266%_))))
                        (_%E183254183266%_)))))
            (_%E183253183298%_)))))
    (define gx#core-expand-module-begin
      (lambda (_%body183213%_ _%ctx183214%_)
        (call-with-parameters__1
         (lambda ()
           (call-with-parameters__1
            (lambda ()
              (gx#core-bind-feature!__1 'gerbil-module '#t)
              (let* ((_%stx183218%_
                      (gx#core-expand-head
                       (cons '%%begin-module _%body183213%_)))
                     (_%e183219183226%_ _%stx183218%_)
                     (_%E183221183230%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module body expansion"
                         _%stx183218%_)))
                     (_%E183220183244%_
                      (lambda ()
                        (if (gx#stx-pair? _%e183219183226%_)
                            (let ((_%e183222183234%_
                                   (gx#syntax-e _%e183219183226%_)))
                              (let ((_%hd183223183237%_
                                     (##car _%e183222183234%_))
                                    (_%tl183224183239%_
                                     (##cdr _%e183222183234%_)))
                                (if (and (gx#identifier? _%hd183223183237%_)
                                         (gx#core-identifier=?
                                          _%hd183223183237%_
                                          '%#begin-module))
                                    (let ((_%body183242%_ _%tl183224183239%_))
                                      (if (gx#sealed-syntax? _%stx183218%_)
                                          _%body183242%_
                                          (gx#core-expand-module-body
                                           _%body183242%_)))
                                    (_%E183221183230%_))))
                            (_%E183221183230%_)))))
                (_%E183220183244%_)))
            gx#current-expander-phi
            '0))
         gx#current-expander-context
         _%ctx183214%_)))
    (define gx#core-expand-module-body
      (lambda (_%body183009%_)
        (letrec ((_%expand-special183011%_
                  (lambda (_%hd183140%_ _%K183141%_ _%rest183142%_ _%r183143%_)
                    (let* ((_%e183144183161%_ _%hd183140%_)
                           (_%E183156183165%_
                            (lambda ()
                              (_%K183141%_
                               _%rest183142%_
                               (cons (gx#core-expand-top _%hd183140%_)
                                     _%r183143%_))))
                           (_%E183146183177%_
                            (lambda ()
                              (if (gx#stx-pair? _%e183144183161%_)
                                  (let ((_%e183157183169%_
                                         (gx#syntax-e _%e183144183161%_)))
                                    (let ((_%hd183158183172%_
                                           (##car _%e183157183169%_))
                                          (_%tl183159183174%_
                                           (##cdr _%e183157183169%_)))
                                      (if (and (gx#identifier?
                                                _%hd183158183172%_)
                                               (gx#core-identifier=?
                                                _%hd183158183172%_
                                                '%#export))
                                          (_%K183141%_
                                           _%rest183142%_
                                           (cons _%hd183140%_ _%r183143%_))
                                          (_%E183156183165%_))))
                                  (_%E183156183165%_))))
                           (_%E183145183209%_
                            (lambda ()
                              (if (gx#stx-pair? _%e183144183161%_)
                                  (let ((_%e183147183181%_
                                         (gx#syntax-e _%e183144183161%_)))
                                    (let ((_%hd183148183184%_
                                           (##car _%e183147183181%_))
                                          (_%tl183149183186%_
                                           (##cdr _%e183147183181%_)))
                                      (if (and (gx#identifier?
                                                _%hd183148183184%_)
                                               (gx#core-identifier=?
                                                _%hd183148183184%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl183149183186%_)
                                              (let ((_%e183150183189%_
                                                     (gx#syntax-e
                                                      _%tl183149183186%_)))
                                                (let ((_%hd183151183192%_
                                                       (##car _%e183150183189%_))
                                                      (_%tl183152183194%_
                                                       (##cdr _%e183150183189%_)))
                                                  (let ((_%hd-bind183197%_
                                                         _%hd183151183192%_))
                                                    (if (gx#stx-pair?
                                                         _%tl183152183194%_)
                                                        (let ((_%e183153183199%_
                                                               (gx#syntax-e
                                                                _%tl183152183194%_)))
                                                          (let ((_%hd183154183202%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e183153183199%_))
                        (_%tl183155183204%_ (##cdr _%e183153183199%_)))
                    (let ((_%expr183207%_ _%hd183154183202%_))
                      (if (gx#stx-null? _%tl183155183204%_)
                          (if (gx#core-bind-values? _%hd-bind183197%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind183197%_)
                                (_%K183141%_
                                 _%rest183142%_
                                 (cons _%hd183140%_ _%r183143%_)))
                              (_%E183146183177%_))
                          (_%E183146183177%_)))))
                (_%E183146183177%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E183146183177%_))
                                          (_%E183146183177%_))))
                                  (_%E183146183177%_)))))
                      (_%E183145183209%_))))
                 (_%expand-body183012%_
                  (lambda (_%rbody183014%_)
                    (let _%lp183016%_ ((_%rest183018%_ _%rbody183014%_)
                                       (_%body183019%_ '()))
                      (let* ((_%rest183020183028%_ _%rest183018%_)
                             (_%else183022183036%_ (lambda () _%body183019%_))
                             (_%K183024183128%_
                              (lambda (_%rest183039%_ _%hd183040%_)
                                (let* ((_%e183041183062%_ _%hd183040%_)
                                       (_%E183057183066%_
                                        (lambda ()
                                          (_%lp183016%_
                                           _%rest183039%_
                                           (cons (gx#core-expand-expression
                                                  _%hd183040%_)
                                                 _%body183019%_))))
                                       (_%E183053183080%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e183041183062%_)
                                              (let ((_%e183058183070%_
                                                     (gx#syntax-e
                                                      _%e183041183062%_)))
                                                (let ((_%hd183059183073%_
                                                       (##car _%e183058183070%_))
                                                      (_%tl183060183075%_
                                                       (##cdr _%e183058183070%_)))
                                                  (let ((_%form183078%_
                                                         _%hd183059183073%_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _%form183078%_
                                                         gx#special-form-binding?)
                                                        (_%lp183016%_
                                                         _%rest183039%_
                                                         (cons _%hd183040%_
                                                               _%body183019%_))
                                                        (_%E183057183066%_)))))
                                              (_%E183057183066%_))))
                                       (_%E183043183092%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e183041183062%_)
                                              (let ((_%e183054183084%_
                                                     (gx#syntax-e
                                                      _%e183041183062%_)))
                                                (let ((_%hd183055183087%_
                                                       (##car _%e183054183084%_))
                                                      (_%tl183056183089%_
                                                       (##cdr _%e183054183084%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd183055183087%_)
                                                           (gx#core-identifier=?
                                                            _%hd183055183087%_
                                                            '%#export))
                                                      (_%lp183016%_
                                                       _%rest183039%_
                                                       (cons (gx#core-expand-export%__0
                                                              _%hd183040%_)
                                                             _%body183019%_))
                                                      (_%E183053183080%_))))
                                              (_%E183053183080%_))))
                                       (_%E183042183124%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e183041183062%_)
                                              (let ((_%e183044183096%_
                                                     (gx#syntax-e
                                                      _%e183041183062%_)))
                                                (let ((_%hd183045183099%_
                                                       (##car _%e183044183096%_))
                                                      (_%tl183046183101%_
                                                       (##cdr _%e183044183096%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd183045183099%_)
                                                           (gx#core-identifier=?
                                                            _%hd183045183099%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl183046183101%_)
                                                          (let ((_%e183047183104%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl183046183101%_)))
                    (let ((_%hd183048183107%_ (##car _%e183047183104%_))
                          (_%tl183049183109%_ (##cdr _%e183047183104%_)))
                      (let ((_%hd-bind183112%_ _%hd183048183107%_))
                        (if (gx#stx-pair? _%tl183049183109%_)
                            (let ((_%e183050183114%_
                                   (gx#syntax-e _%tl183049183109%_)))
                              (let ((_%hd183051183117%_
                                     (##car _%e183050183114%_))
                                    (_%tl183052183119%_
                                     (##cdr _%e183050183114%_)))
                                (let ((_%expr183122%_ _%hd183051183117%_))
                                  (if (gx#stx-null? _%tl183052183119%_)
                                      (_%lp183016%_
                                       _%rest183039%_
                                       (cons (gx#core-quote-syntax__1
                                              (gx#core-list
                                               '%#define-values
                                               (gx#core-quote-bind-values
                                                _%hd-bind183112%_)
                                               (gx#core-expand-expression
                                                _%expr183122%_))
                                              (gx#stx-source _%hd183040%_))
                                             _%body183019%_))
                                      (_%E183043183092%_)))))
                            (_%E183043183092%_)))))
                  (_%E183043183092%_))
              (_%E183043183092%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E183043183092%_)))))
                                  (_%E183042183124%_)))))
                        (if (pair? _%rest183020183028%_)
                            (let ((_%hd183025183131%_
                                   (##car _%rest183020183028%_))
                                  (_%tl183026183133%_
                                   (##cdr _%rest183020183028%_)))
                              (let* ((_%hd183136%_ _%hd183025183131%_)
                                     (_%rest183138%_ _%tl183026183133%_))
                                (_%K183024183128%_
                                 _%rest183138%_
                                 _%hd183136%_)))
                            (_%else183022183036%_)))))))
          (_%expand-body183012%_
           (gx#core-expand-block__%
            (cons '%#begin-module _%body183009%_)
            _%expand-special183011%_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_%stx182850%_
               _%expanded?182851%_
               _%method182852%_
               _%current-phi182853%_
               _%expand1182854%_)
        (letrec ((_%K182856%_
                  (lambda (_%rest182976%_ _%r182977%_)
                    (let* ((_%e182978182985%_ _%rest182976%_)
                           (_%E182980182989%_ (lambda () _%r182977%_))
                           (_%E182979183005%_
                            (lambda ()
                              (if (gx#stx-pair? _%e182978182985%_)
                                  (let ((_%e182981182993%_
                                         (gx#syntax-e _%e182978182985%_)))
                                    (let ((_%hd182982182996%_
                                           (##car _%e182981182993%_))
                                          (_%tl182983182998%_
                                           (##cdr _%e182981182993%_)))
                                      (let* ((_%hd183001%_ _%hd182982182996%_)
                                             (_%rest183003%_
                                              _%tl182983182998%_))
                                        (_%step182857%_
                                         _%hd183001%_
                                         _%rest183003%_
                                         _%r182977%_))))
                                  (_%E182980182989%_)))))
                      (_%E182979183005%_))))
                 (_%step182857%_
                  (lambda (_%hd182890%_ _%rest182891%_ _%r182892%_)
                    (let* ((_%e182893182911%_ _%hd182890%_)
                           (_%E182906182915%_
                            (lambda ()
                              (if (_%expanded?182851%_ (gx#stx-e _%hd182890%_))
                                  (_%K182856%_
                                   _%rest182891%_
                                   (cons (gx#stx-e _%hd182890%_) _%r182892%_))
                                  (_%expand1182854%_
                                   _%hd182890%_
                                   _%K182856%_
                                   _%rest182891%_
                                   _%r182892%_))))
                           (_%E182902182931%_
                            (lambda ()
                              (if (gx#stx-pair? _%e182893182911%_)
                                  (let ((_%e182907182919%_
                                         (gx#syntax-e _%e182893182911%_)))
                                    (let ((_%hd182908182922%_
                                           (##car _%e182907182919%_))
                                          (_%tl182909182924%_
                                           (##cdr _%e182907182919%_)))
                                      (let* ((_%macro182927%_
                                              _%hd182908182922%_)
                                             (_%body182929%_
                                              _%tl182909182924%_))
                                        (if (gx#core-bound-identifier?__%
                                             _%macro182927%_
                                             gx#syntax-binding?)
                                            (_%K182856%_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _%macro182927%_)
                                                    _%hd182890%_
                                                    _%method182852%_)
                                                   _%rest182891%_)
                                             _%r182892%_)
                                            (_%E182906182915%_)))))
                                  (_%E182906182915%_))))
                           (_%E182895182945%_
                            (lambda ()
                              (if (gx#stx-pair? _%e182893182911%_)
                                  (let ((_%e182903182935%_
                                         (gx#syntax-e _%e182893182911%_)))
                                    (let ((_%hd182904182938%_
                                           (##car _%e182903182935%_))
                                          (_%tl182905182940%_
                                           (##cdr _%e182903182935%_)))
                                      (if (eq? (gx#stx-e _%hd182904182938%_)
                                               'begin:)
                                          (let ((_%body182943%_
                                                 _%tl182905182940%_))
                                            (_%K182856%_
                                             (gx#stx-foldr
                                              cons
                                              _%rest182891%_
                                              _%body182943%_)
                                             _%r182892%_))
                                          (_%E182902182931%_))))
                                  (_%E182902182931%_))))
                           (_%E182894182972%_
                            (lambda ()
                              (if (gx#stx-pair? _%e182893182911%_)
                                  (let ((_%e182896182949%_
                                         (gx#syntax-e _%e182893182911%_)))
                                    (let ((_%hd182897182952%_
                                           (##car _%e182896182949%_))
                                          (_%tl182898182954%_
                                           (##cdr _%e182896182949%_)))
                                      (if (eq? (gx#stx-e _%hd182897182952%_)
                                               'phi:)
                                          (if (gx#stx-pair? _%tl182898182954%_)
                                              (let ((_%e182899182957%_
                                                     (gx#syntax-e
                                                      _%tl182898182954%_)))
                                                (let ((_%hd182900182960%_
                                                       (##car _%e182899182957%_))
                                                      (_%tl182901182962%_
                                                       (##cdr _%e182899182957%_)))
                                                  (let* ((_%dphi182965%_
                                                          _%hd182900182960%_)
                                                         (_%body182967%_
                                                          _%tl182901182962%_))
                                                    (if (gx#stx-fixnum?
                                                         _%dphi182965%_)
                                                        (let ((_%rbody182970%_
                                                               (call-with-parameters__1
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%K182856%_ _%body182967%_ '()))
                        _%current-phi182853%_
                        (fx+ (gx#stx-e _%dphi182965%_)
                             (_%current-phi182853%_)))))
                  (_%K182856%_
                   _%rest182891%_
                   (foldr__0 cons _%r182892%_ _%rbody182970%_)))
                (_%E182895182945%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E182895182945%_))
                                          (_%E182895182945%_))))
                                  (_%E182895182945%_)))))
                      (_%E182894182972%_)))))
          (let* ((_%e182858182865%_ _%stx182850%_)
                 (_%E182860182869%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e182858182865%_)))
                 (_%E182859182886%_
                  (lambda ()
                    (if (gx#stx-pair? _%e182858182865%_)
                        (let ((_%e182861182873%_
                               (gx#syntax-e _%e182858182865%_)))
                          (let ((_%hd182862182876%_ (##car _%e182861182873%_))
                                (_%tl182863182878%_ (##cdr _%e182861182873%_)))
                            (let ((_%body182881%_ _%tl182863182878%_))
                              (if (_%current-phi182853%_)
                                  (_%K182856%_ _%body182881%_ '())
                                  (call-with-parameters__1
                                   (lambda () (_%K182856%_ _%body182881%_ '()))
                                   _%current-phi182853%_
                                   (gx#current-expander-phi))))))
                        (_%E182860182869%_)))))
            (_%E182859182886%_)))))
    (define gx#core-expand-import%__%
      (lambda (_%stx182504%_ _%internal-expand?182505%_)
        (letrec ((_%expand1182507%_
                  (lambda (_%hd182822%_ _%K182823%_ _%rest182824%_ _%r182825%_)
                    (if (gx#core-bound-module? _%hd182822%_)
                        (_%import1182508%_
                         (gx#syntax-local-e__0 _%hd182822%_)
                         _%K182823%_
                         _%rest182824%_
                         _%r182825%_)
                        (if (gx#core-library-module-path? _%hd182822%_)
                            (_%import1182508%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%hd182822%_))
                             _%K182823%_
                             _%rest182824%_
                             _%r182825%_)
                            (if (gx#core-library-relative-module-path?
                                 _%hd182822%_)
                                (_%import1182508%_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _%hd182822%_))
                                 _%K182823%_
                                 _%rest182824%_
                                 _%r182825%_)
                                (let ((_%e182831%_ (gx#stx-e _%hd182822%_)))
                                  (if (pair? _%e182831%_)
                                      (let ((_%$e182834%_
                                             (gx#stx-e (##car _%e182831%_))))
                                        (if (eq? 'spec: _%$e182834%_)
                                            (_%import-spec182511%_
                                             _%hd182822%_
                                             _%K182823%_
                                             _%rest182824%_
                                             _%r182825%_)
                                            (if (eq? 'in: _%$e182834%_)
                                                (_%import-submodule182509%_
                                                 _%hd182822%_
                                                 _%K182823%_
                                                 _%rest182824%_
                                                 _%r182825%_)
                                                (if (eq? 'runtime:
                                                         _%$e182834%_)
                                                    (_%import-runtime182510%_
                                                     _%hd182822%_
                                                     _%K182823%_
                                                     _%rest182824%_
                                                     _%r182825%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _%stx182504%_
                                                     _%hd182822%_)))))
                                      (if (string? _%e182831%_)
                                          (_%import1182508%_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _%hd182822%_
                                             (gx#stx-source _%stx182504%_)))
                                           _%K182823%_
                                           _%rest182824%_
                                           _%r182825%_)
                                          (if (##structure-instance-of?
                                               _%e182831%_
                                               'gx#module-context::t)
                                              (_%K182823%_
                                               _%rest182824%_
                                               (cons _%e182831%_ _%r182825%_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _%stx182504%_
                                               _%hd182822%_))))))))))
                 (_%import1182508%_
                  (lambda (_%ctx182811%_
                           _%K182812%_
                           _%rest182813%_
                           _%r182814%_)
                    (let ((_%dphi182816%_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_%K182812%_
                       _%rest182813%_
                       (cons (##structure
                              gx#import-set::t
                              _%ctx182811%_
                              _%dphi182816%_
                              (map (lambda (_%g182817182819%_)
                                     (gx#core-module-export->import__%
                                      _%g182817182819%_
                                      '#f
                                      _%dphi182816%_))
                                   (##unchecked-structure-ref
                                    _%ctx182811%_
                                    '9
                                    '#f
                                    '#f)))
                             _%r182814%_)))))
                 (_%import-submodule182509%_
                  (lambda (_%hd182778%_ _%K182779%_ _%rest182780%_ _%r182781%_)
                    (let* ((_%e182782182789%_ _%hd182778%_)
                           (_%E182784182793%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e182782182789%_)))
                           (_%E182783182807%_
                            (lambda ()
                              (if (gx#stx-pair? _%e182782182789%_)
                                  (let ((_%e182785182797%_
                                         (gx#syntax-e _%e182782182789%_)))
                                    (let ((_%hd182786182800%_
                                           (##car _%e182785182797%_))
                                          (_%tl182787182802%_
                                           (##cdr _%e182785182797%_)))
                                      (let ((_%spath182805%_
                                             _%tl182787182802%_))
                                        (_%import1182508%_
                                         (_%import-spec-source182512%_
                                          _%spath182805%_)
                                         _%K182779%_
                                         _%rest182780%_
                                         _%r182781%_))))
                                  (_%E182784182793%_)))))
                      (_%E182783182807%_))))
                 (_%import-runtime182510%_
                  (lambda (_%hd182745%_ _%K182746%_ _%rest182747%_ _%r182748%_)
                    (let* ((_%e182749182756%_ _%hd182745%_)
                           (_%E182751182760%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e182749182756%_)))
                           (_%E182750182774%_
                            (lambda ()
                              (if (gx#stx-pair? _%e182749182756%_)
                                  (let ((_%e182752182764%_
                                         (gx#syntax-e _%e182749182756%_)))
                                    (let ((_%hd182753182767%_
                                           (##car _%e182752182764%_))
                                          (_%tl182754182769%_
                                           (##cdr _%e182752182764%_)))
                                      (let ((_%spath182772%_
                                             _%tl182754182769%_))
                                        (_%K182746%_
                                         _%rest182747%_
                                         (cons (_%import-spec-source182512%_
                                                _%spath182772%_)
                                               _%r182748%_)))))
                                  (_%E182751182760%_)))))
                      (_%E182750182774%_))))
                 (_%import-spec182511%_
                  (lambda (_%hd182583%_ _%K182584%_ _%rest182585%_ _%r182586%_)
                    (let* ((_%e182587182604%_ _%hd182583%_)
                           (_%E182596182608%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e182587182604%_)))
                           (_%E182589182719%_
                            (lambda ()
                              (if (gx#stx-pair? _%e182587182604%_)
                                  (let ((_%e182597182612%_
                                         (gx#syntax-e _%e182587182604%_)))
                                    (let ((_%hd182598182615%_
                                           (##car _%e182597182612%_))
                                          (_%tl182599182617%_
                                           (##cdr _%e182597182612%_)))
                                      (if (gx#stx-pair? _%tl182599182617%_)
                                          (let ((_%e182600182620%_
                                                 (gx#syntax-e
                                                  _%tl182599182617%_)))
                                            (let ((_%hd182601182623%_
                                                   (##car _%e182600182620%_))
                                                  (_%tl182602182625%_
                                                   (##cdr _%e182600182620%_)))
                                              (let* ((_%path182628%_
                                                      _%hd182601182623%_)
                                                     (_%specs182630%_
                                                      _%tl182602182625%_))
                                                (let ((_%src-ctx182632%_
                                                       (_%import-spec-source182512%_
                                                        _%path182628%_))
                                                      (_%exports182633%_
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
                                                      (_%specs182634%_
                                                       (gx#syntax->list
                                                        _%specs182630%_)))
                                                  (for-each
                                                   (lambda (_%out182636%_)
                                                     (__hash-put!
                                                      _%exports182633%_
                                                      (cons (##unchecked-structure-ref
                                                             _%out182636%_
                                                             '3
                                                             '#f
                                                             '#f)
                                                            (##unchecked-structure-ref
                                                             _%out182636%_
                                                             '4
                                                             '#f
                                                             '#f))
                                                      _%out182636%_))
                                                   (##unchecked-structure-ref
                                                    _%src-ctx182632%_
                                                    '9
                                                    '#f
                                                    '#f))
                                                  (_%K182584%_
                                                   _%rest182585%_
                                                   (foldl__0
                                                    (lambda (_%spec182638%_
                                                             _%r182639%_)
                                                      (let* ((_%e182640182656%_
                                                              _%spec182638%_)
                                                             (_%E182642182660%_
                                                              (lambda ()
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid syntax-case clause"
                         _%e182640182656%_)))
                     (_%E182641182715%_
                      (lambda ()
                        (if (gx#stx-pair? _%e182640182656%_)
                            (let ((_%e182643182664%_
                                   (gx#syntax-e _%e182640182656%_)))
                              (let ((_%hd182644182667%_
                                     (##car _%e182643182664%_))
                                    (_%tl182645182669%_
                                     (##cdr _%e182643182664%_)))
                                (let ((_%phi182672%_ _%hd182644182667%_))
                                  (if (gx#stx-pair? _%tl182645182669%_)
                                      (let ((_%e182646182674%_
                                             (gx#syntax-e _%tl182645182669%_)))
                                        (let ((_%hd182647182677%_
                                               (##car _%e182646182674%_))
                                              (_%tl182648182679%_
                                               (##cdr _%e182646182674%_)))
                                          (let ((_%name182682%_
                                                 _%hd182647182677%_))
                                            (if (gx#stx-pair?
                                                 _%tl182648182679%_)
                                                (let ((_%e182649182684%_
                                                       (gx#syntax-e
                                                        _%tl182648182679%_)))
                                                  (let ((_%hd182650182687%_
                                                         (##car _%e182649182684%_))
                                                        (_%tl182651182689%_
                                                         (##cdr _%e182649182684%_)))
                                                    (let ((_%src-phi182692%_
                                                           _%hd182650182687%_))
                                                      (if (gx#stx-pair?
                                                           _%tl182651182689%_)
                                                          (let ((_%e182652182694%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl182651182689%_)))
                    (let ((_%hd182653182697%_ (##car _%e182652182694%_))
                          (_%tl182654182699%_ (##cdr _%e182652182694%_)))
                      (let ((_%src-name182702%_ _%hd182653182697%_))
                        (if (gx#stx-null? _%tl182654182699%_)
                            (if (and (gx#stx-fixnum? _%src-phi182692%_)
                                     (gx#identifier? _%src-name182702%_)
                                     (gx#stx-fixnum? _%phi182672%_)
                                     (gx#identifier? _%name182682%_))
                                (let ((_%src-phi182704%_
                                       (gx#stx-e _%src-phi182692%_))
                                      (_%src-name182705%_
                                       (gx#core-identifier-key
                                        _%src-name182702%_))
                                      (_%phi182706%_ (gx#stx-e _%phi182672%_))
                                      (_%name182707%_
                                       (gx#core-identifier-key
                                        _%name182682%_)))
                                  (let ((_%$e182709%_
                                         (__hash-get
                                          _%exports182633%_
                                          (cons _%src-phi182704%_
                                                _%src-name182705%_))))
                                    (if _%$e182709%_
                                        ((lambda (_%out182712%_)
                                           (cons (gx#core-module-export->import__%
                                                  _%out182712%_
                                                  _%name182707%_
                                                  (fx- _%phi182706%_
                                                       _%src-phi182704%_))
                                                 _%r182639%_))
                                         _%$e182709%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; no matching export"
                                         _%stx182504%_
                                         _%hd182583%_))))
                                (_%E182642182660%_))
                            (_%E182642182660%_)))))
                  (_%E182642182660%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E182642182660%_)))))
                                      (_%E182642182660%_)))))
                            (_%E182642182660%_)))))
                (_%E182641182715%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r182586%_
                                                    _%specs182634%_))))))
                                          (_%E182596182608%_))))
                                  (_%E182596182608%_))))
                           (_%E182588182741%_
                            (lambda ()
                              (if (gx#stx-pair? _%e182587182604%_)
                                  (let ((_%e182590182723%_
                                         (gx#syntax-e _%e182587182604%_)))
                                    (let ((_%hd182591182726%_
                                           (##car _%e182590182723%_))
                                          (_%tl182592182728%_
                                           (##cdr _%e182590182723%_)))
                                      (if (gx#stx-pair? _%tl182592182728%_)
                                          (let ((_%e182593182731%_
                                                 (gx#syntax-e
                                                  _%tl182592182728%_)))
                                            (let ((_%hd182594182734%_
                                                   (##car _%e182593182731%_))
                                                  (_%tl182595182736%_
                                                   (##cdr _%e182593182731%_)))
                                              (let ((_%path182739%_
                                                     _%hd182594182734%_))
                                                (if (gx#stx-null?
                                                     _%tl182595182736%_)
                                                    (_%K182584%_
                                                     _%rest182585%_
                                                     (cons (_%import-spec-source182512%_
                                                            _%path182739%_)
                                                           _%r182586%_))
                                                    (_%E182589182719%_)))))
                                          (_%E182589182719%_))))
                                  (_%E182589182719%_)))))
                      (_%E182588182741%_))))
                 (_%import-spec-source182512%_
                  (lambda (_%spath182581%_)
                    (gx#core-import-nested-module
                     _%spath182581%_
                     _%stx182504%_)))
                 (_%import!182513%_
                  (lambda (_%rbody182526%_)
                    (letrec* ((_%current-ctx182528%_
                               (gx#current-expander-context))
                              (_%deps182529%_ (make-hash-table-eq))
                              (_%bind!182530%_
                               (lambda (_%hd182579%_)
                                 (gx#core-bind-import!__1
                                  _%hd182579%_
                                  _%current-ctx182528%_))))
                      (let _%lp182532%_ ((_%rest182534%_ _%rbody182526%_)
                                         (_%body182535%_ '()))
                        (let* ((_%rest182536182544%_ _%rest182534%_)
                               (_%else182538182555%_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _%current-ctx182528%_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _%current-ctx182528%_
                                       (foldl__0
                                        cons
                                        (##unchecked-structure-ref
                                         _%current-ctx182528%_
                                         '8
                                         '#f
                                         '#f)
                                        _%body182535%_)
                                       '8
                                       '#f
                                       '#f)
                                      '#!void)
                                  (__hash-for-each
                                   (lambda (_%ctx182552%_ _%_182553%_)
                                     (gx#eval-module _%ctx182552%_))
                                   _%deps182529%_)
                                  _%body182535%_))
                               (_%K182540182567%_
                                (lambda (_%rest182558%_ _%hd182559%_)
                                  (if (##structure-direct-instance-of?
                                       _%hd182559%_
                                       'gx#module-import::t)
                                      (let ()
                                        (_%bind!182530%_ _%hd182559%_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _%hd182559%_
                                                   '3
                                                   '#f
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _%hd182559%_
                                                            '1
                                                            '#f
                                                            '#f)
                                                           '3
                                                           '#f
                                                           '#f)))
                                            (__hash-put!
                                             _%deps182529%_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _%hd182559%_
                                               '1
                                               '#f
                                               '#f)
                                              '1
                                              '#f
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _%hd182559%_
                                           'gx#import-set::t)
                                          (let ()
                                            (for-each
                                             _%bind!182530%_
                                             (##unchecked-structure-ref
                                              _%hd182559%_
                                              '3
                                              '#f
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _%hd182559%_
                                                  '2
                                                  '#f
                                                  '#f))
                                                (__hash-put!
                                                 _%deps182529%_
                                                 (##unchecked-structure-ref
                                                  _%hd182559%_
                                                  '1
                                                  '#f
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_%$e182563%_
                                                 (##structure-instance-of?
                                                  _%hd182559%_
                                                  'gx#module-context::t)))
                                            (if _%$e182563%_
                                                _%$e182563%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _%stx182504%_
                                                 _%hd182559%_)))))
                                  (_%lp182532%_
                                   _%rest182558%_
                                   (cons _%hd182559%_ _%body182535%_)))))
                          (if (pair? _%rest182536182544%_)
                              (let ((_%hd182541182570%_
                                     (##car _%rest182536182544%_))
                                    (_%tl182542182572%_
                                     (##cdr _%rest182536182544%_)))
                                (let* ((_%hd182575%_ _%hd182541182570%_)
                                       (_%rest182577%_ _%tl182542182572%_))
                                  (_%K182540182567%_
                                   _%rest182577%_
                                   _%hd182575%_)))
                              (_%else182538182555%_)))))))
                 (_%expanded-import?182514%_
                  (lambda (_%e182518%_)
                    (let ((_%$e182520%_
                           (##structure-direct-instance-of?
                            _%e182518%_
                            'gx#import-set::t)))
                      (if _%$e182520%_
                          _%$e182520%_
                          (let ((_%$e182523%_
                                 (##structure-direct-instance-of?
                                  _%e182518%_
                                  'gx#module-import::t)))
                            (if _%$e182523%_
                                _%$e182523%_
                                (##structure-instance-of?
                                 _%e182518%_
                                 'gx#module-context::t))))))))
          (let ((_%rbody182516%_
                 (gx#core-expand-import/export
                  _%stx182504%_
                  _%expanded-import?182514%_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _%expand1182507%_)))
            (if _%internal-expand?182505%_
                (reverse _%rbody182516%_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_%import!182513%_ _%rbody182516%_))
                 (gx#stx-source _%stx182504%_)))))))
    (define gx#core-expand-import%__0
      (lambda (_%stx182843%_)
        (let ((_%internal-expand?182845%_ '#f))
          (gx#core-expand-import%__%
           _%stx182843%_
           _%internal-expand?182845%_))))
    (define gx#core-expand-import%
      (lambda _g185502_
        (let ((_g185503_ (##length _g185502_)))
          (cond ((##fx= _g185503_ 1)
                 (apply gx#core-expand-import%__0 _g185502_))
                ((##fx= _g185503_ 2)
                 (apply gx#core-expand-import%__% _g185502_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g185502_))))))
    (define gx#core-import-nested-module
      (lambda (_%spath182431%_ _%where182432%_)
        (let* ((_%e182433182440%_ _%spath182431%_)
               (_%E182435182444%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e182433182440%_)))
               (_%E182434182499%_
                (lambda ()
                  (if (gx#stx-pair? _%e182433182440%_)
                      (let ((_%e182436182448%_
                             (gx#syntax-e _%e182433182440%_)))
                        (let ((_%hd182437182451%_ (##car _%e182436182448%_))
                              (_%tl182438182453%_ (##cdr _%e182436182448%_)))
                          (let* ((_%origin182456%_ _%hd182437182451%_)
                                 (_%sub182458%_ _%tl182438182453%_)
                                 (_%origin-ctx182460%_
                                  (if (gx#stx-false? _%origin182456%_)
                                      (gx#current-expander-context)
                                      (gx#import-module__0 _%origin182456%_))))
                            (let _%lp182462%_ ((_%rest182464%_ _%sub182458%_)
                                               (_%ctx182465%_
                                                _%origin-ctx182460%_))
                              (let* ((_%e182466182473%_ _%rest182464%_)
                                     (_%E182468182477%_
                                      (lambda () _%ctx182465%_))
                                     (_%E182467182495%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e182466182473%_)
                                            (let ((_%e182469182481%_
                                                   (gx#syntax-e
                                                    _%e182466182473%_)))
                                              (let ((_%hd182470182484%_
                                                     (##car _%e182469182481%_))
                                                    (_%tl182471182486%_
                                                     (##cdr _%e182469182481%_)))
                                                (let* ((_%id182489%_
                                                        _%hd182470182484%_)
                                                       (_%rest182491%_
                                                        _%tl182471182486%_)
                                                       (_%bind182493%_
                                                        (gx#resolve-identifier__%
                                                         _%id182489%_
                                                         '0
                                                         _%ctx182465%_)))
                                                  (if (and (##structure-direct-instance-of?
                                                            _%bind182493%_
                                                            'gx#syntax-binding::t)
                                                           (##structure-instance-of?
                                                            (##unchecked-structure-ref
                                                             _%bind182493%_
                                                             '5
                                                             '#f
                                                             '#f)
                                                            'gx#module-context::t))
                                                      '#!void
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; not bound as module"
                                                       _%where182432%_
                                                       _%spath182431%_
                                                       _%id182489%_))
                                                  (_%lp182462%_
                                                   _%rest182491%_
                                                   (##unchecked-structure-ref
                                                    _%bind182493%_
                                                    '5
                                                    '#f
                                                    '#f)))))
                                            (_%E182468182477%_)))))
                                (_%E182467182495%_))))))
                      (_%E182435182444%_)))))
          (_%E182434182499%_))))
    (define gx#core-expand-import-source
      (lambda (_%hd182429%_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _%hd182429%_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_%stx181924%_ _%internal-expand?181925%_)
        (letrec* ((_%make-export__185430185431%_
                   (lambda (_%bind182377%_
                            _%phi182378%_
                            _%ctx182379%_
                            _%name182380%_)
                     (let* ((_%key182382%_
                             (##unchecked-structure-ref
                              _%bind182377%_
                              '2
                              '#f
                              '#f))
                            (_%export-key182384%_
                             (if _%name182380%_
                                 (gx#core-identifier-key _%name182380%_)
                                 _%key182382%_)))
                       (##structure
                        gx#module-export::t
                        _%ctx182379%_
                        _%key182382%_
                        _%phi182378%_
                        _%export-key182384%_
                        (let ((_%$e182387%_
                               (##structure-instance-of?
                                _%bind182377%_
                                'gx#extern-binding::t)))
                          (if _%$e182387%_
                              _%$e182387%_
                              (##structure-direct-instance-of?
                               _%bind182377%_
                               'gx#import-binding::t)))))))
                  (_%make-export__0__185432185435%_
                   (lambda (_%bind182393%_)
                     (let* ((_%phi182395%_ (gx#current-export-expander-phi))
                            (_%ctx182397%_ (gx#current-expander-context))
                            (_%name182399%_ '#f))
                       (_%make-export__185430185431%_
                        _%bind182393%_
                        _%phi182395%_
                        _%ctx182397%_
                        _%name182399%_))))
                  (_%make-export__1__185433185436%_
                   (lambda (_%bind182401%_ _%phi182402%_)
                     (let* ((_%ctx182404%_ (gx#current-expander-context))
                            (_%name182406%_ '#f))
                       (_%make-export__185430185431%_
                        _%bind182401%_
                        _%phi182402%_
                        _%ctx182404%_
                        _%name182406%_))))
                  (_%make-export__2__185434185437%_
                   (lambda (_%bind182408%_ _%phi182409%_ _%ctx182410%_)
                     (let ((_%name182412%_ '#f))
                       (_%make-export__185430185431%_
                        _%bind182408%_
                        _%phi182409%_
                        _%ctx182410%_
                        _%name182412%_))))
                  (_%make-export181927%_
                   (lambda _g185504_
                     (let ((_g185505_ (##length _g185504_)))
                       (cond ((##fx= _g185505_ 1)
                              (apply _%make-export__0__185432185435%_
                                     _g185504_))
                             ((##fx= _g185505_ 2)
                              (apply _%make-export__1__185433185436%_
                                     _g185504_))
                             ((##fx= _g185505_ 3)
                              (apply _%make-export__2__185434185437%_
                                     _g185504_))
                             ((##fx= _g185505_ 4)
                              (apply _%make-export__185430185431%_ _g185504_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g185504_))))))
                  (_%expand1181928%_
                   (lambda (_%hd182082%_
                            _%K182083%_
                            _%rest182084%_
                            _%r182085%_)
                     (let* ((_%e182086182118%_ _%hd182082%_)
                            (_%E182113182122%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _%stx181924%_
                                _%hd182082%_)))
                            (_%E182103182206%_
                             (lambda ()
                               (if (gx#stx-pair? _%e182086182118%_)
                                   (let ((_%e182114182126%_
                                          (gx#syntax-e _%e182086182118%_)))
                                     (let ((_%hd182115182129%_
                                            (##car _%e182114182126%_))
                                           (_%tl182116182131%_
                                            (##cdr _%e182114182126%_)))
                                       (if (eq? (gx#stx-e _%hd182115182129%_)
                                                'import:)
                                           (let ((_%in182134%_
                                                  _%tl182116182131%_))
                                             (if (gx#stx-list? _%in182134%_)
                                                 (let _%lp182136%_ ((_%in-rest182138%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%in182134%_)
                            (_%r182139%_ _%r182085%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%e182140182147%_
                                                           _%in-rest182138%_)
                                                          (_%E182142182151%_
                                                           (lambda ()
                                                             (_%K182083%_
                                                              _%rest182084%_
                                                              _%r182139%_)))
                                                          (_%E182141182202%_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%e182140182147%_)
                         (let ((_%e182143182155%_
                                (gx#syntax-e _%e182140182147%_)))
                           (let ((_%hd182144182158%_ (##car _%e182143182155%_))
                                 (_%tl182145182160%_
                                  (##cdr _%e182143182155%_)))
                             (let* ((_%hd182163%_ _%hd182144182158%_)
                                    (_%in-rest182165%_ _%tl182145182160%_)
                                    (_%src182200%_
                                     (if (gx#core-bound-module? _%hd182163%_)
                                         (gx#syntax-local-e__0 _%hd182163%_)
                                         (if (gx#core-library-module-path?
                                              _%hd182163%_)
                                             (gx#import-module__0
                                              (gx#core-resolve-library-module-path
                                               _%hd182163%_))
                                             (if (gx#core-library-relative-module-path?
                                                  _%hd182163%_)
                                                 (gx#import-module__0
                                                  (gx#core-resolve-library-relative-module-path
                                                   _%hd182163%_))
                                                 (if (gx#stx-string?
                                                      _%hd182163%_)
                                                     (gx#import-module__0
                                                      (gx#core-resolve-module-path__%
                                                       _%hd182163%_
                                                       (gx#stx-source
                                                        _%stx181924%_)))
                                                     (let* ((_%e182171182178%_
                                                             _%hd182163%_)
                                                            (_%E182173182182%_
                                                             (lambda ()
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; illegal re-export"
                                                                _%stx181924%_
                                                                _%hd182163%_)))
                                                            (_%E182172182196%_
                                                             (lambda ()
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%e182171182178%_)
                           (let ((_%e182174182186%_
                                  (gx#syntax-e _%e182171182178%_)))
                             (let ((_%hd182175182189%_
                                    (##car _%e182174182186%_))
                                   (_%tl182176182191%_
                                    (##cdr _%e182174182186%_)))
                               (if (eq? (gx#stx-e _%hd182175182189%_) 'in:)
                                   (let ((_%spath182194%_ _%tl182176182191%_))
                                     (gx#core-import-nested-module
                                      _%spath182194%_
                                      _%stx181924%_))
                                   (_%E182173182182%_))))
                           (_%E182173182182%_)))))
               (_%E182172182196%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (_%lp182136%_
                                _%in-rest182165%_
                                (_%export-imports181929%_
                                 _%src182200%_
                                 _%r182139%_)))))
                         (_%E182142182151%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E182141182202%_)))
                                                 (_%E182113182122%_)))
                                           (_%E182113182122%_))))
                                   (_%E182113182122%_))))
                            (_%E182090182246%_
                             (lambda ()
                               (if (gx#stx-pair? _%e182086182118%_)
                                   (let ((_%e182104182210%_
                                          (gx#syntax-e _%e182086182118%_)))
                                     (let ((_%hd182105182213%_
                                            (##car _%e182104182210%_))
                                           (_%tl182106182215%_
                                            (##cdr _%e182104182210%_)))
                                       (if (eq? (gx#stx-e _%hd182105182213%_)
                                                'rename:)
                                           (if (gx#stx-pair?
                                                _%tl182106182215%_)
                                               (let ((_%e182107182218%_
                                                      (gx#syntax-e
                                                       _%tl182106182215%_)))
                                                 (let ((_%hd182108182221%_
                                                        (##car _%e182107182218%_))
                                                       (_%tl182109182223%_
                                                        (##cdr _%e182107182218%_)))
                                                   (let ((_%id182226%_
                                                          _%hd182108182221%_))
                                                     (if (gx#stx-pair?
                                                          _%tl182109182223%_)
                                                         (let ((_%e182110182228%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl182109182223%_)))
                   (let ((_%hd182111182231%_ (##car _%e182110182228%_))
                         (_%tl182112182233%_ (##cdr _%e182110182228%_)))
                     (let ((_%name182236%_ _%hd182111182231%_))
                       (if (gx#stx-null? _%tl182112182233%_)
                           (let* ((_%phi182238%_
                                   (gx#current-export-expander-phi))
                                  (_%$e182240%_
                                   (gx#core-resolve-identifier__1
                                    _%id182226%_
                                    _%phi182238%_)))
                             (if _%$e182240%_
                                 ((lambda (_%bind182243%_)
                                    (_%K182083%_
                                     _%rest182084%_
                                     (cons (_%make-export__185430185431%_
                                            _%bind182243%_
                                            _%phi182238%_
                                            (gx#current-expander-context)
                                            _%name182236%_)
                                           _%r182085%_)))
                                  _%$e182240%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Reference to unbound identifier"
                                  _%stx181924%_
                                  _%hd182082%_
                                  _%id182226%_)))
                           (_%E182103182206%_)))))
                 (_%E182103182206%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E182103182206%_))
                                           (_%E182103182206%_))))
                                   (_%E182103182206%_))))
                            (_%E182089182296%_
                             (lambda ()
                               (if (gx#stx-pair? _%e182086182118%_)
                                   (let ((_%e182091182250%_
                                          (gx#syntax-e _%e182086182118%_)))
                                     (let ((_%hd182092182253%_
                                            (##car _%e182091182250%_))
                                           (_%tl182093182255%_
                                            (##cdr _%e182091182250%_)))
                                       (if (eq? (gx#stx-e _%hd182092182253%_)
                                                'spec:)
                                           (if (gx#stx-pair?
                                                _%tl182093182255%_)
                                               (let ((_%e182094182258%_
                                                      (gx#syntax-e
                                                       _%tl182093182255%_)))
                                                 (let ((_%hd182095182261%_
                                                        (##car _%e182094182258%_))
                                                       (_%tl182096182263%_
                                                        (##cdr _%e182094182258%_)))
                                                   (let ((_%phi182266%_
                                                          _%hd182095182261%_))
                                                     (if (gx#stx-pair?
                                                          _%tl182096182263%_)
                                                         (let ((_%e182097182268%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl182096182263%_)))
                   (let ((_%hd182098182271%_ (##car _%e182097182268%_))
                         (_%tl182099182273%_ (##cdr _%e182097182268%_)))
                     (let ((_%id182276%_ _%hd182098182271%_))
                       (if (gx#stx-pair? _%tl182099182273%_)
                           (let ((_%e182100182278%_
                                  (gx#syntax-e _%tl182099182273%_)))
                             (let ((_%hd182101182281%_
                                    (##car _%e182100182278%_))
                                   (_%tl182102182283%_
                                    (##cdr _%e182100182278%_)))
                               (let ((_%name182286%_ _%hd182101182281%_))
                                 (if (gx#stx-null? _%tl182102182283%_)
                                     (if (and (gx#stx-fixnum? _%phi182266%_)
                                              (gx#identifier? _%id182276%_)
                                              (gx#identifier? _%name182286%_))
                                         (let* ((_%phi182288%_
                                                 (gx#stx-e _%phi182266%_))
                                                (_%$e182290%_
                                                 (gx#core-resolve-identifier__1
                                                  _%id182276%_
                                                  _%phi182288%_)))
                                           (if _%$e182290%_
                                               ((lambda (_%bind182293%_)
                                                  (_%K182083%_
                                                   _%rest182084%_
                                                   (cons (_%make-export__185430185431%_
                                                          _%bind182293%_
                                                          _%phi182288%_
                                                          (gx#current-expander-context)
                                                          _%name182286%_)
                                                         _%r182085%_)))
                                                _%$e182290%_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _%stx181924%_
                                                _%hd182082%_
                                                _%id182276%_)))
                                         (_%E182090182246%_))
                                     (_%E182090182246%_)))))
                           (_%E182090182246%_)))))
                 (_%E182090182246%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E182090182246%_))
                                           (_%E182090182246%_))))
                                   (_%E182090182246%_))))
                            (_%E182088182308%_
                             (lambda ()
                               (let ((_%id182300%_ _%e182086182118%_))
                                 (if (gx#identifier? _%id182300%_)
                                     (let ((_%$e182302%_
                                            (gx#core-resolve-identifier__1
                                             _%id182300%_
                                             (gx#current-export-expander-phi))))
                                       (if _%$e182302%_
                                           ((lambda (_%bind182305%_)
                                              (_%K182083%_
                                               _%rest182084%_
                                               (cons (_%make-export__0__185432185435%_
                                                      _%bind182305%_)
                                                     _%r182085%_)))
                                            _%$e182302%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _%stx181924%_
                                            _%hd182082%_)))
                                     (_%E182089182296%_)))))
                            (_%E182087182372%_
                             (lambda ()
                               (if (eq? (gx#stx-e _%e182086182118%_) '#t)
                                   (let* ((_%current-ctx182312%_
                                           (gx#current-expander-context))
                                          (_%current-phi182314%_
                                           (gx#current-export-expander-phi))
                                          (_%phi-ctx182316%_
                                           (gx#core-context-shift
                                            _%current-ctx182312%_
                                            _%current-phi182314%_))
                                          (_%phi-bind182318%_
                                           (hash->list
                                            (##unchecked-structure-ref
                                             _%phi-ctx182316%_
                                             '2
                                             '#f
                                             '#f))))
                                     (let _%lp182321%_ ((_%bind-rest182323%_
                                                         _%phi-bind182318%_)
                                                        (_%set182324%_ '()))
                                       (let* ((_%bind-rest182325182335%_
                                               _%bind-rest182323%_)
                                              (_%else182327182343%_
                                               (lambda ()
                                                 (_%K182083%_
                                                  _%rest182084%_
                                                  (cons (##structure
                                                         gx#export-set::t
                                                         '#f
                                                         _%current-phi182314%_
                                                         _%set182324%_)
                                                        _%r182085%_))))
                                              (_%K182329182353%_
                                               (lambda (_%bind-rest182346%_
                                                        _%bind182347%_
                                                        _%key182348%_)
                                                 (if (or (##structure-direct-instance-of?
                                                          _%bind182347%_
                                                          'gx#import-binding::t)
                                                         (gx#private-feature-binding?
                                                          _%bind182347%_))
                                                     (_%lp182321%_
                                                      _%bind-rest182346%_
                                                      _%set182324%_)
                                                     (_%lp182321%_
                                                      _%bind-rest182346%_
                                                      (cons (_%make-export__2__185434185437%_
                                                             _%bind182347%_
                                                             _%current-phi182314%_
                                                             _%current-ctx182312%_)
                                                            _%set182324%_))))))
                                         (if (pair? _%bind-rest182325182335%_)
                                             (let ((_%hd182330182356%_
                                                    (##car _%bind-rest182325182335%_))
                                                   (_%tl182331182358%_
                                                    (##cdr _%bind-rest182325182335%_)))
                                               (if (pair? _%hd182330182356%_)
                                                   (let ((_%hd182332182361%_
                                                          (##car _%hd182330182356%_))
                                                         (_%tl182333182363%_
                                                          (##cdr _%hd182330182356%_)))
                                                     (let* ((_%key182366%_
                                                             _%hd182332182361%_)
                                                            (_%bind182368%_
                                                             _%tl182333182363%_)
                                                            (_%bind-rest182370%_
                                                             _%tl182331182358%_))
                                                       (_%K182329182353%_
                                                        _%bind-rest182370%_
                                                        _%bind182368%_
                                                        _%key182366%_)))
                                                   (_%else182327182343%_)))
                                             (_%else182327182343%_)))))
                                   (_%E182088182308%_)))))
                       (_%E182087182372%_))))
                  (_%export-imports181929%_
                   (lambda (_%src181959%_ _%r181960%_)
                     (letrec* ((_%current-ctx181962%_
                                (gx#current-expander-context))
                               (_%current-phi181963%_
                                (gx#current-export-expander-phi))
                               (_%import->export181964%_
                                (lambda (_%in182045%_)
                                  (let* ((_%in182046182054%_ _%in182045%_)
                                         (_%E182048182057%_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _%in182046182054%_
                                                   '((module-import
                                                      out
                                                      key
                                                      phi)))
                                            '#!void))
                                         (_%K182049182064%_
                                          (lambda (_%phi182060%_
                                                   _%key182061%_
                                                   _%out182062%_)
                                            (##structure
                                             gx#module-export::t
                                             _%current-ctx181962%_
                                             _%key182061%_
                                             _%phi182060%_
                                             _%key182061%_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _%in182046182054%_
                                         'gx#module-import::t)
                                        (let* ((_%e182050182067%_
                                                (##unchecked-structure-ref
                                                 _%in182046182054%_
                                                 '1
                                                 '#f
                                                 '#f))
                                               (_%out182070%_
                                                _%e182050182067%_)
                                               (_%e182051182072%_
                                                (##unchecked-structure-ref
                                                 _%in182046182054%_
                                                 '2
                                                 '#f
                                                 '#f))
                                               (_%key182075%_
                                                _%e182051182072%_)
                                               (_%e182052182077%_
                                                (##unchecked-structure-ref
                                                 _%in182046182054%_
                                                 '3
                                                 '#f
                                                 '#f))
                                               (_%phi182080%_
                                                _%e182052182077%_))
                                          (_%K182049182064%_
                                           _%phi182080%_
                                           _%key182075%_
                                           _%out182070%_))
                                        (_%E182048182057%_)))))
                               (_%fold-e181965%_
                                (lambda (_%in181967%_ _%r181968%_)
                                  (let* ((_%in181969181983%_ _%in181967%_)
                                         (_%else181972181991%_
                                          (lambda () _%r181968%_)))
                                    (let ((_%K181978182027%_
                                           (lambda (_%phi182023%_
                                                    _%key182024%_
                                                    _%out182025%_)
                                             (if (and (fx= _%phi182023%_
                                                           _%current-phi181963%_)
                                                      (eq? _%src181959%_
                                                           (##unchecked-structure-ref
                                                            _%out182025%_
                                                            '1
                                                            '#f
                                                            '#f)))
                                                 (cons (_%import->export181964%_
                                                        _%in181967%_)
                                                       _%r181968%_)
                                                 _%r181968%_)))
                                          (_%K181974182002%_
                                           (lambda (_%imports181995%_
                                                    _%phi181996%_
                                                    _%ctx181997%_)
                                             (if (and (fx= _%phi181996%_
                                                           _%current-phi181963%_)
                                                      (eq? _%src181959%_
                                                           _%ctx181997%_))
                                                 (foldl__0
                                                  (lambda (_%in181999%_
                                                           _%r182000%_)
                                                    (cons (_%import->export181964%_
                                                           _%in181999%_)
                                                          _%r182000%_))
                                                  _%r181968%_
                                                  _%imports181995%_)
                                                 _%r181968%_))))
                                      (let ((_%try-match181971182020%_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _%in181969181983%_
                                                    'gx#import-set::t)
                                                   (let* ((_%e181975182005%_
                                                           (##unchecked-structure-ref
                                                            _%in181969181983%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                          (_%e181976182010%_
                                                           (##unchecked-structure-ref
                                                            _%in181969181983%_
                                                            '2
                                                            '#f
                                                            '#f))
                                                          (_%e181977182015%_
                                                           (##unchecked-structure-ref
                                                            _%in181969181983%_
                                                            '3
                                                            '#f
                                                            '#f)))
                                                     (let ((_%ctx182008%_
                                                            _%e181975182005%_)
                                                           (_%phi182013%_
                                                            _%e181976182010%_)
                                                           (_%imports182018%_
                                                            _%e181977182015%_))
                                                       (_%K181974182002%_
                                                        _%imports182018%_
                                                        _%phi182013%_
                                                        _%ctx182008%_)))
                                                   (_%else181972181991%_)))))
                                        (if (##structure-direct-instance-of?
                                             _%in181969181983%_
                                             'gx#module-import::t)
                                            (let* ((_%e181979182030%_
                                                    (##unchecked-structure-ref
                                                     _%in181969181983%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                   (_%e181980182035%_
                                                    (##unchecked-structure-ref
                                                     _%in181969181983%_
                                                     '2
                                                     '#f
                                                     '#f))
                                                   (_%e181981182040%_
                                                    (##unchecked-structure-ref
                                                     _%in181969181983%_
                                                     '3
                                                     '#f
                                                     '#f)))
                                              (let ((_%out182033%_
                                                     _%e181979182030%_)
                                                    (_%key182038%_
                                                     _%e181980182035%_)
                                                    (_%phi182043%_
                                                     _%e181981182040%_))
                                                (_%K181978182027%_
                                                 _%phi182043%_
                                                 _%key182038%_
                                                 _%out182033%_)))
                                            (_%try-match181971182020%_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _%src181959%_
                              _%current-phi181963%_
                              (foldl__0
                               _%fold-e181965%_
                               '()
                               (##unchecked-structure-ref
                                _%current-ctx181962%_
                                '8
                                '#f
                                '#f)))
                             _%r181960%_))))
                  (_%export!181930%_
                   (lambda (_%rbody181946%_)
                     (letrec* ((_%current-ctx181948%_
                                (gx#current-expander-context))
                               (_%fold-e181949%_
                                (lambda (_%out181953%_ _%r181954%_)
                                  (if (##structure-direct-instance-of?
                                       _%out181953%_
                                       'gx#module-export::t)
                                      (cons _%out181953%_ _%r181954%_)
                                      (if (##structure-direct-instance-of?
                                           _%out181953%_
                                           'gx#export-set::t)
                                          (foldl__0
                                           cons
                                           _%r181954%_
                                           (##unchecked-structure-ref
                                            _%out181953%_
                                            '3
                                            '#f
                                            '#f))
                                          _%r181954%_)))))
                       (let ((_%body181951%_ (reverse _%rbody181946%_)))
                         (##unchecked-structure-set!
                          _%current-ctx181948%_
                          (foldl__0
                           _%fold-e181949%_
                           (##unchecked-structure-ref
                            _%current-ctx181948%_
                            '9
                            '#f
                            '#f)
                           _%body181951%_)
                          '9
                          '#f
                          '#f)
                         _%body181951%_))))
                  (_%expanded-export?181931%_
                   (lambda (_%e181941%_)
                     (let ((_%$e181943%_
                            (##structure-direct-instance-of?
                             _%e181941%_
                             'gx#module-export::t)))
                       (if _%$e181943%_
                           _%$e181943%_
                           (##structure-direct-instance-of?
                            _%e181941%_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _%internal-expand?181925%_)
              (let ((_%rbody181937%_
                     (gx#core-expand-import/export
                      _%stx181924%_
                      _%expanded-export?181931%_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _%expand1181928%_)))
                (if _%internal-expand?181925%_
                    (reverse _%rbody181937%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons
                      '%#export
                      (_%export!181930%_ _%rbody181937%_))
                     (gx#stx-source _%stx181924%_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _%stx181924%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _%stx181924%_))))))
    (define gx#core-expand-export%__0
      (lambda (_%stx182422%_)
        (let ((_%internal-expand?182424%_ '#f))
          (gx#core-expand-export%__%
           _%stx182422%_
           _%internal-expand?182424%_))))
    (define gx#core-expand-export%
      (lambda _g185506_
        (let ((_g185507_ (##length _g185506_)))
          (cond ((##fx= _g185507_ 1)
                 (apply gx#core-expand-export%__0 _g185506_))
                ((##fx= _g185507_ 2)
                 (apply gx#core-expand-export%__% _g185506_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g185506_))))))
    (define gx#core-expand-export-source
      (lambda (_%hd181921%_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _%hd181921%_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_%stx181891%_)
        (let* ((_%e181892181899%_ _%stx181891%_)
               (_%E181894181903%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181892181899%_)))
               (_%E181893181917%_
                (lambda ()
                  (if (gx#stx-pair? _%e181892181899%_)
                      (let ((_%e181895181907%_
                             (gx#syntax-e _%e181892181899%_)))
                        (let ((_%hd181896181910%_ (##car _%e181895181907%_))
                              (_%tl181897181912%_ (##cdr _%e181895181907%_)))
                          (let ((_%body181915%_ _%tl181897181912%_))
                            (if (gx#identifier-list? _%body181915%_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _%body181915%_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _%body181915%_))
                                   (gx#stx-source _%stx181891%_)))
                                (_%E181894181903%_)))))
                      (_%E181894181903%_)))))
          (_%E181893181917%_))))
    (define gx#core-bind-feature!__%
      (lambda (_%id181857%_ _%private?181858%_ _%phi181859%_ _%ctx181860%_)
        (gx#core-bind-syntax!__%
         _%id181857%_
         ((if _%private?181858%_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _%id181857%_))
         _%private?181858%_
         _%phi181859%_
         _%ctx181860%_)))
    (define gx#core-bind-feature!__0
      (lambda (_%id181865%_)
        (let* ((_%private?181867%_ '#f)
               (_%phi181869%_ (gx#current-expander-phi))
               (_%ctx181871%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id181865%_
           _%private?181867%_
           _%phi181869%_
           _%ctx181871%_))))
    (define gx#core-bind-feature!__1
      (lambda (_%id181873%_ _%private?181874%_)
        (let* ((_%phi181876%_ (gx#current-expander-phi))
               (_%ctx181878%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id181873%_
           _%private?181874%_
           _%phi181876%_
           _%ctx181878%_))))
    (define gx#core-bind-feature!__2
      (lambda (_%id181880%_ _%private?181881%_ _%phi181882%_)
        (let ((_%ctx181884%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id181880%_
           _%private?181881%_
           _%phi181882%_
           _%ctx181884%_))))
    (define gx#core-bind-feature!
      (lambda _g185508_
        (let ((_g185509_ (##length _g185508_)))
          (cond ((##fx= _g185509_ 1)
                 (apply gx#core-bind-feature!__0 _g185508_))
                ((##fx= _g185509_ 2)
                 (apply gx#core-bind-feature!__1 _g185508_))
                ((##fx= _g185509_ 3)
                 (apply gx#core-bind-feature!__2 _g185508_))
                ((##fx= _g185509_ 4)
                 (apply gx#core-bind-feature!__% _g185508_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g185508_))))))))
