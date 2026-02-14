(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1771093449)
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
      (lambda _%$args185431%_
        (apply make-instance gx#module-import::t _%$args185431%_)))
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
      (lambda _%$args185428%_
        (apply make-instance gx#module-export::t _%$args185428%_)))
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
      (lambda _%$args185425%_
        (apply make-instance gx#import-set::t _%$args185425%_)))
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
      (lambda _%$args185422%_
        (apply make-instance gx#export-set::t _%$args185422%_)))
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
      (lambda _%$args185419%_
        (apply make-instance gx#import-expander::t _%$args185419%_)))
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
      (lambda _%$args185416%_
        (apply make-instance gx#export-expander::t _%$args185416%_)))
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
      (lambda _%$args185413%_
        (apply make-instance gx#import-export-expander::t _%$args185413%_)))
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
      (lambda (_%path185410%_ _%fun185411%_)
        (call-with-input-file
         (cons 'path: (cons _%path185410%_ gx#source-file-settings))
         _%fun185411%_)))
    (define gx#module-context:::init!
      (lambda (_%self185393%_
               _%id185394%_
               _%super185395%_
               _%ns185396%_
               _%path185397%_)
        (let ((_%self185400%_ _%self185393%_))
          (if (##fx< '11 (##structure-length _%self185400%_))
              (begin
                (##unchecked-structure-set!
                 _%self185400%_
                 _%id185394%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self185400%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self185400%_
                 _%super185395%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self185400%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self185400%_ '#f '5 '#f '#f)
                (##unchecked-structure-set!
                 _%self185400%_
                 _%ns185396%_
                 '6
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self185400%_
                 _%path185397%_
                 '7
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self185400%_ '() '8 '#f '#f)
                (##unchecked-structure-set! _%self185400%_ '() '9 '#f '#f)
                (##unchecked-structure-set! _%self185400%_ '#f '10 '#f '#f)
                (##unchecked-structure-set! _%self185400%_ '#f '11 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self185400%_
                     '11
                     (##structure-length _%self185400%_))))))
    (__bind-method!__%
     gx#module-context::t
     ':init!
     gx#module-context:::init!
     '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_%self185226%_ _%ctx185227%_ _%root185228%_)
        (let* ((_%self185231%_ _%self185226%_)
               (_%super185247%_
                (let ((_%$e185241%_ _%root185228%_))
                  (if _%$e185241%_
                      _%$e185241%_
                      (let ((_%$e185244%_ (gx#core-context-root__0)))
                        (if _%$e185244%_
                            _%$e185244%_
                            (let ((__obj185475
                                   (##structure gx#root-context::t '#f '#f)))
                              (let ((__constructor185476
                                     (direct-method-ref
                                      gx#root-context::t
                                      __obj185475
                                      ':init!)))
                                (if __constructor185476
                                    (__constructor185476 __obj185475)
                                    (error '"missing constructor method implementation"
                                           'class:
                                           gx#root-context::t
                                           'method:
                                           ':init!)))
                              __obj185475)))))))
          (if _%ctx185227%_
              (let ((_%id185250%_
                     (##structure-ref
                      _%ctx185227%_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_%path185251%_
                     (##structure-ref
                      _%ctx185227%_
                      '7
                      gx#module-context::t
                      '#f))
                    (_%in185252%_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _%ctx185227%_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_%e185253%_
                     (__make-atomic-promise
                      (lambda () (gx#eval-module _%ctx185227%_)))))
                (if (##fx< '8 (##structure-length _%self185231%_))
                    (begin
                      (##unchecked-structure-set!
                       _%self185231%_
                       _%id185250%_
                       '1
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self185231%_
                       (make-hash-table-eq 'size: (##length _%in185252%_))
                       '2
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self185231%_
                       _%super185247%_
                       '3
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self185231%_
                       '#f
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self185231%_
                       '#f
                       '5
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self185231%_
                       _%path185251%_
                       '6
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self185231%_
                       _%in185252%_
                       '7
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self185231%_
                       _%e185253%_
                       '8
                       '#f
                       '#f)
                      '#!void)
                    (error '"struct-instance-init!: too many arguments for struct"
                           _%self185231%_
                           '8
                           (##structure-length _%self185231%_)))
                (##for-each
                 (lambda (_%g185254185256%_)
                   (gx#core-bind-weak-import!__%
                    _%g185254185256%_
                    _%self185231%_))
                 _%in185252%_))
              (if (##fx< '8 (##structure-length _%self185231%_))
                  (begin
                    (##unchecked-structure-set! _%self185231%_ '#f '1 '#f '#f)
                    (##unchecked-structure-set!
                     _%self185231%_
                     (make-hash-table-eq)
                     '2
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self185231%_
                     _%super185247%_
                     '3
                     '#f
                     '#f)
                    (##unchecked-structure-set! _%self185231%_ '#f '4 '#f '#f)
                    (##unchecked-structure-set! _%self185231%_ '#f '5 '#f '#f)
                    (##unchecked-structure-set! _%self185231%_ '#f '6 '#f '#f)
                    (##unchecked-structure-set! _%self185231%_ '() '7 '#f '#f)
                    (##unchecked-structure-set! _%self185231%_ '#f '8 '#f '#f)
                    '#!void)
                  (error '"struct-instance-init!: too many arguments for struct"
                         _%self185231%_
                         '8
                         (##structure-length _%self185231%_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_%self185262%_ _%ctx185263%_)
        (let ((_%root185265%_ '#f))
          (gx#prelude-context:::init!__%
           _%self185262%_
           _%ctx185263%_
           _%root185265%_))))
    (define gx#prelude-context:::init!
      (lambda _g185482_
        (let ((_g185483_ (##length _g185482_)))
          (cond ((##fx= _g185483_ 2)
                 (apply gx#prelude-context:::init!__0 _g185482_))
                ((##fx= _g185483_ 3)
                 (apply gx#prelude-context:::init!__% _g185482_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g185482_))))))
    (__bind-method!__%
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_%self185100%_ _%e185101%_)
        (if (##fx< '3 (##structure-length _%self185100%_))
            (begin
              (##unchecked-structure-set!
               _%self185100%_
               _%e185101%_
               '1
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self185100%_
               (gx#current-expander-context)
               '2
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self185100%_
               (##fx- (gx#current-expander-phi) '1)
               '3
               '#f
               '#f)
              '#!void)
            (error '"struct-instance-init!: too many arguments for struct"
                   _%self185100%_
                   '3
                   (##structure-length _%self185100%_)))))
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
      (lambda (_%g184726184729%_ _%g184727184731%_)
        (gx#core-apply-user-expander__%
         _%g184726184729%_
         _%g184727184731%_
         'apply-import-expander)))
    (__bind-method!__%
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_%g184597184600%_ _%g184598184602%_)
        (gx#core-apply-user-expander__%
         _%g184597184600%_
         _%g184598184602%_
         'apply-export-expander)))
    (__bind-method!__%
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_%ctx184468%_)
        (let* ((_%path184470%_
                (##structure-ref _%ctx184468%_ '7 gx#module-context::t '#f))
               (_%path184472%_
                (if (pair? _%path184470%_)
                    (##last _%path184470%_)
                    _%path184470%_)))
          (if (string? _%path184472%_) _%path184472%_ '#f))))
    (define gx#import-module__%
      (lambda (_%path184444%_ _%reload?184445%_ _%eval?184446%_)
        (let ((_%ctx184448%_
               ((gx#current-expander-module-import)
                _%path184444%_
                _%reload?184445%_)))
          (if (and _%ctx184448%_ _%eval?184446%_)
              (gx#eval-module _%ctx184448%_)
              '#!void)
          _%ctx184448%_)))
    (define gx#import-module__0
      (lambda (_%path184453%_)
        (let* ((_%reload?184455%_ '#f) (_%eval?184457%_ '#f))
          (gx#import-module__%
           _%path184453%_
           _%reload?184455%_
           _%eval?184457%_))))
    (define gx#import-module__1
      (lambda (_%path184459%_ _%reload?184460%_)
        (let ((_%eval?184462%_ '#f))
          (gx#import-module__%
           _%path184459%_
           _%reload?184460%_
           _%eval?184462%_))))
    (define gx#import-module
      (lambda _g185484_
        (let ((_g185485_ (##length _g185484_)))
          (cond ((##fx= _g185485_ 1) (apply gx#import-module__0 _g185484_))
                ((##fx= _g185485_ 2) (apply gx#import-module__1 _g185484_))
                ((##fx= _g185485_ 3) (apply gx#import-module__% _g185484_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g185484_))))))
    (define gx#eval-module
      (lambda (_%mod184441%_)
        ((gx#current-expander-module-eval) _%mod184441%_)))
    (define gx#core-eval-module
      (lambda (_%obj184420%_)
        (letrec ((_%force-e184422%_
                  (lambda (_%getf184436%_ _%e184437%_)
                    (call-with-parameters__1
                     (lambda ()
                       (call-with-parameters__1
                        (lambda () (force (_%getf184436%_ _%e184437%_)))
                        gx#current-expander-phi
                        '0))
                     gx#current-expander-context
                     _%e184437%_))))
          (let _%recur184424%_ ((_%e184426%_ _%obj184420%_))
            (if (##structure-instance-of? _%e184426%_ 'gx#module-context::t)
                (let ()
                  (let ((_%$e184429%_
                         (gx#core-context-prelude__% _%e184426%_)))
                    (if _%$e184429%_ (_%recur184424%_ _%$e184429%_) '#!void))
                  (_%force-e184422%_ gx#module-context-e _%e184426%_))
                (if (##structure-instance-of?
                     _%e184426%_
                     'gx#prelude-context::t)
                    (_%force-e184422%_ gx#prelude-context-e _%e184426%_)
                    (if (gx#stx-string? _%e184426%_)
                        (_%recur184424%_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _%e184426%_)))
                        (if (gx#core-library-module-path? _%e184426%_)
                            (_%recur184424%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%e184426%_)))
                            (error '"cannot eval module" _%obj184420%_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_%ctx184400%_)
        (let _%lp184402%_ ((_%e184404%_ _%ctx184400%_))
          (if (or (##structure-instance-of? _%e184404%_ 'gx#module-context::t)
                  (##structure-instance-of? _%e184404%_ 'gx#local-context::t))
              (_%lp184402%_ (##unchecked-structure-ref _%e184404%_ '3 '#f '#f))
              (if (##structure-instance-of? _%e184404%_ 'gx#prelude-context::t)
                  _%e184404%_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_%ctx184416%_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _%ctx184416%_))))
    (define gx#core-context-prelude
      (lambda _g185486_
        (let ((_g185487_ (##length _g185486_)))
          (cond ((##fx= _g185487_ 0)
                 (apply gx#core-context-prelude__0 _g185486_))
                ((##fx= _g185487_ 1)
                 (apply gx#core-context-prelude__% _g185486_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g185486_))))))
    (define gx#core-module->prelude-context
      (lambda (_%ctx184391%_)
        (let ((_%$e184393%_ (__hash-get gx#__module-registry _%ctx184391%_)))
          (if _%$e184393%_
              _%$e184393%_
              (let ((_%pre184397%_
                     (let ((__obj185477
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
                        __obj185477
                        _%ctx184391%_)
                       __obj185477)))
                (__hash-put! gx#__module-registry _%ctx184391%_ _%pre184397%_)
                _%pre184397%_)))))
    (define gx#core-import-module__%
      (lambda (_%rpath184259%_ _%reload?184260%_)
        (letrec ((_%import-source184262%_
                  (lambda (_%path184350%_)
                    (if (member _%path184350%_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _%path184350%_)
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
                                      (let ((_g185488_
                                             (gx#core-read-module
                                              _%path184350%_)))
                                        (begin
                                          (let ((_g185489_
                                                 (if (##values? _g185488_)
                                                     (##values-length
                                                      _g185488_)
                                                     1)))
                                            (if (not (##fx= _g185489_ 4))
                                                (error "Context expects 4 values"
                                                       _g185489_)))
                                          (let ((_%pre184358%_
                                                 (##values-ref _g185488_ 0))
                                                (_%id184359%_
                                                 (##values-ref _g185488_ 1))
                                                (_%ns184360%_
                                                 (##values-ref _g185488_ 2))
                                                (_%body184361%_
                                                 (##values-ref _g185488_ 3)))
                                            (let* ((_%prelude184371%_
                                                    (if (##structure-instance-of?
                                                         _%pre184358%_
                                                         'gx#prelude-context::t)
                                                        _%pre184358%_
                                                        (if (##structure-instance-of?
                                                             _%pre184358%_
                                                             'gx#module-context::t)
                                                            (gx#core-module->prelude-context
                                                             _%pre184358%_)
                                                            (if (string? _%pre184358%_)
                                                                (gx#core-module->prelude-context
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#core-import-module__0 _%pre184358%_))
                        (if (not _%pre184358%_)
                            (let ((_%$e184367%_
                                   (gx#current-expander-module-prelude)))
                              (if _%$e184367%_
                                  _%$e184367%_
                                  (let ((__obj185478
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
                                     __obj185478
                                     '#f)
                                    __obj185478)))
                            (error '"cannot import module; unknown prelude"
                                   _%rpath184259%_
                                   _%pre184358%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%ctx184373%_
                                                    (let ((__obj185479
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
                                                       __obj185479
                                                       _%id184359%_
                                                       _%prelude184371%_
                                                       _%ns184360%_
                                                       _%path184350%_)
                                                      __obj185479))
                                                   (_%body184375%_
                                                    (gx#core-expand-module-begin
                                                     _%body184361%_
                                                     _%ctx184373%_))
                                                   (_%body184377%_
                                                    (gx#core-quote-syntax__%
                                                     (gx#core-cons
                                                      '%#begin
                                                      _%body184375%_)
                                                     _%path184350%_
                                                     _%ctx184373%_
                                                     '())))
                                              (##unchecked-structure-set!
                                               _%ctx184373%_
                                               (__make-atomic-promise
                                                (lambda ()
                                                  (gx#eval-syntax*
                                                   _%body184377%_)))
                                               '10
                                               '#f
                                               '#f)
                                              (##unchecked-structure-set!
                                               _%ctx184373%_
                                               _%body184377%_
                                               '11
                                               '#f
                                               '#f)
                                              (__hash-put!
                                               gx#__module-registry
                                               _%path184350%_
                                               _%ctx184373%_)
                                              (__hash-put!
                                               gx#__module-registry
                                               _%id184359%_
                                               _%ctx184373%_)
                                              _%ctx184373%_)))))
                                    gx#current-export-expander-phi
                                    '#f))
                                 gx#current-import-expander-phi
                                 '#f))
                              gx#current-expander-path
                              (cons _%path184350%_
                                    (gx#current-expander-path))))
                           gx#current-expander-phi
                           '0))
                        gx#current-expander-marks
                        '()))
                     gx#current-expander-context
                     (gx#core-context-root__0))))
                 (_%import-submodule184263%_
                  (lambda (_%rpath184279%_)
                    (let* ((_%rpath184280184287%_ _%rpath184279%_)
                           (_%E184282184290%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%rpath184280184287%_
                                     '([origin . refs]))
                              '#!void))
                           (_%K184283184338%_
                            (lambda (_%refs184293%_ _%origin184294%_)
                              (let ((_%ctx184296%_
                                     (if _%origin184294%_
                                         (gx#core-import-module__%
                                          _%origin184294%_
                                          _%reload?184260%_)
                                         (gx#current-expander-context))))
                                (let _%lp184298%_ ((_%rest184300%_
                                                    _%refs184293%_)
                                                   (_%ctx184301%_
                                                    _%ctx184296%_))
                                  (let* ((_%rest184302184310%_ _%rest184300%_)
                                         (_%else184304184318%_
                                          (lambda () _%ctx184301%_))
                                         (_%K184306184326%_
                                          (lambda (_%rest184321%_ _%id184322%_)
                                            (let ((_%bind184324%_
                                                   (gx#resolve-identifier__%
                                                    _%id184322%_
                                                    '0
                                                    _%ctx184301%_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _%bind184324%_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _%bind184324%_
                                                         '5
                                                         '#f
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_%lp184298%_
                                                   _%rest184321%_
                                                   (##unchecked-structure-ref
                                                    _%bind184324%_
                                                    '5
                                                    '#f
                                                    '#f))
                                                  (error '"cannot import submodule; not bound as a module"
                                                         _%rpath184279%_
                                                         _%id184322%_
                                                         _%bind184324%_))))))
                                    (if (pair? _%rest184302184310%_)
                                        (let ((_%hd184307184329%_
                                               (##car _%rest184302184310%_))
                                              (_%tl184308184331%_
                                               (##cdr _%rest184302184310%_)))
                                          (let* ((_%id184334%_
                                                  _%hd184307184329%_)
                                                 (_%rest184336%_
                                                  _%tl184308184331%_))
                                            (_%K184306184326%_
                                             _%rest184336%_
                                             _%id184334%_)))
                                        (_%else184304184318%_))))))))
                      (if (pair? _%rpath184280184287%_)
                          (let ((_%hd184284184341%_
                                 (##car _%rpath184280184287%_))
                                (_%tl184285184343%_
                                 (##cdr _%rpath184280184287%_)))
                            (let* ((_%origin184346%_ _%hd184284184341%_)
                                   (_%refs184348%_ _%tl184285184343%_))
                              (_%K184283184338%_
                               _%refs184348%_
                               _%origin184346%_)))
                          (_%E184282184290%_))))))
          (let ((_%$e184265%_
                 (if (not _%reload?184260%_)
                     (__hash-get gx#__module-registry _%rpath184259%_)
                     '#f)))
            (if _%$e184265%_
                _%$e184265%_
                (if (list? _%rpath184259%_)
                    (_%import-submodule184263%_ _%rpath184259%_)
                    (if (gx#core-library-module-path? _%rpath184259%_)
                        (let ((_%ctx184270%_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _%rpath184259%_)
                                _%reload?184260%_)))
                          (__hash-put!
                           gx#__module-registry
                           _%rpath184259%_
                           _%ctx184270%_)
                          _%ctx184270%_)
                        (let* ((_%npath184273%_
                                (path-normalize _%rpath184259%_))
                               (_%$e184275%_
                                (if (not _%reload?184260%_)
                                    (__hash-get
                                     gx#__module-registry
                                     _%npath184273%_)
                                    '#f)))
                          (if _%$e184275%_
                              _%$e184275%_
                              (_%import-source184262%_
                               _%npath184273%_))))))))))
    (define gx#core-import-module__0
      (lambda (_%rpath184384%_)
        (let ((_%reload?184386%_ '#f))
          (gx#core-import-module__% _%rpath184384%_ _%reload?184386%_))))
    (define gx#core-import-module
      (lambda _g185490_
        (let ((_g185491_ (##length _g185490_)))
          (cond ((##fx= _g185491_ 1)
                 (apply gx#core-import-module__0 _g185490_))
                ((##fx= _g185491_ 2)
                 (apply gx#core-import-module__% _g185490_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g185490_))))))
    (define gx#core-read-module
      (lambda (_%path184241%_)
        (__with-catch
         (lambda (_%exn184243%_)
           (if (datum-parsing-exception? _%exn184243%_)
               (let ((_%pos184245%_
                      (datum-parsing-exception-filepos _%exn184243%_)))
                 (if (= _%pos184245%_ '0)
                     (gx#core-read-module/lang _%path184241%_)
                     (gx#raise-syntax-error
                      'read-module
                      '"error reading module"
                      _%path184241%_
                      (call-with-parameters__1
                       (lambda ()
                         (call-with-output-string
                          '""
                          (lambda (_%g184247184249%_)
                            (display-exception__%
                             _%exn184243%_
                             _%g184247184249%_))))
                       dump-stack-trace?
                       '#f)
                      (cons 'line:
                            (cons (##filepos-line _%pos184245%_)
                                  (cons 'col:
                                        (cons (##filepos-col _%pos184245%_)
                                              '())))))))
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _%path184241%_
                (call-with-parameters__1
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_%g184252184254%_)
                      (display-exception__% _%exn184243%_ _%g184252184254%_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _%path184241%_)))))
    (define gx#core-read-module/sexp
      (lambda (_%path184093%_)
        (let _%lp184095%_ ((_%body184097%_
                            (read-syntax-from-file _%path184093%_))
                           (_%pre184098%_ '#f)
                           (_%ns184099%_ '#f)
                           (_%pkg184100%_ '#f))
          (let* ((_%e184101184125%_ _%body184097%_)
                 (_%E184117184151%_
                  (lambda ()
                    (let ((_g185492_
                           (if _%pkg184100%_
                               (values _%pre184098%_
                                       _%ns184099%_
                                       _%pkg184100%_)
                               (gx#core-read-module-package
                                _%path184093%_
                                _%pre184098%_
                                _%ns184099%_))))
                      (begin
                        (let ((_g185493_
                               (if (##values? _g185492_)
                                   (##values-length _g185492_)
                                   1)))
                          (if (not (##fx= _g185493_ 3))
                              (error "Context expects 3 values" _g185493_)))
                        (let ((_%pre184129%_ (##values-ref _g185492_ 0))
                              (_%ns184130%_ (##values-ref _g185492_ 1))
                              (_%pkg184131%_ (##values-ref _g185492_ 2)))
                          (let* ((_%prelude184137%_
                                  (if (gx#core-bound-module-prelude?
                                       _%pre184129%_)
                                      (gx#syntax-local-e__0 _%pre184129%_)
                                      (if (gx#core-library-module-path?
                                           _%pre184129%_)
                                          (gx#core-resolve-library-module-path
                                           _%pre184129%_)
                                          (if (gx#stx-string? _%pre184129%_)
                                              (gx#core-resolve-module-path__%
                                               _%pre184129%_
                                               _%path184093%_)
                                              (gx#stx-e _%pre184129%_)))))
                                 (_%path-id184139%_
                                  (gx#core-module-path->namespace
                                   _%path184093%_))
                                 (_%pkg-id184141%_
                                  (if _%pkg184131%_
                                      (##string-append
                                       _%pkg184131%_
                                       '"/"
                                       _%path-id184139%_)
                                      _%path-id184139%_))
                                 (_%module-id184143%_
                                  (##string->symbol _%pkg-id184141%_))
                                 (_%module-ns184148%_
                                  (if (eq? _%ns184130%_ '#!void)
                                      '#f
                                      (let ((_%$e184145%_ _%ns184130%_))
                                        (if _%$e184145%_
                                            _%$e184145%_
                                            _%pkg-id184141%_)))))
                            (values _%prelude184137%_
                                    _%module-id184143%_
                                    _%module-ns184148%_
                                    _%body184097%_)))))))
                 (_%E184110184183%_
                  (lambda ()
                    (if (gx#stx-pair? _%e184101184125%_)
                        (let ((_%e184118184155%_
                               (gx#syntax-e _%e184101184125%_)))
                          (let ((_%hd184119184158%_ (##car _%e184118184155%_))
                                (_%tl184120184160%_ (##cdr _%e184118184155%_)))
                            (if (eq? (gx#stx-e _%hd184119184158%_) 'package:)
                                (if (gx#stx-pair? _%tl184120184160%_)
                                    (let ((_%e184121184163%_
                                           (gx#syntax-e _%tl184120184160%_)))
                                      (let ((_%hd184122184166%_
                                             (##car _%e184121184163%_))
                                            (_%tl184123184168%_
                                             (##cdr _%e184121184163%_)))
                                        (let* ((_%pkg184171%_
                                                _%hd184122184166%_)
                                               (_%rest184173%_
                                                _%tl184123184168%_)
                                               (_%pkg184181%_
                                                (if (gx#identifier?
                                                     _%pkg184171%_)
                                                    (symbol->string
                                                     (gx#stx-e _%pkg184171%_))
                                                    (if (or (gx#stx-string?
                                                             _%pkg184171%_)
                                                            (gx#stx-false?
                                                             _%pkg184171%_))
                                                        (gx#stx-e
                                                         _%pkg184171%_)
                                                        (gx#raise-syntax-error
                                                         'import
                                                         '"Bad syntax; Illegal package name"
                                                         _%pkg184171%_)))))
                                          (_%lp184095%_
                                           _%rest184173%_
                                           _%pre184098%_
                                           _%ns184099%_
                                           _%pkg184181%_))))
                                    (_%E184117184151%_))
                                (_%E184117184151%_))))
                        (_%E184117184151%_))))
                 (_%E184103184213%_
                  (lambda ()
                    (if (gx#stx-pair? _%e184101184125%_)
                        (let ((_%e184111184187%_
                               (gx#syntax-e _%e184101184125%_)))
                          (let ((_%hd184112184190%_ (##car _%e184111184187%_))
                                (_%tl184113184192%_ (##cdr _%e184111184187%_)))
                            (if (eq? (gx#stx-e _%hd184112184190%_) 'namespace:)
                                (if (gx#stx-pair? _%tl184113184192%_)
                                    (let ((_%e184114184195%_
                                           (gx#syntax-e _%tl184113184192%_)))
                                      (let ((_%hd184115184198%_
                                             (##car _%e184114184195%_))
                                            (_%tl184116184200%_
                                             (##cdr _%e184114184195%_)))
                                        (let* ((_%ns184203%_
                                                _%hd184115184198%_)
                                               (_%rest184205%_
                                                _%tl184116184200%_)
                                               (_%ns184211%_
                                                (if (gx#identifier?
                                                     _%ns184203%_)
                                                    (symbol->string
                                                     (gx#stx-e _%ns184203%_))
                                                    (if (gx#stx-string?
                                                         _%ns184203%_)
                                                        (gx#stx-e _%ns184203%_)
                                                        (if (gx#stx-false?
                                                             _%ns184203%_)
                                                            '#!void
                                                            (gx#raise-syntax-error
                                                             'import
                                                             '"Bad syntax; illegal namespace"
                                                             _%ns184203%_))))))
                                          (_%lp184095%_
                                           _%rest184205%_
                                           _%pre184098%_
                                           _%ns184211%_
                                           _%pkg184100%_))))
                                    (_%E184110184183%_))
                                (_%E184110184183%_))))
                        (_%E184110184183%_))))
                 (_%E184102184237%_
                  (lambda ()
                    (if (gx#stx-pair? _%e184101184125%_)
                        (let ((_%e184104184217%_
                               (gx#syntax-e _%e184101184125%_)))
                          (let ((_%hd184105184220%_ (##car _%e184104184217%_))
                                (_%tl184106184222%_ (##cdr _%e184104184217%_)))
                            (if (eq? (gx#stx-e _%hd184105184220%_) 'prelude:)
                                (if (gx#stx-pair? _%tl184106184222%_)
                                    (let ((_%e184107184225%_
                                           (gx#syntax-e _%tl184106184222%_)))
                                      (let ((_%hd184108184228%_
                                             (##car _%e184107184225%_))
                                            (_%tl184109184230%_
                                             (##cdr _%e184107184225%_)))
                                        (let* ((_%prelude184233%_
                                                _%hd184108184228%_)
                                               (_%rest184235%_
                                                _%tl184109184230%_))
                                          (_%lp184095%_
                                           _%rest184235%_
                                           _%prelude184233%_
                                           _%ns184099%_
                                           _%pkg184100%_))))
                                    (_%E184103184213%_))
                                (_%E184103184213%_))))
                        (_%E184103184213%_)))))
            (_%E184102184237%_)))))
    (define gx#core-read-module/lang
      (lambda (_%path183914%_)
        (letrec ((_%default-read-module-body183916%_
                  (lambda (_%inp184085%_)
                    (let _%lp184087%_ ((_%body184089%_ '()))
                      (let ((_%next184091%_ (read-syntax__% _%inp184085%_)))
                        (if (eof-object? _%next184091%_)
                            (reverse _%body184089%_)
                            (_%lp184087%_
                             (cons _%next184091%_ _%body184089%_)))))))
                 (_%read-body183917%_
                  (lambda (_%inp184002%_
                           _%pre184003%_
                           _%ns184004%_
                           _%pkg184005%_
                           _%args184006%_)
                    (let ((_g185494_
                           (if _%pkg184005%_
                               (values _%pre184003%_
                                       _%ns184004%_
                                       _%pkg184005%_)
                               (gx#core-read-module-package
                                _%path183914%_
                                _%pre184003%_
                                _%ns184004%_))))
                      (begin
                        (let ((_g185495_
                               (if (##values? _g185494_)
                                   (##values-length _g185494_)
                                   1)))
                          (if (not (##fx= _g185495_ 3))
                              (error "Context expects 3 values" _g185495_)))
                        (let ((_%pre184008%_ (##values-ref _g185494_ 0))
                              (_%ns184009%_ (##values-ref _g185494_ 1))
                              (_%pkg184010%_ (##values-ref _g185494_ 2)))
                          (let* ((_%prelude184012%_
                                  (gx#import-module__0 _%pre184008%_))
                                 (_%read-module-body184067%_
                                  (let ((_%$e184058%_
                                         (__find (lambda (_%e184013184015%_)
                                                   (let* ((_%e184013184017184027%_
                                                           _%e184013184015%_)
                                                          (_%else184019184035%_
                                                           (lambda () '#f))
                                                          (_%K184021184039%_
                                                           (lambda () '#t)))
                                                     (if (##structure-direct-instance-of?
                                                          _%e184013184017184027%_
                                                          'gx#module-export::t)
                                                         (let* ((_%e184022184042%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##unchecked-structure-ref
                          _%e184013184017184027%_
                          '1
                          '#f
                          '#f))
                        (_%e184023184045%_
                         (##unchecked-structure-ref
                          _%e184013184017184027%_
                          '2
                          '#f
                          '#f))
                        (_%e184024184048%_
                         (##unchecked-structure-ref
                          _%e184013184017184027%_
                          '3
                          '#f
                          '#f)))
                   (if (##eq? _%e184024184048%_ '1)
                       (let ((_%e184025184051%_
                              (##unchecked-structure-ref
                               _%e184013184017184027%_
                               '4
                               '#f
                               '#f)))
                         (if ((lambda (_%g184053184055%_)
                                (eq? _%g184053184055%_ 'read-module-body))
                              _%e184025184051%_)
                             (_%K184021184039%_)
                             (_%else184019184035%_)))
                       (_%else184019184035%_)))
                 (_%else184019184035%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (##unchecked-structure-ref
                                                  _%prelude184012%_
                                                  '9
                                                  '#f
                                                  '#f))))
                                    (if _%$e184058%_
                                        ((lambda (_%xport184061%_)
                                           (let ((_%proc184064%_
                                                  (__with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _%xport184061%_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _%proc184064%_)
                                                 _%proc184064%_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _%path183914%_
                                                  _%pre184008%_
                                                  _%proc184064%_))))
                                         _%$e184058%_)
                                        _%default-read-module-body183916%_)))
                                 (_%path-id184069%_
                                  (gx#core-module-path->namespace
                                   _%path183914%_))
                                 (_%pkg-id184071%_
                                  (if _%pkg184010%_
                                      (##string-append
                                       _%pkg184010%_
                                       '"/"
                                       _%path-id184069%_)
                                      _%path-id184069%_))
                                 (_%module-id184073%_
                                  (##string->symbol _%pkg-id184071%_))
                                 (_%module-ns184078%_
                                  (let ((_%$e184075%_ _%ns184009%_))
                                    (if _%$e184075%_
                                        _%$e184075%_
                                        _%pkg-id184071%_)))
                                 (_%body184082%_
                                  (call-with-parameters__1
                                   (lambda ()
                                     (call-with-parameters__1
                                      (lambda ()
                                        (_%read-module-body184067%_
                                         _%inp184002%_))
                                      gx#current-module-reader-args
                                      _%args184006%_))
                                   gx#current-module-reader-path
                                   _%path183914%_)))
                            (values _%prelude184012%_
                                    _%module-id184073%_
                                    _%module-ns184078%_
                                    _%body184082%_)))))))
                 (_%string-e183918%_
                  (lambda (_%obj183996%_ _%what183997%_)
                    (if (string? _%obj183996%_)
                        _%obj183996%_
                        (if (symbol? _%obj183996%_)
                            (##symbol->string _%obj183996%_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _%what183997%_)
                             _%path183914%_
                             _%obj183996%_)))))
                 (_%read-lang-args183919%_
                  (lambda (_%inp183951%_ _%args183952%_)
                    (let* ((_%args183953183961%_ _%args183952%_)
                           (_%else183955183969%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _%path183914%_)))
                           (_%K183957183984%_
                            (lambda (_%args183972%_ _%prelude183973%_)
                              (let* ((_%pkg183975%_
                                      (pgetq__0 'package: _%args183972%_))
                                     (_%pkg183977%_
                                      (if _%pkg183975%_
                                          (_%string-e183918%_
                                           _%pkg183975%_
                                           '"package")
                                          '#f))
                                     (_%ns183979%_
                                      (pgetq__0 'namespace: _%args183972%_))
                                     (_%ns183981%_
                                      (if _%ns183979%_
                                          (_%string-e183918%_
                                           _%ns183979%_
                                           '"namespace")
                                          '#f)))
                                (_%read-body183917%_
                                 _%inp183951%_
                                 _%prelude183973%_
                                 _%ns183981%_
                                 _%pkg183977%_
                                 _%args183972%_)))))
                      (if (pair? _%args183953183961%_)
                          (let ((_%hd183958183987%_
                                 (##car _%args183953183961%_))
                                (_%tl183959183989%_
                                 (##cdr _%args183953183961%_)))
                            (let* ((_%prelude183992%_ _%hd183958183987%_)
                                   (_%args183994%_ _%tl183959183989%_))
                              (_%K183957183984%_
                               _%args183994%_
                               _%prelude183992%_)))
                          (_%else183955183969%_)))))
                 (_%read-lang183920%_
                  (lambda (_%inp183925%_)
                    (let* ((_%head183927%_ (read-line _%inp183925%_))
                           (_%$e183929%_
                            (string-index__0 _%head183927%_ '#\space)))
                      (if _%$e183929%_
                          ((lambda (_%ix183932%_)
                             (let ((_%lang183934%_
                                    (substring
                                     _%head183927%_
                                     '0
                                     _%ix183932%_)))
                               (if (equal? _%lang183934%_ '"#lang")
                                   (let* ((_%rest183936%_
                                           (substring
                                            _%head183927%_
                                            (##fx+ _%ix183932%_ '1)
                                            (string-length _%head183927%_)))
                                          (_%args183947%_
                                           (__with-catch
                                            (lambda (_%g183937183939%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _%path183914%_
                                               _%g183937183939%_))
                                            (lambda ()
                                              (call-with-input-string
                                               _%rest183936%_
                                               (lambda (_%g183942183944%_)
                                                 (read-all
                                                  _%g183942183944%_
                                                  read)))))))
                                     (_%read-lang-args183919%_
                                      _%inp183925%_
                                      _%args183947%_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _%path183914%_))))
                           _%$e183929%_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _%path183914%_)))))
                 (_%read-e183921%_
                  (lambda (_%inp183923%_)
                    (if (eq? (peek-char _%inp183923%_) '#\#)
                        (_%read-lang183920%_ _%inp183923%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _%path183914%_)))))
          (gx#call-with-input-source-file _%path183914%_ _%read-e183921%_))))
    (define gx#core-read-module-package
      (lambda (_%path183862%_ _%pre183863%_ _%ns183864%_)
        (letrec ((_%string-e183866%_
                  (lambda (_%e183909%_)
                    (if (symbol? _%e183909%_)
                        (##symbol->string _%e183909%_)
                        (if (string? _%e183909%_)
                            _%e183909%_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%e183909%_))))))
          (let _%lp183868%_ ((_%dir183870%_ (path-directory _%path183862%_))
                             (_%pkg-path183871%_ '()))
            (let ((_%gerbil.pkg183873%_
                   (path-expand '"gerbil.pkg" _%dir183870%_)))
              (if (##file-exists? _%gerbil.pkg183873%_)
                  (let ((_%plist183875%_
                         (gx#core-library-package-plist__% _%dir183870%_ '#t)))
                    (if (null? _%plist183875%_)
                        (let ((_%pkg183878%_
                               (if (null? _%pkg-path183871%_)
                                   '#f
                                   (string-join _%pkg-path183871%_ '"/"))))
                          (values _%pre183863%_ _%ns183864%_ _%pkg183878%_))
                        (if (list? _%plist183875%_)
                            (let* ((_%root183881%_
                                    (pgetq__0 'package: _%plist183875%_))
                                   (_%pkg183885%_
                                    (let ((_%pkg-path183883%_
                                           (if _%root183881%_
                                               (cons (_%string-e183866%_
                                                      _%root183881%_)
                                                     _%pkg-path183871%_)
                                               _%pkg-path183871%_)))
                                      (if (null? _%pkg-path183883%_)
                                          '#f
                                          (string-join
                                           _%pkg-path183883%_
                                           '"/"))))
                                   (_%ns183892%_
                                    (let ((_%ns183890%_
                                           (let ((_%$e183887%_ _%ns183864%_))
                                             (if _%$e183887%_
                                                 _%$e183887%_
                                                 (pgetq__0
                                                  'namespace:
                                                  _%plist183875%_)))))
                                      (if _%ns183890%_
                                          (_%string-e183866%_ _%ns183890%_)
                                          '#f)))
                                   (_%pre183897%_
                                    (let ((_%$e183894%_ _%pre183863%_))
                                      (if _%$e183894%_
                                          _%$e183894%_
                                          (pgetq__0
                                           'prelude:
                                           _%plist183875%_)))))
                              (values _%pre183897%_
                                      _%ns183892%_
                                      _%pkg183885%_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%plist183875%_))))
                  (let ((_%dir*183901%_
                         (path-strip-trailing-directory-separator
                          _%dir183870%_)))
                    (if (or (__string-empty? _%dir*183901%_)
                            (equal? _%dir183870%_ _%dir*183901%_))
                        (values _%pre183863%_ _%ns183864%_ '#f)
                        (let ((_%xpath183906%_
                               (path-strip-directory _%dir*183901%_))
                              (_%xdir183907%_ (path-directory _%dir*183901%_)))
                          (_%lp183868%_
                           _%xdir183907%_
                           (cons _%xpath183906%_ _%pkg-path183871%_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_%path183860%_)
        (path-strip-extension (path-strip-directory _%path183860%_))))
    (define gx#core-module-path->id
      (lambda (_%path183858%_)
        (##string->symbol (gx#core-module-path->namespace _%path183858%_))))
    (define gx#core-resolve-module-path__%
      (lambda (_%stx-path183837%_ _%rel183838%_)
        (let* ((_%path183840%_ (gx#stx-e _%stx-path183837%_))
               (_%path183842%_
                (if (__string-empty? (path-extension _%path183840%_))
                    (##string-append _%path183840%_ '".ss")
                    _%path183840%_)))
          (gx#core-resolve-path__%
           _%path183842%_
           (let ((_%$e183845%_ (gx#stx-source _%stx-path183837%_)))
             (if _%$e183845%_ _%$e183845%_ _%rel183838%_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_%stx-path183851%_)
        (let ((_%rel183853%_ '#f))
          (gx#core-resolve-module-path__% _%stx-path183851%_ _%rel183853%_))))
    (define gx#core-resolve-module-path
      (lambda _g185496_
        (let ((_g185497_ (##length _g185496_)))
          (cond ((##fx= _g185497_ 1)
                 (apply gx#core-resolve-module-path__0 _g185496_))
                ((##fx= _g185497_ 2)
                 (apply gx#core-resolve-module-path__% _g185496_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g185496_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_%libpath183722%_)
        (let* ((_%spath183724%_ (symbol->string (gx#stx-e _%libpath183722%_)))
               (_%spath183726%_
                (substring
                 _%spath183724%_
                 '1
                 (##string-length _%spath183724%_)))
               (_%ext183728%_ (path-extension _%spath183726%_))
               (_%ssi183730%_
                (if (__string-empty? _%ext183728%_)
                    (##string-append _%spath183726%_ '".ssi")
                    (##string-append
                     (path-strip-extension _%spath183726%_)
                     '".ssi")))
               (_%srcs183734%_
                (if (__string-empty? _%ext183728%_)
                    (##map (lambda (_%ext183732%_)
                             (string-append _%spath183726%_ _%ext183732%_))
                           '(".ss" ".sld" ".scm"))
                    (cons _%spath183726%_ '()))))
          (let _%lp183737%_ ((_%rest183739%_ (load-path)))
            (let* ((_%rest183740183749%_ _%rest183739%_)
                   (_%E183743183753%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rest183740183749%_
                             '([dir . rest])
                             '([]))
                      '#!void)))
              (let ((_%K183745183824%_
                     (lambda (_%rest183764%_ _%dir183765%_)
                       (letrec ((_%resolve183767%_
                                 (lambda (_%ssi183780%_ _%srcs183781%_)
                                   (let ((_%compiled-path183783%_
                                          (path-expand
                                           _%ssi183780%_
                                           _%dir183765%_)))
                                     (if (##file-exists?
                                          _%compiled-path183783%_)
                                         (path-normalize
                                          _%compiled-path183783%_)
                                         (let _%lpr183785%_ ((_%rest-src183787%_
                                                              _%srcs183781%_))
                                           (let* ((_%rest-src183788183796%_
                                                   _%rest-src183787%_)
                                                  (_%else183790183804%_
                                                   (lambda ()
                                                     (_%lp183737%_
                                                      _%rest183764%_)))
                                                  (_%K183792183812%_
                                                   (lambda (_%rest-src183807%_
                                                            _%src183808%_)
                                                     (let ((_%src-path183810%_
                                                            (path-expand
                                                             _%src183808%_
                                                             _%dir183765%_)))
                                                       (if (##file-exists?
                                                            _%src-path183810%_)
                                                           (path-normalize
                                                            _%src-path183810%_)
                                                           (_%lpr183785%_
                                                            _%rest-src183807%_))))))
                                             (if (pair? _%rest-src183788183796%_)
                                                 (let ((_%hd183793183815%_
                                                        (##car _%rest-src183788183796%_))
                                                       (_%tl183794183817%_
                                                        (##cdr _%rest-src183788183796%_)))
                                                   (let* ((_%src183820%_
                                                           _%hd183793183815%_)
                                                          (_%rest-src183822%_
                                                           _%tl183794183817%_))
                                                     (_%K183792183812%_
                                                      _%rest-src183822%_
                                                      _%src183820%_)))
                                                 (_%else183790183804%_)))))))))
                         (let ((_%$e183769%_
                                (gx#core-library-package-path-prefix
                                 _%dir183765%_)))
                           (if _%$e183769%_
                               ((lambda (_%prefix183772%_)
                                  (if (string-prefix?
                                       _%prefix183772%_
                                       _%spath183726%_)
                                      (let ((_%ssi183776%_
                                             (substring
                                              _%ssi183730%_
                                              (string-length _%prefix183772%_)
                                              (##string-length _%ssi183730%_)))
                                            (_%srcs183777%_
                                             (##map (lambda (_%src183774%_)
                                                      (substring
                                                       _%src183774%_
                                                       (string-length
                                                        _%prefix183772%_)
                                                       (string-length
                                                        _%src183774%_)))
                                                    _%srcs183734%_)))
                                        (_%resolve183767%_
                                         _%ssi183776%_
                                         _%srcs183777%_))
                                      (_%lp183737%_ _%rest183764%_)))
                                _%$e183769%_)
                               (_%resolve183767%_
                                _%ssi183730%_
                                _%srcs183734%_))))))
                    (_%K183744183758%_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"cannot find library module"
                        _%libpath183722%_))))
                (let ((_%try-match183742183761%_
                       (lambda ()
                         (if (null? _%rest183740183749%_)
                             (_%K183744183758%_)
                             (_%E183743183753%_)))))
                  (if (pair? _%rest183740183749%_)
                      (let ((_%tl183747183829%_ (##cdr _%rest183740183749%_))
                            (_%hd183746183827%_ (##car _%rest183740183749%_)))
                        (let ((_%dir183832%_ _%hd183746183827%_)
                              (_%rest183834%_ _%tl183747183829%_))
                          (_%K183745183824%_ _%rest183834%_ _%dir183832%_)))
                      (_%try-match183742183761%_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_%modpath183690%_)
        (letrec ((_%resolve183692%_
                  (lambda (_%path183713%_ _%base183714%_)
                    (let ((_%$e183716%_
                           (string-rindex__0 _%base183714%_ '#\/)))
                      (if _%$e183716%_
                          ((lambda (_%idx183719%_)
                             (gx#core-resolve-library-module-path
                              (##string->symbol
                               (string-append
                                '":"
                                (substring _%base183714%_ '0 _%idx183719%_)
                                '"/"
                                _%path183713%_))))
                           _%$e183716%_)
                          (gx#core-resolve-library-module-path
                           (##string->symbol
                            (string-append '":" _%path183713%_))))))))
          (let ((_%spath183694%_ (symbol->string (gx#stx-e _%modpath183690%_)))
                (_%mod183695%_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _%mod183695%_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"cannot resolve relative module path; not in module context"
                 _%modpath183690%_))
            (let ((_%mpath183697%_
                   (symbol->string
                    (##structure-ref
                     _%mod183695%_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _%lp183699%_ ((_%spath183701%_ _%spath183694%_)
                                 (_%mpath183702%_ _%mpath183697%_))
                (if (string-prefix? '"../" _%spath183701%_)
                    (let ((_%$e183705%_
                           (string-rindex__0 _%mpath183702%_ '#\/)))
                      (if _%$e183705%_
                          ((lambda (_%idx183708%_)
                             (_%lp183699%_
                              (substring
                               _%spath183701%_
                               '3
                               (string-length _%spath183701%_))
                              (substring _%mpath183702%_ '0 _%idx183708%_)))
                           _%$e183705%_)
                          (gx#raise-syntax-error
                           '#f
                           '"cannot resolve relative module path; illegal traversal"
                           _%modpath183690%_)))
                    (if (string-prefix? '"./" _%spath183701%_)
                        (_%lp183699%_
                         (substring
                          _%spath183701%_
                          '2
                          (string-length _%spath183701%_))
                         _%mpath183702%_)
                        (_%resolve183692%_
                         _%spath183701%_
                         _%mpath183702%_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_%dir183682%_)
        (let ((_%$e183684%_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _%dir183682%_))))
          (if _%$e183684%_
              ((lambda (_%pkg183687%_)
                 (##string-append (symbol->string _%pkg183687%_) '"/"))
               _%$e183684%_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_%dir183652%_ _%exists?183653%_)
        (let ((_%$e183655%_ (__hash-get gx#__module-pkg-cache _%dir183652%_)))
          (if _%$e183655%_
              _%$e183655%_
              (let* ((_%gerbil.pkg183659%_
                      (path-expand '"gerbil.pkg" _%dir183652%_))
                     (_%plist183669%_
                      (if (or _%exists?183653%_
                              (##file-exists? _%gerbil.pkg183659%_))
                          (let ((_%e183664%_
                                 (gx#call-with-input-source-file
                                  _%gerbil.pkg183659%_
                                  read)))
                            (if (eof-object? _%e183664%_)
                                '()
                                (if (list? _%e183664%_)
                                    _%e183664%_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _%gerbil.pkg183659%_
                                     _%e183664%_))))
                          '())))
                (__hash-put!
                 gx#__module-pkg-cache
                 _%dir183652%_
                 _%plist183669%_)
                _%plist183669%_)))))
    (define gx#core-library-package-plist__0
      (lambda (_%dir183675%_)
        (let ((_%exists?183677%_ '#f))
          (gx#core-library-package-plist__% _%dir183675%_ _%exists?183677%_))))
    (define gx#core-library-package-plist
      (lambda _g185498_
        (let ((_g185499_ (##length _g185498_)))
          (cond ((##fx= _g185499_ 1)
                 (apply gx#core-library-package-plist__0 _g185498_))
                ((##fx= _g185499_ 2)
                 (apply gx#core-library-package-plist__% _g185498_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g185498_))))))
    (define gx#core-library-module-path?
      (lambda (_%stx183649%_)
        (gx#core-special-module-path? _%stx183649%_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_%stx183647%_)
        (gx#core-special-module-path? _%stx183647%_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_%stx183642%_ _%char183643%_)
        (if (gx#identifier? _%stx183642%_)
            (if (interned-symbol? (gx#stx-e _%stx183642%_))
                (let ((_%str183645%_
                       (symbol->string (gx#stx-e _%stx183642%_))))
                  (if (##fx> (##string-length _%str183645%_) '1)
                      (eq? (string-ref _%str183645%_ '0) _%char183643%_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_%stx183636%_)
        (gx#core-bound-identifier?__%
         _%stx183636%_
         (lambda (_%g183637183639%_)
           (gx#expander-binding?__% _%g183637183639%_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_%stx183630%_)
        (gx#core-bound-identifier?__%
         _%stx183630%_
         (lambda (_%g183631183633%_)
           (gx#expander-binding?__% _%g183631183633%_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_%stx183617%_)
        (letrec ((_%module-prelude?183619%_
                  (lambda (_%e183625%_)
                    (let ((_%$e183627%_
                           (##structure-instance-of?
                            _%e183625%_
                            'gx#module-context::t)))
                      (if _%$e183627%_
                          _%$e183627%_
                          (##structure-instance-of?
                           _%e183625%_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _%stx183617%_
           (lambda (_%g183620183622%_)
             (gx#expander-binding?__%
              _%g183620183622%_
              _%module-prelude?183619%_))))))
    (define gx#core-bind-import!__%
      (lambda (_%in183548%_ _%ctx183549%_ _%force-weak?183550%_)
        (let* ((_%in183551183560%_ _%in183548%_)
               (_%E183553183563%_
                (lambda ()
                  (error '"No clause matching"
                         _%in183551183560%_
                         '((module-import source key phi weak?)))
                  '#!void))
               (_%K183554183576%_
                (lambda (_%weak?183566%_
                         _%phi183567%_
                         _%key183568%_
                         _%source183569%_)
                  (gx#core-bind!__%
                   _%key183568%_
                   (let* ((_%e183571%_
                           (gx#core-resolve-module-export _%source183569%_))
                          (__obj185480
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
                      __obj185480
                      (##unchecked-structure-ref _%e183571%_ '1 '#f '#f)
                      _%key183568%_
                      _%phi183567%_
                      _%e183571%_
                      (##unchecked-structure-ref _%source183569%_ '1 '#f '#f)
                      (let ((_%$e183573%_ _%force-weak?183550%_))
                        (if _%$e183573%_ _%$e183573%_ _%weak?183566%_)))
                     __obj185480)
                   gx#core-context-rebind?
                   _%phi183567%_
                   _%ctx183549%_))))
          (if (##structure-direct-instance-of?
               _%in183551183560%_
               'gx#module-import::t)
              (let* ((_%e183555183579%_
                      (##unchecked-structure-ref
                       _%in183551183560%_
                       '1
                       '#f
                       '#f))
                     (_%source183582%_ _%e183555183579%_)
                     (_%e183556183584%_
                      (##unchecked-structure-ref
                       _%in183551183560%_
                       '2
                       '#f
                       '#f))
                     (_%key183587%_ _%e183556183584%_)
                     (_%e183557183589%_
                      (##unchecked-structure-ref
                       _%in183551183560%_
                       '3
                       '#f
                       '#f))
                     (_%phi183592%_ _%e183557183589%_)
                     (_%e183558183594%_
                      (##unchecked-structure-ref
                       _%in183551183560%_
                       '4
                       '#f
                       '#f))
                     (_%weak?183597%_ _%e183558183594%_))
                (_%K183554183576%_
                 _%weak?183597%_
                 _%phi183592%_
                 _%key183587%_
                 _%source183582%_))
              (_%E183553183563%_)))))
    (define gx#core-bind-import!__0
      (lambda (_%in183602%_)
        (let* ((_%ctx183604%_ (gx#current-expander-context))
               (_%force-weak?183606%_ '#f))
          (gx#core-bind-import!__%
           _%in183602%_
           _%ctx183604%_
           _%force-weak?183606%_))))
    (define gx#core-bind-import!__1
      (lambda (_%in183608%_ _%ctx183609%_)
        (let ((_%force-weak?183611%_ '#f))
          (gx#core-bind-import!__%
           _%in183608%_
           _%ctx183609%_
           _%force-weak?183611%_))))
    (define gx#core-bind-import!
      (lambda _g185500_
        (let ((_g185501_ (##length _g185500_)))
          (cond ((##fx= _g185501_ 1) (apply gx#core-bind-import!__0 _g185500_))
                ((##fx= _g185501_ 2) (apply gx#core-bind-import!__1 _g185500_))
                ((##fx= _g185501_ 3) (apply gx#core-bind-import!__% _g185500_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g185500_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_%in183534%_ _%ctx183535%_)
        (gx#core-bind-import!__% _%in183534%_ _%ctx183535%_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_%in183540%_)
        (let ((_%ctx183542%_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _%in183540%_ _%ctx183542%_))))
    (define gx#core-bind-weak-import!
      (lambda _g185502_
        (let ((_g185503_ (##length _g185502_)))
          (cond ((##fx= _g185503_ 1)
                 (apply gx#core-bind-weak-import!__0 _g185502_))
                ((##fx= _g185503_ 2)
                 (apply gx#core-bind-weak-import!__% _g185502_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g185502_))))))
    (define gx#core-resolve-module-export
      (lambda (_%out183427%_)
        (letrec ((_%subst183429%_
                  (lambda (_%key183474%_)
                    (let* ((_%key183475183483%_ _%key183474%_)
                           (_%else183477183491%_ (lambda () _%key183474%_))
                           (_%K183479183521%_
                            (lambda (_%mark183494%_ _%id183495%_)
                              (let* ((_%mark183496183502%_ _%mark183494%_)
                                     (_%E183498183505%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark183496183502%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K183499183513%_
                                      (lambda (_%subst183508%_)
                                        (let ((_%$e183510%_
                                               (if _%subst183508%_
                                                   (hash-get
                                                    _%subst183508%_
                                                    _%id183495%_)
                                                   '#f)))
                                          (if _%$e183510%_
                                              _%$e183510%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _%key183474%_))))))
                                (if (##structure-instance-of?
                                     _%mark183496183502%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e183500183516%_
                                            (##unchecked-structure-ref
                                             _%mark183496183502%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst183519%_ _%e183500183516%_))
                                      (_%K183499183513%_ _%subst183519%_))
                                    (_%E183498183505%_))))))
                      (if (pair? _%key183475183483%_)
                          (let ((_%hd183480183524%_
                                 (##car _%key183475183483%_))
                                (_%tl183481183526%_
                                 (##cdr _%key183475183483%_)))
                            (let* ((_%id183529%_ _%hd183480183524%_)
                                   (_%mark183531%_ _%tl183481183526%_))
                              (_%K183479183521%_ _%mark183531%_ _%id183529%_)))
                          (_%else183477183491%_))))))
          (let* ((_%out183430183440%_ _%out183427%_)
                 (_%E183432183443%_
                  (lambda ()
                    (error '"No clause matching"
                           _%out183430183440%_
                           '((module-export ctx key phi _ _)))
                    '#!void))
                 (_%K183433183450%_
                  (lambda (_%phi183446%_ _%key183447%_ _%ctx183448%_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _%ctx183448%_ _%phi183446%_)
                     (_%subst183429%_ _%key183447%_)))))
            (if (##structure-direct-instance-of?
                 _%out183430183440%_
                 'gx#module-export::t)
                (let* ((_%e183434183453%_
                        (##unchecked-structure-ref
                         _%out183430183440%_
                         '1
                         '#f
                         '#f))
                       (_%ctx183456%_ _%e183434183453%_)
                       (_%e183435183458%_
                        (##unchecked-structure-ref
                         _%out183430183440%_
                         '2
                         '#f
                         '#f))
                       (_%key183461%_ _%e183435183458%_)
                       (_%e183436183463%_
                        (##unchecked-structure-ref
                         _%out183430183440%_
                         '3
                         '#f
                         '#f))
                       (_%phi183466%_ _%e183436183463%_)
                       (_%e183437183468%_
                        (##unchecked-structure-ref
                         _%out183430183440%_
                         '4
                         '#f
                         '#f))
                       (_%e183438183471%_
                        (##unchecked-structure-ref
                         _%out183430183440%_
                         '5
                         '#f
                         '#f)))
                  (_%K183433183450%_
                   _%phi183466%_
                   _%key183461%_
                   _%ctx183456%_))
                (_%E183432183443%_))))))
    (define gx#core-module-export->import__%
      (lambda (_%out183353%_ _%rename183354%_ _%dphi183355%_)
        (let* ((_%out183356183366%_ _%out183353%_)
               (_%E183358183369%_
                (lambda ()
                  (error '"No clause matching"
                         _%out183356183366%_
                         '((module-export ctx key phi name weak?)))
                  '#!void))
               (_%K183359183381%_
                (lambda (_%weak?183372%_
                         _%name183373%_
                         _%phi183374%_
                         _%key183375%_
                         _%ctx183376%_)
                  (##structure
                   gx#module-import::t
                   _%out183353%_
                   (let ((_%$e183378%_ _%rename183354%_))
                     (if _%$e183378%_ _%$e183378%_ _%name183373%_))
                   (fx+ _%phi183374%_ _%dphi183355%_)
                   _%weak?183372%_))))
          (if (##structure-direct-instance-of?
               _%out183356183366%_
               'gx#module-export::t)
              (let* ((_%e183360183384%_
                      (##unchecked-structure-ref
                       _%out183356183366%_
                       '1
                       '#f
                       '#f))
                     (_%ctx183387%_ _%e183360183384%_)
                     (_%e183361183389%_
                      (##unchecked-structure-ref
                       _%out183356183366%_
                       '2
                       '#f
                       '#f))
                     (_%key183392%_ _%e183361183389%_)
                     (_%e183362183394%_
                      (##unchecked-structure-ref
                       _%out183356183366%_
                       '3
                       '#f
                       '#f))
                     (_%phi183397%_ _%e183362183394%_)
                     (_%e183363183399%_
                      (##unchecked-structure-ref
                       _%out183356183366%_
                       '4
                       '#f
                       '#f))
                     (_%name183402%_ _%e183363183399%_)
                     (_%e183364183404%_
                      (##unchecked-structure-ref
                       _%out183356183366%_
                       '5
                       '#f
                       '#f))
                     (_%weak?183407%_ _%e183364183404%_))
                (_%K183359183381%_
                 _%weak?183407%_
                 _%name183402%_
                 _%phi183397%_
                 _%key183392%_
                 _%ctx183387%_))
              (_%E183358183369%_)))))
    (define gx#core-module-export->import__0
      (lambda (_%out183412%_)
        (let* ((_%rename183414%_ '#f) (_%dphi183416%_ '0))
          (gx#core-module-export->import__%
           _%out183412%_
           _%rename183414%_
           _%dphi183416%_))))
    (define gx#core-module-export->import__1
      (lambda (_%out183418%_ _%rename183419%_)
        (let ((_%dphi183421%_ '0))
          (gx#core-module-export->import__%
           _%out183418%_
           _%rename183419%_
           _%dphi183421%_))))
    (define gx#core-module-export->import
      (lambda _g185504_
        (let ((_g185505_ (##length _g185504_)))
          (cond ((##fx= _g185505_ 1)
                 (apply gx#core-module-export->import__0 _g185504_))
                ((##fx= _g185505_ 2)
                 (apply gx#core-module-export->import__1 _g185504_))
                ((##fx= _g185505_ 3)
                 (apply gx#core-module-export->import__% _g185504_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g185504_))))))
    (define gx#core-expand-module%
      (lambda (_%stx183252%_)
        (letrec ((_%make-context183254%_
                  (lambda (_%id183331%_)
                    (let* ((_%super183333%_ (gx#current-expander-context))
                           (_%bind-id183335%_ (gx#stx-e _%id183331%_))
                           (_%mod-id183337%_
                            (if (##structure-instance-of?
                                 _%super183333%_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##unchecked-structure-ref
                                  _%super183333%_
                                  '1
                                  '#f
                                  '#f)
                                 '"~"
                                 _%bind-id183335%_)
                                _%bind-id183335%_))
                           (_%ns183339%_ (symbol->string _%mod-id183337%_))
                           (_%path183349%_
                            (if (##structure-instance-of?
                                 _%super183333%_
                                 'gx#module-context::t)
                                (let ((_%path183341%_
                                       (##unchecked-structure-ref
                                        _%super183333%_
                                        '7
                                        '#f
                                        '#f)))
                                  (if (or (pair? _%path183341%_)
                                          (null? _%path183341%_))
                                      (cons _%bind-id183335%_ _%path183341%_)
                                      (if (not _%path183341%_)
                                          _%bind-id183335%_
                                          (cons _%bind-id183335%_
                                                (cons _%path183341%_ '())))))
                                _%bind-id183335%_))
                           (__obj185481
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
                       __obj185481
                       _%mod-id183337%_
                       _%super183333%_
                       _%ns183339%_
                       _%path183349%_)
                      __obj185481)))
                 (_%valid-module-id?183255%_
                  (lambda (_%id183306%_)
                    (let* ((_%str183308%_ (symbol->string _%id183306%_))
                           (_%len183310%_ (##string-length _%str183308%_)))
                      (if (##fx>= _%len183310%_ '1)
                          (let _%loop183313%_ ((_%index183315%_
                                                (##fx- (##string-length
                                                        _%str183308%_)
                                                       '1)))
                            (if (##fx>= _%index183315%_ '0)
                                (let ((_%c183317%_
                                       (string-ref
                                        _%str183308%_
                                        _%index183315%_)))
                                  (if (or (and (##char>=? _%c183317%_ '#\a)
                                               (##char<=? _%c183317%_ '#\z))
                                          (and (##char>=? _%c183317%_ '#\A)
                                               (##char<=? _%c183317%_ '#\Z))
                                          (and (##char>=? _%c183317%_ '#\0)
                                               (##char<=? _%c183317%_ '#\9))
                                          (##char=? _%c183317%_ '#\_)
                                          (##char=? _%c183317%_ '#\-))
                                      (_%loop183313%_
                                       (##fx- _%index183315%_ '1))
                                      '#f))
                                '#t))
                          '#f)))))
          (let* ((_%e183256183266%_ _%stx183252%_)
                 (_%E183258183270%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e183256183266%_)))
                 (_%E183257183302%_
                  (lambda ()
                    (if (gx#stx-pair? _%e183256183266%_)
                        (let ((_%e183259183274%_
                               (gx#syntax-e _%e183256183266%_)))
                          (let ((_%hd183260183277%_ (##car _%e183259183274%_))
                                (_%tl183261183279%_ (##cdr _%e183259183274%_)))
                            (if (gx#stx-pair? _%tl183261183279%_)
                                (let ((_%e183262183282%_
                                       (gx#syntax-e _%tl183261183279%_)))
                                  (let ((_%hd183263183285%_
                                         (##car _%e183262183282%_))
                                        (_%tl183264183287%_
                                         (##cdr _%e183262183282%_)))
                                    (let* ((_%id183290%_ _%hd183263183285%_)
                                           (_%body183292%_ _%tl183264183287%_))
                                      (if (and (gx#identifier? _%id183290%_)
                                               (gx#stx-list? _%body183292%_))
                                          (if (_%valid-module-id?183255%_
                                               (gx#stx-e
                                                (gx#datum->syntax__0 '#f 'id)))
                                              (let* ((_%ctx183294%_
                                                      (_%make-context183254%_
                                                       _%id183290%_))
                                                     (_%body183296%_
                                                      (gx#core-expand-module-begin
                                                       _%body183292%_
                                                       _%ctx183294%_))
                                                     (_%body183298%_
                                                      (gx#core-quote-syntax__1
                                                       (gx#core-cons
                                                        '%#begin
                                                        _%body183296%_)
                                                       (gx#stx-source
                                                        _%stx183252%_))))
                                                (##unchecked-structure-set!
                                                 _%ctx183294%_
                                                 (__make-atomic-promise
                                                  (lambda ()
                                                    (gx#eval-syntax*
                                                     _%body183298%_)))
                                                 '10
                                                 '#f
                                                 '#f)
                                                (##unchecked-structure-set!
                                                 _%ctx183294%_
                                                 _%body183298%_
                                                 '11
                                                 '#f
                                                 '#f)
                                                (gx#core-bind-syntax!__0
                                                 _%id183290%_
                                                 _%ctx183294%_)
                                                (gx#core-quote-syntax__1
                                                 (gx#core-list
                                                  '%#module
                                                  (gx#core-quote-syntax__0
                                                   _%id183290%_)
                                                  _%body183298%_)
                                                 (gx#stx-source
                                                  _%stx183252%_)))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"invalid module id; allowed characters are A-Z,a-z,0-9,_,-"
                                               _%stx183252%_
                                               (gx#datum->syntax__0 '#f 'id)))
                                          (_%E183258183270%_)))))
                                (_%E183258183270%_))))
                        (_%E183258183270%_)))))
            (_%E183257183302%_)))))
    (define gx#core-expand-module-begin
      (lambda (_%body183217%_ _%ctx183218%_)
        (call-with-parameters__1
         (lambda ()
           (call-with-parameters__1
            (lambda ()
              (gx#core-bind-feature!__1 'gerbil-module '#t)
              (let* ((_%stx183222%_
                      (gx#core-expand-head
                       (cons '%%begin-module _%body183217%_)))
                     (_%e183223183230%_ _%stx183222%_)
                     (_%E183225183234%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module body expansion"
                         _%stx183222%_)))
                     (_%E183224183248%_
                      (lambda ()
                        (if (gx#stx-pair? _%e183223183230%_)
                            (let ((_%e183226183238%_
                                   (gx#syntax-e _%e183223183230%_)))
                              (let ((_%hd183227183241%_
                                     (##car _%e183226183238%_))
                                    (_%tl183228183243%_
                                     (##cdr _%e183226183238%_)))
                                (if (and (gx#identifier? _%hd183227183241%_)
                                         (gx#core-identifier=?
                                          _%hd183227183241%_
                                          '%#begin-module))
                                    (let ((_%body183246%_ _%tl183228183243%_))
                                      (if (gx#sealed-syntax? _%stx183222%_)
                                          _%body183246%_
                                          (gx#core-expand-module-body
                                           _%body183246%_)))
                                    (_%E183225183234%_))))
                            (_%E183225183234%_)))))
                (_%E183224183248%_)))
            gx#current-expander-phi
            '0))
         gx#current-expander-context
         _%ctx183218%_)))
    (define gx#core-expand-module-body
      (lambda (_%body183013%_)
        (letrec ((_%expand-special183015%_
                  (lambda (_%hd183144%_ _%K183145%_ _%rest183146%_ _%r183147%_)
                    (let* ((_%e183148183165%_ _%hd183144%_)
                           (_%E183160183169%_
                            (lambda ()
                              (_%K183145%_
                               _%rest183146%_
                               (cons (gx#core-expand-top _%hd183144%_)
                                     _%r183147%_))))
                           (_%E183150183181%_
                            (lambda ()
                              (if (gx#stx-pair? _%e183148183165%_)
                                  (let ((_%e183161183173%_
                                         (gx#syntax-e _%e183148183165%_)))
                                    (let ((_%hd183162183176%_
                                           (##car _%e183161183173%_))
                                          (_%tl183163183178%_
                                           (##cdr _%e183161183173%_)))
                                      (if (and (gx#identifier?
                                                _%hd183162183176%_)
                                               (gx#core-identifier=?
                                                _%hd183162183176%_
                                                '%#export))
                                          (_%K183145%_
                                           _%rest183146%_
                                           (cons _%hd183144%_ _%r183147%_))
                                          (_%E183160183169%_))))
                                  (_%E183160183169%_))))
                           (_%E183149183213%_
                            (lambda ()
                              (if (gx#stx-pair? _%e183148183165%_)
                                  (let ((_%e183151183185%_
                                         (gx#syntax-e _%e183148183165%_)))
                                    (let ((_%hd183152183188%_
                                           (##car _%e183151183185%_))
                                          (_%tl183153183190%_
                                           (##cdr _%e183151183185%_)))
                                      (if (and (gx#identifier?
                                                _%hd183152183188%_)
                                               (gx#core-identifier=?
                                                _%hd183152183188%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl183153183190%_)
                                              (let ((_%e183154183193%_
                                                     (gx#syntax-e
                                                      _%tl183153183190%_)))
                                                (let ((_%hd183155183196%_
                                                       (##car _%e183154183193%_))
                                                      (_%tl183156183198%_
                                                       (##cdr _%e183154183193%_)))
                                                  (let ((_%hd-bind183201%_
                                                         _%hd183155183196%_))
                                                    (if (gx#stx-pair?
                                                         _%tl183156183198%_)
                                                        (let ((_%e183157183203%_
                                                               (gx#syntax-e
                                                                _%tl183156183198%_)))
                                                          (let ((_%hd183158183206%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e183157183203%_))
                        (_%tl183159183208%_ (##cdr _%e183157183203%_)))
                    (let ((_%expr183211%_ _%hd183158183206%_))
                      (if (gx#stx-null? _%tl183159183208%_)
                          (if (gx#core-bind-values? _%hd-bind183201%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind183201%_)
                                (_%K183145%_
                                 _%rest183146%_
                                 (cons _%hd183144%_ _%r183147%_)))
                              (_%E183150183181%_))
                          (_%E183150183181%_)))))
                (_%E183150183181%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E183150183181%_))
                                          (_%E183150183181%_))))
                                  (_%E183150183181%_)))))
                      (_%E183149183213%_))))
                 (_%expand-body183016%_
                  (lambda (_%rbody183018%_)
                    (let _%lp183020%_ ((_%rest183022%_ _%rbody183018%_)
                                       (_%body183023%_ '()))
                      (let* ((_%rest183024183032%_ _%rest183022%_)
                             (_%else183026183040%_ (lambda () _%body183023%_))
                             (_%K183028183132%_
                              (lambda (_%rest183043%_ _%hd183044%_)
                                (let* ((_%e183045183066%_ _%hd183044%_)
                                       (_%E183061183070%_
                                        (lambda ()
                                          (_%lp183020%_
                                           _%rest183043%_
                                           (cons (gx#core-expand-expression
                                                  _%hd183044%_)
                                                 _%body183023%_))))
                                       (_%E183057183084%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e183045183066%_)
                                              (let ((_%e183062183074%_
                                                     (gx#syntax-e
                                                      _%e183045183066%_)))
                                                (let ((_%hd183063183077%_
                                                       (##car _%e183062183074%_))
                                                      (_%tl183064183079%_
                                                       (##cdr _%e183062183074%_)))
                                                  (let ((_%form183082%_
                                                         _%hd183063183077%_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _%form183082%_
                                                         gx#special-form-binding?)
                                                        (_%lp183020%_
                                                         _%rest183043%_
                                                         (cons _%hd183044%_
                                                               _%body183023%_))
                                                        (_%E183061183070%_)))))
                                              (_%E183061183070%_))))
                                       (_%E183047183096%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e183045183066%_)
                                              (let ((_%e183058183088%_
                                                     (gx#syntax-e
                                                      _%e183045183066%_)))
                                                (let ((_%hd183059183091%_
                                                       (##car _%e183058183088%_))
                                                      (_%tl183060183093%_
                                                       (##cdr _%e183058183088%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd183059183091%_)
                                                           (gx#core-identifier=?
                                                            _%hd183059183091%_
                                                            '%#export))
                                                      (_%lp183020%_
                                                       _%rest183043%_
                                                       (cons (gx#core-expand-export%__0
                                                              _%hd183044%_)
                                                             _%body183023%_))
                                                      (_%E183057183084%_))))
                                              (_%E183057183084%_))))
                                       (_%E183046183128%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e183045183066%_)
                                              (let ((_%e183048183100%_
                                                     (gx#syntax-e
                                                      _%e183045183066%_)))
                                                (let ((_%hd183049183103%_
                                                       (##car _%e183048183100%_))
                                                      (_%tl183050183105%_
                                                       (##cdr _%e183048183100%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd183049183103%_)
                                                           (gx#core-identifier=?
                                                            _%hd183049183103%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl183050183105%_)
                                                          (let ((_%e183051183108%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl183050183105%_)))
                    (let ((_%hd183052183111%_ (##car _%e183051183108%_))
                          (_%tl183053183113%_ (##cdr _%e183051183108%_)))
                      (let ((_%hd-bind183116%_ _%hd183052183111%_))
                        (if (gx#stx-pair? _%tl183053183113%_)
                            (let ((_%e183054183118%_
                                   (gx#syntax-e _%tl183053183113%_)))
                              (let ((_%hd183055183121%_
                                     (##car _%e183054183118%_))
                                    (_%tl183056183123%_
                                     (##cdr _%e183054183118%_)))
                                (let ((_%expr183126%_ _%hd183055183121%_))
                                  (if (gx#stx-null? _%tl183056183123%_)
                                      (_%lp183020%_
                                       _%rest183043%_
                                       (cons (gx#core-quote-syntax__1
                                              (gx#core-list
                                               '%#define-values
                                               (gx#core-quote-bind-values
                                                _%hd-bind183116%_)
                                               (gx#core-expand-expression
                                                _%expr183126%_))
                                              (gx#stx-source _%hd183044%_))
                                             _%body183023%_))
                                      (_%E183047183096%_)))))
                            (_%E183047183096%_)))))
                  (_%E183047183096%_))
              (_%E183047183096%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E183047183096%_)))))
                                  (_%E183046183128%_)))))
                        (if (pair? _%rest183024183032%_)
                            (let ((_%hd183029183135%_
                                   (##car _%rest183024183032%_))
                                  (_%tl183030183137%_
                                   (##cdr _%rest183024183032%_)))
                              (let* ((_%hd183140%_ _%hd183029183135%_)
                                     (_%rest183142%_ _%tl183030183137%_))
                                (_%K183028183132%_
                                 _%rest183142%_
                                 _%hd183140%_)))
                            (_%else183026183040%_)))))))
          (_%expand-body183016%_
           (gx#core-expand-block__%
            (cons '%#begin-module _%body183013%_)
            _%expand-special183015%_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_%stx182854%_
               _%expanded?182855%_
               _%method182856%_
               _%current-phi182857%_
               _%expand1182858%_)
        (letrec ((_%K182860%_
                  (lambda (_%rest182980%_ _%r182981%_)
                    (let* ((_%e182982182989%_ _%rest182980%_)
                           (_%E182984182993%_ (lambda () _%r182981%_))
                           (_%E182983183009%_
                            (lambda ()
                              (if (gx#stx-pair? _%e182982182989%_)
                                  (let ((_%e182985182997%_
                                         (gx#syntax-e _%e182982182989%_)))
                                    (let ((_%hd182986183000%_
                                           (##car _%e182985182997%_))
                                          (_%tl182987183002%_
                                           (##cdr _%e182985182997%_)))
                                      (let* ((_%hd183005%_ _%hd182986183000%_)
                                             (_%rest183007%_
                                              _%tl182987183002%_))
                                        (_%step182861%_
                                         _%hd183005%_
                                         _%rest183007%_
                                         _%r182981%_))))
                                  (_%E182984182993%_)))))
                      (_%E182983183009%_))))
                 (_%step182861%_
                  (lambda (_%hd182894%_ _%rest182895%_ _%r182896%_)
                    (let* ((_%e182897182915%_ _%hd182894%_)
                           (_%E182910182919%_
                            (lambda ()
                              (if (_%expanded?182855%_ (gx#stx-e _%hd182894%_))
                                  (_%K182860%_
                                   _%rest182895%_
                                   (cons (gx#stx-e _%hd182894%_) _%r182896%_))
                                  (_%expand1182858%_
                                   _%hd182894%_
                                   _%K182860%_
                                   _%rest182895%_
                                   _%r182896%_))))
                           (_%E182906182935%_
                            (lambda ()
                              (if (gx#stx-pair? _%e182897182915%_)
                                  (let ((_%e182911182923%_
                                         (gx#syntax-e _%e182897182915%_)))
                                    (let ((_%hd182912182926%_
                                           (##car _%e182911182923%_))
                                          (_%tl182913182928%_
                                           (##cdr _%e182911182923%_)))
                                      (let* ((_%macro182931%_
                                              _%hd182912182926%_)
                                             (_%body182933%_
                                              _%tl182913182928%_))
                                        (if (gx#core-bound-identifier?__%
                                             _%macro182931%_
                                             gx#syntax-binding?)
                                            (_%K182860%_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _%macro182931%_)
                                                    _%hd182894%_
                                                    _%method182856%_)
                                                   _%rest182895%_)
                                             _%r182896%_)
                                            (_%E182910182919%_)))))
                                  (_%E182910182919%_))))
                           (_%E182899182949%_
                            (lambda ()
                              (if (gx#stx-pair? _%e182897182915%_)
                                  (let ((_%e182907182939%_
                                         (gx#syntax-e _%e182897182915%_)))
                                    (let ((_%hd182908182942%_
                                           (##car _%e182907182939%_))
                                          (_%tl182909182944%_
                                           (##cdr _%e182907182939%_)))
                                      (if (eq? (gx#stx-e _%hd182908182942%_)
                                               'begin:)
                                          (let ((_%body182947%_
                                                 _%tl182909182944%_))
                                            (_%K182860%_
                                             (gx#stx-foldr
                                              cons
                                              _%rest182895%_
                                              _%body182947%_)
                                             _%r182896%_))
                                          (_%E182906182935%_))))
                                  (_%E182906182935%_))))
                           (_%E182898182976%_
                            (lambda ()
                              (if (gx#stx-pair? _%e182897182915%_)
                                  (let ((_%e182900182953%_
                                         (gx#syntax-e _%e182897182915%_)))
                                    (let ((_%hd182901182956%_
                                           (##car _%e182900182953%_))
                                          (_%tl182902182958%_
                                           (##cdr _%e182900182953%_)))
                                      (if (eq? (gx#stx-e _%hd182901182956%_)
                                               'phi:)
                                          (if (gx#stx-pair? _%tl182902182958%_)
                                              (let ((_%e182903182961%_
                                                     (gx#syntax-e
                                                      _%tl182902182958%_)))
                                                (let ((_%hd182904182964%_
                                                       (##car _%e182903182961%_))
                                                      (_%tl182905182966%_
                                                       (##cdr _%e182903182961%_)))
                                                  (let* ((_%dphi182969%_
                                                          _%hd182904182964%_)
                                                         (_%body182971%_
                                                          _%tl182905182966%_))
                                                    (if (gx#stx-fixnum?
                                                         _%dphi182969%_)
                                                        (let ((_%rbody182974%_
                                                               (call-with-parameters__1
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%K182860%_ _%body182971%_ '()))
                        _%current-phi182857%_
                        (fx+ (gx#stx-e _%dphi182969%_)
                             (_%current-phi182857%_)))))
                  (_%K182860%_
                   _%rest182895%_
                   (foldr__0 cons _%r182896%_ _%rbody182974%_)))
                (_%E182899182949%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E182899182949%_))
                                          (_%E182899182949%_))))
                                  (_%E182899182949%_)))))
                      (_%E182898182976%_)))))
          (let* ((_%e182862182869%_ _%stx182854%_)
                 (_%E182864182873%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e182862182869%_)))
                 (_%E182863182890%_
                  (lambda ()
                    (if (gx#stx-pair? _%e182862182869%_)
                        (let ((_%e182865182877%_
                               (gx#syntax-e _%e182862182869%_)))
                          (let ((_%hd182866182880%_ (##car _%e182865182877%_))
                                (_%tl182867182882%_ (##cdr _%e182865182877%_)))
                            (let ((_%body182885%_ _%tl182867182882%_))
                              (if (_%current-phi182857%_)
                                  (_%K182860%_ _%body182885%_ '())
                                  (call-with-parameters__1
                                   (lambda () (_%K182860%_ _%body182885%_ '()))
                                   _%current-phi182857%_
                                   (gx#current-expander-phi))))))
                        (_%E182864182873%_)))))
            (_%E182863182890%_)))))
    (define gx#core-expand-import%__%
      (lambda (_%stx182508%_ _%internal-expand?182509%_)
        (letrec ((_%expand1182511%_
                  (lambda (_%hd182826%_ _%K182827%_ _%rest182828%_ _%r182829%_)
                    (if (gx#core-bound-module? _%hd182826%_)
                        (_%import1182512%_
                         (gx#syntax-local-e__0 _%hd182826%_)
                         _%K182827%_
                         _%rest182828%_
                         _%r182829%_)
                        (if (gx#core-library-module-path? _%hd182826%_)
                            (_%import1182512%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%hd182826%_))
                             _%K182827%_
                             _%rest182828%_
                             _%r182829%_)
                            (if (gx#core-library-relative-module-path?
                                 _%hd182826%_)
                                (_%import1182512%_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _%hd182826%_))
                                 _%K182827%_
                                 _%rest182828%_
                                 _%r182829%_)
                                (let ((_%e182835%_ (gx#stx-e _%hd182826%_)))
                                  (if (pair? _%e182835%_)
                                      (let ((_%$e182838%_
                                             (gx#stx-e (##car _%e182835%_))))
                                        (if (eq? 'spec: _%$e182838%_)
                                            (_%import-spec182515%_
                                             _%hd182826%_
                                             _%K182827%_
                                             _%rest182828%_
                                             _%r182829%_)
                                            (if (eq? 'in: _%$e182838%_)
                                                (_%import-submodule182513%_
                                                 _%hd182826%_
                                                 _%K182827%_
                                                 _%rest182828%_
                                                 _%r182829%_)
                                                (if (eq? 'runtime:
                                                         _%$e182838%_)
                                                    (_%import-runtime182514%_
                                                     _%hd182826%_
                                                     _%K182827%_
                                                     _%rest182828%_
                                                     _%r182829%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _%stx182508%_
                                                     _%hd182826%_)))))
                                      (if (string? _%e182835%_)
                                          (_%import1182512%_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _%hd182826%_
                                             (gx#stx-source _%stx182508%_)))
                                           _%K182827%_
                                           _%rest182828%_
                                           _%r182829%_)
                                          (if (##structure-instance-of?
                                               _%e182835%_
                                               'gx#module-context::t)
                                              (_%K182827%_
                                               _%rest182828%_
                                               (cons _%e182835%_ _%r182829%_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _%stx182508%_
                                               _%hd182826%_))))))))))
                 (_%import1182512%_
                  (lambda (_%ctx182815%_
                           _%K182816%_
                           _%rest182817%_
                           _%r182818%_)
                    (let ((_%dphi182820%_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_%K182816%_
                       _%rest182817%_
                       (cons (##structure
                              gx#import-set::t
                              _%ctx182815%_
                              _%dphi182820%_
                              (map (lambda (_%g182821182823%_)
                                     (gx#core-module-export->import__%
                                      _%g182821182823%_
                                      '#f
                                      _%dphi182820%_))
                                   (##unchecked-structure-ref
                                    _%ctx182815%_
                                    '9
                                    '#f
                                    '#f)))
                             _%r182818%_)))))
                 (_%import-submodule182513%_
                  (lambda (_%hd182782%_ _%K182783%_ _%rest182784%_ _%r182785%_)
                    (let* ((_%e182786182793%_ _%hd182782%_)
                           (_%E182788182797%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e182786182793%_)))
                           (_%E182787182811%_
                            (lambda ()
                              (if (gx#stx-pair? _%e182786182793%_)
                                  (let ((_%e182789182801%_
                                         (gx#syntax-e _%e182786182793%_)))
                                    (let ((_%hd182790182804%_
                                           (##car _%e182789182801%_))
                                          (_%tl182791182806%_
                                           (##cdr _%e182789182801%_)))
                                      (let ((_%spath182809%_
                                             _%tl182791182806%_))
                                        (_%import1182512%_
                                         (_%import-spec-source182516%_
                                          _%spath182809%_)
                                         _%K182783%_
                                         _%rest182784%_
                                         _%r182785%_))))
                                  (_%E182788182797%_)))))
                      (_%E182787182811%_))))
                 (_%import-runtime182514%_
                  (lambda (_%hd182749%_ _%K182750%_ _%rest182751%_ _%r182752%_)
                    (let* ((_%e182753182760%_ _%hd182749%_)
                           (_%E182755182764%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e182753182760%_)))
                           (_%E182754182778%_
                            (lambda ()
                              (if (gx#stx-pair? _%e182753182760%_)
                                  (let ((_%e182756182768%_
                                         (gx#syntax-e _%e182753182760%_)))
                                    (let ((_%hd182757182771%_
                                           (##car _%e182756182768%_))
                                          (_%tl182758182773%_
                                           (##cdr _%e182756182768%_)))
                                      (let ((_%spath182776%_
                                             _%tl182758182773%_))
                                        (_%K182750%_
                                         _%rest182751%_
                                         (cons (_%import-spec-source182516%_
                                                _%spath182776%_)
                                               _%r182752%_)))))
                                  (_%E182755182764%_)))))
                      (_%E182754182778%_))))
                 (_%import-spec182515%_
                  (lambda (_%hd182587%_ _%K182588%_ _%rest182589%_ _%r182590%_)
                    (let* ((_%e182591182608%_ _%hd182587%_)
                           (_%E182600182612%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e182591182608%_)))
                           (_%E182593182723%_
                            (lambda ()
                              (if (gx#stx-pair? _%e182591182608%_)
                                  (let ((_%e182601182616%_
                                         (gx#syntax-e _%e182591182608%_)))
                                    (let ((_%hd182602182619%_
                                           (##car _%e182601182616%_))
                                          (_%tl182603182621%_
                                           (##cdr _%e182601182616%_)))
                                      (if (gx#stx-pair? _%tl182603182621%_)
                                          (let ((_%e182604182624%_
                                                 (gx#syntax-e
                                                  _%tl182603182621%_)))
                                            (let ((_%hd182605182627%_
                                                   (##car _%e182604182624%_))
                                                  (_%tl182606182629%_
                                                   (##cdr _%e182604182624%_)))
                                              (let* ((_%path182632%_
                                                      _%hd182605182627%_)
                                                     (_%specs182634%_
                                                      _%tl182606182629%_))
                                                (let ((_%src-ctx182636%_
                                                       (_%import-spec-source182516%_
                                                        _%path182632%_))
                                                      (_%exports182637%_
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
                                                      (_%specs182638%_
                                                       (gx#syntax->list
                                                        _%specs182634%_)))
                                                  (for-each
                                                   (lambda (_%out182640%_)
                                                     (__hash-put!
                                                      _%exports182637%_
                                                      (cons (##unchecked-structure-ref
                                                             _%out182640%_
                                                             '3
                                                             '#f
                                                             '#f)
                                                            (##unchecked-structure-ref
                                                             _%out182640%_
                                                             '4
                                                             '#f
                                                             '#f))
                                                      _%out182640%_))
                                                   (##unchecked-structure-ref
                                                    _%src-ctx182636%_
                                                    '9
                                                    '#f
                                                    '#f))
                                                  (_%K182588%_
                                                   _%rest182589%_
                                                   (foldl__0
                                                    (lambda (_%spec182642%_
                                                             _%r182643%_)
                                                      (let* ((_%e182644182660%_
                                                              _%spec182642%_)
                                                             (_%E182646182664%_
                                                              (lambda ()
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid syntax-case clause"
                         _%e182644182660%_)))
                     (_%E182645182719%_
                      (lambda ()
                        (if (gx#stx-pair? _%e182644182660%_)
                            (let ((_%e182647182668%_
                                   (gx#syntax-e _%e182644182660%_)))
                              (let ((_%hd182648182671%_
                                     (##car _%e182647182668%_))
                                    (_%tl182649182673%_
                                     (##cdr _%e182647182668%_)))
                                (let ((_%phi182676%_ _%hd182648182671%_))
                                  (if (gx#stx-pair? _%tl182649182673%_)
                                      (let ((_%e182650182678%_
                                             (gx#syntax-e _%tl182649182673%_)))
                                        (let ((_%hd182651182681%_
                                               (##car _%e182650182678%_))
                                              (_%tl182652182683%_
                                               (##cdr _%e182650182678%_)))
                                          (let ((_%name182686%_
                                                 _%hd182651182681%_))
                                            (if (gx#stx-pair?
                                                 _%tl182652182683%_)
                                                (let ((_%e182653182688%_
                                                       (gx#syntax-e
                                                        _%tl182652182683%_)))
                                                  (let ((_%hd182654182691%_
                                                         (##car _%e182653182688%_))
                                                        (_%tl182655182693%_
                                                         (##cdr _%e182653182688%_)))
                                                    (let ((_%src-phi182696%_
                                                           _%hd182654182691%_))
                                                      (if (gx#stx-pair?
                                                           _%tl182655182693%_)
                                                          (let ((_%e182656182698%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl182655182693%_)))
                    (let ((_%hd182657182701%_ (##car _%e182656182698%_))
                          (_%tl182658182703%_ (##cdr _%e182656182698%_)))
                      (let ((_%src-name182706%_ _%hd182657182701%_))
                        (if (gx#stx-null? _%tl182658182703%_)
                            (if (and (gx#stx-fixnum? _%src-phi182696%_)
                                     (gx#identifier? _%src-name182706%_)
                                     (gx#stx-fixnum? _%phi182676%_)
                                     (gx#identifier? _%name182686%_))
                                (let ((_%src-phi182708%_
                                       (gx#stx-e _%src-phi182696%_))
                                      (_%src-name182709%_
                                       (gx#core-identifier-key
                                        _%src-name182706%_))
                                      (_%phi182710%_ (gx#stx-e _%phi182676%_))
                                      (_%name182711%_
                                       (gx#core-identifier-key
                                        _%name182686%_)))
                                  (let ((_%$e182713%_
                                         (__hash-get
                                          _%exports182637%_
                                          (cons _%src-phi182708%_
                                                _%src-name182709%_))))
                                    (if _%$e182713%_
                                        ((lambda (_%out182716%_)
                                           (cons (gx#core-module-export->import__%
                                                  _%out182716%_
                                                  _%name182711%_
                                                  (fx- _%phi182710%_
                                                       _%src-phi182708%_))
                                                 _%r182643%_))
                                         _%$e182713%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; no matching export"
                                         _%stx182508%_
                                         _%hd182587%_))))
                                (_%E182646182664%_))
                            (_%E182646182664%_)))))
                  (_%E182646182664%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E182646182664%_)))))
                                      (_%E182646182664%_)))))
                            (_%E182646182664%_)))))
                (_%E182645182719%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r182590%_
                                                    _%specs182638%_))))))
                                          (_%E182600182612%_))))
                                  (_%E182600182612%_))))
                           (_%E182592182745%_
                            (lambda ()
                              (if (gx#stx-pair? _%e182591182608%_)
                                  (let ((_%e182594182727%_
                                         (gx#syntax-e _%e182591182608%_)))
                                    (let ((_%hd182595182730%_
                                           (##car _%e182594182727%_))
                                          (_%tl182596182732%_
                                           (##cdr _%e182594182727%_)))
                                      (if (gx#stx-pair? _%tl182596182732%_)
                                          (let ((_%e182597182735%_
                                                 (gx#syntax-e
                                                  _%tl182596182732%_)))
                                            (let ((_%hd182598182738%_
                                                   (##car _%e182597182735%_))
                                                  (_%tl182599182740%_
                                                   (##cdr _%e182597182735%_)))
                                              (let ((_%path182743%_
                                                     _%hd182598182738%_))
                                                (if (gx#stx-null?
                                                     _%tl182599182740%_)
                                                    (_%K182588%_
                                                     _%rest182589%_
                                                     (cons (_%import-spec-source182516%_
                                                            _%path182743%_)
                                                           _%r182590%_))
                                                    (_%E182593182723%_)))))
                                          (_%E182593182723%_))))
                                  (_%E182593182723%_)))))
                      (_%E182592182745%_))))
                 (_%import-spec-source182516%_
                  (lambda (_%spath182585%_)
                    (gx#core-import-nested-module
                     _%spath182585%_
                     _%stx182508%_)))
                 (_%import!182517%_
                  (lambda (_%rbody182530%_)
                    (letrec* ((_%current-ctx182532%_
                               (gx#current-expander-context))
                              (_%deps182533%_ (make-hash-table-eq))
                              (_%bind!182534%_
                               (lambda (_%hd182583%_)
                                 (gx#core-bind-import!__1
                                  _%hd182583%_
                                  _%current-ctx182532%_))))
                      (let _%lp182536%_ ((_%rest182538%_ _%rbody182530%_)
                                         (_%body182539%_ '()))
                        (let* ((_%rest182540182548%_ _%rest182538%_)
                               (_%else182542182559%_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _%current-ctx182532%_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _%current-ctx182532%_
                                       (foldl__0
                                        cons
                                        (##unchecked-structure-ref
                                         _%current-ctx182532%_
                                         '8
                                         '#f
                                         '#f)
                                        _%body182539%_)
                                       '8
                                       '#f
                                       '#f)
                                      '#!void)
                                  (__hash-for-each
                                   (lambda (_%ctx182556%_ _%_182557%_)
                                     (gx#eval-module _%ctx182556%_))
                                   _%deps182533%_)
                                  _%body182539%_))
                               (_%K182544182571%_
                                (lambda (_%rest182562%_ _%hd182563%_)
                                  (if (##structure-direct-instance-of?
                                       _%hd182563%_
                                       'gx#module-import::t)
                                      (let ()
                                        (_%bind!182534%_ _%hd182563%_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _%hd182563%_
                                                   '3
                                                   '#f
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _%hd182563%_
                                                            '1
                                                            '#f
                                                            '#f)
                                                           '3
                                                           '#f
                                                           '#f)))
                                            (__hash-put!
                                             _%deps182533%_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _%hd182563%_
                                               '1
                                               '#f
                                               '#f)
                                              '1
                                              '#f
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _%hd182563%_
                                           'gx#import-set::t)
                                          (let ()
                                            (for-each
                                             _%bind!182534%_
                                             (##unchecked-structure-ref
                                              _%hd182563%_
                                              '3
                                              '#f
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _%hd182563%_
                                                  '2
                                                  '#f
                                                  '#f))
                                                (__hash-put!
                                                 _%deps182533%_
                                                 (##unchecked-structure-ref
                                                  _%hd182563%_
                                                  '1
                                                  '#f
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_%$e182567%_
                                                 (##structure-instance-of?
                                                  _%hd182563%_
                                                  'gx#module-context::t)))
                                            (if _%$e182567%_
                                                _%$e182567%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _%stx182508%_
                                                 _%hd182563%_)))))
                                  (_%lp182536%_
                                   _%rest182562%_
                                   (cons _%hd182563%_ _%body182539%_)))))
                          (if (pair? _%rest182540182548%_)
                              (let ((_%hd182545182574%_
                                     (##car _%rest182540182548%_))
                                    (_%tl182546182576%_
                                     (##cdr _%rest182540182548%_)))
                                (let* ((_%hd182579%_ _%hd182545182574%_)
                                       (_%rest182581%_ _%tl182546182576%_))
                                  (_%K182544182571%_
                                   _%rest182581%_
                                   _%hd182579%_)))
                              (_%else182542182559%_)))))))
                 (_%expanded-import?182518%_
                  (lambda (_%e182522%_)
                    (let ((_%$e182524%_
                           (##structure-direct-instance-of?
                            _%e182522%_
                            'gx#import-set::t)))
                      (if _%$e182524%_
                          _%$e182524%_
                          (let ((_%$e182527%_
                                 (##structure-direct-instance-of?
                                  _%e182522%_
                                  'gx#module-import::t)))
                            (if _%$e182527%_
                                _%$e182527%_
                                (##structure-instance-of?
                                 _%e182522%_
                                 'gx#module-context::t))))))))
          (let ((_%rbody182520%_
                 (gx#core-expand-import/export
                  _%stx182508%_
                  _%expanded-import?182518%_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _%expand1182511%_)))
            (if _%internal-expand?182509%_
                (reverse _%rbody182520%_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_%import!182517%_ _%rbody182520%_))
                 (gx#stx-source _%stx182508%_)))))))
    (define gx#core-expand-import%__0
      (lambda (_%stx182847%_)
        (let ((_%internal-expand?182849%_ '#f))
          (gx#core-expand-import%__%
           _%stx182847%_
           _%internal-expand?182849%_))))
    (define gx#core-expand-import%
      (lambda _g185506_
        (let ((_g185507_ (##length _g185506_)))
          (cond ((##fx= _g185507_ 1)
                 (apply gx#core-expand-import%__0 _g185506_))
                ((##fx= _g185507_ 2)
                 (apply gx#core-expand-import%__% _g185506_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g185506_))))))
    (define gx#core-import-nested-module
      (lambda (_%spath182435%_ _%where182436%_)
        (let* ((_%e182437182444%_ _%spath182435%_)
               (_%E182439182448%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e182437182444%_)))
               (_%E182438182503%_
                (lambda ()
                  (if (gx#stx-pair? _%e182437182444%_)
                      (let ((_%e182440182452%_
                             (gx#syntax-e _%e182437182444%_)))
                        (let ((_%hd182441182455%_ (##car _%e182440182452%_))
                              (_%tl182442182457%_ (##cdr _%e182440182452%_)))
                          (let* ((_%origin182460%_ _%hd182441182455%_)
                                 (_%sub182462%_ _%tl182442182457%_)
                                 (_%origin-ctx182464%_
                                  (if (gx#stx-false? _%origin182460%_)
                                      (gx#current-expander-context)
                                      (gx#import-module__0 _%origin182460%_))))
                            (let _%lp182466%_ ((_%rest182468%_ _%sub182462%_)
                                               (_%ctx182469%_
                                                _%origin-ctx182464%_))
                              (let* ((_%e182470182477%_ _%rest182468%_)
                                     (_%E182472182481%_
                                      (lambda () _%ctx182469%_))
                                     (_%E182471182499%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e182470182477%_)
                                            (let ((_%e182473182485%_
                                                   (gx#syntax-e
                                                    _%e182470182477%_)))
                                              (let ((_%hd182474182488%_
                                                     (##car _%e182473182485%_))
                                                    (_%tl182475182490%_
                                                     (##cdr _%e182473182485%_)))
                                                (let* ((_%id182493%_
                                                        _%hd182474182488%_)
                                                       (_%rest182495%_
                                                        _%tl182475182490%_)
                                                       (_%bind182497%_
                                                        (gx#resolve-identifier__%
                                                         _%id182493%_
                                                         '0
                                                         _%ctx182469%_)))
                                                  (if (and (##structure-direct-instance-of?
                                                            _%bind182497%_
                                                            'gx#syntax-binding::t)
                                                           (##structure-instance-of?
                                                            (##unchecked-structure-ref
                                                             _%bind182497%_
                                                             '5
                                                             '#f
                                                             '#f)
                                                            'gx#module-context::t))
                                                      '#!void
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; not bound as module"
                                                       _%where182436%_
                                                       _%spath182435%_
                                                       _%id182493%_))
                                                  (_%lp182466%_
                                                   _%rest182495%_
                                                   (##unchecked-structure-ref
                                                    _%bind182497%_
                                                    '5
                                                    '#f
                                                    '#f)))))
                                            (_%E182472182481%_)))))
                                (_%E182471182499%_))))))
                      (_%E182439182448%_)))))
          (_%E182438182503%_))))
    (define gx#core-expand-import-source
      (lambda (_%hd182433%_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _%hd182433%_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_%stx181928%_ _%internal-expand?181929%_)
        (letrec* ((_%make-export__185434185435%_
                   (lambda (_%bind182381%_
                            _%phi182382%_
                            _%ctx182383%_
                            _%name182384%_)
                     (let* ((_%key182386%_
                             (##unchecked-structure-ref
                              _%bind182381%_
                              '2
                              '#f
                              '#f))
                            (_%export-key182388%_
                             (if _%name182384%_
                                 (gx#core-identifier-key _%name182384%_)
                                 _%key182386%_)))
                       (##structure
                        gx#module-export::t
                        _%ctx182383%_
                        _%key182386%_
                        _%phi182382%_
                        _%export-key182388%_
                        (let ((_%$e182391%_
                               (##structure-instance-of?
                                _%bind182381%_
                                'gx#extern-binding::t)))
                          (if _%$e182391%_
                              _%$e182391%_
                              (##structure-direct-instance-of?
                               _%bind182381%_
                               'gx#import-binding::t)))))))
                  (_%make-export__0__185436185439%_
                   (lambda (_%bind182397%_)
                     (let* ((_%phi182399%_ (gx#current-export-expander-phi))
                            (_%ctx182401%_ (gx#current-expander-context))
                            (_%name182403%_ '#f))
                       (_%make-export__185434185435%_
                        _%bind182397%_
                        _%phi182399%_
                        _%ctx182401%_
                        _%name182403%_))))
                  (_%make-export__1__185437185440%_
                   (lambda (_%bind182405%_ _%phi182406%_)
                     (let* ((_%ctx182408%_ (gx#current-expander-context))
                            (_%name182410%_ '#f))
                       (_%make-export__185434185435%_
                        _%bind182405%_
                        _%phi182406%_
                        _%ctx182408%_
                        _%name182410%_))))
                  (_%make-export__2__185438185441%_
                   (lambda (_%bind182412%_ _%phi182413%_ _%ctx182414%_)
                     (let ((_%name182416%_ '#f))
                       (_%make-export__185434185435%_
                        _%bind182412%_
                        _%phi182413%_
                        _%ctx182414%_
                        _%name182416%_))))
                  (_%make-export181931%_
                   (lambda _g185508_
                     (let ((_g185509_ (##length _g185508_)))
                       (cond ((##fx= _g185509_ 1)
                              (apply _%make-export__0__185436185439%_
                                     _g185508_))
                             ((##fx= _g185509_ 2)
                              (apply _%make-export__1__185437185440%_
                                     _g185508_))
                             ((##fx= _g185509_ 3)
                              (apply _%make-export__2__185438185441%_
                                     _g185508_))
                             ((##fx= _g185509_ 4)
                              (apply _%make-export__185434185435%_ _g185508_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g185508_))))))
                  (_%expand1181932%_
                   (lambda (_%hd182086%_
                            _%K182087%_
                            _%rest182088%_
                            _%r182089%_)
                     (let* ((_%e182090182122%_ _%hd182086%_)
                            (_%E182117182126%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _%stx181928%_
                                _%hd182086%_)))
                            (_%E182107182210%_
                             (lambda ()
                               (if (gx#stx-pair? _%e182090182122%_)
                                   (let ((_%e182118182130%_
                                          (gx#syntax-e _%e182090182122%_)))
                                     (let ((_%hd182119182133%_
                                            (##car _%e182118182130%_))
                                           (_%tl182120182135%_
                                            (##cdr _%e182118182130%_)))
                                       (if (eq? (gx#stx-e _%hd182119182133%_)
                                                'import:)
                                           (let ((_%in182138%_
                                                  _%tl182120182135%_))
                                             (if (gx#stx-list? _%in182138%_)
                                                 (let _%lp182140%_ ((_%in-rest182142%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%in182138%_)
                            (_%r182143%_ _%r182089%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%e182144182151%_
                                                           _%in-rest182142%_)
                                                          (_%E182146182155%_
                                                           (lambda ()
                                                             (_%K182087%_
                                                              _%rest182088%_
                                                              _%r182143%_)))
                                                          (_%E182145182206%_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%e182144182151%_)
                         (let ((_%e182147182159%_
                                (gx#syntax-e _%e182144182151%_)))
                           (let ((_%hd182148182162%_ (##car _%e182147182159%_))
                                 (_%tl182149182164%_
                                  (##cdr _%e182147182159%_)))
                             (let* ((_%hd182167%_ _%hd182148182162%_)
                                    (_%in-rest182169%_ _%tl182149182164%_)
                                    (_%src182204%_
                                     (if (gx#core-bound-module? _%hd182167%_)
                                         (gx#syntax-local-e__0 _%hd182167%_)
                                         (if (gx#core-library-module-path?
                                              _%hd182167%_)
                                             (gx#import-module__0
                                              (gx#core-resolve-library-module-path
                                               _%hd182167%_))
                                             (if (gx#core-library-relative-module-path?
                                                  _%hd182167%_)
                                                 (gx#import-module__0
                                                  (gx#core-resolve-library-relative-module-path
                                                   _%hd182167%_))
                                                 (if (gx#stx-string?
                                                      _%hd182167%_)
                                                     (gx#import-module__0
                                                      (gx#core-resolve-module-path__%
                                                       _%hd182167%_
                                                       (gx#stx-source
                                                        _%stx181928%_)))
                                                     (let* ((_%e182175182182%_
                                                             _%hd182167%_)
                                                            (_%E182177182186%_
                                                             (lambda ()
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; illegal re-export"
                                                                _%stx181928%_
                                                                _%hd182167%_)))
                                                            (_%E182176182200%_
                                                             (lambda ()
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%e182175182182%_)
                           (let ((_%e182178182190%_
                                  (gx#syntax-e _%e182175182182%_)))
                             (let ((_%hd182179182193%_
                                    (##car _%e182178182190%_))
                                   (_%tl182180182195%_
                                    (##cdr _%e182178182190%_)))
                               (if (eq? (gx#stx-e _%hd182179182193%_) 'in:)
                                   (let ((_%spath182198%_ _%tl182180182195%_))
                                     (gx#core-import-nested-module
                                      _%spath182198%_
                                      _%stx181928%_))
                                   (_%E182177182186%_))))
                           (_%E182177182186%_)))))
               (_%E182176182200%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (_%lp182140%_
                                _%in-rest182169%_
                                (_%export-imports181933%_
                                 _%src182204%_
                                 _%r182143%_)))))
                         (_%E182146182155%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E182145182206%_)))
                                                 (_%E182117182126%_)))
                                           (_%E182117182126%_))))
                                   (_%E182117182126%_))))
                            (_%E182094182250%_
                             (lambda ()
                               (if (gx#stx-pair? _%e182090182122%_)
                                   (let ((_%e182108182214%_
                                          (gx#syntax-e _%e182090182122%_)))
                                     (let ((_%hd182109182217%_
                                            (##car _%e182108182214%_))
                                           (_%tl182110182219%_
                                            (##cdr _%e182108182214%_)))
                                       (if (eq? (gx#stx-e _%hd182109182217%_)
                                                'rename:)
                                           (if (gx#stx-pair?
                                                _%tl182110182219%_)
                                               (let ((_%e182111182222%_
                                                      (gx#syntax-e
                                                       _%tl182110182219%_)))
                                                 (let ((_%hd182112182225%_
                                                        (##car _%e182111182222%_))
                                                       (_%tl182113182227%_
                                                        (##cdr _%e182111182222%_)))
                                                   (let ((_%id182230%_
                                                          _%hd182112182225%_))
                                                     (if (gx#stx-pair?
                                                          _%tl182113182227%_)
                                                         (let ((_%e182114182232%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl182113182227%_)))
                   (let ((_%hd182115182235%_ (##car _%e182114182232%_))
                         (_%tl182116182237%_ (##cdr _%e182114182232%_)))
                     (let ((_%name182240%_ _%hd182115182235%_))
                       (if (gx#stx-null? _%tl182116182237%_)
                           (let* ((_%phi182242%_
                                   (gx#current-export-expander-phi))
                                  (_%$e182244%_
                                   (gx#core-resolve-identifier__1
                                    _%id182230%_
                                    _%phi182242%_)))
                             (if _%$e182244%_
                                 ((lambda (_%bind182247%_)
                                    (_%K182087%_
                                     _%rest182088%_
                                     (cons (_%make-export__185434185435%_
                                            _%bind182247%_
                                            _%phi182242%_
                                            (gx#current-expander-context)
                                            _%name182240%_)
                                           _%r182089%_)))
                                  _%$e182244%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Reference to unbound identifier"
                                  _%stx181928%_
                                  _%hd182086%_
                                  _%id182230%_)))
                           (_%E182107182210%_)))))
                 (_%E182107182210%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E182107182210%_))
                                           (_%E182107182210%_))))
                                   (_%E182107182210%_))))
                            (_%E182093182300%_
                             (lambda ()
                               (if (gx#stx-pair? _%e182090182122%_)
                                   (let ((_%e182095182254%_
                                          (gx#syntax-e _%e182090182122%_)))
                                     (let ((_%hd182096182257%_
                                            (##car _%e182095182254%_))
                                           (_%tl182097182259%_
                                            (##cdr _%e182095182254%_)))
                                       (if (eq? (gx#stx-e _%hd182096182257%_)
                                                'spec:)
                                           (if (gx#stx-pair?
                                                _%tl182097182259%_)
                                               (let ((_%e182098182262%_
                                                      (gx#syntax-e
                                                       _%tl182097182259%_)))
                                                 (let ((_%hd182099182265%_
                                                        (##car _%e182098182262%_))
                                                       (_%tl182100182267%_
                                                        (##cdr _%e182098182262%_)))
                                                   (let ((_%phi182270%_
                                                          _%hd182099182265%_))
                                                     (if (gx#stx-pair?
                                                          _%tl182100182267%_)
                                                         (let ((_%e182101182272%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl182100182267%_)))
                   (let ((_%hd182102182275%_ (##car _%e182101182272%_))
                         (_%tl182103182277%_ (##cdr _%e182101182272%_)))
                     (let ((_%id182280%_ _%hd182102182275%_))
                       (if (gx#stx-pair? _%tl182103182277%_)
                           (let ((_%e182104182282%_
                                  (gx#syntax-e _%tl182103182277%_)))
                             (let ((_%hd182105182285%_
                                    (##car _%e182104182282%_))
                                   (_%tl182106182287%_
                                    (##cdr _%e182104182282%_)))
                               (let ((_%name182290%_ _%hd182105182285%_))
                                 (if (gx#stx-null? _%tl182106182287%_)
                                     (if (and (gx#stx-fixnum? _%phi182270%_)
                                              (gx#identifier? _%id182280%_)
                                              (gx#identifier? _%name182290%_))
                                         (let* ((_%phi182292%_
                                                 (gx#stx-e _%phi182270%_))
                                                (_%$e182294%_
                                                 (gx#core-resolve-identifier__1
                                                  _%id182280%_
                                                  _%phi182292%_)))
                                           (if _%$e182294%_
                                               ((lambda (_%bind182297%_)
                                                  (_%K182087%_
                                                   _%rest182088%_
                                                   (cons (_%make-export__185434185435%_
                                                          _%bind182297%_
                                                          _%phi182292%_
                                                          (gx#current-expander-context)
                                                          _%name182290%_)
                                                         _%r182089%_)))
                                                _%$e182294%_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _%stx181928%_
                                                _%hd182086%_
                                                _%id182280%_)))
                                         (_%E182094182250%_))
                                     (_%E182094182250%_)))))
                           (_%E182094182250%_)))))
                 (_%E182094182250%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E182094182250%_))
                                           (_%E182094182250%_))))
                                   (_%E182094182250%_))))
                            (_%E182092182312%_
                             (lambda ()
                               (let ((_%id182304%_ _%e182090182122%_))
                                 (if (gx#identifier? _%id182304%_)
                                     (let ((_%$e182306%_
                                            (gx#core-resolve-identifier__1
                                             _%id182304%_
                                             (gx#current-export-expander-phi))))
                                       (if _%$e182306%_
                                           ((lambda (_%bind182309%_)
                                              (_%K182087%_
                                               _%rest182088%_
                                               (cons (_%make-export__0__185436185439%_
                                                      _%bind182309%_)
                                                     _%r182089%_)))
                                            _%$e182306%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _%stx181928%_
                                            _%hd182086%_)))
                                     (_%E182093182300%_)))))
                            (_%E182091182376%_
                             (lambda ()
                               (if (eq? (gx#stx-e _%e182090182122%_) '#t)
                                   (let* ((_%current-ctx182316%_
                                           (gx#current-expander-context))
                                          (_%current-phi182318%_
                                           (gx#current-export-expander-phi))
                                          (_%phi-ctx182320%_
                                           (gx#core-context-shift
                                            _%current-ctx182316%_
                                            _%current-phi182318%_))
                                          (_%phi-bind182322%_
                                           (hash->list
                                            (##unchecked-structure-ref
                                             _%phi-ctx182320%_
                                             '2
                                             '#f
                                             '#f))))
                                     (let _%lp182325%_ ((_%bind-rest182327%_
                                                         _%phi-bind182322%_)
                                                        (_%set182328%_ '()))
                                       (let* ((_%bind-rest182329182339%_
                                               _%bind-rest182327%_)
                                              (_%else182331182347%_
                                               (lambda ()
                                                 (_%K182087%_
                                                  _%rest182088%_
                                                  (cons (##structure
                                                         gx#export-set::t
                                                         '#f
                                                         _%current-phi182318%_
                                                         _%set182328%_)
                                                        _%r182089%_))))
                                              (_%K182333182357%_
                                               (lambda (_%bind-rest182350%_
                                                        _%bind182351%_
                                                        _%key182352%_)
                                                 (if (or (##structure-direct-instance-of?
                                                          _%bind182351%_
                                                          'gx#import-binding::t)
                                                         (gx#private-feature-binding?
                                                          _%bind182351%_))
                                                     (_%lp182325%_
                                                      _%bind-rest182350%_
                                                      _%set182328%_)
                                                     (_%lp182325%_
                                                      _%bind-rest182350%_
                                                      (cons (_%make-export__2__185438185441%_
                                                             _%bind182351%_
                                                             _%current-phi182318%_
                                                             _%current-ctx182316%_)
                                                            _%set182328%_))))))
                                         (if (pair? _%bind-rest182329182339%_)
                                             (let ((_%hd182334182360%_
                                                    (##car _%bind-rest182329182339%_))
                                                   (_%tl182335182362%_
                                                    (##cdr _%bind-rest182329182339%_)))
                                               (if (pair? _%hd182334182360%_)
                                                   (let ((_%hd182336182365%_
                                                          (##car _%hd182334182360%_))
                                                         (_%tl182337182367%_
                                                          (##cdr _%hd182334182360%_)))
                                                     (let* ((_%key182370%_
                                                             _%hd182336182365%_)
                                                            (_%bind182372%_
                                                             _%tl182337182367%_)
                                                            (_%bind-rest182374%_
                                                             _%tl182335182362%_))
                                                       (_%K182333182357%_
                                                        _%bind-rest182374%_
                                                        _%bind182372%_
                                                        _%key182370%_)))
                                                   (_%else182331182347%_)))
                                             (_%else182331182347%_)))))
                                   (_%E182092182312%_)))))
                       (_%E182091182376%_))))
                  (_%export-imports181933%_
                   (lambda (_%src181963%_ _%r181964%_)
                     (letrec* ((_%current-ctx181966%_
                                (gx#current-expander-context))
                               (_%current-phi181967%_
                                (gx#current-export-expander-phi))
                               (_%import->export181968%_
                                (lambda (_%in182049%_)
                                  (let* ((_%in182050182058%_ _%in182049%_)
                                         (_%E182052182061%_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _%in182050182058%_
                                                   '((module-import
                                                      out
                                                      key
                                                      phi)))
                                            '#!void))
                                         (_%K182053182068%_
                                          (lambda (_%phi182064%_
                                                   _%key182065%_
                                                   _%out182066%_)
                                            (##structure
                                             gx#module-export::t
                                             _%current-ctx181966%_
                                             _%key182065%_
                                             _%phi182064%_
                                             _%key182065%_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _%in182050182058%_
                                         'gx#module-import::t)
                                        (let* ((_%e182054182071%_
                                                (##unchecked-structure-ref
                                                 _%in182050182058%_
                                                 '1
                                                 '#f
                                                 '#f))
                                               (_%out182074%_
                                                _%e182054182071%_)
                                               (_%e182055182076%_
                                                (##unchecked-structure-ref
                                                 _%in182050182058%_
                                                 '2
                                                 '#f
                                                 '#f))
                                               (_%key182079%_
                                                _%e182055182076%_)
                                               (_%e182056182081%_
                                                (##unchecked-structure-ref
                                                 _%in182050182058%_
                                                 '3
                                                 '#f
                                                 '#f))
                                               (_%phi182084%_
                                                _%e182056182081%_))
                                          (_%K182053182068%_
                                           _%phi182084%_
                                           _%key182079%_
                                           _%out182074%_))
                                        (_%E182052182061%_)))))
                               (_%fold-e181969%_
                                (lambda (_%in181971%_ _%r181972%_)
                                  (let* ((_%in181973181987%_ _%in181971%_)
                                         (_%else181976181995%_
                                          (lambda () _%r181972%_)))
                                    (let ((_%K181982182031%_
                                           (lambda (_%phi182027%_
                                                    _%key182028%_
                                                    _%out182029%_)
                                             (if (and (fx= _%phi182027%_
                                                           _%current-phi181967%_)
                                                      (eq? _%src181963%_
                                                           (##unchecked-structure-ref
                                                            _%out182029%_
                                                            '1
                                                            '#f
                                                            '#f)))
                                                 (cons (_%import->export181968%_
                                                        _%in181971%_)
                                                       _%r181972%_)
                                                 _%r181972%_)))
                                          (_%K181978182006%_
                                           (lambda (_%imports181999%_
                                                    _%phi182000%_
                                                    _%ctx182001%_)
                                             (if (and (fx= _%phi182000%_
                                                           _%current-phi181967%_)
                                                      (eq? _%src181963%_
                                                           _%ctx182001%_))
                                                 (foldl__0
                                                  (lambda (_%in182003%_
                                                           _%r182004%_)
                                                    (cons (_%import->export181968%_
                                                           _%in182003%_)
                                                          _%r182004%_))
                                                  _%r181972%_
                                                  _%imports181999%_)
                                                 _%r181972%_))))
                                      (let ((_%try-match181975182024%_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _%in181973181987%_
                                                    'gx#import-set::t)
                                                   (let* ((_%e181979182009%_
                                                           (##unchecked-structure-ref
                                                            _%in181973181987%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                          (_%e181980182014%_
                                                           (##unchecked-structure-ref
                                                            _%in181973181987%_
                                                            '2
                                                            '#f
                                                            '#f))
                                                          (_%e181981182019%_
                                                           (##unchecked-structure-ref
                                                            _%in181973181987%_
                                                            '3
                                                            '#f
                                                            '#f)))
                                                     (let ((_%ctx182012%_
                                                            _%e181979182009%_)
                                                           (_%phi182017%_
                                                            _%e181980182014%_)
                                                           (_%imports182022%_
                                                            _%e181981182019%_))
                                                       (_%K181978182006%_
                                                        _%imports182022%_
                                                        _%phi182017%_
                                                        _%ctx182012%_)))
                                                   (_%else181976181995%_)))))
                                        (if (##structure-direct-instance-of?
                                             _%in181973181987%_
                                             'gx#module-import::t)
                                            (let* ((_%e181983182034%_
                                                    (##unchecked-structure-ref
                                                     _%in181973181987%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                   (_%e181984182039%_
                                                    (##unchecked-structure-ref
                                                     _%in181973181987%_
                                                     '2
                                                     '#f
                                                     '#f))
                                                   (_%e181985182044%_
                                                    (##unchecked-structure-ref
                                                     _%in181973181987%_
                                                     '3
                                                     '#f
                                                     '#f)))
                                              (let ((_%out182037%_
                                                     _%e181983182034%_)
                                                    (_%key182042%_
                                                     _%e181984182039%_)
                                                    (_%phi182047%_
                                                     _%e181985182044%_))
                                                (_%K181982182031%_
                                                 _%phi182047%_
                                                 _%key182042%_
                                                 _%out182037%_)))
                                            (_%try-match181975182024%_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _%src181963%_
                              _%current-phi181967%_
                              (foldl__0
                               _%fold-e181969%_
                               '()
                               (##unchecked-structure-ref
                                _%current-ctx181966%_
                                '8
                                '#f
                                '#f)))
                             _%r181964%_))))
                  (_%export!181934%_
                   (lambda (_%rbody181950%_)
                     (letrec* ((_%current-ctx181952%_
                                (gx#current-expander-context))
                               (_%fold-e181953%_
                                (lambda (_%out181957%_ _%r181958%_)
                                  (if (##structure-direct-instance-of?
                                       _%out181957%_
                                       'gx#module-export::t)
                                      (cons _%out181957%_ _%r181958%_)
                                      (if (##structure-direct-instance-of?
                                           _%out181957%_
                                           'gx#export-set::t)
                                          (foldl__0
                                           cons
                                           _%r181958%_
                                           (##unchecked-structure-ref
                                            _%out181957%_
                                            '3
                                            '#f
                                            '#f))
                                          _%r181958%_)))))
                       (let ((_%body181955%_ (reverse _%rbody181950%_)))
                         (##unchecked-structure-set!
                          _%current-ctx181952%_
                          (foldl__0
                           _%fold-e181953%_
                           (##unchecked-structure-ref
                            _%current-ctx181952%_
                            '9
                            '#f
                            '#f)
                           _%body181955%_)
                          '9
                          '#f
                          '#f)
                         _%body181955%_))))
                  (_%expanded-export?181935%_
                   (lambda (_%e181945%_)
                     (let ((_%$e181947%_
                            (##structure-direct-instance-of?
                             _%e181945%_
                             'gx#module-export::t)))
                       (if _%$e181947%_
                           _%$e181947%_
                           (##structure-direct-instance-of?
                            _%e181945%_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _%internal-expand?181929%_)
              (let ((_%rbody181941%_
                     (gx#core-expand-import/export
                      _%stx181928%_
                      _%expanded-export?181935%_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _%expand1181932%_)))
                (if _%internal-expand?181929%_
                    (reverse _%rbody181941%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons
                      '%#export
                      (_%export!181934%_ _%rbody181941%_))
                     (gx#stx-source _%stx181928%_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _%stx181928%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _%stx181928%_))))))
    (define gx#core-expand-export%__0
      (lambda (_%stx182426%_)
        (let ((_%internal-expand?182428%_ '#f))
          (gx#core-expand-export%__%
           _%stx182426%_
           _%internal-expand?182428%_))))
    (define gx#core-expand-export%
      (lambda _g185510_
        (let ((_g185511_ (##length _g185510_)))
          (cond ((##fx= _g185511_ 1)
                 (apply gx#core-expand-export%__0 _g185510_))
                ((##fx= _g185511_ 2)
                 (apply gx#core-expand-export%__% _g185510_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g185510_))))))
    (define gx#core-expand-export-source
      (lambda (_%hd181925%_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _%hd181925%_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_%stx181895%_)
        (let* ((_%e181896181903%_ _%stx181895%_)
               (_%E181898181907%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181896181903%_)))
               (_%E181897181921%_
                (lambda ()
                  (if (gx#stx-pair? _%e181896181903%_)
                      (let ((_%e181899181911%_
                             (gx#syntax-e _%e181896181903%_)))
                        (let ((_%hd181900181914%_ (##car _%e181899181911%_))
                              (_%tl181901181916%_ (##cdr _%e181899181911%_)))
                          (let ((_%body181919%_ _%tl181901181916%_))
                            (if (gx#identifier-list? _%body181919%_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _%body181919%_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _%body181919%_))
                                   (gx#stx-source _%stx181895%_)))
                                (_%E181898181907%_)))))
                      (_%E181898181907%_)))))
          (_%E181897181921%_))))
    (define gx#core-bind-feature!__%
      (lambda (_%id181861%_ _%private?181862%_ _%phi181863%_ _%ctx181864%_)
        (gx#core-bind-syntax!__%
         _%id181861%_
         ((if _%private?181862%_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _%id181861%_))
         _%private?181862%_
         _%phi181863%_
         _%ctx181864%_)))
    (define gx#core-bind-feature!__0
      (lambda (_%id181869%_)
        (let* ((_%private?181871%_ '#f)
               (_%phi181873%_ (gx#current-expander-phi))
               (_%ctx181875%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id181869%_
           _%private?181871%_
           _%phi181873%_
           _%ctx181875%_))))
    (define gx#core-bind-feature!__1
      (lambda (_%id181877%_ _%private?181878%_)
        (let* ((_%phi181880%_ (gx#current-expander-phi))
               (_%ctx181882%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id181877%_
           _%private?181878%_
           _%phi181880%_
           _%ctx181882%_))))
    (define gx#core-bind-feature!__2
      (lambda (_%id181884%_ _%private?181885%_ _%phi181886%_)
        (let ((_%ctx181888%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id181884%_
           _%private?181885%_
           _%phi181886%_
           _%ctx181888%_))))
    (define gx#core-bind-feature!
      (lambda _g185512_
        (let ((_g185513_ (##length _g185512_)))
          (cond ((##fx= _g185513_ 1)
                 (apply gx#core-bind-feature!__0 _g185512_))
                ((##fx= _g185513_ 2)
                 (apply gx#core-bind-feature!__1 _g185512_))
                ((##fx= _g185513_ 3)
                 (apply gx#core-bind-feature!__2 _g185512_))
                ((##fx= _g185513_ 4)
                 (apply gx#core-bind-feature!__% _g185512_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g185512_))))))))
