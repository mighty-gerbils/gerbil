(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1771104508)
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
      (lambda _%$args185958%_
        (apply make-instance gx#module-import::t _%$args185958%_)))
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
      (lambda _%$args185955%_
        (apply make-instance gx#module-export::t _%$args185955%_)))
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
      (lambda _%$args185952%_
        (apply make-instance gx#import-set::t _%$args185952%_)))
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
      (lambda _%$args185949%_
        (apply make-instance gx#export-set::t _%$args185949%_)))
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
      (lambda _%$args185946%_
        (apply make-instance gx#import-expander::t _%$args185946%_)))
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
      (lambda _%$args185943%_
        (apply make-instance gx#export-expander::t _%$args185943%_)))
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
      (lambda _%$args185940%_
        (apply make-instance gx#import-export-expander::t _%$args185940%_)))
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
      (lambda (_%path185937%_ _%fun185938%_)
        (call-with-input-file
         (cons 'path: (cons _%path185937%_ gx#source-file-settings))
         _%fun185938%_)))
    (define gx#module-context:::init!
      (lambda (_%self185920%_
               _%id185921%_
               _%super185922%_
               _%ns185923%_
               _%path185924%_)
        (let ((_%self185927%_ _%self185920%_))
          (if (##fx< '11 (##structure-length _%self185927%_))
              (begin
                (##unchecked-structure-set!
                 _%self185927%_
                 _%id185921%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self185927%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self185927%_
                 _%super185922%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self185927%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self185927%_ '#f '5 '#f '#f)
                (##unchecked-structure-set!
                 _%self185927%_
                 _%ns185923%_
                 '6
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self185927%_
                 _%path185924%_
                 '7
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self185927%_ '() '8 '#f '#f)
                (##unchecked-structure-set! _%self185927%_ '() '9 '#f '#f)
                (##unchecked-structure-set! _%self185927%_ '#f '10 '#f '#f)
                (##unchecked-structure-set! _%self185927%_ '#f '11 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self185927%_
                     '11
                     (##structure-length _%self185927%_))))))
    (__bind-method!__%
     gx#module-context::t
     ':init!
     gx#module-context:::init!
     '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_%self185753%_ _%ctx185754%_ _%root185755%_)
        (let* ((_%self185758%_ _%self185753%_)
               (_%super185774%_
                (let ((_%$e185768%_ _%root185755%_))
                  (if _%$e185768%_
                      _%$e185768%_
                      (let ((_%$e185771%_ (gx#core-context-root__0)))
                        (if _%$e185771%_
                            _%$e185771%_
                            (let ((__obj186002
                                   (##structure gx#root-context::t '#f '#f)))
                              (let ((__constructor186003
                                     (direct-method-ref
                                      gx#root-context::t
                                      __obj186002
                                      ':init!)))
                                (if __constructor186003
                                    (__constructor186003 __obj186002)
                                    (error '"missing constructor method implementation"
                                           'class:
                                           gx#root-context::t
                                           'method:
                                           ':init!)))
                              __obj186002)))))))
          (if _%ctx185754%_
              (let ((_%id185777%_
                     (##structure-ref
                      _%ctx185754%_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_%path185778%_
                     (##structure-ref
                      _%ctx185754%_
                      '7
                      gx#module-context::t
                      '#f))
                    (_%in185779%_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _%ctx185754%_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_%e185780%_
                     (__make-atomic-promise
                      (lambda () (gx#eval-module _%ctx185754%_)))))
                (if (##fx< '8 (##structure-length _%self185758%_))
                    (begin
                      (##unchecked-structure-set!
                       _%self185758%_
                       _%id185777%_
                       '1
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self185758%_
                       (make-hash-table-eq 'size: (##length _%in185779%_))
                       '2
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self185758%_
                       _%super185774%_
                       '3
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self185758%_
                       '#f
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self185758%_
                       '#f
                       '5
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self185758%_
                       _%path185778%_
                       '6
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self185758%_
                       _%in185779%_
                       '7
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self185758%_
                       _%e185780%_
                       '8
                       '#f
                       '#f)
                      '#!void)
                    (error '"struct-instance-init!: too many arguments for struct"
                           _%self185758%_
                           '8
                           (##structure-length _%self185758%_)))
                (##for-each
                 (lambda (_%g185781185783%_)
                   (gx#core-bind-weak-import!__%
                    _%g185781185783%_
                    _%self185758%_))
                 _%in185779%_))
              (if (##fx< '8 (##structure-length _%self185758%_))
                  (begin
                    (##unchecked-structure-set! _%self185758%_ '#f '1 '#f '#f)
                    (##unchecked-structure-set!
                     _%self185758%_
                     (make-hash-table-eq)
                     '2
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self185758%_
                     _%super185774%_
                     '3
                     '#f
                     '#f)
                    (##unchecked-structure-set! _%self185758%_ '#f '4 '#f '#f)
                    (##unchecked-structure-set! _%self185758%_ '#f '5 '#f '#f)
                    (##unchecked-structure-set! _%self185758%_ '#f '6 '#f '#f)
                    (##unchecked-structure-set! _%self185758%_ '() '7 '#f '#f)
                    (##unchecked-structure-set! _%self185758%_ '#f '8 '#f '#f)
                    '#!void)
                  (error '"struct-instance-init!: too many arguments for struct"
                         _%self185758%_
                         '8
                         (##structure-length _%self185758%_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_%self185789%_ _%ctx185790%_)
        (let ((_%root185792%_ '#f))
          (gx#prelude-context:::init!__%
           _%self185789%_
           _%ctx185790%_
           _%root185792%_))))
    (define gx#prelude-context:::init!
      (lambda _g186009_
        (let ((_g186010_ (##length _g186009_)))
          (cond ((##fx= _g186010_ 2)
                 (apply gx#prelude-context:::init!__0 _g186009_))
                ((##fx= _g186010_ 3)
                 (apply gx#prelude-context:::init!__% _g186009_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g186009_))))))
    (__bind-method!__%
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_%self185627%_ _%e185628%_)
        (if (##fx< '3 (##structure-length _%self185627%_))
            (begin
              (##unchecked-structure-set!
               _%self185627%_
               _%e185628%_
               '1
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self185627%_
               (gx#current-expander-context)
               '2
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self185627%_
               (##fx- (gx#current-expander-phi) '1)
               '3
               '#f
               '#f)
              '#!void)
            (error '"struct-instance-init!: too many arguments for struct"
                   _%self185627%_
                   '3
                   (##structure-length _%self185627%_)))))
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
      (lambda (_%g185253185256%_ _%g185254185258%_)
        (gx#core-apply-user-expander__%
         _%g185253185256%_
         _%g185254185258%_
         'apply-import-expander)))
    (__bind-method!__%
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_%g185124185127%_ _%g185125185129%_)
        (gx#core-apply-user-expander__%
         _%g185124185127%_
         _%g185125185129%_
         'apply-export-expander)))
    (__bind-method!__%
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_%ctx184995%_)
        (let* ((_%path184997%_
                (##structure-ref _%ctx184995%_ '7 gx#module-context::t '#f))
               (_%path184999%_
                (if (pair? _%path184997%_)
                    (##last _%path184997%_)
                    _%path184997%_)))
          (if (string? _%path184999%_) _%path184999%_ '#f))))
    (define gx#import-module__%
      (lambda (_%path184971%_ _%reload?184972%_ _%eval?184973%_)
        (let ((_%ctx184975%_
               ((gx#current-expander-module-import)
                _%path184971%_
                _%reload?184972%_)))
          (if (and _%ctx184975%_ _%eval?184973%_)
              (gx#eval-module _%ctx184975%_)
              '#!void)
          _%ctx184975%_)))
    (define gx#import-module__0
      (lambda (_%path184980%_)
        (let* ((_%reload?184982%_ '#f) (_%eval?184984%_ '#f))
          (gx#import-module__%
           _%path184980%_
           _%reload?184982%_
           _%eval?184984%_))))
    (define gx#import-module__1
      (lambda (_%path184986%_ _%reload?184987%_)
        (let ((_%eval?184989%_ '#f))
          (gx#import-module__%
           _%path184986%_
           _%reload?184987%_
           _%eval?184989%_))))
    (define gx#import-module
      (lambda _g186011_
        (let ((_g186012_ (##length _g186011_)))
          (cond ((##fx= _g186012_ 1) (apply gx#import-module__0 _g186011_))
                ((##fx= _g186012_ 2) (apply gx#import-module__1 _g186011_))
                ((##fx= _g186012_ 3) (apply gx#import-module__% _g186011_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g186011_))))))
    (define gx#eval-module
      (lambda (_%mod184968%_)
        ((gx#current-expander-module-eval) _%mod184968%_)))
    (define gx#core-eval-module
      (lambda (_%obj184947%_)
        (letrec ((_%force-e184949%_
                  (lambda (_%getf184963%_ _%e184964%_)
                    (call-with-parameters__1
                     (lambda ()
                       (call-with-parameters__1
                        (lambda () (force (_%getf184963%_ _%e184964%_)))
                        gx#current-expander-phi
                        '0))
                     gx#current-expander-context
                     _%e184964%_))))
          (let _%recur184951%_ ((_%e184953%_ _%obj184947%_))
            (if (##structure-instance-of? _%e184953%_ 'gx#module-context::t)
                (let ()
                  (let ((_%$e184956%_
                         (gx#core-context-prelude__% _%e184953%_)))
                    (if _%$e184956%_ (_%recur184951%_ _%$e184956%_) '#!void))
                  (_%force-e184949%_ gx#module-context-e _%e184953%_))
                (if (##structure-instance-of?
                     _%e184953%_
                     'gx#prelude-context::t)
                    (_%force-e184949%_ gx#prelude-context-e _%e184953%_)
                    (if (gx#stx-string? _%e184953%_)
                        (_%recur184951%_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _%e184953%_)))
                        (if (gx#core-library-module-path? _%e184953%_)
                            (_%recur184951%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%e184953%_)))
                            (error '"cannot eval module" _%obj184947%_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_%ctx184927%_)
        (let _%lp184929%_ ((_%e184931%_ _%ctx184927%_))
          (if (or (##structure-instance-of? _%e184931%_ 'gx#module-context::t)
                  (##structure-instance-of? _%e184931%_ 'gx#local-context::t))
              (_%lp184929%_ (##unchecked-structure-ref _%e184931%_ '3 '#f '#f))
              (if (##structure-instance-of? _%e184931%_ 'gx#prelude-context::t)
                  _%e184931%_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_%ctx184943%_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _%ctx184943%_))))
    (define gx#core-context-prelude
      (lambda _g186013_
        (let ((_g186014_ (##length _g186013_)))
          (cond ((##fx= _g186014_ 0)
                 (apply gx#core-context-prelude__0 _g186013_))
                ((##fx= _g186014_ 1)
                 (apply gx#core-context-prelude__% _g186013_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g186013_))))))
    (define gx#core-module->prelude-context
      (lambda (_%ctx184918%_)
        (let ((_%$e184920%_ (__hash-get gx#__module-registry _%ctx184918%_)))
          (if _%$e184920%_
              _%$e184920%_
              (let ((_%pre184924%_
                     (let ((__obj186004
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
                        __obj186004
                        _%ctx184918%_)
                       __obj186004)))
                (__hash-put! gx#__module-registry _%ctx184918%_ _%pre184924%_)
                _%pre184924%_)))))
    (define gx#core-import-module__%
      (lambda (_%rpath184786%_ _%reload?184787%_)
        (letrec ((_%import-source184789%_
                  (lambda (_%path184877%_)
                    (if (member _%path184877%_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _%path184877%_)
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
                                      (let ((_g186015_
                                             (gx#core-read-module
                                              _%path184877%_)))
                                        (begin
                                          (let ((_g186016_
                                                 (if (##values? _g186015_)
                                                     (##values-length
                                                      _g186015_)
                                                     1)))
                                            (if (not (##fx= _g186016_ 4))
                                                (error "Context expects 4 values"
                                                       _g186016_)))
                                          (let ((_%pre184885%_
                                                 (##values-ref _g186015_ 0))
                                                (_%id184886%_
                                                 (##values-ref _g186015_ 1))
                                                (_%ns184887%_
                                                 (##values-ref _g186015_ 2))
                                                (_%body184888%_
                                                 (##values-ref _g186015_ 3)))
                                            (let* ((_%prelude184898%_
                                                    (if (##structure-instance-of?
                                                         _%pre184885%_
                                                         'gx#prelude-context::t)
                                                        _%pre184885%_
                                                        (if (##structure-instance-of?
                                                             _%pre184885%_
                                                             'gx#module-context::t)
                                                            (gx#core-module->prelude-context
                                                             _%pre184885%_)
                                                            (if (string? _%pre184885%_)
                                                                (gx#core-module->prelude-context
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#core-import-module__0 _%pre184885%_))
                        (if (not _%pre184885%_)
                            (let ((_%$e184894%_
                                   (gx#current-expander-module-prelude)))
                              (if _%$e184894%_
                                  _%$e184894%_
                                  (let ((__obj186005
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
                                     __obj186005
                                     '#f)
                                    __obj186005)))
                            (error '"cannot import module; unknown prelude"
                                   _%rpath184786%_
                                   _%pre184885%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%ctx184900%_
                                                    (let ((__obj186006
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
                                                       __obj186006
                                                       _%id184886%_
                                                       _%prelude184898%_
                                                       _%ns184887%_
                                                       _%path184877%_)
                                                      __obj186006))
                                                   (_%body184902%_
                                                    (gx#core-expand-module-begin
                                                     _%body184888%_
                                                     _%ctx184900%_))
                                                   (_%body184904%_
                                                    (gx#core-quote-syntax__%
                                                     (gx#core-cons
                                                      '%#begin
                                                      _%body184902%_)
                                                     _%path184877%_
                                                     _%ctx184900%_
                                                     '())))
                                              (##unchecked-structure-set!
                                               _%ctx184900%_
                                               (__make-atomic-promise
                                                (lambda ()
                                                  (gx#eval-syntax*
                                                   _%body184904%_)))
                                               '10
                                               '#f
                                               '#f)
                                              (##unchecked-structure-set!
                                               _%ctx184900%_
                                               _%body184904%_
                                               '11
                                               '#f
                                               '#f)
                                              (__hash-put!
                                               gx#__module-registry
                                               _%path184877%_
                                               _%ctx184900%_)
                                              (__hash-put!
                                               gx#__module-registry
                                               _%id184886%_
                                               _%ctx184900%_)
                                              _%ctx184900%_)))))
                                    gx#current-export-expander-phi
                                    '#f))
                                 gx#current-import-expander-phi
                                 '#f))
                              gx#current-expander-path
                              (cons _%path184877%_
                                    (gx#current-expander-path))))
                           gx#current-expander-phi
                           '0))
                        gx#current-expander-marks
                        '()))
                     gx#current-expander-context
                     (gx#core-context-root__0))))
                 (_%import-submodule184790%_
                  (lambda (_%rpath184806%_)
                    (let* ((_%rpath184807184814%_ _%rpath184806%_)
                           (_%E184809184817%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%rpath184807184814%_
                                     '([origin . refs]))
                              '#!void))
                           (_%K184810184865%_
                            (lambda (_%refs184820%_ _%origin184821%_)
                              (let ((_%ctx184823%_
                                     (if _%origin184821%_
                                         (gx#core-import-module__%
                                          _%origin184821%_
                                          _%reload?184787%_)
                                         (gx#current-expander-context))))
                                (let _%lp184825%_ ((_%rest184827%_
                                                    _%refs184820%_)
                                                   (_%ctx184828%_
                                                    _%ctx184823%_))
                                  (let* ((_%rest184829184837%_ _%rest184827%_)
                                         (_%else184831184845%_
                                          (lambda () _%ctx184828%_))
                                         (_%K184833184853%_
                                          (lambda (_%rest184848%_ _%id184849%_)
                                            (let ((_%bind184851%_
                                                   (gx#resolve-identifier__%
                                                    _%id184849%_
                                                    '0
                                                    _%ctx184828%_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _%bind184851%_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _%bind184851%_
                                                         '5
                                                         '#f
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_%lp184825%_
                                                   _%rest184848%_
                                                   (##unchecked-structure-ref
                                                    _%bind184851%_
                                                    '5
                                                    '#f
                                                    '#f))
                                                  (error '"cannot import submodule; not bound as a module"
                                                         _%rpath184806%_
                                                         _%id184849%_
                                                         _%bind184851%_))))))
                                    (if (pair? _%rest184829184837%_)
                                        (let ((_%hd184834184856%_
                                               (##car _%rest184829184837%_))
                                              (_%tl184835184858%_
                                               (##cdr _%rest184829184837%_)))
                                          (let* ((_%id184861%_
                                                  _%hd184834184856%_)
                                                 (_%rest184863%_
                                                  _%tl184835184858%_))
                                            (_%K184833184853%_
                                             _%rest184863%_
                                             _%id184861%_)))
                                        (_%else184831184845%_))))))))
                      (if (pair? _%rpath184807184814%_)
                          (let ((_%hd184811184868%_
                                 (##car _%rpath184807184814%_))
                                (_%tl184812184870%_
                                 (##cdr _%rpath184807184814%_)))
                            (let* ((_%origin184873%_ _%hd184811184868%_)
                                   (_%refs184875%_ _%tl184812184870%_))
                              (_%K184810184865%_
                               _%refs184875%_
                               _%origin184873%_)))
                          (_%E184809184817%_))))))
          (let ((_%$e184792%_
                 (if (not _%reload?184787%_)
                     (__hash-get gx#__module-registry _%rpath184786%_)
                     '#f)))
            (if _%$e184792%_
                _%$e184792%_
                (if (list? _%rpath184786%_)
                    (_%import-submodule184790%_ _%rpath184786%_)
                    (if (gx#core-library-module-path? _%rpath184786%_)
                        (let ((_%ctx184797%_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _%rpath184786%_)
                                _%reload?184787%_)))
                          (__hash-put!
                           gx#__module-registry
                           _%rpath184786%_
                           _%ctx184797%_)
                          _%ctx184797%_)
                        (let* ((_%npath184800%_
                                (path-normalize _%rpath184786%_))
                               (_%$e184802%_
                                (if (not _%reload?184787%_)
                                    (__hash-get
                                     gx#__module-registry
                                     _%npath184800%_)
                                    '#f)))
                          (if _%$e184802%_
                              _%$e184802%_
                              (_%import-source184789%_
                               _%npath184800%_))))))))))
    (define gx#core-import-module__0
      (lambda (_%rpath184911%_)
        (let ((_%reload?184913%_ '#f))
          (gx#core-import-module__% _%rpath184911%_ _%reload?184913%_))))
    (define gx#core-import-module
      (lambda _g186017_
        (let ((_g186018_ (##length _g186017_)))
          (cond ((##fx= _g186018_ 1)
                 (apply gx#core-import-module__0 _g186017_))
                ((##fx= _g186018_ 2)
                 (apply gx#core-import-module__% _g186017_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g186017_))))))
    (define gx#core-read-module
      (lambda (_%path184768%_)
        (__with-catch
         (lambda (_%exn184770%_)
           (if (datum-parsing-exception? _%exn184770%_)
               (let ((_%pos184772%_
                      (datum-parsing-exception-filepos _%exn184770%_)))
                 (if (= _%pos184772%_ '0)
                     (gx#core-read-module/lang _%path184768%_)
                     (gx#raise-syntax-error
                      'read-module
                      '"error reading module"
                      _%path184768%_
                      (call-with-parameters__1
                       (lambda ()
                         (call-with-output-string
                          '""
                          (lambda (_%g184774184776%_)
                            (display-exception__%
                             _%exn184770%_
                             _%g184774184776%_))))
                       dump-stack-trace?
                       '#f)
                      (cons 'line:
                            (cons (##filepos-line _%pos184772%_)
                                  (cons 'col:
                                        (cons (##filepos-col _%pos184772%_)
                                              '())))))))
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _%path184768%_
                (call-with-parameters__1
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_%g184779184781%_)
                      (display-exception__% _%exn184770%_ _%g184779184781%_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _%path184768%_)))))
    (define gx#core-read-module/sexp
      (lambda (_%path184620%_)
        (let _%lp184622%_ ((_%body184624%_
                            (read-syntax-from-file _%path184620%_))
                           (_%pre184625%_ '#f)
                           (_%ns184626%_ '#f)
                           (_%pkg184627%_ '#f))
          (let* ((_%e184628184652%_ _%body184624%_)
                 (_%E184644184678%_
                  (lambda ()
                    (let ((_g186019_
                           (if _%pkg184627%_
                               (values _%pre184625%_
                                       _%ns184626%_
                                       _%pkg184627%_)
                               (gx#core-read-module-package
                                _%path184620%_
                                _%pre184625%_
                                _%ns184626%_))))
                      (begin
                        (let ((_g186020_
                               (if (##values? _g186019_)
                                   (##values-length _g186019_)
                                   1)))
                          (if (not (##fx= _g186020_ 3))
                              (error "Context expects 3 values" _g186020_)))
                        (let ((_%pre184656%_ (##values-ref _g186019_ 0))
                              (_%ns184657%_ (##values-ref _g186019_ 1))
                              (_%pkg184658%_ (##values-ref _g186019_ 2)))
                          (let* ((_%prelude184664%_
                                  (if (gx#core-bound-module-prelude?
                                       _%pre184656%_)
                                      (gx#syntax-local-e__0 _%pre184656%_)
                                      (if (gx#core-library-module-path?
                                           _%pre184656%_)
                                          (gx#core-resolve-library-module-path
                                           _%pre184656%_)
                                          (if (gx#stx-string? _%pre184656%_)
                                              (gx#core-resolve-module-path__%
                                               _%pre184656%_
                                               _%path184620%_)
                                              (gx#stx-e _%pre184656%_)))))
                                 (_%path-id184666%_
                                  (gx#core-module-path->namespace
                                   _%path184620%_))
                                 (_%pkg-id184668%_
                                  (if _%pkg184658%_
                                      (##string-append
                                       _%pkg184658%_
                                       '"/"
                                       _%path-id184666%_)
                                      _%path-id184666%_))
                                 (_%module-id184670%_
                                  (##string->symbol _%pkg-id184668%_))
                                 (_%module-ns184675%_
                                  (if (eq? _%ns184657%_ '#!void)
                                      '#f
                                      (let ((_%$e184672%_ _%ns184657%_))
                                        (if _%$e184672%_
                                            _%$e184672%_
                                            _%pkg-id184668%_)))))
                            (values _%prelude184664%_
                                    _%module-id184670%_
                                    _%module-ns184675%_
                                    _%body184624%_)))))))
                 (_%E184637184710%_
                  (lambda ()
                    (if (gx#stx-pair? _%e184628184652%_)
                        (let ((_%e184645184682%_
                               (gx#syntax-e _%e184628184652%_)))
                          (let ((_%hd184646184685%_ (##car _%e184645184682%_))
                                (_%tl184647184687%_ (##cdr _%e184645184682%_)))
                            (if (eq? (gx#stx-e _%hd184646184685%_) 'package:)
                                (if (gx#stx-pair? _%tl184647184687%_)
                                    (let ((_%e184648184690%_
                                           (gx#syntax-e _%tl184647184687%_)))
                                      (let ((_%hd184649184693%_
                                             (##car _%e184648184690%_))
                                            (_%tl184650184695%_
                                             (##cdr _%e184648184690%_)))
                                        (let* ((_%pkg184698%_
                                                _%hd184649184693%_)
                                               (_%rest184700%_
                                                _%tl184650184695%_)
                                               (_%pkg184708%_
                                                (if (gx#identifier?
                                                     _%pkg184698%_)
                                                    (symbol->string
                                                     (gx#stx-e _%pkg184698%_))
                                                    (if (or (gx#stx-string?
                                                             _%pkg184698%_)
                                                            (gx#stx-false?
                                                             _%pkg184698%_))
                                                        (gx#stx-e
                                                         _%pkg184698%_)
                                                        (gx#raise-syntax-error
                                                         'import
                                                         '"Bad syntax; Illegal package name"
                                                         _%pkg184698%_)))))
                                          (_%lp184622%_
                                           _%rest184700%_
                                           _%pre184625%_
                                           _%ns184626%_
                                           _%pkg184708%_))))
                                    (_%E184644184678%_))
                                (_%E184644184678%_))))
                        (_%E184644184678%_))))
                 (_%E184630184740%_
                  (lambda ()
                    (if (gx#stx-pair? _%e184628184652%_)
                        (let ((_%e184638184714%_
                               (gx#syntax-e _%e184628184652%_)))
                          (let ((_%hd184639184717%_ (##car _%e184638184714%_))
                                (_%tl184640184719%_ (##cdr _%e184638184714%_)))
                            (if (eq? (gx#stx-e _%hd184639184717%_) 'namespace:)
                                (if (gx#stx-pair? _%tl184640184719%_)
                                    (let ((_%e184641184722%_
                                           (gx#syntax-e _%tl184640184719%_)))
                                      (let ((_%hd184642184725%_
                                             (##car _%e184641184722%_))
                                            (_%tl184643184727%_
                                             (##cdr _%e184641184722%_)))
                                        (let* ((_%ns184730%_
                                                _%hd184642184725%_)
                                               (_%rest184732%_
                                                _%tl184643184727%_)
                                               (_%ns184738%_
                                                (if (gx#identifier?
                                                     _%ns184730%_)
                                                    (symbol->string
                                                     (gx#stx-e _%ns184730%_))
                                                    (if (gx#stx-string?
                                                         _%ns184730%_)
                                                        (gx#stx-e _%ns184730%_)
                                                        (if (gx#stx-false?
                                                             _%ns184730%_)
                                                            '#!void
                                                            (gx#raise-syntax-error
                                                             'import
                                                             '"Bad syntax; illegal namespace"
                                                             _%ns184730%_))))))
                                          (_%lp184622%_
                                           _%rest184732%_
                                           _%pre184625%_
                                           _%ns184738%_
                                           _%pkg184627%_))))
                                    (_%E184637184710%_))
                                (_%E184637184710%_))))
                        (_%E184637184710%_))))
                 (_%E184629184764%_
                  (lambda ()
                    (if (gx#stx-pair? _%e184628184652%_)
                        (let ((_%e184631184744%_
                               (gx#syntax-e _%e184628184652%_)))
                          (let ((_%hd184632184747%_ (##car _%e184631184744%_))
                                (_%tl184633184749%_ (##cdr _%e184631184744%_)))
                            (if (eq? (gx#stx-e _%hd184632184747%_) 'prelude:)
                                (if (gx#stx-pair? _%tl184633184749%_)
                                    (let ((_%e184634184752%_
                                           (gx#syntax-e _%tl184633184749%_)))
                                      (let ((_%hd184635184755%_
                                             (##car _%e184634184752%_))
                                            (_%tl184636184757%_
                                             (##cdr _%e184634184752%_)))
                                        (let* ((_%prelude184760%_
                                                _%hd184635184755%_)
                                               (_%rest184762%_
                                                _%tl184636184757%_))
                                          (_%lp184622%_
                                           _%rest184762%_
                                           _%prelude184760%_
                                           _%ns184626%_
                                           _%pkg184627%_))))
                                    (_%E184630184740%_))
                                (_%E184630184740%_))))
                        (_%E184630184740%_)))))
            (_%E184629184764%_)))))
    (define gx#core-read-module/lang
      (lambda (_%path184441%_)
        (letrec ((_%default-read-module-body184443%_
                  (lambda (_%inp184612%_)
                    (let _%lp184614%_ ((_%body184616%_ '()))
                      (let ((_%next184618%_ (read-syntax__% _%inp184612%_)))
                        (if (eof-object? _%next184618%_)
                            (reverse _%body184616%_)
                            (_%lp184614%_
                             (cons _%next184618%_ _%body184616%_)))))))
                 (_%read-body184444%_
                  (lambda (_%inp184529%_
                           _%pre184530%_
                           _%ns184531%_
                           _%pkg184532%_
                           _%args184533%_)
                    (let ((_g186021_
                           (if _%pkg184532%_
                               (values _%pre184530%_
                                       _%ns184531%_
                                       _%pkg184532%_)
                               (gx#core-read-module-package
                                _%path184441%_
                                _%pre184530%_
                                _%ns184531%_))))
                      (begin
                        (let ((_g186022_
                               (if (##values? _g186021_)
                                   (##values-length _g186021_)
                                   1)))
                          (if (not (##fx= _g186022_ 3))
                              (error "Context expects 3 values" _g186022_)))
                        (let ((_%pre184535%_ (##values-ref _g186021_ 0))
                              (_%ns184536%_ (##values-ref _g186021_ 1))
                              (_%pkg184537%_ (##values-ref _g186021_ 2)))
                          (let* ((_%prelude184539%_
                                  (gx#import-module__0 _%pre184535%_))
                                 (_%read-module-body184594%_
                                  (let ((_%$e184585%_
                                         (__find (lambda (_%e184540184542%_)
                                                   (let* ((_%e184540184544184554%_
                                                           _%e184540184542%_)
                                                          (_%else184546184562%_
                                                           (lambda () '#f))
                                                          (_%K184548184566%_
                                                           (lambda () '#t)))
                                                     (if (##structure-direct-instance-of?
                                                          _%e184540184544184554%_
                                                          'gx#module-export::t)
                                                         (let* ((_%e184549184569%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##unchecked-structure-ref
                          _%e184540184544184554%_
                          '1
                          '#f
                          '#f))
                        (_%e184550184572%_
                         (##unchecked-structure-ref
                          _%e184540184544184554%_
                          '2
                          '#f
                          '#f))
                        (_%e184551184575%_
                         (##unchecked-structure-ref
                          _%e184540184544184554%_
                          '3
                          '#f
                          '#f)))
                   (if (##eq? _%e184551184575%_ '1)
                       (let ((_%e184552184578%_
                              (##unchecked-structure-ref
                               _%e184540184544184554%_
                               '4
                               '#f
                               '#f)))
                         (if ((lambda (_%g184580184582%_)
                                (eq? _%g184580184582%_ 'read-module-body))
                              _%e184552184578%_)
                             (_%K184548184566%_)
                             (_%else184546184562%_)))
                       (_%else184546184562%_)))
                 (_%else184546184562%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (##unchecked-structure-ref
                                                  _%prelude184539%_
                                                  '9
                                                  '#f
                                                  '#f))))
                                    (if _%$e184585%_
                                        ((lambda (_%xport184588%_)
                                           (let ((_%proc184591%_
                                                  (__with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _%xport184588%_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _%proc184591%_)
                                                 _%proc184591%_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _%path184441%_
                                                  _%pre184535%_
                                                  _%proc184591%_))))
                                         _%$e184585%_)
                                        _%default-read-module-body184443%_)))
                                 (_%path-id184596%_
                                  (gx#core-module-path->namespace
                                   _%path184441%_))
                                 (_%pkg-id184598%_
                                  (if _%pkg184537%_
                                      (##string-append
                                       _%pkg184537%_
                                       '"/"
                                       _%path-id184596%_)
                                      _%path-id184596%_))
                                 (_%module-id184600%_
                                  (##string->symbol _%pkg-id184598%_))
                                 (_%module-ns184605%_
                                  (let ((_%$e184602%_ _%ns184536%_))
                                    (if _%$e184602%_
                                        _%$e184602%_
                                        _%pkg-id184598%_)))
                                 (_%body184609%_
                                  (call-with-parameters__1
                                   (lambda ()
                                     (call-with-parameters__1
                                      (lambda ()
                                        (_%read-module-body184594%_
                                         _%inp184529%_))
                                      gx#current-module-reader-args
                                      _%args184533%_))
                                   gx#current-module-reader-path
                                   _%path184441%_)))
                            (values _%prelude184539%_
                                    _%module-id184600%_
                                    _%module-ns184605%_
                                    _%body184609%_)))))))
                 (_%string-e184445%_
                  (lambda (_%obj184523%_ _%what184524%_)
                    (if (string? _%obj184523%_)
                        _%obj184523%_
                        (if (symbol? _%obj184523%_)
                            (##symbol->string _%obj184523%_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _%what184524%_)
                             _%path184441%_
                             _%obj184523%_)))))
                 (_%read-lang-args184446%_
                  (lambda (_%inp184478%_ _%args184479%_)
                    (let* ((_%args184480184488%_ _%args184479%_)
                           (_%else184482184496%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _%path184441%_)))
                           (_%K184484184511%_
                            (lambda (_%args184499%_ _%prelude184500%_)
                              (let* ((_%pkg184502%_
                                      (pgetq__0 'package: _%args184499%_))
                                     (_%pkg184504%_
                                      (if _%pkg184502%_
                                          (_%string-e184445%_
                                           _%pkg184502%_
                                           '"package")
                                          '#f))
                                     (_%ns184506%_
                                      (pgetq__0 'namespace: _%args184499%_))
                                     (_%ns184508%_
                                      (if _%ns184506%_
                                          (_%string-e184445%_
                                           _%ns184506%_
                                           '"namespace")
                                          '#f)))
                                (_%read-body184444%_
                                 _%inp184478%_
                                 _%prelude184500%_
                                 _%ns184508%_
                                 _%pkg184504%_
                                 _%args184499%_)))))
                      (if (pair? _%args184480184488%_)
                          (let ((_%hd184485184514%_
                                 (##car _%args184480184488%_))
                                (_%tl184486184516%_
                                 (##cdr _%args184480184488%_)))
                            (let* ((_%prelude184519%_ _%hd184485184514%_)
                                   (_%args184521%_ _%tl184486184516%_))
                              (_%K184484184511%_
                               _%args184521%_
                               _%prelude184519%_)))
                          (_%else184482184496%_)))))
                 (_%read-lang184447%_
                  (lambda (_%inp184452%_)
                    (let* ((_%head184454%_ (read-line _%inp184452%_))
                           (_%$e184456%_
                            (string-index__0 _%head184454%_ '#\space)))
                      (if _%$e184456%_
                          ((lambda (_%ix184459%_)
                             (let ((_%lang184461%_
                                    (substring
                                     _%head184454%_
                                     '0
                                     _%ix184459%_)))
                               (if (equal? _%lang184461%_ '"#lang")
                                   (let* ((_%rest184463%_
                                           (substring
                                            _%head184454%_
                                            (##fx+ _%ix184459%_ '1)
                                            (string-length _%head184454%_)))
                                          (_%args184474%_
                                           (__with-catch
                                            (lambda (_%g184464184466%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _%path184441%_
                                               _%g184464184466%_))
                                            (lambda ()
                                              (call-with-input-string
                                               _%rest184463%_
                                               (lambda (_%g184469184471%_)
                                                 (read-all
                                                  _%g184469184471%_
                                                  read)))))))
                                     (_%read-lang-args184446%_
                                      _%inp184452%_
                                      _%args184474%_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _%path184441%_))))
                           _%$e184456%_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _%path184441%_)))))
                 (_%read-e184448%_
                  (lambda (_%inp184450%_)
                    (if (eq? (peek-char _%inp184450%_) '#\#)
                        (_%read-lang184447%_ _%inp184450%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _%path184441%_)))))
          (gx#call-with-input-source-file _%path184441%_ _%read-e184448%_))))
    (define gx#core-read-module-package
      (lambda (_%path184389%_ _%pre184390%_ _%ns184391%_)
        (letrec ((_%string-e184393%_
                  (lambda (_%e184436%_)
                    (if (symbol? _%e184436%_)
                        (##symbol->string _%e184436%_)
                        (if (string? _%e184436%_)
                            _%e184436%_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%e184436%_))))))
          (let _%lp184395%_ ((_%dir184397%_ (path-directory _%path184389%_))
                             (_%pkg-path184398%_ '()))
            (let ((_%gerbil.pkg184400%_
                   (path-expand '"gerbil.pkg" _%dir184397%_)))
              (if (##file-exists? _%gerbil.pkg184400%_)
                  (let ((_%plist184402%_
                         (gx#core-library-package-plist__% _%dir184397%_ '#t)))
                    (if (null? _%plist184402%_)
                        (let ((_%pkg184405%_
                               (if (null? _%pkg-path184398%_)
                                   '#f
                                   (string-join _%pkg-path184398%_ '"/"))))
                          (values _%pre184390%_ _%ns184391%_ _%pkg184405%_))
                        (if (list? _%plist184402%_)
                            (let* ((_%root184408%_
                                    (pgetq__0 'package: _%plist184402%_))
                                   (_%pkg184412%_
                                    (let ((_%pkg-path184410%_
                                           (if _%root184408%_
                                               (cons (_%string-e184393%_
                                                      _%root184408%_)
                                                     _%pkg-path184398%_)
                                               _%pkg-path184398%_)))
                                      (if (null? _%pkg-path184410%_)
                                          '#f
                                          (string-join
                                           _%pkg-path184410%_
                                           '"/"))))
                                   (_%ns184419%_
                                    (let ((_%ns184417%_
                                           (let ((_%$e184414%_ _%ns184391%_))
                                             (if _%$e184414%_
                                                 _%$e184414%_
                                                 (pgetq__0
                                                  'namespace:
                                                  _%plist184402%_)))))
                                      (if _%ns184417%_
                                          (_%string-e184393%_ _%ns184417%_)
                                          '#f)))
                                   (_%pre184424%_
                                    (let ((_%$e184421%_ _%pre184390%_))
                                      (if _%$e184421%_
                                          _%$e184421%_
                                          (pgetq__0
                                           'prelude:
                                           _%plist184402%_)))))
                              (values _%pre184424%_
                                      _%ns184419%_
                                      _%pkg184412%_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%plist184402%_))))
                  (let ((_%dir*184428%_
                         (path-strip-trailing-directory-separator
                          _%dir184397%_)))
                    (if (or (__string-empty? _%dir*184428%_)
                            (equal? _%dir184397%_ _%dir*184428%_))
                        (values _%pre184390%_ _%ns184391%_ '#f)
                        (let ((_%xpath184433%_
                               (path-strip-directory _%dir*184428%_))
                              (_%xdir184434%_ (path-directory _%dir*184428%_)))
                          (_%lp184395%_
                           _%xdir184434%_
                           (cons _%xpath184433%_ _%pkg-path184398%_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_%path184387%_)
        (path-strip-extension (path-strip-directory _%path184387%_))))
    (define gx#core-module-path->id
      (lambda (_%path184385%_)
        (##string->symbol (gx#core-module-path->namespace _%path184385%_))))
    (define gx#core-resolve-module-path__%
      (lambda (_%stx-path184364%_ _%rel184365%_)
        (let* ((_%path184367%_ (gx#stx-e _%stx-path184364%_))
               (_%path184369%_
                (if (__string-empty? (path-extension _%path184367%_))
                    (##string-append _%path184367%_ '".ss")
                    _%path184367%_)))
          (gx#core-resolve-path__%
           _%path184369%_
           (let ((_%$e184372%_ (gx#stx-source _%stx-path184364%_)))
             (if _%$e184372%_ _%$e184372%_ _%rel184365%_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_%stx-path184378%_)
        (let ((_%rel184380%_ '#f))
          (gx#core-resolve-module-path__% _%stx-path184378%_ _%rel184380%_))))
    (define gx#core-resolve-module-path
      (lambda _g186023_
        (let ((_g186024_ (##length _g186023_)))
          (cond ((##fx= _g186024_ 1)
                 (apply gx#core-resolve-module-path__0 _g186023_))
                ((##fx= _g186024_ 2)
                 (apply gx#core-resolve-module-path__% _g186023_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g186023_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_%libpath184249%_)
        (let* ((_%spath184251%_ (symbol->string (gx#stx-e _%libpath184249%_)))
               (_%spath184253%_
                (substring
                 _%spath184251%_
                 '1
                 (##string-length _%spath184251%_)))
               (_%ext184255%_ (path-extension _%spath184253%_))
               (_%ssi184257%_
                (if (__string-empty? _%ext184255%_)
                    (##string-append _%spath184253%_ '".ssi")
                    (##string-append
                     (path-strip-extension _%spath184253%_)
                     '".ssi")))
               (_%srcs184261%_
                (if (__string-empty? _%ext184255%_)
                    (##map (lambda (_%ext184259%_)
                             (string-append _%spath184253%_ _%ext184259%_))
                           '(".ss" ".sld" ".scm"))
                    (cons _%spath184253%_ '()))))
          (let _%lp184264%_ ((_%rest184266%_ (load-path)))
            (let* ((_%rest184267184276%_ _%rest184266%_)
                   (_%E184270184280%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rest184267184276%_
                             '([dir . rest])
                             '([]))
                      '#!void)))
              (let ((_%K184272184351%_
                     (lambda (_%rest184291%_ _%dir184292%_)
                       (letrec ((_%resolve184294%_
                                 (lambda (_%ssi184307%_ _%srcs184308%_)
                                   (let ((_%compiled-path184310%_
                                          (path-expand
                                           _%ssi184307%_
                                           _%dir184292%_)))
                                     (if (##file-exists?
                                          _%compiled-path184310%_)
                                         (path-normalize
                                          _%compiled-path184310%_)
                                         (let _%lpr184312%_ ((_%rest-src184314%_
                                                              _%srcs184308%_))
                                           (let* ((_%rest-src184315184323%_
                                                   _%rest-src184314%_)
                                                  (_%else184317184331%_
                                                   (lambda ()
                                                     (_%lp184264%_
                                                      _%rest184291%_)))
                                                  (_%K184319184339%_
                                                   (lambda (_%rest-src184334%_
                                                            _%src184335%_)
                                                     (let ((_%src-path184337%_
                                                            (path-expand
                                                             _%src184335%_
                                                             _%dir184292%_)))
                                                       (if (##file-exists?
                                                            _%src-path184337%_)
                                                           (path-normalize
                                                            _%src-path184337%_)
                                                           (_%lpr184312%_
                                                            _%rest-src184334%_))))))
                                             (if (pair? _%rest-src184315184323%_)
                                                 (let ((_%hd184320184342%_
                                                        (##car _%rest-src184315184323%_))
                                                       (_%tl184321184344%_
                                                        (##cdr _%rest-src184315184323%_)))
                                                   (let* ((_%src184347%_
                                                           _%hd184320184342%_)
                                                          (_%rest-src184349%_
                                                           _%tl184321184344%_))
                                                     (_%K184319184339%_
                                                      _%rest-src184349%_
                                                      _%src184347%_)))
                                                 (_%else184317184331%_)))))))))
                         (let ((_%$e184296%_
                                (gx#core-library-package-path-prefix
                                 _%dir184292%_)))
                           (if _%$e184296%_
                               ((lambda (_%prefix184299%_)
                                  (if (string-prefix?
                                       _%prefix184299%_
                                       _%spath184253%_)
                                      (let ((_%ssi184303%_
                                             (substring
                                              _%ssi184257%_
                                              (string-length _%prefix184299%_)
                                              (##string-length _%ssi184257%_)))
                                            (_%srcs184304%_
                                             (##map (lambda (_%src184301%_)
                                                      (substring
                                                       _%src184301%_
                                                       (string-length
                                                        _%prefix184299%_)
                                                       (string-length
                                                        _%src184301%_)))
                                                    _%srcs184261%_)))
                                        (_%resolve184294%_
                                         _%ssi184303%_
                                         _%srcs184304%_))
                                      (_%lp184264%_ _%rest184291%_)))
                                _%$e184296%_)
                               (_%resolve184294%_
                                _%ssi184257%_
                                _%srcs184261%_))))))
                    (_%K184271184285%_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"cannot find library module"
                        _%libpath184249%_))))
                (let ((_%try-match184269184288%_
                       (lambda ()
                         (if (null? _%rest184267184276%_)
                             (_%K184271184285%_)
                             (_%E184270184280%_)))))
                  (if (pair? _%rest184267184276%_)
                      (let ((_%tl184274184356%_ (##cdr _%rest184267184276%_))
                            (_%hd184273184354%_ (##car _%rest184267184276%_)))
                        (let ((_%dir184359%_ _%hd184273184354%_)
                              (_%rest184361%_ _%tl184274184356%_))
                          (_%K184272184351%_ _%rest184361%_ _%dir184359%_)))
                      (_%try-match184269184288%_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_%modpath184217%_)
        (letrec ((_%resolve184219%_
                  (lambda (_%path184240%_ _%base184241%_)
                    (let ((_%$e184243%_
                           (string-rindex__0 _%base184241%_ '#\/)))
                      (if _%$e184243%_
                          ((lambda (_%idx184246%_)
                             (gx#core-resolve-library-module-path
                              (##string->symbol
                               (string-append
                                '":"
                                (substring _%base184241%_ '0 _%idx184246%_)
                                '"/"
                                _%path184240%_))))
                           _%$e184243%_)
                          (gx#core-resolve-library-module-path
                           (##string->symbol
                            (string-append '":" _%path184240%_))))))))
          (let ((_%spath184221%_ (symbol->string (gx#stx-e _%modpath184217%_)))
                (_%mod184222%_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _%mod184222%_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"cannot resolve relative module path; not in module context"
                 _%modpath184217%_))
            (let ((_%mpath184224%_
                   (symbol->string
                    (##structure-ref
                     _%mod184222%_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _%lp184226%_ ((_%spath184228%_ _%spath184221%_)
                                 (_%mpath184229%_ _%mpath184224%_))
                (if (string-prefix? '"../" _%spath184228%_)
                    (let ((_%$e184232%_
                           (string-rindex__0 _%mpath184229%_ '#\/)))
                      (if _%$e184232%_
                          ((lambda (_%idx184235%_)
                             (_%lp184226%_
                              (substring
                               _%spath184228%_
                               '3
                               (string-length _%spath184228%_))
                              (substring _%mpath184229%_ '0 _%idx184235%_)))
                           _%$e184232%_)
                          (gx#raise-syntax-error
                           '#f
                           '"cannot resolve relative module path; illegal traversal"
                           _%modpath184217%_)))
                    (if (string-prefix? '"./" _%spath184228%_)
                        (_%lp184226%_
                         (substring
                          _%spath184228%_
                          '2
                          (string-length _%spath184228%_))
                         _%mpath184229%_)
                        (_%resolve184219%_
                         _%spath184228%_
                         _%mpath184229%_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_%dir184209%_)
        (let ((_%$e184211%_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _%dir184209%_))))
          (if _%$e184211%_
              ((lambda (_%pkg184214%_)
                 (##string-append (symbol->string _%pkg184214%_) '"/"))
               _%$e184211%_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_%dir184179%_ _%exists?184180%_)
        (let ((_%$e184182%_ (__hash-get gx#__module-pkg-cache _%dir184179%_)))
          (if _%$e184182%_
              _%$e184182%_
              (let* ((_%gerbil.pkg184186%_
                      (path-expand '"gerbil.pkg" _%dir184179%_))
                     (_%plist184196%_
                      (if (or _%exists?184180%_
                              (##file-exists? _%gerbil.pkg184186%_))
                          (let ((_%e184191%_
                                 (gx#call-with-input-source-file
                                  _%gerbil.pkg184186%_
                                  read)))
                            (if (eof-object? _%e184191%_)
                                '()
                                (if (list? _%e184191%_)
                                    _%e184191%_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _%gerbil.pkg184186%_
                                     _%e184191%_))))
                          '())))
                (__hash-put!
                 gx#__module-pkg-cache
                 _%dir184179%_
                 _%plist184196%_)
                _%plist184196%_)))))
    (define gx#core-library-package-plist__0
      (lambda (_%dir184202%_)
        (let ((_%exists?184204%_ '#f))
          (gx#core-library-package-plist__% _%dir184202%_ _%exists?184204%_))))
    (define gx#core-library-package-plist
      (lambda _g186025_
        (let ((_g186026_ (##length _g186025_)))
          (cond ((##fx= _g186026_ 1)
                 (apply gx#core-library-package-plist__0 _g186025_))
                ((##fx= _g186026_ 2)
                 (apply gx#core-library-package-plist__% _g186025_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g186025_))))))
    (define gx#core-library-module-path?
      (lambda (_%stx184176%_)
        (gx#core-special-module-path? _%stx184176%_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_%stx184174%_)
        (gx#core-special-module-path? _%stx184174%_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_%stx184169%_ _%char184170%_)
        (if (gx#identifier? _%stx184169%_)
            (if (interned-symbol? (gx#stx-e _%stx184169%_))
                (let ((_%str184172%_
                       (symbol->string (gx#stx-e _%stx184169%_))))
                  (if (##fx> (##string-length _%str184172%_) '1)
                      (eq? (string-ref _%str184172%_ '0) _%char184170%_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_%stx184163%_)
        (gx#core-bound-identifier?__%
         _%stx184163%_
         (lambda (_%g184164184166%_)
           (gx#expander-binding?__% _%g184164184166%_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_%stx184157%_)
        (gx#core-bound-identifier?__%
         _%stx184157%_
         (lambda (_%g184158184160%_)
           (gx#expander-binding?__% _%g184158184160%_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_%stx184144%_)
        (letrec ((_%module-prelude?184146%_
                  (lambda (_%e184152%_)
                    (let ((_%$e184154%_
                           (##structure-instance-of?
                            _%e184152%_
                            'gx#module-context::t)))
                      (if _%$e184154%_
                          _%$e184154%_
                          (##structure-instance-of?
                           _%e184152%_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _%stx184144%_
           (lambda (_%g184147184149%_)
             (gx#expander-binding?__%
              _%g184147184149%_
              _%module-prelude?184146%_))))))
    (define gx#core-bind-import!__%
      (lambda (_%in184075%_ _%ctx184076%_ _%force-weak?184077%_)
        (let* ((_%in184078184087%_ _%in184075%_)
               (_%E184080184090%_
                (lambda ()
                  (error '"No clause matching"
                         _%in184078184087%_
                         '((module-import source key phi weak?)))
                  '#!void))
               (_%K184081184103%_
                (lambda (_%weak?184093%_
                         _%phi184094%_
                         _%key184095%_
                         _%source184096%_)
                  (gx#core-bind!__%
                   _%key184095%_
                   (let* ((_%e184098%_
                           (gx#core-resolve-module-export _%source184096%_))
                          (__obj186007
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
                      __obj186007
                      (##unchecked-structure-ref _%e184098%_ '1 '#f '#f)
                      _%key184095%_
                      _%phi184094%_
                      _%e184098%_
                      (##unchecked-structure-ref _%source184096%_ '1 '#f '#f)
                      (let ((_%$e184100%_ _%force-weak?184077%_))
                        (if _%$e184100%_ _%$e184100%_ _%weak?184093%_)))
                     __obj186007)
                   gx#core-context-rebind?
                   _%phi184094%_
                   _%ctx184076%_))))
          (if (##structure-direct-instance-of?
               _%in184078184087%_
               'gx#module-import::t)
              (let* ((_%e184082184106%_
                      (##unchecked-structure-ref
                       _%in184078184087%_
                       '1
                       '#f
                       '#f))
                     (_%source184109%_ _%e184082184106%_)
                     (_%e184083184111%_
                      (##unchecked-structure-ref
                       _%in184078184087%_
                       '2
                       '#f
                       '#f))
                     (_%key184114%_ _%e184083184111%_)
                     (_%e184084184116%_
                      (##unchecked-structure-ref
                       _%in184078184087%_
                       '3
                       '#f
                       '#f))
                     (_%phi184119%_ _%e184084184116%_)
                     (_%e184085184121%_
                      (##unchecked-structure-ref
                       _%in184078184087%_
                       '4
                       '#f
                       '#f))
                     (_%weak?184124%_ _%e184085184121%_))
                (_%K184081184103%_
                 _%weak?184124%_
                 _%phi184119%_
                 _%key184114%_
                 _%source184109%_))
              (_%E184080184090%_)))))
    (define gx#core-bind-import!__0
      (lambda (_%in184129%_)
        (let* ((_%ctx184131%_ (gx#current-expander-context))
               (_%force-weak?184133%_ '#f))
          (gx#core-bind-import!__%
           _%in184129%_
           _%ctx184131%_
           _%force-weak?184133%_))))
    (define gx#core-bind-import!__1
      (lambda (_%in184135%_ _%ctx184136%_)
        (let ((_%force-weak?184138%_ '#f))
          (gx#core-bind-import!__%
           _%in184135%_
           _%ctx184136%_
           _%force-weak?184138%_))))
    (define gx#core-bind-import!
      (lambda _g186027_
        (let ((_g186028_ (##length _g186027_)))
          (cond ((##fx= _g186028_ 1) (apply gx#core-bind-import!__0 _g186027_))
                ((##fx= _g186028_ 2) (apply gx#core-bind-import!__1 _g186027_))
                ((##fx= _g186028_ 3) (apply gx#core-bind-import!__% _g186027_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g186027_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_%in184061%_ _%ctx184062%_)
        (gx#core-bind-import!__% _%in184061%_ _%ctx184062%_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_%in184067%_)
        (let ((_%ctx184069%_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _%in184067%_ _%ctx184069%_))))
    (define gx#core-bind-weak-import!
      (lambda _g186029_
        (let ((_g186030_ (##length _g186029_)))
          (cond ((##fx= _g186030_ 1)
                 (apply gx#core-bind-weak-import!__0 _g186029_))
                ((##fx= _g186030_ 2)
                 (apply gx#core-bind-weak-import!__% _g186029_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g186029_))))))
    (define gx#core-resolve-module-export
      (lambda (_%out183954%_)
        (letrec ((_%subst183956%_
                  (lambda (_%key184001%_)
                    (let* ((_%key184002184010%_ _%key184001%_)
                           (_%else184004184018%_ (lambda () _%key184001%_))
                           (_%K184006184048%_
                            (lambda (_%mark184021%_ _%id184022%_)
                              (let* ((_%mark184023184029%_ _%mark184021%_)
                                     (_%E184025184032%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark184023184029%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K184026184040%_
                                      (lambda (_%subst184035%_)
                                        (let ((_%$e184037%_
                                               (if _%subst184035%_
                                                   (hash-get
                                                    _%subst184035%_
                                                    _%id184022%_)
                                                   '#f)))
                                          (if _%$e184037%_
                                              _%$e184037%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _%key184001%_))))))
                                (if (##structure-instance-of?
                                     _%mark184023184029%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e184027184043%_
                                            (##unchecked-structure-ref
                                             _%mark184023184029%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst184046%_ _%e184027184043%_))
                                      (_%K184026184040%_ _%subst184046%_))
                                    (_%E184025184032%_))))))
                      (if (pair? _%key184002184010%_)
                          (let ((_%hd184007184051%_
                                 (##car _%key184002184010%_))
                                (_%tl184008184053%_
                                 (##cdr _%key184002184010%_)))
                            (let* ((_%id184056%_ _%hd184007184051%_)
                                   (_%mark184058%_ _%tl184008184053%_))
                              (_%K184006184048%_ _%mark184058%_ _%id184056%_)))
                          (_%else184004184018%_))))))
          (let* ((_%out183957183967%_ _%out183954%_)
                 (_%E183959183970%_
                  (lambda ()
                    (error '"No clause matching"
                           _%out183957183967%_
                           '((module-export ctx key phi _ _)))
                    '#!void))
                 (_%K183960183977%_
                  (lambda (_%phi183973%_ _%key183974%_ _%ctx183975%_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _%ctx183975%_ _%phi183973%_)
                     (_%subst183956%_ _%key183974%_)))))
            (if (##structure-direct-instance-of?
                 _%out183957183967%_
                 'gx#module-export::t)
                (let* ((_%e183961183980%_
                        (##unchecked-structure-ref
                         _%out183957183967%_
                         '1
                         '#f
                         '#f))
                       (_%ctx183983%_ _%e183961183980%_)
                       (_%e183962183985%_
                        (##unchecked-structure-ref
                         _%out183957183967%_
                         '2
                         '#f
                         '#f))
                       (_%key183988%_ _%e183962183985%_)
                       (_%e183963183990%_
                        (##unchecked-structure-ref
                         _%out183957183967%_
                         '3
                         '#f
                         '#f))
                       (_%phi183993%_ _%e183963183990%_)
                       (_%e183964183995%_
                        (##unchecked-structure-ref
                         _%out183957183967%_
                         '4
                         '#f
                         '#f))
                       (_%e183965183998%_
                        (##unchecked-structure-ref
                         _%out183957183967%_
                         '5
                         '#f
                         '#f)))
                  (_%K183960183977%_
                   _%phi183993%_
                   _%key183988%_
                   _%ctx183983%_))
                (_%E183959183970%_))))))
    (define gx#core-module-export->import__%
      (lambda (_%out183880%_ _%rename183881%_ _%dphi183882%_)
        (let* ((_%out183883183893%_ _%out183880%_)
               (_%E183885183896%_
                (lambda ()
                  (error '"No clause matching"
                         _%out183883183893%_
                         '((module-export ctx key phi name weak?)))
                  '#!void))
               (_%K183886183908%_
                (lambda (_%weak?183899%_
                         _%name183900%_
                         _%phi183901%_
                         _%key183902%_
                         _%ctx183903%_)
                  (##structure
                   gx#module-import::t
                   _%out183880%_
                   (let ((_%$e183905%_ _%rename183881%_))
                     (if _%$e183905%_ _%$e183905%_ _%name183900%_))
                   (fx+ _%phi183901%_ _%dphi183882%_)
                   _%weak?183899%_))))
          (if (##structure-direct-instance-of?
               _%out183883183893%_
               'gx#module-export::t)
              (let* ((_%e183887183911%_
                      (##unchecked-structure-ref
                       _%out183883183893%_
                       '1
                       '#f
                       '#f))
                     (_%ctx183914%_ _%e183887183911%_)
                     (_%e183888183916%_
                      (##unchecked-structure-ref
                       _%out183883183893%_
                       '2
                       '#f
                       '#f))
                     (_%key183919%_ _%e183888183916%_)
                     (_%e183889183921%_
                      (##unchecked-structure-ref
                       _%out183883183893%_
                       '3
                       '#f
                       '#f))
                     (_%phi183924%_ _%e183889183921%_)
                     (_%e183890183926%_
                      (##unchecked-structure-ref
                       _%out183883183893%_
                       '4
                       '#f
                       '#f))
                     (_%name183929%_ _%e183890183926%_)
                     (_%e183891183931%_
                      (##unchecked-structure-ref
                       _%out183883183893%_
                       '5
                       '#f
                       '#f))
                     (_%weak?183934%_ _%e183891183931%_))
                (_%K183886183908%_
                 _%weak?183934%_
                 _%name183929%_
                 _%phi183924%_
                 _%key183919%_
                 _%ctx183914%_))
              (_%E183885183896%_)))))
    (define gx#core-module-export->import__0
      (lambda (_%out183939%_)
        (let* ((_%rename183941%_ '#f) (_%dphi183943%_ '0))
          (gx#core-module-export->import__%
           _%out183939%_
           _%rename183941%_
           _%dphi183943%_))))
    (define gx#core-module-export->import__1
      (lambda (_%out183945%_ _%rename183946%_)
        (let ((_%dphi183948%_ '0))
          (gx#core-module-export->import__%
           _%out183945%_
           _%rename183946%_
           _%dphi183948%_))))
    (define gx#core-module-export->import
      (lambda _g186031_
        (let ((_g186032_ (##length _g186031_)))
          (cond ((##fx= _g186032_ 1)
                 (apply gx#core-module-export->import__0 _g186031_))
                ((##fx= _g186032_ 2)
                 (apply gx#core-module-export->import__1 _g186031_))
                ((##fx= _g186032_ 3)
                 (apply gx#core-module-export->import__% _g186031_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g186031_))))))
    (define gx#core-expand-module%
      (lambda (_%stx183779%_)
        (letrec ((_%make-context183781%_
                  (lambda (_%id183858%_)
                    (let* ((_%super183860%_ (gx#current-expander-context))
                           (_%bind-id183862%_ (gx#stx-e _%id183858%_))
                           (_%mod-id183864%_
                            (if (##structure-instance-of?
                                 _%super183860%_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##unchecked-structure-ref
                                  _%super183860%_
                                  '1
                                  '#f
                                  '#f)
                                 '"~"
                                 _%bind-id183862%_)
                                _%bind-id183862%_))
                           (_%ns183866%_ (symbol->string _%mod-id183864%_))
                           (_%path183876%_
                            (if (##structure-instance-of?
                                 _%super183860%_
                                 'gx#module-context::t)
                                (let ((_%path183868%_
                                       (##unchecked-structure-ref
                                        _%super183860%_
                                        '7
                                        '#f
                                        '#f)))
                                  (if (or (pair? _%path183868%_)
                                          (null? _%path183868%_))
                                      (cons _%bind-id183862%_ _%path183868%_)
                                      (if (not _%path183868%_)
                                          _%bind-id183862%_
                                          (cons _%bind-id183862%_
                                                (cons _%path183868%_ '())))))
                                _%bind-id183862%_))
                           (__obj186008
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
                       __obj186008
                       _%mod-id183864%_
                       _%super183860%_
                       _%ns183866%_
                       _%path183876%_)
                      __obj186008)))
                 (_%valid-module-id?183782%_
                  (lambda (_%id183833%_)
                    (let* ((_%str183835%_ (symbol->string _%id183833%_))
                           (_%len183837%_ (##string-length _%str183835%_)))
                      (if (##fx>= _%len183837%_ '1)
                          (let _%loop183840%_ ((_%index183842%_
                                                (##fx- (##string-length
                                                        _%str183835%_)
                                                       '1)))
                            (if (##fx>= _%index183842%_ '0)
                                (let ((_%c183844%_
                                       (string-ref
                                        _%str183835%_
                                        _%index183842%_)))
                                  (if (or (and (##char>=? _%c183844%_ '#\a)
                                               (##char<=? _%c183844%_ '#\z))
                                          (and (##char>=? _%c183844%_ '#\A)
                                               (##char<=? _%c183844%_ '#\Z))
                                          (and (##char>=? _%c183844%_ '#\0)
                                               (##char<=? _%c183844%_ '#\9))
                                          (##char=? _%c183844%_ '#\_)
                                          (##char=? _%c183844%_ '#\-))
                                      (_%loop183840%_
                                       (##fx- _%index183842%_ '1))
                                      '#f))
                                '#t))
                          '#f)))))
          (let* ((_%e183783183793%_ _%stx183779%_)
                 (_%E183785183797%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e183783183793%_)))
                 (_%E183784183829%_
                  (lambda ()
                    (if (gx#stx-pair? _%e183783183793%_)
                        (let ((_%e183786183801%_
                               (gx#syntax-e _%e183783183793%_)))
                          (let ((_%hd183787183804%_ (##car _%e183786183801%_))
                                (_%tl183788183806%_ (##cdr _%e183786183801%_)))
                            (if (gx#stx-pair? _%tl183788183806%_)
                                (let ((_%e183789183809%_
                                       (gx#syntax-e _%tl183788183806%_)))
                                  (let ((_%hd183790183812%_
                                         (##car _%e183789183809%_))
                                        (_%tl183791183814%_
                                         (##cdr _%e183789183809%_)))
                                    (let* ((_%id183817%_ _%hd183790183812%_)
                                           (_%body183819%_ _%tl183791183814%_))
                                      (if (and (gx#identifier? _%id183817%_)
                                               (gx#stx-list? _%body183819%_))
                                          (if (_%valid-module-id?183782%_
                                               (gx#stx-e
                                                (gx#datum->syntax__0 '#f 'id)))
                                              (let* ((_%ctx183821%_
                                                      (_%make-context183781%_
                                                       _%id183817%_))
                                                     (_%body183823%_
                                                      (gx#core-expand-module-begin
                                                       _%body183819%_
                                                       _%ctx183821%_))
                                                     (_%body183825%_
                                                      (gx#core-quote-syntax__1
                                                       (gx#core-cons
                                                        '%#begin
                                                        _%body183823%_)
                                                       (gx#stx-source
                                                        _%stx183779%_))))
                                                (##unchecked-structure-set!
                                                 _%ctx183821%_
                                                 (__make-atomic-promise
                                                  (lambda ()
                                                    (gx#eval-syntax*
                                                     _%body183825%_)))
                                                 '10
                                                 '#f
                                                 '#f)
                                                (##unchecked-structure-set!
                                                 _%ctx183821%_
                                                 _%body183825%_
                                                 '11
                                                 '#f
                                                 '#f)
                                                (gx#core-bind-syntax!__0
                                                 _%id183817%_
                                                 _%ctx183821%_)
                                                (gx#core-quote-syntax__1
                                                 (gx#core-list
                                                  '%#module
                                                  (gx#core-quote-syntax__0
                                                   _%id183817%_)
                                                  _%body183825%_)
                                                 (gx#stx-source
                                                  _%stx183779%_)))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"invalid module id; allowed characters are A-Z,a-z,0-9,_,-"
                                               _%stx183779%_
                                               (gx#datum->syntax__0 '#f 'id)))
                                          (_%E183785183797%_)))))
                                (_%E183785183797%_))))
                        (_%E183785183797%_)))))
            (_%E183784183829%_)))))
    (define gx#core-expand-module-begin
      (lambda (_%body183744%_ _%ctx183745%_)
        (call-with-parameters__1
         (lambda ()
           (call-with-parameters__1
            (lambda ()
              (gx#core-bind-feature!__1 'gerbil-module '#t)
              (let* ((_%stx183749%_
                      (gx#core-expand-head
                       (cons '%%begin-module _%body183744%_)))
                     (_%e183750183757%_ _%stx183749%_)
                     (_%E183752183761%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module body expansion"
                         _%stx183749%_)))
                     (_%E183751183775%_
                      (lambda ()
                        (if (gx#stx-pair? _%e183750183757%_)
                            (let ((_%e183753183765%_
                                   (gx#syntax-e _%e183750183757%_)))
                              (let ((_%hd183754183768%_
                                     (##car _%e183753183765%_))
                                    (_%tl183755183770%_
                                     (##cdr _%e183753183765%_)))
                                (if (and (gx#identifier? _%hd183754183768%_)
                                         (gx#core-identifier=?
                                          _%hd183754183768%_
                                          '%#begin-module))
                                    (let ((_%body183773%_ _%tl183755183770%_))
                                      (if (gx#sealed-syntax? _%stx183749%_)
                                          _%body183773%_
                                          (gx#core-expand-module-body
                                           _%body183773%_)))
                                    (_%E183752183761%_))))
                            (_%E183752183761%_)))))
                (_%E183751183775%_)))
            gx#current-expander-phi
            '0))
         gx#current-expander-context
         _%ctx183745%_)))
    (define gx#core-expand-module-body
      (lambda (_%body183540%_)
        (letrec ((_%expand-special183542%_
                  (lambda (_%hd183671%_ _%K183672%_ _%rest183673%_ _%r183674%_)
                    (let* ((_%e183675183692%_ _%hd183671%_)
                           (_%E183687183696%_
                            (lambda ()
                              (_%K183672%_
                               _%rest183673%_
                               (cons (gx#core-expand-top _%hd183671%_)
                                     _%r183674%_))))
                           (_%E183677183708%_
                            (lambda ()
                              (if (gx#stx-pair? _%e183675183692%_)
                                  (let ((_%e183688183700%_
                                         (gx#syntax-e _%e183675183692%_)))
                                    (let ((_%hd183689183703%_
                                           (##car _%e183688183700%_))
                                          (_%tl183690183705%_
                                           (##cdr _%e183688183700%_)))
                                      (if (and (gx#identifier?
                                                _%hd183689183703%_)
                                               (gx#core-identifier=?
                                                _%hd183689183703%_
                                                '%#export))
                                          (_%K183672%_
                                           _%rest183673%_
                                           (cons _%hd183671%_ _%r183674%_))
                                          (_%E183687183696%_))))
                                  (_%E183687183696%_))))
                           (_%E183676183740%_
                            (lambda ()
                              (if (gx#stx-pair? _%e183675183692%_)
                                  (let ((_%e183678183712%_
                                         (gx#syntax-e _%e183675183692%_)))
                                    (let ((_%hd183679183715%_
                                           (##car _%e183678183712%_))
                                          (_%tl183680183717%_
                                           (##cdr _%e183678183712%_)))
                                      (if (and (gx#identifier?
                                                _%hd183679183715%_)
                                               (gx#core-identifier=?
                                                _%hd183679183715%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl183680183717%_)
                                              (let ((_%e183681183720%_
                                                     (gx#syntax-e
                                                      _%tl183680183717%_)))
                                                (let ((_%hd183682183723%_
                                                       (##car _%e183681183720%_))
                                                      (_%tl183683183725%_
                                                       (##cdr _%e183681183720%_)))
                                                  (let ((_%hd-bind183728%_
                                                         _%hd183682183723%_))
                                                    (if (gx#stx-pair?
                                                         _%tl183683183725%_)
                                                        (let ((_%e183684183730%_
                                                               (gx#syntax-e
                                                                _%tl183683183725%_)))
                                                          (let ((_%hd183685183733%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e183684183730%_))
                        (_%tl183686183735%_ (##cdr _%e183684183730%_)))
                    (let ((_%expr183738%_ _%hd183685183733%_))
                      (if (gx#stx-null? _%tl183686183735%_)
                          (if (gx#core-bind-values? _%hd-bind183728%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind183728%_)
                                (_%K183672%_
                                 _%rest183673%_
                                 (cons _%hd183671%_ _%r183674%_)))
                              (_%E183677183708%_))
                          (_%E183677183708%_)))))
                (_%E183677183708%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E183677183708%_))
                                          (_%E183677183708%_))))
                                  (_%E183677183708%_)))))
                      (_%E183676183740%_))))
                 (_%expand-body183543%_
                  (lambda (_%rbody183545%_)
                    (let _%lp183547%_ ((_%rest183549%_ _%rbody183545%_)
                                       (_%body183550%_ '()))
                      (let* ((_%rest183551183559%_ _%rest183549%_)
                             (_%else183553183567%_ (lambda () _%body183550%_))
                             (_%K183555183659%_
                              (lambda (_%rest183570%_ _%hd183571%_)
                                (let* ((_%e183572183593%_ _%hd183571%_)
                                       (_%E183588183597%_
                                        (lambda ()
                                          (_%lp183547%_
                                           _%rest183570%_
                                           (cons (gx#core-expand-expression
                                                  _%hd183571%_)
                                                 _%body183550%_))))
                                       (_%E183584183611%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e183572183593%_)
                                              (let ((_%e183589183601%_
                                                     (gx#syntax-e
                                                      _%e183572183593%_)))
                                                (let ((_%hd183590183604%_
                                                       (##car _%e183589183601%_))
                                                      (_%tl183591183606%_
                                                       (##cdr _%e183589183601%_)))
                                                  (let ((_%form183609%_
                                                         _%hd183590183604%_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _%form183609%_
                                                         gx#special-form-binding?)
                                                        (_%lp183547%_
                                                         _%rest183570%_
                                                         (cons _%hd183571%_
                                                               _%body183550%_))
                                                        (_%E183588183597%_)))))
                                              (_%E183588183597%_))))
                                       (_%E183574183623%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e183572183593%_)
                                              (let ((_%e183585183615%_
                                                     (gx#syntax-e
                                                      _%e183572183593%_)))
                                                (let ((_%hd183586183618%_
                                                       (##car _%e183585183615%_))
                                                      (_%tl183587183620%_
                                                       (##cdr _%e183585183615%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd183586183618%_)
                                                           (gx#core-identifier=?
                                                            _%hd183586183618%_
                                                            '%#export))
                                                      (_%lp183547%_
                                                       _%rest183570%_
                                                       (cons (gx#core-expand-export%__0
                                                              _%hd183571%_)
                                                             _%body183550%_))
                                                      (_%E183584183611%_))))
                                              (_%E183584183611%_))))
                                       (_%E183573183655%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e183572183593%_)
                                              (let ((_%e183575183627%_
                                                     (gx#syntax-e
                                                      _%e183572183593%_)))
                                                (let ((_%hd183576183630%_
                                                       (##car _%e183575183627%_))
                                                      (_%tl183577183632%_
                                                       (##cdr _%e183575183627%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd183576183630%_)
                                                           (gx#core-identifier=?
                                                            _%hd183576183630%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl183577183632%_)
                                                          (let ((_%e183578183635%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl183577183632%_)))
                    (let ((_%hd183579183638%_ (##car _%e183578183635%_))
                          (_%tl183580183640%_ (##cdr _%e183578183635%_)))
                      (let ((_%hd-bind183643%_ _%hd183579183638%_))
                        (if (gx#stx-pair? _%tl183580183640%_)
                            (let ((_%e183581183645%_
                                   (gx#syntax-e _%tl183580183640%_)))
                              (let ((_%hd183582183648%_
                                     (##car _%e183581183645%_))
                                    (_%tl183583183650%_
                                     (##cdr _%e183581183645%_)))
                                (let ((_%expr183653%_ _%hd183582183648%_))
                                  (if (gx#stx-null? _%tl183583183650%_)
                                      (_%lp183547%_
                                       _%rest183570%_
                                       (cons (gx#core-quote-syntax__1
                                              (gx#core-list
                                               '%#define-values
                                               (gx#core-quote-bind-values
                                                _%hd-bind183643%_)
                                               (gx#core-expand-expression
                                                _%expr183653%_))
                                              (gx#stx-source _%hd183571%_))
                                             _%body183550%_))
                                      (_%E183574183623%_)))))
                            (_%E183574183623%_)))))
                  (_%E183574183623%_))
              (_%E183574183623%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E183574183623%_)))))
                                  (_%E183573183655%_)))))
                        (if (pair? _%rest183551183559%_)
                            (let ((_%hd183556183662%_
                                   (##car _%rest183551183559%_))
                                  (_%tl183557183664%_
                                   (##cdr _%rest183551183559%_)))
                              (let* ((_%hd183667%_ _%hd183556183662%_)
                                     (_%rest183669%_ _%tl183557183664%_))
                                (_%K183555183659%_
                                 _%rest183669%_
                                 _%hd183667%_)))
                            (_%else183553183567%_)))))))
          (_%expand-body183543%_
           (gx#core-expand-block__%
            (cons '%#begin-module _%body183540%_)
            _%expand-special183542%_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_%stx183381%_
               _%expanded?183382%_
               _%method183383%_
               _%current-phi183384%_
               _%expand1183385%_)
        (letrec ((_%K183387%_
                  (lambda (_%rest183507%_ _%r183508%_)
                    (let* ((_%e183509183516%_ _%rest183507%_)
                           (_%E183511183520%_ (lambda () _%r183508%_))
                           (_%E183510183536%_
                            (lambda ()
                              (if (gx#stx-pair? _%e183509183516%_)
                                  (let ((_%e183512183524%_
                                         (gx#syntax-e _%e183509183516%_)))
                                    (let ((_%hd183513183527%_
                                           (##car _%e183512183524%_))
                                          (_%tl183514183529%_
                                           (##cdr _%e183512183524%_)))
                                      (let* ((_%hd183532%_ _%hd183513183527%_)
                                             (_%rest183534%_
                                              _%tl183514183529%_))
                                        (_%step183388%_
                                         _%hd183532%_
                                         _%rest183534%_
                                         _%r183508%_))))
                                  (_%E183511183520%_)))))
                      (_%E183510183536%_))))
                 (_%step183388%_
                  (lambda (_%hd183421%_ _%rest183422%_ _%r183423%_)
                    (let* ((_%e183424183442%_ _%hd183421%_)
                           (_%E183437183446%_
                            (lambda ()
                              (if (_%expanded?183382%_ (gx#stx-e _%hd183421%_))
                                  (_%K183387%_
                                   _%rest183422%_
                                   (cons (gx#stx-e _%hd183421%_) _%r183423%_))
                                  (_%expand1183385%_
                                   _%hd183421%_
                                   _%K183387%_
                                   _%rest183422%_
                                   _%r183423%_))))
                           (_%E183433183462%_
                            (lambda ()
                              (if (gx#stx-pair? _%e183424183442%_)
                                  (let ((_%e183438183450%_
                                         (gx#syntax-e _%e183424183442%_)))
                                    (let ((_%hd183439183453%_
                                           (##car _%e183438183450%_))
                                          (_%tl183440183455%_
                                           (##cdr _%e183438183450%_)))
                                      (let* ((_%macro183458%_
                                              _%hd183439183453%_)
                                             (_%body183460%_
                                              _%tl183440183455%_))
                                        (if (gx#core-bound-identifier?__%
                                             _%macro183458%_
                                             gx#syntax-binding?)
                                            (_%K183387%_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _%macro183458%_)
                                                    _%hd183421%_
                                                    _%method183383%_)
                                                   _%rest183422%_)
                                             _%r183423%_)
                                            (_%E183437183446%_)))))
                                  (_%E183437183446%_))))
                           (_%E183426183476%_
                            (lambda ()
                              (if (gx#stx-pair? _%e183424183442%_)
                                  (let ((_%e183434183466%_
                                         (gx#syntax-e _%e183424183442%_)))
                                    (let ((_%hd183435183469%_
                                           (##car _%e183434183466%_))
                                          (_%tl183436183471%_
                                           (##cdr _%e183434183466%_)))
                                      (if (eq? (gx#stx-e _%hd183435183469%_)
                                               'begin:)
                                          (let ((_%body183474%_
                                                 _%tl183436183471%_))
                                            (_%K183387%_
                                             (gx#stx-foldr
                                              cons
                                              _%rest183422%_
                                              _%body183474%_)
                                             _%r183423%_))
                                          (_%E183433183462%_))))
                                  (_%E183433183462%_))))
                           (_%E183425183503%_
                            (lambda ()
                              (if (gx#stx-pair? _%e183424183442%_)
                                  (let ((_%e183427183480%_
                                         (gx#syntax-e _%e183424183442%_)))
                                    (let ((_%hd183428183483%_
                                           (##car _%e183427183480%_))
                                          (_%tl183429183485%_
                                           (##cdr _%e183427183480%_)))
                                      (if (eq? (gx#stx-e _%hd183428183483%_)
                                               'phi:)
                                          (if (gx#stx-pair? _%tl183429183485%_)
                                              (let ((_%e183430183488%_
                                                     (gx#syntax-e
                                                      _%tl183429183485%_)))
                                                (let ((_%hd183431183491%_
                                                       (##car _%e183430183488%_))
                                                      (_%tl183432183493%_
                                                       (##cdr _%e183430183488%_)))
                                                  (let* ((_%dphi183496%_
                                                          _%hd183431183491%_)
                                                         (_%body183498%_
                                                          _%tl183432183493%_))
                                                    (if (gx#stx-fixnum?
                                                         _%dphi183496%_)
                                                        (let ((_%rbody183501%_
                                                               (call-with-parameters__1
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%K183387%_ _%body183498%_ '()))
                        _%current-phi183384%_
                        (fx+ (gx#stx-e _%dphi183496%_)
                             (_%current-phi183384%_)))))
                  (_%K183387%_
                   _%rest183422%_
                   (foldr__0 cons _%r183423%_ _%rbody183501%_)))
                (_%E183426183476%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E183426183476%_))
                                          (_%E183426183476%_))))
                                  (_%E183426183476%_)))))
                      (_%E183425183503%_)))))
          (let* ((_%e183389183396%_ _%stx183381%_)
                 (_%E183391183400%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e183389183396%_)))
                 (_%E183390183417%_
                  (lambda ()
                    (if (gx#stx-pair? _%e183389183396%_)
                        (let ((_%e183392183404%_
                               (gx#syntax-e _%e183389183396%_)))
                          (let ((_%hd183393183407%_ (##car _%e183392183404%_))
                                (_%tl183394183409%_ (##cdr _%e183392183404%_)))
                            (let ((_%body183412%_ _%tl183394183409%_))
                              (if (_%current-phi183384%_)
                                  (_%K183387%_ _%body183412%_ '())
                                  (call-with-parameters__1
                                   (lambda () (_%K183387%_ _%body183412%_ '()))
                                   _%current-phi183384%_
                                   (gx#current-expander-phi))))))
                        (_%E183391183400%_)))))
            (_%E183390183417%_)))))
    (define gx#core-expand-import%__%
      (lambda (_%stx183035%_ _%internal-expand?183036%_)
        (letrec ((_%expand1183038%_
                  (lambda (_%hd183353%_ _%K183354%_ _%rest183355%_ _%r183356%_)
                    (if (gx#core-bound-module? _%hd183353%_)
                        (_%import1183039%_
                         (gx#syntax-local-e__0 _%hd183353%_)
                         _%K183354%_
                         _%rest183355%_
                         _%r183356%_)
                        (if (gx#core-library-module-path? _%hd183353%_)
                            (_%import1183039%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%hd183353%_))
                             _%K183354%_
                             _%rest183355%_
                             _%r183356%_)
                            (if (gx#core-library-relative-module-path?
                                 _%hd183353%_)
                                (_%import1183039%_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _%hd183353%_))
                                 _%K183354%_
                                 _%rest183355%_
                                 _%r183356%_)
                                (let ((_%e183362%_ (gx#stx-e _%hd183353%_)))
                                  (if (pair? _%e183362%_)
                                      (let ((_%$e183365%_
                                             (gx#stx-e (##car _%e183362%_))))
                                        (if (eq? 'spec: _%$e183365%_)
                                            (_%import-spec183042%_
                                             _%hd183353%_
                                             _%K183354%_
                                             _%rest183355%_
                                             _%r183356%_)
                                            (if (eq? 'in: _%$e183365%_)
                                                (_%import-submodule183040%_
                                                 _%hd183353%_
                                                 _%K183354%_
                                                 _%rest183355%_
                                                 _%r183356%_)
                                                (if (eq? 'runtime:
                                                         _%$e183365%_)
                                                    (_%import-runtime183041%_
                                                     _%hd183353%_
                                                     _%K183354%_
                                                     _%rest183355%_
                                                     _%r183356%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _%stx183035%_
                                                     _%hd183353%_)))))
                                      (if (string? _%e183362%_)
                                          (_%import1183039%_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _%hd183353%_
                                             (gx#stx-source _%stx183035%_)))
                                           _%K183354%_
                                           _%rest183355%_
                                           _%r183356%_)
                                          (if (##structure-instance-of?
                                               _%e183362%_
                                               'gx#module-context::t)
                                              (_%K183354%_
                                               _%rest183355%_
                                               (cons _%e183362%_ _%r183356%_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _%stx183035%_
                                               _%hd183353%_))))))))))
                 (_%import1183039%_
                  (lambda (_%ctx183342%_
                           _%K183343%_
                           _%rest183344%_
                           _%r183345%_)
                    (let ((_%dphi183347%_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_%K183343%_
                       _%rest183344%_
                       (cons (##structure
                              gx#import-set::t
                              _%ctx183342%_
                              _%dphi183347%_
                              (map (lambda (_%g183348183350%_)
                                     (gx#core-module-export->import__%
                                      _%g183348183350%_
                                      '#f
                                      _%dphi183347%_))
                                   (##unchecked-structure-ref
                                    _%ctx183342%_
                                    '9
                                    '#f
                                    '#f)))
                             _%r183345%_)))))
                 (_%import-submodule183040%_
                  (lambda (_%hd183309%_ _%K183310%_ _%rest183311%_ _%r183312%_)
                    (let* ((_%e183313183320%_ _%hd183309%_)
                           (_%E183315183324%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e183313183320%_)))
                           (_%E183314183338%_
                            (lambda ()
                              (if (gx#stx-pair? _%e183313183320%_)
                                  (let ((_%e183316183328%_
                                         (gx#syntax-e _%e183313183320%_)))
                                    (let ((_%hd183317183331%_
                                           (##car _%e183316183328%_))
                                          (_%tl183318183333%_
                                           (##cdr _%e183316183328%_)))
                                      (let ((_%spath183336%_
                                             _%tl183318183333%_))
                                        (_%import1183039%_
                                         (_%import-spec-source183043%_
                                          _%spath183336%_)
                                         _%K183310%_
                                         _%rest183311%_
                                         _%r183312%_))))
                                  (_%E183315183324%_)))))
                      (_%E183314183338%_))))
                 (_%import-runtime183041%_
                  (lambda (_%hd183276%_ _%K183277%_ _%rest183278%_ _%r183279%_)
                    (let* ((_%e183280183287%_ _%hd183276%_)
                           (_%E183282183291%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e183280183287%_)))
                           (_%E183281183305%_
                            (lambda ()
                              (if (gx#stx-pair? _%e183280183287%_)
                                  (let ((_%e183283183295%_
                                         (gx#syntax-e _%e183280183287%_)))
                                    (let ((_%hd183284183298%_
                                           (##car _%e183283183295%_))
                                          (_%tl183285183300%_
                                           (##cdr _%e183283183295%_)))
                                      (let ((_%spath183303%_
                                             _%tl183285183300%_))
                                        (_%K183277%_
                                         _%rest183278%_
                                         (cons (_%import-spec-source183043%_
                                                _%spath183303%_)
                                               _%r183279%_)))))
                                  (_%E183282183291%_)))))
                      (_%E183281183305%_))))
                 (_%import-spec183042%_
                  (lambda (_%hd183114%_ _%K183115%_ _%rest183116%_ _%r183117%_)
                    (let* ((_%e183118183135%_ _%hd183114%_)
                           (_%E183127183139%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e183118183135%_)))
                           (_%E183120183250%_
                            (lambda ()
                              (if (gx#stx-pair? _%e183118183135%_)
                                  (let ((_%e183128183143%_
                                         (gx#syntax-e _%e183118183135%_)))
                                    (let ((_%hd183129183146%_
                                           (##car _%e183128183143%_))
                                          (_%tl183130183148%_
                                           (##cdr _%e183128183143%_)))
                                      (if (gx#stx-pair? _%tl183130183148%_)
                                          (let ((_%e183131183151%_
                                                 (gx#syntax-e
                                                  _%tl183130183148%_)))
                                            (let ((_%hd183132183154%_
                                                   (##car _%e183131183151%_))
                                                  (_%tl183133183156%_
                                                   (##cdr _%e183131183151%_)))
                                              (let* ((_%path183159%_
                                                      _%hd183132183154%_)
                                                     (_%specs183161%_
                                                      _%tl183133183156%_))
                                                (let ((_%src-ctx183163%_
                                                       (_%import-spec-source183043%_
                                                        _%path183159%_))
                                                      (_%exports183164%_
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
                                                      (_%specs183165%_
                                                       (gx#syntax->list
                                                        _%specs183161%_)))
                                                  (for-each
                                                   (lambda (_%out183167%_)
                                                     (__hash-put!
                                                      _%exports183164%_
                                                      (cons (##unchecked-structure-ref
                                                             _%out183167%_
                                                             '3
                                                             '#f
                                                             '#f)
                                                            (##unchecked-structure-ref
                                                             _%out183167%_
                                                             '4
                                                             '#f
                                                             '#f))
                                                      _%out183167%_))
                                                   (##unchecked-structure-ref
                                                    _%src-ctx183163%_
                                                    '9
                                                    '#f
                                                    '#f))
                                                  (_%K183115%_
                                                   _%rest183116%_
                                                   (foldl__0
                                                    (lambda (_%spec183169%_
                                                             _%r183170%_)
                                                      (let* ((_%e183171183187%_
                                                              _%spec183169%_)
                                                             (_%E183173183191%_
                                                              (lambda ()
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid syntax-case clause"
                         _%e183171183187%_)))
                     (_%E183172183246%_
                      (lambda ()
                        (if (gx#stx-pair? _%e183171183187%_)
                            (let ((_%e183174183195%_
                                   (gx#syntax-e _%e183171183187%_)))
                              (let ((_%hd183175183198%_
                                     (##car _%e183174183195%_))
                                    (_%tl183176183200%_
                                     (##cdr _%e183174183195%_)))
                                (let ((_%phi183203%_ _%hd183175183198%_))
                                  (if (gx#stx-pair? _%tl183176183200%_)
                                      (let ((_%e183177183205%_
                                             (gx#syntax-e _%tl183176183200%_)))
                                        (let ((_%hd183178183208%_
                                               (##car _%e183177183205%_))
                                              (_%tl183179183210%_
                                               (##cdr _%e183177183205%_)))
                                          (let ((_%name183213%_
                                                 _%hd183178183208%_))
                                            (if (gx#stx-pair?
                                                 _%tl183179183210%_)
                                                (let ((_%e183180183215%_
                                                       (gx#syntax-e
                                                        _%tl183179183210%_)))
                                                  (let ((_%hd183181183218%_
                                                         (##car _%e183180183215%_))
                                                        (_%tl183182183220%_
                                                         (##cdr _%e183180183215%_)))
                                                    (let ((_%src-phi183223%_
                                                           _%hd183181183218%_))
                                                      (if (gx#stx-pair?
                                                           _%tl183182183220%_)
                                                          (let ((_%e183183183225%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl183182183220%_)))
                    (let ((_%hd183184183228%_ (##car _%e183183183225%_))
                          (_%tl183185183230%_ (##cdr _%e183183183225%_)))
                      (let ((_%src-name183233%_ _%hd183184183228%_))
                        (if (gx#stx-null? _%tl183185183230%_)
                            (if (and (gx#stx-fixnum? _%src-phi183223%_)
                                     (gx#identifier? _%src-name183233%_)
                                     (gx#stx-fixnum? _%phi183203%_)
                                     (gx#identifier? _%name183213%_))
                                (let ((_%src-phi183235%_
                                       (gx#stx-e _%src-phi183223%_))
                                      (_%src-name183236%_
                                       (gx#core-identifier-key
                                        _%src-name183233%_))
                                      (_%phi183237%_ (gx#stx-e _%phi183203%_))
                                      (_%name183238%_
                                       (gx#core-identifier-key
                                        _%name183213%_)))
                                  (let ((_%$e183240%_
                                         (__hash-get
                                          _%exports183164%_
                                          (cons _%src-phi183235%_
                                                _%src-name183236%_))))
                                    (if _%$e183240%_
                                        ((lambda (_%out183243%_)
                                           (cons (gx#core-module-export->import__%
                                                  _%out183243%_
                                                  _%name183238%_
                                                  (fx- _%phi183237%_
                                                       _%src-phi183235%_))
                                                 _%r183170%_))
                                         _%$e183240%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; no matching export"
                                         _%stx183035%_
                                         _%hd183114%_))))
                                (_%E183173183191%_))
                            (_%E183173183191%_)))))
                  (_%E183173183191%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E183173183191%_)))))
                                      (_%E183173183191%_)))))
                            (_%E183173183191%_)))))
                (_%E183172183246%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r183117%_
                                                    _%specs183165%_))))))
                                          (_%E183127183139%_))))
                                  (_%E183127183139%_))))
                           (_%E183119183272%_
                            (lambda ()
                              (if (gx#stx-pair? _%e183118183135%_)
                                  (let ((_%e183121183254%_
                                         (gx#syntax-e _%e183118183135%_)))
                                    (let ((_%hd183122183257%_
                                           (##car _%e183121183254%_))
                                          (_%tl183123183259%_
                                           (##cdr _%e183121183254%_)))
                                      (if (gx#stx-pair? _%tl183123183259%_)
                                          (let ((_%e183124183262%_
                                                 (gx#syntax-e
                                                  _%tl183123183259%_)))
                                            (let ((_%hd183125183265%_
                                                   (##car _%e183124183262%_))
                                                  (_%tl183126183267%_
                                                   (##cdr _%e183124183262%_)))
                                              (let ((_%path183270%_
                                                     _%hd183125183265%_))
                                                (if (gx#stx-null?
                                                     _%tl183126183267%_)
                                                    (_%K183115%_
                                                     _%rest183116%_
                                                     (cons (_%import-spec-source183043%_
                                                            _%path183270%_)
                                                           _%r183117%_))
                                                    (_%E183120183250%_)))))
                                          (_%E183120183250%_))))
                                  (_%E183120183250%_)))))
                      (_%E183119183272%_))))
                 (_%import-spec-source183043%_
                  (lambda (_%spath183112%_)
                    (gx#core-import-nested-module
                     _%spath183112%_
                     _%stx183035%_)))
                 (_%import!183044%_
                  (lambda (_%rbody183057%_)
                    (letrec* ((_%current-ctx183059%_
                               (gx#current-expander-context))
                              (_%deps183060%_ (make-hash-table-eq))
                              (_%bind!183061%_
                               (lambda (_%hd183110%_)
                                 (gx#core-bind-import!__1
                                  _%hd183110%_
                                  _%current-ctx183059%_))))
                      (let _%lp183063%_ ((_%rest183065%_ _%rbody183057%_)
                                         (_%body183066%_ '()))
                        (let* ((_%rest183067183075%_ _%rest183065%_)
                               (_%else183069183086%_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _%current-ctx183059%_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _%current-ctx183059%_
                                       (foldl__0
                                        cons
                                        (##unchecked-structure-ref
                                         _%current-ctx183059%_
                                         '8
                                         '#f
                                         '#f)
                                        _%body183066%_)
                                       '8
                                       '#f
                                       '#f)
                                      '#!void)
                                  (__hash-for-each
                                   (lambda (_%ctx183083%_ _%_183084%_)
                                     (gx#eval-module _%ctx183083%_))
                                   _%deps183060%_)
                                  _%body183066%_))
                               (_%K183071183098%_
                                (lambda (_%rest183089%_ _%hd183090%_)
                                  (if (##structure-direct-instance-of?
                                       _%hd183090%_
                                       'gx#module-import::t)
                                      (let ()
                                        (_%bind!183061%_ _%hd183090%_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _%hd183090%_
                                                   '3
                                                   '#f
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _%hd183090%_
                                                            '1
                                                            '#f
                                                            '#f)
                                                           '3
                                                           '#f
                                                           '#f)))
                                            (__hash-put!
                                             _%deps183060%_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _%hd183090%_
                                               '1
                                               '#f
                                               '#f)
                                              '1
                                              '#f
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _%hd183090%_
                                           'gx#import-set::t)
                                          (let ()
                                            (for-each
                                             _%bind!183061%_
                                             (##unchecked-structure-ref
                                              _%hd183090%_
                                              '3
                                              '#f
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _%hd183090%_
                                                  '2
                                                  '#f
                                                  '#f))
                                                (__hash-put!
                                                 _%deps183060%_
                                                 (##unchecked-structure-ref
                                                  _%hd183090%_
                                                  '1
                                                  '#f
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_%$e183094%_
                                                 (##structure-instance-of?
                                                  _%hd183090%_
                                                  'gx#module-context::t)))
                                            (if _%$e183094%_
                                                _%$e183094%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _%stx183035%_
                                                 _%hd183090%_)))))
                                  (_%lp183063%_
                                   _%rest183089%_
                                   (cons _%hd183090%_ _%body183066%_)))))
                          (if (pair? _%rest183067183075%_)
                              (let ((_%hd183072183101%_
                                     (##car _%rest183067183075%_))
                                    (_%tl183073183103%_
                                     (##cdr _%rest183067183075%_)))
                                (let* ((_%hd183106%_ _%hd183072183101%_)
                                       (_%rest183108%_ _%tl183073183103%_))
                                  (_%K183071183098%_
                                   _%rest183108%_
                                   _%hd183106%_)))
                              (_%else183069183086%_)))))))
                 (_%expanded-import?183045%_
                  (lambda (_%e183049%_)
                    (let ((_%$e183051%_
                           (##structure-direct-instance-of?
                            _%e183049%_
                            'gx#import-set::t)))
                      (if _%$e183051%_
                          _%$e183051%_
                          (let ((_%$e183054%_
                                 (##structure-direct-instance-of?
                                  _%e183049%_
                                  'gx#module-import::t)))
                            (if _%$e183054%_
                                _%$e183054%_
                                (##structure-instance-of?
                                 _%e183049%_
                                 'gx#module-context::t))))))))
          (let ((_%rbody183047%_
                 (gx#core-expand-import/export
                  _%stx183035%_
                  _%expanded-import?183045%_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _%expand1183038%_)))
            (if _%internal-expand?183036%_
                (reverse _%rbody183047%_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_%import!183044%_ _%rbody183047%_))
                 (gx#stx-source _%stx183035%_)))))))
    (define gx#core-expand-import%__0
      (lambda (_%stx183374%_)
        (let ((_%internal-expand?183376%_ '#f))
          (gx#core-expand-import%__%
           _%stx183374%_
           _%internal-expand?183376%_))))
    (define gx#core-expand-import%
      (lambda _g186033_
        (let ((_g186034_ (##length _g186033_)))
          (cond ((##fx= _g186034_ 1)
                 (apply gx#core-expand-import%__0 _g186033_))
                ((##fx= _g186034_ 2)
                 (apply gx#core-expand-import%__% _g186033_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g186033_))))))
    (define gx#core-import-nested-module
      (lambda (_%spath182962%_ _%where182963%_)
        (let* ((_%e182964182971%_ _%spath182962%_)
               (_%E182966182975%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e182964182971%_)))
               (_%E182965183030%_
                (lambda ()
                  (if (gx#stx-pair? _%e182964182971%_)
                      (let ((_%e182967182979%_
                             (gx#syntax-e _%e182964182971%_)))
                        (let ((_%hd182968182982%_ (##car _%e182967182979%_))
                              (_%tl182969182984%_ (##cdr _%e182967182979%_)))
                          (let* ((_%origin182987%_ _%hd182968182982%_)
                                 (_%sub182989%_ _%tl182969182984%_)
                                 (_%origin-ctx182991%_
                                  (if (gx#stx-false? _%origin182987%_)
                                      (gx#current-expander-context)
                                      (gx#import-module__0 _%origin182987%_))))
                            (let _%lp182993%_ ((_%rest182995%_ _%sub182989%_)
                                               (_%ctx182996%_
                                                _%origin-ctx182991%_))
                              (let* ((_%e182997183004%_ _%rest182995%_)
                                     (_%E182999183008%_
                                      (lambda () _%ctx182996%_))
                                     (_%E182998183026%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e182997183004%_)
                                            (let ((_%e183000183012%_
                                                   (gx#syntax-e
                                                    _%e182997183004%_)))
                                              (let ((_%hd183001183015%_
                                                     (##car _%e183000183012%_))
                                                    (_%tl183002183017%_
                                                     (##cdr _%e183000183012%_)))
                                                (let* ((_%id183020%_
                                                        _%hd183001183015%_)
                                                       (_%rest183022%_
                                                        _%tl183002183017%_)
                                                       (_%bind183024%_
                                                        (gx#resolve-identifier__%
                                                         _%id183020%_
                                                         '0
                                                         _%ctx182996%_)))
                                                  (if (and (##structure-direct-instance-of?
                                                            _%bind183024%_
                                                            'gx#syntax-binding::t)
                                                           (##structure-instance-of?
                                                            (##unchecked-structure-ref
                                                             _%bind183024%_
                                                             '5
                                                             '#f
                                                             '#f)
                                                            'gx#module-context::t))
                                                      '#!void
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; not bound as module"
                                                       _%where182963%_
                                                       _%spath182962%_
                                                       _%id183020%_))
                                                  (_%lp182993%_
                                                   _%rest183022%_
                                                   (##unchecked-structure-ref
                                                    _%bind183024%_
                                                    '5
                                                    '#f
                                                    '#f)))))
                                            (_%E182999183008%_)))))
                                (_%E182998183026%_))))))
                      (_%E182966182975%_)))))
          (_%E182965183030%_))))
    (define gx#core-expand-import-source
      (lambda (_%hd182960%_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _%hd182960%_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_%stx182455%_ _%internal-expand?182456%_)
        (letrec* ((_%make-export__185961185962%_
                   (lambda (_%bind182908%_
                            _%phi182909%_
                            _%ctx182910%_
                            _%name182911%_)
                     (let* ((_%key182913%_
                             (##unchecked-structure-ref
                              _%bind182908%_
                              '2
                              '#f
                              '#f))
                            (_%export-key182915%_
                             (if _%name182911%_
                                 (gx#core-identifier-key _%name182911%_)
                                 _%key182913%_)))
                       (##structure
                        gx#module-export::t
                        _%ctx182910%_
                        _%key182913%_
                        _%phi182909%_
                        _%export-key182915%_
                        (let ((_%$e182918%_
                               (##structure-instance-of?
                                _%bind182908%_
                                'gx#extern-binding::t)))
                          (if _%$e182918%_
                              _%$e182918%_
                              (##structure-direct-instance-of?
                               _%bind182908%_
                               'gx#import-binding::t)))))))
                  (_%make-export__0__185963185966%_
                   (lambda (_%bind182924%_)
                     (let* ((_%phi182926%_ (gx#current-export-expander-phi))
                            (_%ctx182928%_ (gx#current-expander-context))
                            (_%name182930%_ '#f))
                       (_%make-export__185961185962%_
                        _%bind182924%_
                        _%phi182926%_
                        _%ctx182928%_
                        _%name182930%_))))
                  (_%make-export__1__185964185967%_
                   (lambda (_%bind182932%_ _%phi182933%_)
                     (let* ((_%ctx182935%_ (gx#current-expander-context))
                            (_%name182937%_ '#f))
                       (_%make-export__185961185962%_
                        _%bind182932%_
                        _%phi182933%_
                        _%ctx182935%_
                        _%name182937%_))))
                  (_%make-export__2__185965185968%_
                   (lambda (_%bind182939%_ _%phi182940%_ _%ctx182941%_)
                     (let ((_%name182943%_ '#f))
                       (_%make-export__185961185962%_
                        _%bind182939%_
                        _%phi182940%_
                        _%ctx182941%_
                        _%name182943%_))))
                  (_%make-export182458%_
                   (lambda _g186035_
                     (let ((_g186036_ (##length _g186035_)))
                       (cond ((##fx= _g186036_ 1)
                              (apply _%make-export__0__185963185966%_
                                     _g186035_))
                             ((##fx= _g186036_ 2)
                              (apply _%make-export__1__185964185967%_
                                     _g186035_))
                             ((##fx= _g186036_ 3)
                              (apply _%make-export__2__185965185968%_
                                     _g186035_))
                             ((##fx= _g186036_ 4)
                              (apply _%make-export__185961185962%_ _g186035_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g186035_))))))
                  (_%expand1182459%_
                   (lambda (_%hd182613%_
                            _%K182614%_
                            _%rest182615%_
                            _%r182616%_)
                     (let* ((_%e182617182649%_ _%hd182613%_)
                            (_%E182644182653%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _%stx182455%_
                                _%hd182613%_)))
                            (_%E182634182737%_
                             (lambda ()
                               (if (gx#stx-pair? _%e182617182649%_)
                                   (let ((_%e182645182657%_
                                          (gx#syntax-e _%e182617182649%_)))
                                     (let ((_%hd182646182660%_
                                            (##car _%e182645182657%_))
                                           (_%tl182647182662%_
                                            (##cdr _%e182645182657%_)))
                                       (if (eq? (gx#stx-e _%hd182646182660%_)
                                                'import:)
                                           (let ((_%in182665%_
                                                  _%tl182647182662%_))
                                             (if (gx#stx-list? _%in182665%_)
                                                 (let _%lp182667%_ ((_%in-rest182669%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%in182665%_)
                            (_%r182670%_ _%r182616%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%e182671182678%_
                                                           _%in-rest182669%_)
                                                          (_%E182673182682%_
                                                           (lambda ()
                                                             (_%K182614%_
                                                              _%rest182615%_
                                                              _%r182670%_)))
                                                          (_%E182672182733%_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%e182671182678%_)
                         (let ((_%e182674182686%_
                                (gx#syntax-e _%e182671182678%_)))
                           (let ((_%hd182675182689%_ (##car _%e182674182686%_))
                                 (_%tl182676182691%_
                                  (##cdr _%e182674182686%_)))
                             (let* ((_%hd182694%_ _%hd182675182689%_)
                                    (_%in-rest182696%_ _%tl182676182691%_)
                                    (_%src182731%_
                                     (if (gx#core-bound-module? _%hd182694%_)
                                         (gx#syntax-local-e__0 _%hd182694%_)
                                         (if (gx#core-library-module-path?
                                              _%hd182694%_)
                                             (gx#import-module__0
                                              (gx#core-resolve-library-module-path
                                               _%hd182694%_))
                                             (if (gx#core-library-relative-module-path?
                                                  _%hd182694%_)
                                                 (gx#import-module__0
                                                  (gx#core-resolve-library-relative-module-path
                                                   _%hd182694%_))
                                                 (if (gx#stx-string?
                                                      _%hd182694%_)
                                                     (gx#import-module__0
                                                      (gx#core-resolve-module-path__%
                                                       _%hd182694%_
                                                       (gx#stx-source
                                                        _%stx182455%_)))
                                                     (let* ((_%e182702182709%_
                                                             _%hd182694%_)
                                                            (_%E182704182713%_
                                                             (lambda ()
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; illegal re-export"
                                                                _%stx182455%_
                                                                _%hd182694%_)))
                                                            (_%E182703182727%_
                                                             (lambda ()
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%e182702182709%_)
                           (let ((_%e182705182717%_
                                  (gx#syntax-e _%e182702182709%_)))
                             (let ((_%hd182706182720%_
                                    (##car _%e182705182717%_))
                                   (_%tl182707182722%_
                                    (##cdr _%e182705182717%_)))
                               (if (eq? (gx#stx-e _%hd182706182720%_) 'in:)
                                   (let ((_%spath182725%_ _%tl182707182722%_))
                                     (gx#core-import-nested-module
                                      _%spath182725%_
                                      _%stx182455%_))
                                   (_%E182704182713%_))))
                           (_%E182704182713%_)))))
               (_%E182703182727%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (_%lp182667%_
                                _%in-rest182696%_
                                (_%export-imports182460%_
                                 _%src182731%_
                                 _%r182670%_)))))
                         (_%E182673182682%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E182672182733%_)))
                                                 (_%E182644182653%_)))
                                           (_%E182644182653%_))))
                                   (_%E182644182653%_))))
                            (_%E182621182777%_
                             (lambda ()
                               (if (gx#stx-pair? _%e182617182649%_)
                                   (let ((_%e182635182741%_
                                          (gx#syntax-e _%e182617182649%_)))
                                     (let ((_%hd182636182744%_
                                            (##car _%e182635182741%_))
                                           (_%tl182637182746%_
                                            (##cdr _%e182635182741%_)))
                                       (if (eq? (gx#stx-e _%hd182636182744%_)
                                                'rename:)
                                           (if (gx#stx-pair?
                                                _%tl182637182746%_)
                                               (let ((_%e182638182749%_
                                                      (gx#syntax-e
                                                       _%tl182637182746%_)))
                                                 (let ((_%hd182639182752%_
                                                        (##car _%e182638182749%_))
                                                       (_%tl182640182754%_
                                                        (##cdr _%e182638182749%_)))
                                                   (let ((_%id182757%_
                                                          _%hd182639182752%_))
                                                     (if (gx#stx-pair?
                                                          _%tl182640182754%_)
                                                         (let ((_%e182641182759%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl182640182754%_)))
                   (let ((_%hd182642182762%_ (##car _%e182641182759%_))
                         (_%tl182643182764%_ (##cdr _%e182641182759%_)))
                     (let ((_%name182767%_ _%hd182642182762%_))
                       (if (gx#stx-null? _%tl182643182764%_)
                           (let* ((_%phi182769%_
                                   (gx#current-export-expander-phi))
                                  (_%$e182771%_
                                   (gx#core-resolve-identifier__1
                                    _%id182757%_
                                    _%phi182769%_)))
                             (if _%$e182771%_
                                 ((lambda (_%bind182774%_)
                                    (_%K182614%_
                                     _%rest182615%_
                                     (cons (_%make-export__185961185962%_
                                            _%bind182774%_
                                            _%phi182769%_
                                            (gx#current-expander-context)
                                            _%name182767%_)
                                           _%r182616%_)))
                                  _%$e182771%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Reference to unbound identifier"
                                  _%stx182455%_
                                  _%hd182613%_
                                  _%id182757%_)))
                           (_%E182634182737%_)))))
                 (_%E182634182737%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E182634182737%_))
                                           (_%E182634182737%_))))
                                   (_%E182634182737%_))))
                            (_%E182620182827%_
                             (lambda ()
                               (if (gx#stx-pair? _%e182617182649%_)
                                   (let ((_%e182622182781%_
                                          (gx#syntax-e _%e182617182649%_)))
                                     (let ((_%hd182623182784%_
                                            (##car _%e182622182781%_))
                                           (_%tl182624182786%_
                                            (##cdr _%e182622182781%_)))
                                       (if (eq? (gx#stx-e _%hd182623182784%_)
                                                'spec:)
                                           (if (gx#stx-pair?
                                                _%tl182624182786%_)
                                               (let ((_%e182625182789%_
                                                      (gx#syntax-e
                                                       _%tl182624182786%_)))
                                                 (let ((_%hd182626182792%_
                                                        (##car _%e182625182789%_))
                                                       (_%tl182627182794%_
                                                        (##cdr _%e182625182789%_)))
                                                   (let ((_%phi182797%_
                                                          _%hd182626182792%_))
                                                     (if (gx#stx-pair?
                                                          _%tl182627182794%_)
                                                         (let ((_%e182628182799%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl182627182794%_)))
                   (let ((_%hd182629182802%_ (##car _%e182628182799%_))
                         (_%tl182630182804%_ (##cdr _%e182628182799%_)))
                     (let ((_%id182807%_ _%hd182629182802%_))
                       (if (gx#stx-pair? _%tl182630182804%_)
                           (let ((_%e182631182809%_
                                  (gx#syntax-e _%tl182630182804%_)))
                             (let ((_%hd182632182812%_
                                    (##car _%e182631182809%_))
                                   (_%tl182633182814%_
                                    (##cdr _%e182631182809%_)))
                               (let ((_%name182817%_ _%hd182632182812%_))
                                 (if (gx#stx-null? _%tl182633182814%_)
                                     (if (and (gx#stx-fixnum? _%phi182797%_)
                                              (gx#identifier? _%id182807%_)
                                              (gx#identifier? _%name182817%_))
                                         (let* ((_%phi182819%_
                                                 (gx#stx-e _%phi182797%_))
                                                (_%$e182821%_
                                                 (gx#core-resolve-identifier__1
                                                  _%id182807%_
                                                  _%phi182819%_)))
                                           (if _%$e182821%_
                                               ((lambda (_%bind182824%_)
                                                  (_%K182614%_
                                                   _%rest182615%_
                                                   (cons (_%make-export__185961185962%_
                                                          _%bind182824%_
                                                          _%phi182819%_
                                                          (gx#current-expander-context)
                                                          _%name182817%_)
                                                         _%r182616%_)))
                                                _%$e182821%_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _%stx182455%_
                                                _%hd182613%_
                                                _%id182807%_)))
                                         (_%E182621182777%_))
                                     (_%E182621182777%_)))))
                           (_%E182621182777%_)))))
                 (_%E182621182777%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E182621182777%_))
                                           (_%E182621182777%_))))
                                   (_%E182621182777%_))))
                            (_%E182619182839%_
                             (lambda ()
                               (let ((_%id182831%_ _%e182617182649%_))
                                 (if (gx#identifier? _%id182831%_)
                                     (let ((_%$e182833%_
                                            (gx#core-resolve-identifier__1
                                             _%id182831%_
                                             (gx#current-export-expander-phi))))
                                       (if _%$e182833%_
                                           ((lambda (_%bind182836%_)
                                              (_%K182614%_
                                               _%rest182615%_
                                               (cons (_%make-export__0__185963185966%_
                                                      _%bind182836%_)
                                                     _%r182616%_)))
                                            _%$e182833%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _%stx182455%_
                                            _%hd182613%_)))
                                     (_%E182620182827%_)))))
                            (_%E182618182903%_
                             (lambda ()
                               (if (eq? (gx#stx-e _%e182617182649%_) '#t)
                                   (let* ((_%current-ctx182843%_
                                           (gx#current-expander-context))
                                          (_%current-phi182845%_
                                           (gx#current-export-expander-phi))
                                          (_%phi-ctx182847%_
                                           (gx#core-context-shift
                                            _%current-ctx182843%_
                                            _%current-phi182845%_))
                                          (_%phi-bind182849%_
                                           (hash->list
                                            (##unchecked-structure-ref
                                             _%phi-ctx182847%_
                                             '2
                                             '#f
                                             '#f))))
                                     (let _%lp182852%_ ((_%bind-rest182854%_
                                                         _%phi-bind182849%_)
                                                        (_%set182855%_ '()))
                                       (let* ((_%bind-rest182856182866%_
                                               _%bind-rest182854%_)
                                              (_%else182858182874%_
                                               (lambda ()
                                                 (_%K182614%_
                                                  _%rest182615%_
                                                  (cons (##structure
                                                         gx#export-set::t
                                                         '#f
                                                         _%current-phi182845%_
                                                         _%set182855%_)
                                                        _%r182616%_))))
                                              (_%K182860182884%_
                                               (lambda (_%bind-rest182877%_
                                                        _%bind182878%_
                                                        _%key182879%_)
                                                 (if (or (##structure-direct-instance-of?
                                                          _%bind182878%_
                                                          'gx#import-binding::t)
                                                         (gx#private-feature-binding?
                                                          _%bind182878%_))
                                                     (_%lp182852%_
                                                      _%bind-rest182877%_
                                                      _%set182855%_)
                                                     (_%lp182852%_
                                                      _%bind-rest182877%_
                                                      (cons (_%make-export__2__185965185968%_
                                                             _%bind182878%_
                                                             _%current-phi182845%_
                                                             _%current-ctx182843%_)
                                                            _%set182855%_))))))
                                         (if (pair? _%bind-rest182856182866%_)
                                             (let ((_%hd182861182887%_
                                                    (##car _%bind-rest182856182866%_))
                                                   (_%tl182862182889%_
                                                    (##cdr _%bind-rest182856182866%_)))
                                               (if (pair? _%hd182861182887%_)
                                                   (let ((_%hd182863182892%_
                                                          (##car _%hd182861182887%_))
                                                         (_%tl182864182894%_
                                                          (##cdr _%hd182861182887%_)))
                                                     (let* ((_%key182897%_
                                                             _%hd182863182892%_)
                                                            (_%bind182899%_
                                                             _%tl182864182894%_)
                                                            (_%bind-rest182901%_
                                                             _%tl182862182889%_))
                                                       (_%K182860182884%_
                                                        _%bind-rest182901%_
                                                        _%bind182899%_
                                                        _%key182897%_)))
                                                   (_%else182858182874%_)))
                                             (_%else182858182874%_)))))
                                   (_%E182619182839%_)))))
                       (_%E182618182903%_))))
                  (_%export-imports182460%_
                   (lambda (_%src182490%_ _%r182491%_)
                     (letrec* ((_%current-ctx182493%_
                                (gx#current-expander-context))
                               (_%current-phi182494%_
                                (gx#current-export-expander-phi))
                               (_%import->export182495%_
                                (lambda (_%in182576%_)
                                  (let* ((_%in182577182585%_ _%in182576%_)
                                         (_%E182579182588%_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _%in182577182585%_
                                                   '((module-import
                                                      out
                                                      key
                                                      phi)))
                                            '#!void))
                                         (_%K182580182595%_
                                          (lambda (_%phi182591%_
                                                   _%key182592%_
                                                   _%out182593%_)
                                            (##structure
                                             gx#module-export::t
                                             _%current-ctx182493%_
                                             _%key182592%_
                                             _%phi182591%_
                                             _%key182592%_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _%in182577182585%_
                                         'gx#module-import::t)
                                        (let* ((_%e182581182598%_
                                                (##unchecked-structure-ref
                                                 _%in182577182585%_
                                                 '1
                                                 '#f
                                                 '#f))
                                               (_%out182601%_
                                                _%e182581182598%_)
                                               (_%e182582182603%_
                                                (##unchecked-structure-ref
                                                 _%in182577182585%_
                                                 '2
                                                 '#f
                                                 '#f))
                                               (_%key182606%_
                                                _%e182582182603%_)
                                               (_%e182583182608%_
                                                (##unchecked-structure-ref
                                                 _%in182577182585%_
                                                 '3
                                                 '#f
                                                 '#f))
                                               (_%phi182611%_
                                                _%e182583182608%_))
                                          (_%K182580182595%_
                                           _%phi182611%_
                                           _%key182606%_
                                           _%out182601%_))
                                        (_%E182579182588%_)))))
                               (_%fold-e182496%_
                                (lambda (_%in182498%_ _%r182499%_)
                                  (let* ((_%in182500182514%_ _%in182498%_)
                                         (_%else182503182522%_
                                          (lambda () _%r182499%_)))
                                    (let ((_%K182509182558%_
                                           (lambda (_%phi182554%_
                                                    _%key182555%_
                                                    _%out182556%_)
                                             (if (and (fx= _%phi182554%_
                                                           _%current-phi182494%_)
                                                      (eq? _%src182490%_
                                                           (##unchecked-structure-ref
                                                            _%out182556%_
                                                            '1
                                                            '#f
                                                            '#f)))
                                                 (cons (_%import->export182495%_
                                                        _%in182498%_)
                                                       _%r182499%_)
                                                 _%r182499%_)))
                                          (_%K182505182533%_
                                           (lambda (_%imports182526%_
                                                    _%phi182527%_
                                                    _%ctx182528%_)
                                             (if (and (fx= _%phi182527%_
                                                           _%current-phi182494%_)
                                                      (eq? _%src182490%_
                                                           _%ctx182528%_))
                                                 (foldl__0
                                                  (lambda (_%in182530%_
                                                           _%r182531%_)
                                                    (cons (_%import->export182495%_
                                                           _%in182530%_)
                                                          _%r182531%_))
                                                  _%r182499%_
                                                  _%imports182526%_)
                                                 _%r182499%_))))
                                      (let ((_%try-match182502182551%_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _%in182500182514%_
                                                    'gx#import-set::t)
                                                   (let* ((_%e182506182536%_
                                                           (##unchecked-structure-ref
                                                            _%in182500182514%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                          (_%e182507182541%_
                                                           (##unchecked-structure-ref
                                                            _%in182500182514%_
                                                            '2
                                                            '#f
                                                            '#f))
                                                          (_%e182508182546%_
                                                           (##unchecked-structure-ref
                                                            _%in182500182514%_
                                                            '3
                                                            '#f
                                                            '#f)))
                                                     (let ((_%ctx182539%_
                                                            _%e182506182536%_)
                                                           (_%phi182544%_
                                                            _%e182507182541%_)
                                                           (_%imports182549%_
                                                            _%e182508182546%_))
                                                       (_%K182505182533%_
                                                        _%imports182549%_
                                                        _%phi182544%_
                                                        _%ctx182539%_)))
                                                   (_%else182503182522%_)))))
                                        (if (##structure-direct-instance-of?
                                             _%in182500182514%_
                                             'gx#module-import::t)
                                            (let* ((_%e182510182561%_
                                                    (##unchecked-structure-ref
                                                     _%in182500182514%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                   (_%e182511182566%_
                                                    (##unchecked-structure-ref
                                                     _%in182500182514%_
                                                     '2
                                                     '#f
                                                     '#f))
                                                   (_%e182512182571%_
                                                    (##unchecked-structure-ref
                                                     _%in182500182514%_
                                                     '3
                                                     '#f
                                                     '#f)))
                                              (let ((_%out182564%_
                                                     _%e182510182561%_)
                                                    (_%key182569%_
                                                     _%e182511182566%_)
                                                    (_%phi182574%_
                                                     _%e182512182571%_))
                                                (_%K182509182558%_
                                                 _%phi182574%_
                                                 _%key182569%_
                                                 _%out182564%_)))
                                            (_%try-match182502182551%_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _%src182490%_
                              _%current-phi182494%_
                              (foldl__0
                               _%fold-e182496%_
                               '()
                               (##unchecked-structure-ref
                                _%current-ctx182493%_
                                '8
                                '#f
                                '#f)))
                             _%r182491%_))))
                  (_%export!182461%_
                   (lambda (_%rbody182477%_)
                     (letrec* ((_%current-ctx182479%_
                                (gx#current-expander-context))
                               (_%fold-e182480%_
                                (lambda (_%out182484%_ _%r182485%_)
                                  (if (##structure-direct-instance-of?
                                       _%out182484%_
                                       'gx#module-export::t)
                                      (cons _%out182484%_ _%r182485%_)
                                      (if (##structure-direct-instance-of?
                                           _%out182484%_
                                           'gx#export-set::t)
                                          (foldl__0
                                           cons
                                           _%r182485%_
                                           (##unchecked-structure-ref
                                            _%out182484%_
                                            '3
                                            '#f
                                            '#f))
                                          _%r182485%_)))))
                       (let ((_%body182482%_ (reverse _%rbody182477%_)))
                         (##unchecked-structure-set!
                          _%current-ctx182479%_
                          (foldl__0
                           _%fold-e182480%_
                           (##unchecked-structure-ref
                            _%current-ctx182479%_
                            '9
                            '#f
                            '#f)
                           _%body182482%_)
                          '9
                          '#f
                          '#f)
                         _%body182482%_))))
                  (_%expanded-export?182462%_
                   (lambda (_%e182472%_)
                     (let ((_%$e182474%_
                            (##structure-direct-instance-of?
                             _%e182472%_
                             'gx#module-export::t)))
                       (if _%$e182474%_
                           _%$e182474%_
                           (##structure-direct-instance-of?
                            _%e182472%_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _%internal-expand?182456%_)
              (let ((_%rbody182468%_
                     (gx#core-expand-import/export
                      _%stx182455%_
                      _%expanded-export?182462%_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _%expand1182459%_)))
                (if _%internal-expand?182456%_
                    (reverse _%rbody182468%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons
                      '%#export
                      (_%export!182461%_ _%rbody182468%_))
                     (gx#stx-source _%stx182455%_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _%stx182455%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _%stx182455%_))))))
    (define gx#core-expand-export%__0
      (lambda (_%stx182953%_)
        (let ((_%internal-expand?182955%_ '#f))
          (gx#core-expand-export%__%
           _%stx182953%_
           _%internal-expand?182955%_))))
    (define gx#core-expand-export%
      (lambda _g186037_
        (let ((_g186038_ (##length _g186037_)))
          (cond ((##fx= _g186038_ 1)
                 (apply gx#core-expand-export%__0 _g186037_))
                ((##fx= _g186038_ 2)
                 (apply gx#core-expand-export%__% _g186037_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g186037_))))))
    (define gx#core-expand-export-source
      (lambda (_%hd182452%_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _%hd182452%_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_%stx182422%_)
        (let* ((_%e182423182430%_ _%stx182422%_)
               (_%E182425182434%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e182423182430%_)))
               (_%E182424182448%_
                (lambda ()
                  (if (gx#stx-pair? _%e182423182430%_)
                      (let ((_%e182426182438%_
                             (gx#syntax-e _%e182423182430%_)))
                        (let ((_%hd182427182441%_ (##car _%e182426182438%_))
                              (_%tl182428182443%_ (##cdr _%e182426182438%_)))
                          (let ((_%body182446%_ _%tl182428182443%_))
                            (if (gx#identifier-list? _%body182446%_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _%body182446%_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _%body182446%_))
                                   (gx#stx-source _%stx182422%_)))
                                (_%E182425182434%_)))))
                      (_%E182425182434%_)))))
          (_%E182424182448%_))))
    (define gx#core-bind-feature!__%
      (lambda (_%id182388%_ _%private?182389%_ _%phi182390%_ _%ctx182391%_)
        (gx#core-bind-syntax!__%
         _%id182388%_
         ((if _%private?182389%_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _%id182388%_))
         _%private?182389%_
         _%phi182390%_
         _%ctx182391%_)))
    (define gx#core-bind-feature!__0
      (lambda (_%id182396%_)
        (let* ((_%private?182398%_ '#f)
               (_%phi182400%_ (gx#current-expander-phi))
               (_%ctx182402%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id182396%_
           _%private?182398%_
           _%phi182400%_
           _%ctx182402%_))))
    (define gx#core-bind-feature!__1
      (lambda (_%id182404%_ _%private?182405%_)
        (let* ((_%phi182407%_ (gx#current-expander-phi))
               (_%ctx182409%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id182404%_
           _%private?182405%_
           _%phi182407%_
           _%ctx182409%_))))
    (define gx#core-bind-feature!__2
      (lambda (_%id182411%_ _%private?182412%_ _%phi182413%_)
        (let ((_%ctx182415%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id182411%_
           _%private?182412%_
           _%phi182413%_
           _%ctx182415%_))))
    (define gx#core-bind-feature!
      (lambda _g186039_
        (let ((_g186040_ (##length _g186039_)))
          (cond ((##fx= _g186040_ 1)
                 (apply gx#core-bind-feature!__0 _g186039_))
                ((##fx= _g186040_ 2)
                 (apply gx#core-bind-feature!__1 _g186039_))
                ((##fx= _g186040_ 3)
                 (apply gx#core-bind-feature!__2 _g186039_))
                ((##fx= _g186040_ 4)
                 (apply gx#core-bind-feature!__% _g186039_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g186039_))))))))
