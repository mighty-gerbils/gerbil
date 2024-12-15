(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1734278444)
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
      (lambda _%$args129958%_
        (apply make-instance gx#module-import::t _%$args129958%_)))
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
      (lambda _%$args129955%_
        (apply make-instance gx#module-export::t _%$args129955%_)))
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
      (lambda _%$args129952%_
        (apply make-instance gx#import-set::t _%$args129952%_)))
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
      (lambda _%$args129949%_
        (apply make-instance gx#export-set::t _%$args129949%_)))
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
      (lambda _%$args129946%_
        (apply make-instance gx#import-expander::t _%$args129946%_)))
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
      (lambda _%$args129943%_
        (apply make-instance gx#export-expander::t _%$args129943%_)))
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
      (lambda _%$args129940%_
        (apply make-instance gx#import-export-expander::t _%$args129940%_)))
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
      (lambda (_%path129937%_ _%fun129938%_)
        (call-with-input-file
         (cons 'path: (cons _%path129937%_ gx#source-file-settings))
         _%fun129938%_)))
    (define gx#module-context:::init!
      (lambda (_%self126389129918%_
               _%id129920%_
               _%super129921%_
               _%ns129922%_
               _%path129923%_)
        (let* ((_%self129925%_ _%self126389129918%_)
               (_%self129927%_ _%self129925%_))
          (if (##fx< '11 (##structure-length _%self129927%_))
              (begin
                (##unchecked-structure-set!
                 _%self129927%_
                 _%id129920%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self129927%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self129927%_
                 _%super129921%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self129927%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self129927%_ '#f '5 '#f '#f)
                (##unchecked-structure-set!
                 _%self129927%_
                 _%ns129922%_
                 '6
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self129927%_
                 _%path129923%_
                 '7
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self129927%_ '() '8 '#f '#f)
                (##unchecked-structure-set! _%self129927%_ '() '9 '#f '#f)
                (##unchecked-structure-set! _%self129927%_ '#f '10 '#f '#f)
                (##unchecked-structure-set! _%self129927%_ '#f '11 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self129927%_
                     '11
                     (##vector-length _%self129927%_))))))
    (__bind-method!__%
     gx#module-context::t
     ':init!
     gx#module-context:::init!
     '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_%self126390129749%_ _%ctx129751%_ _%root129752%_)
        (let* ((_%self129754%_ _%self126390129749%_)
               (_%self129756%_ _%self129754%_)
               (_%super129772%_
                (let ((_%$e129766%_ _%root129752%_))
                  (if _%$e129766%_
                      _%$e129766%_
                      (let ((_%$e129769%_ (gx#core-context-root__0)))
                        (if _%$e129769%_
                            _%$e129769%_
                            (let ((__obj130002
                                   (##structure gx#root-context::t '#f '#f)))
                              (let ((__constructor130003
                                     (direct-method-ref
                                      gx#root-context::t
                                      __obj130002
                                      ':init!)))
                                (if __constructor130003
                                    (__constructor130003 __obj130002)
                                    (error '"missing constructor method implementation"
                                           'class:
                                           gx#root-context::t
                                           'method:
                                           ':init!)))
                              __obj130002)))))))
          (if _%ctx129751%_
              (let ((_%id129775%_
                     (##structure-ref
                      _%ctx129751%_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_%path129776%_
                     (##structure-ref
                      _%ctx129751%_
                      '7
                      gx#module-context::t
                      '#f))
                    (_%in129777%_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _%ctx129751%_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_%e129778%_
                     (__make-promise
                      (lambda () (gx#eval-module _%ctx129751%_)))))
                (if (##fx< '8 (##structure-length _%self129756%_))
                    (begin
                      (##unchecked-structure-set!
                       _%self129756%_
                       _%id129775%_
                       '1
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self129756%_
                       (make-hash-table-eq 'size: (##length _%in129777%_))
                       '2
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self129756%_
                       _%super129772%_
                       '3
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self129756%_
                       '#f
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self129756%_
                       '#f
                       '5
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self129756%_
                       _%path129776%_
                       '6
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self129756%_
                       _%in129777%_
                       '7
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self129756%_
                       _%e129778%_
                       '8
                       '#f
                       '#f)
                      '#!void)
                    (error '"struct-instance-init!: too many arguments for struct"
                           _%self129756%_
                           '8
                           (##vector-length _%self129756%_)))
                (##for-each
                 (lambda (_%g129779129781%_)
                   (gx#core-bind-weak-import!__%
                    _%g129779129781%_
                    _%self129756%_))
                 _%in129777%_))
              (if (##fx< '8 (##structure-length _%self129756%_))
                  (begin
                    (##unchecked-structure-set! _%self129756%_ '#f '1 '#f '#f)
                    (##unchecked-structure-set!
                     _%self129756%_
                     (make-hash-table-eq)
                     '2
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self129756%_
                     _%super129772%_
                     '3
                     '#f
                     '#f)
                    (##unchecked-structure-set! _%self129756%_ '#f '4 '#f '#f)
                    (##unchecked-structure-set! _%self129756%_ '#f '5 '#f '#f)
                    (##unchecked-structure-set! _%self129756%_ '#f '6 '#f '#f)
                    (##unchecked-structure-set! _%self129756%_ '() '7 '#f '#f)
                    (##unchecked-structure-set! _%self129756%_ '#f '8 '#f '#f)
                    '#!void)
                  (error '"struct-instance-init!: too many arguments for struct"
                         _%self129756%_
                         '8
                         (##vector-length _%self129756%_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_%self126390129787%_ _%ctx129788%_)
        (let ((_%root129790%_ '#f))
          (gx#prelude-context:::init!__%
           _%self126390129787%_
           _%ctx129788%_
           _%root129790%_))))
    (define gx#prelude-context:::init!
      (lambda _g130009_
        (let ((_g130008_ (##length _g130009_)))
          (cond ((##fx= _g130008_ 2)
                 (apply gx#prelude-context:::init!__0 _g130009_))
                ((##fx= _g130008_ 3)
                 (apply gx#prelude-context:::init!__% _g130009_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g130009_))))))
    (__bind-method!__%
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_%self129623%_ _%e129624%_)
        (if (##fx< '3 (##structure-length _%self129623%_))
            (begin
              (##unchecked-structure-set!
               _%self129623%_
               _%e129624%_
               '1
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self129623%_
               (gx#current-expander-context)
               '2
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self129623%_
               (##fx- (gx#current-expander-phi) '1)
               '3
               '#f
               '#f)
              '#!void)
            (error '"struct-instance-init!: too many arguments for struct"
                   _%self129623%_
                   '3
                   (##vector-length _%self129623%_)))))
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
      (lambda (_%g129249129252%_ _%g129250129254%_)
        (gx#core-apply-user-expander__%
         _%g129249129252%_
         _%g129250129254%_
         'apply-import-expander)))
    (__bind-method!__%
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_%g129120129123%_ _%g129121129125%_)
        (gx#core-apply-user-expander__%
         _%g129120129123%_
         _%g129121129125%_
         'apply-export-expander)))
    (__bind-method!__%
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_%ctx128991%_)
        (let* ((_%path128993%_
                (##structure-ref _%ctx128991%_ '7 gx#module-context::t '#f))
               (_%path128995%_
                (if (pair? _%path128993%_)
                    (##last _%path128993%_)
                    _%path128993%_)))
          (if (string? _%path128995%_) _%path128995%_ '#f))))
    (define gx#import-module__%
      (lambda (_%path128967%_ _%reload?128968%_ _%eval?128969%_)
        (let ((_%ctx128971%_
               ((gx#current-expander-module-import)
                _%path128967%_
                _%reload?128968%_)))
          (if (and _%ctx128971%_ _%eval?128969%_)
              (gx#eval-module _%ctx128971%_)
              '#!void)
          _%ctx128971%_)))
    (define gx#import-module__0
      (lambda (_%path128976%_)
        (let* ((_%reload?128978%_ '#f) (_%eval?128980%_ '#f))
          (gx#import-module__%
           _%path128976%_
           _%reload?128978%_
           _%eval?128980%_))))
    (define gx#import-module__1
      (lambda (_%path128982%_ _%reload?128983%_)
        (let ((_%eval?128985%_ '#f))
          (gx#import-module__%
           _%path128982%_
           _%reload?128983%_
           _%eval?128985%_))))
    (define gx#import-module
      (lambda _g130011_
        (let ((_g130010_ (##length _g130011_)))
          (cond ((##fx= _g130010_ 1) (apply gx#import-module__0 _g130011_))
                ((##fx= _g130010_ 2) (apply gx#import-module__1 _g130011_))
                ((##fx= _g130010_ 3) (apply gx#import-module__% _g130011_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g130011_))))))
    (define gx#eval-module
      (lambda (_%mod128964%_)
        ((gx#current-expander-module-eval) _%mod128964%_)))
    (define gx#core-eval-module
      (lambda (_%obj128944%_)
        (letrec ((_%force-e128946%_
                  (lambda (_%getf128960%_ _%e128961%_)
                    (__call-with-parameters
                     (lambda () (force (_%getf128960%_ _%e128961%_)))
                     gx#current-expander-context
                     _%e128961%_
                     gx#current-expander-phi
                     '0))))
          (let _%recur128948%_ ((_%e128950%_ _%obj128944%_))
            (if (##structure-instance-of? _%e128950%_ 'gx#module-context::t)
                (let ()
                  (let ((_%$e128953%_
                         (gx#core-context-prelude__% _%e128950%_)))
                    (if _%$e128953%_ (_%recur128948%_ _%$e128953%_) '#!void))
                  (_%force-e128946%_ gx#module-context-e _%e128950%_))
                (if (##structure-instance-of?
                     _%e128950%_
                     'gx#prelude-context::t)
                    (_%force-e128946%_ gx#prelude-context-e _%e128950%_)
                    (if (gx#stx-string? _%e128950%_)
                        (_%recur128948%_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _%e128950%_)))
                        (if (gx#core-library-module-path? _%e128950%_)
                            (_%recur128948%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%e128950%_)))
                            (error '"cannot eval module" _%obj128944%_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_%ctx128924%_)
        (let _%lp128926%_ ((_%e128928%_ _%ctx128924%_))
          (if (or (##structure-instance-of? _%e128928%_ 'gx#module-context::t)
                  (##structure-instance-of? _%e128928%_ 'gx#local-context::t))
              (_%lp128926%_ (##unchecked-structure-ref _%e128928%_ '3 '#f '#f))
              (if (##structure-instance-of? _%e128928%_ 'gx#prelude-context::t)
                  _%e128928%_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_%ctx128940%_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _%ctx128940%_))))
    (define gx#core-context-prelude
      (lambda _g130013_
        (let ((_g130012_ (##length _g130013_)))
          (cond ((##fx= _g130012_ 0)
                 (apply gx#core-context-prelude__0 _g130013_))
                ((##fx= _g130012_ 1)
                 (apply gx#core-context-prelude__% _g130013_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g130013_))))))
    (define gx#core-module->prelude-context
      (lambda (_%ctx128915%_)
        (let ((_%$e128917%_ (__hash-get gx#__module-registry _%ctx128915%_)))
          (if _%$e128917%_
              _%$e128917%_
              (let ((_%pre128921%_
                     (let ((__obj130004
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
                        __obj130004
                        _%ctx128915%_)
                       __obj130004)))
                (__hash-put! gx#__module-registry _%ctx128915%_ _%pre128921%_)
                _%pre128921%_)))))
    (define gx#core-import-module__%
      (lambda (_%rpath128787%_ _%reload?128788%_)
        (letrec ((_%import-source128790%_
                  (lambda (_%path128879%_)
                    (if (member _%path128879%_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _%path128879%_)
                        '#!void)
                    (__call-with-parameters
                     (lambda ()
                       (let ((_g130014_ (gx#core-read-module _%path128879%_)))
                         (begin
                           (let ((_g130015_
                                  (if (##values? _g130014_)
                                      (##values-length _g130014_)
                                      1)))
                             (if (not (##fx= _g130015_ 4))
                                 (error "Context expects 4 values" _g130015_)))
                           (let ((_%pre128882%_ (##values-ref _g130014_ 0))
                                 (_%id128883%_ (##values-ref _g130014_ 1))
                                 (_%ns128884%_ (##values-ref _g130014_ 2))
                                 (_%body128885%_ (##values-ref _g130014_ 3)))
                             (let* ((_%prelude128895%_
                                     (if (##structure-instance-of?
                                          _%pre128882%_
                                          'gx#prelude-context::t)
                                         _%pre128882%_
                                         (if (##structure-instance-of?
                                              _%pre128882%_
                                              'gx#module-context::t)
                                             (gx#core-module->prelude-context
                                              _%pre128882%_)
                                             (if (string? _%pre128882%_)
                                                 (gx#core-module->prelude-context
                                                  (gx#core-import-module__0
                                                   _%pre128882%_))
                                                 (if (not _%pre128882%_)
                                                     (let ((_%$e128891%_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _%$e128891%_
                                                           _%$e128891%_
                                                           (let ((__obj130005
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
                     (gx#prelude-context:::init!__0 __obj130005 '#f)
                     __obj130005)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error '"cannot import module; unknown prelude"
                                                            _%rpath128787%_
                                                            _%pre128882%_))))))
                                    (_%ctx128897%_
                                     (let ((__obj130006
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
                                        __obj130006
                                        _%id128883%_
                                        _%prelude128895%_
                                        _%ns128884%_
                                        _%path128879%_)
                                       __obj130006))
                                    (_%body128899%_
                                     (gx#core-expand-module-begin
                                      _%body128885%_
                                      _%ctx128897%_))
                                    (_%body128901%_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _%body128899%_)
                                      _%path128879%_
                                      _%ctx128897%_
                                      '())))
                               (##unchecked-structure-set!
                                _%ctx128897%_
                                (__make-promise
                                 (lambda () (gx#eval-syntax* _%body128901%_)))
                                '10
                                '#f
                                '#f)
                               (##unchecked-structure-set!
                                _%ctx128897%_
                                _%body128901%_
                                '11
                                '#f
                                '#f)
                               (__hash-put!
                                gx#__module-registry
                                _%path128879%_
                                _%ctx128897%_)
                               (__hash-put!
                                gx#__module-registry
                                _%id128883%_
                                _%ctx128897%_)
                               _%ctx128897%_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _%path128879%_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_%import-submodule128791%_
                  (lambda (_%rpath128807%_)
                    (let* ((_%rpath128808128815%_ _%rpath128807%_)
                           (_%E128810128819%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%rpath128808128815%_
                                     '([origin . refs]))
                              '#!void))
                           (_%K128811128867%_
                            (lambda (_%refs128822%_ _%origin128823%_)
                              (let ((_%ctx128825%_
                                     (if _%origin128823%_
                                         (gx#core-import-module__%
                                          _%origin128823%_
                                          _%reload?128788%_)
                                         (gx#current-expander-context))))
                                (let _%lp128827%_ ((_%rest128829%_
                                                    _%refs128822%_)
                                                   (_%ctx128830%_
                                                    _%ctx128825%_))
                                  (let* ((_%rest128831128839%_ _%rest128829%_)
                                         (_%else128833128847%_
                                          (lambda () _%ctx128830%_))
                                         (_%K128835128855%_
                                          (lambda (_%rest128850%_ _%id128851%_)
                                            (let ((_%bind128853%_
                                                   (gx#resolve-identifier__%
                                                    _%id128851%_
                                                    '0
                                                    _%ctx128830%_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _%bind128853%_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _%bind128853%_
                                                         '4
                                                         '#f
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_%lp128827%_
                                                   _%rest128850%_
                                                   (##unchecked-structure-ref
                                                    _%bind128853%_
                                                    '4
                                                    '#f
                                                    '#f))
                                                  (error '"cannot import submodule; not bound as a module"
                                                         _%rpath128807%_
                                                         _%id128851%_
                                                         _%bind128853%_))))))
                                    (if (pair? _%rest128831128839%_)
                                        (let ((_%hd128836128858%_
                                               (##car _%rest128831128839%_))
                                              (_%tl128837128860%_
                                               (##cdr _%rest128831128839%_)))
                                          (let* ((_%id128863%_
                                                  _%hd128836128858%_)
                                                 (_%rest128865%_
                                                  _%tl128837128860%_))
                                            (_%K128835128855%_
                                             _%rest128865%_
                                             _%id128863%_)))
                                        (_%else128833128847%_))))))))
                      (if (pair? _%rpath128808128815%_)
                          (let ((_%hd128812128870%_
                                 (##car _%rpath128808128815%_))
                                (_%tl128813128872%_
                                 (##cdr _%rpath128808128815%_)))
                            (let* ((_%origin128875%_ _%hd128812128870%_)
                                   (_%refs128877%_ _%tl128813128872%_))
                              (_%K128811128867%_
                               _%refs128877%_
                               _%origin128875%_)))
                          (_%E128810128819%_))))))
          (let ((_%$e128793%_
                 (if (not _%reload?128788%_)
                     (__hash-get gx#__module-registry _%rpath128787%_)
                     '#f)))
            (if _%$e128793%_
                _%$e128793%_
                (if (list? _%rpath128787%_)
                    (_%import-submodule128791%_ _%rpath128787%_)
                    (if (gx#core-library-module-path? _%rpath128787%_)
                        (let ((_%ctx128798%_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _%rpath128787%_)
                                _%reload?128788%_)))
                          (__hash-put!
                           gx#__module-registry
                           _%rpath128787%_
                           _%ctx128798%_)
                          _%ctx128798%_)
                        (let* ((_%npath128801%_
                                (path-normalize _%rpath128787%_))
                               (_%$e128803%_
                                (if (not _%reload?128788%_)
                                    (__hash-get
                                     gx#__module-registry
                                     _%npath128801%_)
                                    '#f)))
                          (if _%$e128803%_
                              _%$e128803%_
                              (_%import-source128790%_
                               _%npath128801%_))))))))))
    (define gx#core-import-module__0
      (lambda (_%rpath128908%_)
        (let ((_%reload?128910%_ '#f))
          (gx#core-import-module__% _%rpath128908%_ _%reload?128910%_))))
    (define gx#core-import-module
      (lambda _g130017_
        (let ((_g130016_ (##length _g130017_)))
          (cond ((##fx= _g130016_ 1)
                 (apply gx#core-import-module__0 _g130017_))
                ((##fx= _g130016_ 2)
                 (apply gx#core-import-module__% _g130017_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g130017_))))))
    (define gx#core-read-module
      (lambda (_%path128776%_)
        (__with-catch
         (lambda (_%exn128778%_)
           (if (and (datum-parsing-exception? _%exn128778%_)
                    (eq? (datum-parsing-exception-filepos _%exn128778%_) '0))
               (gx#core-read-module/lang _%path128776%_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _%path128776%_
                (__call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_%g128780128782%_)
                      (display-exception__% _%exn128778%_ _%g128780128782%_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _%path128776%_)))))
    (define gx#core-read-module/sexp
      (lambda (_%path128628%_)
        (let _%lp128630%_ ((_%body128632%_
                            (read-syntax-from-file _%path128628%_))
                           (_%pre128633%_ '#f)
                           (_%ns128634%_ '#f)
                           (_%pkg128635%_ '#f))
          (let* ((_%e128636128660%_ _%body128632%_)
                 (_%E128652128686%_
                  (lambda ()
                    (let ((_g130018_
                           (if _%pkg128635%_
                               (values _%pre128633%_
                                       _%ns128634%_
                                       _%pkg128635%_)
                               (gx#core-read-module-package
                                _%path128628%_
                                _%pre128633%_
                                _%ns128634%_))))
                      (begin
                        (let ((_g130019_
                               (if (##values? _g130018_)
                                   (##values-length _g130018_)
                                   1)))
                          (if (not (##fx= _g130019_ 3))
                              (error "Context expects 3 values" _g130019_)))
                        (let ((_%pre128664%_ (##values-ref _g130018_ 0))
                              (_%ns128665%_ (##values-ref _g130018_ 1))
                              (_%pkg128666%_ (##values-ref _g130018_ 2)))
                          (let* ((_%prelude128672%_
                                  (if (gx#core-bound-module-prelude?
                                       _%pre128664%_)
                                      (gx#syntax-local-e__0 _%pre128664%_)
                                      (if (gx#core-library-module-path?
                                           _%pre128664%_)
                                          (gx#core-resolve-library-module-path
                                           _%pre128664%_)
                                          (if (gx#stx-string? _%pre128664%_)
                                              (gx#core-resolve-module-path__%
                                               _%pre128664%_
                                               _%path128628%_)
                                              (gx#stx-e _%pre128664%_)))))
                                 (_%path-id128674%_
                                  (gx#core-module-path->namespace
                                   _%path128628%_))
                                 (_%pkg-id128676%_
                                  (if _%pkg128666%_
                                      (##string-append
                                       _%pkg128666%_
                                       '"/"
                                       _%path-id128674%_)
                                      _%path-id128674%_))
                                 (_%module-id128678%_
                                  (##string->symbol _%pkg-id128676%_))
                                 (_%module-ns128683%_
                                  (if (eq? _%ns128665%_ '#!void)
                                      '#f
                                      (let ((_%$e128680%_ _%ns128665%_))
                                        (if _%$e128680%_
                                            _%$e128680%_
                                            _%pkg-id128676%_)))))
                            (values _%prelude128672%_
                                    _%module-id128678%_
                                    _%module-ns128683%_
                                    _%body128632%_)))))))
                 (_%E128645128718%_
                  (lambda ()
                    (if (gx#stx-pair? _%e128636128660%_)
                        (let ((_%e128653128690%_
                               (gx#syntax-e _%e128636128660%_)))
                          (let ((_%hd128654128693%_ (##car _%e128653128690%_))
                                (_%tl128655128695%_ (##cdr _%e128653128690%_)))
                            (if (eq? (gx#stx-e _%hd128654128693%_) 'package:)
                                (if (gx#stx-pair? _%tl128655128695%_)
                                    (let ((_%e128656128698%_
                                           (gx#syntax-e _%tl128655128695%_)))
                                      (let ((_%hd128657128701%_
                                             (##car _%e128656128698%_))
                                            (_%tl128658128703%_
                                             (##cdr _%e128656128698%_)))
                                        (let* ((_%pkg128706%_
                                                _%hd128657128701%_)
                                               (_%rest128708%_
                                                _%tl128658128703%_)
                                               (_%pkg128716%_
                                                (if (gx#identifier?
                                                     _%pkg128706%_)
                                                    (symbol->string
                                                     (gx#stx-e _%pkg128706%_))
                                                    (if (or (gx#stx-string?
                                                             _%pkg128706%_)
                                                            (gx#stx-false?
                                                             _%pkg128706%_))
                                                        (gx#stx-e
                                                         _%pkg128706%_)
                                                        (gx#raise-syntax-error
                                                         'import
                                                         '"Bad syntax; Illegal package name"
                                                         _%pkg128706%_)))))
                                          (_%lp128630%_
                                           _%rest128708%_
                                           _%pre128633%_
                                           _%ns128634%_
                                           _%pkg128716%_))))
                                    (_%E128652128686%_))
                                (_%E128652128686%_))))
                        (_%E128652128686%_))))
                 (_%E128638128748%_
                  (lambda ()
                    (if (gx#stx-pair? _%e128636128660%_)
                        (let ((_%e128646128722%_
                               (gx#syntax-e _%e128636128660%_)))
                          (let ((_%hd128647128725%_ (##car _%e128646128722%_))
                                (_%tl128648128727%_ (##cdr _%e128646128722%_)))
                            (if (eq? (gx#stx-e _%hd128647128725%_) 'namespace:)
                                (if (gx#stx-pair? _%tl128648128727%_)
                                    (let ((_%e128649128730%_
                                           (gx#syntax-e _%tl128648128727%_)))
                                      (let ((_%hd128650128733%_
                                             (##car _%e128649128730%_))
                                            (_%tl128651128735%_
                                             (##cdr _%e128649128730%_)))
                                        (let* ((_%ns128738%_
                                                _%hd128650128733%_)
                                               (_%rest128740%_
                                                _%tl128651128735%_)
                                               (_%ns128746%_
                                                (if (gx#identifier?
                                                     _%ns128738%_)
                                                    (symbol->string
                                                     (gx#stx-e _%ns128738%_))
                                                    (if (gx#stx-string?
                                                         _%ns128738%_)
                                                        (gx#stx-e _%ns128738%_)
                                                        (if (gx#stx-false?
                                                             _%ns128738%_)
                                                            '#!void
                                                            (gx#raise-syntax-error
                                                             'import
                                                             '"Bad syntax; illegal namespace"
                                                             _%ns128738%_))))))
                                          (_%lp128630%_
                                           _%rest128740%_
                                           _%pre128633%_
                                           _%ns128746%_
                                           _%pkg128635%_))))
                                    (_%E128645128718%_))
                                (_%E128645128718%_))))
                        (_%E128645128718%_))))
                 (_%E128637128772%_
                  (lambda ()
                    (if (gx#stx-pair? _%e128636128660%_)
                        (let ((_%e128639128752%_
                               (gx#syntax-e _%e128636128660%_)))
                          (let ((_%hd128640128755%_ (##car _%e128639128752%_))
                                (_%tl128641128757%_ (##cdr _%e128639128752%_)))
                            (if (eq? (gx#stx-e _%hd128640128755%_) 'prelude:)
                                (if (gx#stx-pair? _%tl128641128757%_)
                                    (let ((_%e128642128760%_
                                           (gx#syntax-e _%tl128641128757%_)))
                                      (let ((_%hd128643128763%_
                                             (##car _%e128642128760%_))
                                            (_%tl128644128765%_
                                             (##cdr _%e128642128760%_)))
                                        (let* ((_%prelude128768%_
                                                _%hd128643128763%_)
                                               (_%rest128770%_
                                                _%tl128644128765%_))
                                          (_%lp128630%_
                                           _%rest128770%_
                                           _%prelude128768%_
                                           _%ns128634%_
                                           _%pkg128635%_))))
                                    (_%E128638128748%_))
                                (_%E128638128748%_))))
                        (_%E128638128748%_)))))
            (_%E128637128772%_)))))
    (define gx#core-read-module/lang
      (lambda (_%path128450%_)
        (letrec ((_%default-read-module-body128452%_
                  (lambda (_%inp128620%_)
                    (let _%lp128622%_ ((_%body128624%_ '()))
                      (let ((_%next128626%_ (read-syntax__% _%inp128620%_)))
                        (if (eof-object? _%next128626%_)
                            (reverse _%body128624%_)
                            (_%lp128622%_
                             (cons _%next128626%_ _%body128624%_)))))))
                 (_%read-body128453%_
                  (lambda (_%inp128538%_
                           _%pre128539%_
                           _%ns128540%_
                           _%pkg128541%_
                           _%args128542%_)
                    (let ((_g130020_
                           (if _%pkg128541%_
                               (values _%pre128539%_
                                       _%ns128540%_
                                       _%pkg128541%_)
                               (gx#core-read-module-package
                                _%path128450%_
                                _%pre128539%_
                                _%ns128540%_))))
                      (begin
                        (let ((_g130021_
                               (if (##values? _g130020_)
                                   (##values-length _g130020_)
                                   1)))
                          (if (not (##fx= _g130021_ 3))
                              (error "Context expects 3 values" _g130021_)))
                        (let ((_%pre128544%_ (##values-ref _g130020_ 0))
                              (_%ns128545%_ (##values-ref _g130020_ 1))
                              (_%pkg128546%_ (##values-ref _g130020_ 2)))
                          (let* ((_%prelude128548%_
                                  (gx#import-module__0 _%pre128544%_))
                                 (_%read-module-body128603%_
                                  (let ((_%$e128594%_
                                         (__find (lambda (_%e128549128551%_)
                                                   (let* ((_%g128553128563%_
                                                           _%e128549128551%_)
                                                          (_%else128555128571%_
                                                           (lambda () '#f))
                                                          (_%K128557128575%_
                                                           (lambda () '#t)))
                                                     (if (##structure-direct-instance-of?
                                                          _%g128553128563%_
                                                          'gx#module-export::t)
                                                         (let* ((_%e128558128578%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##unchecked-structure-ref
                          _%g128553128563%_
                          '1
                          '#f
                          '#f))
                        (_%e128559128581%_
                         (##unchecked-structure-ref
                          _%g128553128563%_
                          '2
                          '#f
                          '#f))
                        (_%e128560128584%_
                         (##unchecked-structure-ref
                          _%g128553128563%_
                          '3
                          '#f
                          '#f)))
                   (if (##eq? _%e128560128584%_ '1)
                       (let ((_%e128561128587%_
                              (##unchecked-structure-ref
                               _%g128553128563%_
                               '4
                               '#f
                               '#f)))
                         (if ((lambda (_%g128589128591%_)
                                (eq? _%g128589128591%_ 'read-module-body))
                              _%e128561128587%_)
                             (_%K128557128575%_)
                             (_%else128555128571%_)))
                       (_%else128555128571%_)))
                 (_%else128555128571%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (##unchecked-structure-ref
                                                  _%prelude128548%_
                                                  '9
                                                  '#f
                                                  '#f))))
                                    (if _%$e128594%_
                                        ((lambda (_%xport128597%_)
                                           (let ((_%proc128600%_
                                                  (__with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _%xport128597%_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _%proc128600%_)
                                                 _%proc128600%_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _%path128450%_
                                                  _%pre128544%_
                                                  _%proc128600%_))))
                                         _%$e128594%_)
                                        _%default-read-module-body128452%_)))
                                 (_%path-id128605%_
                                  (gx#core-module-path->namespace
                                   _%path128450%_))
                                 (_%pkg-id128607%_
                                  (if _%pkg128546%_
                                      (##string-append
                                       _%pkg128546%_
                                       '"/"
                                       _%path-id128605%_)
                                      _%path-id128605%_))
                                 (_%module-id128609%_
                                  (##string->symbol _%pkg-id128607%_))
                                 (_%module-ns128614%_
                                  (let ((_%$e128611%_ _%ns128545%_))
                                    (if _%$e128611%_
                                        _%$e128611%_
                                        _%pkg-id128607%_)))
                                 (_%body128617%_
                                  (__call-with-parameters
                                   (lambda ()
                                     (_%read-module-body128603%_
                                      _%inp128538%_))
                                   gx#current-module-reader-path
                                   _%path128450%_
                                   gx#current-module-reader-args
                                   _%args128542%_)))
                            (values _%prelude128548%_
                                    _%module-id128609%_
                                    _%module-ns128614%_
                                    _%body128617%_)))))))
                 (_%string-e128454%_
                  (lambda (_%obj128532%_ _%what128533%_)
                    (if (string? _%obj128532%_)
                        _%obj128532%_
                        (if (symbol? _%obj128532%_)
                            (##symbol->string _%obj128532%_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _%what128533%_)
                             _%path128450%_
                             _%obj128532%_)))))
                 (_%read-lang-args128455%_
                  (lambda (_%inp128487%_ _%args128488%_)
                    (let* ((_%args128489128497%_ _%args128488%_)
                           (_%else128491128505%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _%path128450%_)))
                           (_%K128493128520%_
                            (lambda (_%args128508%_ _%prelude128509%_)
                              (let* ((_%pkg128511%_
                                      (pgetq__0 'package: _%args128508%_))
                                     (_%pkg128513%_
                                      (if _%pkg128511%_
                                          (_%string-e128454%_
                                           _%pkg128511%_
                                           '"package")
                                          '#f))
                                     (_%ns128515%_
                                      (pgetq__0 'namespace: _%args128508%_))
                                     (_%ns128517%_
                                      (if _%ns128515%_
                                          (_%string-e128454%_
                                           _%ns128515%_
                                           '"namespace")
                                          '#f)))
                                (_%read-body128453%_
                                 _%inp128487%_
                                 _%prelude128509%_
                                 _%ns128517%_
                                 _%pkg128513%_
                                 _%args128508%_)))))
                      (if (pair? _%args128489128497%_)
                          (let ((_%hd128494128523%_
                                 (##car _%args128489128497%_))
                                (_%tl128495128525%_
                                 (##cdr _%args128489128497%_)))
                            (let* ((_%prelude128528%_ _%hd128494128523%_)
                                   (_%args128530%_ _%tl128495128525%_))
                              (_%K128493128520%_
                               _%args128530%_
                               _%prelude128528%_)))
                          (_%else128491128505%_)))))
                 (_%read-lang128456%_
                  (lambda (_%inp128461%_)
                    (let* ((_%head128463%_ (read-line _%inp128461%_))
                           (_%$e128465%_
                            (string-index__0 _%head128463%_ '#\space)))
                      (if _%$e128465%_
                          ((lambda (_%ix128468%_)
                             (let ((_%lang128470%_
                                    (substring
                                     _%head128463%_
                                     '0
                                     _%ix128468%_)))
                               (if (equal? _%lang128470%_ '"#lang")
                                   (let* ((_%rest128472%_
                                           (substring
                                            _%head128463%_
                                            (##fx+ _%ix128468%_ '1)
                                            (string-length _%head128463%_)))
                                          (_%args128483%_
                                           (__with-catch
                                            (lambda (_%g128473128475%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _%path128450%_
                                               _%g128473128475%_))
                                            (lambda ()
                                              (call-with-input-string
                                               _%rest128472%_
                                               (lambda (_%g128478128480%_)
                                                 (read-all
                                                  _%g128478128480%_
                                                  read)))))))
                                     (_%read-lang-args128455%_
                                      _%inp128461%_
                                      _%args128483%_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _%path128450%_))))
                           _%$e128465%_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _%path128450%_)))))
                 (_%read-e128457%_
                  (lambda (_%inp128459%_)
                    (if (eq? (peek-char _%inp128459%_) '#\#)
                        (_%read-lang128456%_ _%inp128459%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _%path128450%_)))))
          (gx#call-with-input-source-file _%path128450%_ _%read-e128457%_))))
    (define gx#core-read-module-package
      (lambda (_%path128398%_ _%pre128399%_ _%ns128400%_)
        (letrec ((_%string-e128402%_
                  (lambda (_%e128445%_)
                    (if (symbol? _%e128445%_)
                        (##symbol->string _%e128445%_)
                        (if (string? _%e128445%_)
                            _%e128445%_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%e128445%_))))))
          (let _%lp128404%_ ((_%dir128406%_ (path-directory _%path128398%_))
                             (_%pkg-path128407%_ '()))
            (let ((_%gerbil.pkg128409%_
                   (path-expand '"gerbil.pkg" _%dir128406%_)))
              (if (##file-exists? _%gerbil.pkg128409%_)
                  (let ((_%plist128411%_
                         (gx#core-library-package-plist__% _%dir128406%_ '#t)))
                    (if (null? _%plist128411%_)
                        (let ((_%pkg128414%_
                               (if (null? _%pkg-path128407%_)
                                   '#f
                                   (string-join _%pkg-path128407%_ '"/"))))
                          (values _%pre128399%_ _%ns128400%_ _%pkg128414%_))
                        (if (list? _%plist128411%_)
                            (let* ((_%root128417%_
                                    (pgetq__0 'package: _%plist128411%_))
                                   (_%pkg128421%_
                                    (let ((_%pkg-path128419%_
                                           (if _%root128417%_
                                               (cons (_%string-e128402%_
                                                      _%root128417%_)
                                                     _%pkg-path128407%_)
                                               _%pkg-path128407%_)))
                                      (if (null? _%pkg-path128419%_)
                                          '#f
                                          (string-join
                                           _%pkg-path128419%_
                                           '"/"))))
                                   (_%ns128428%_
                                    (let ((_%ns128426%_
                                           (let ((_%$e128423%_ _%ns128400%_))
                                             (if _%$e128423%_
                                                 _%$e128423%_
                                                 (pgetq__0
                                                  'namespace:
                                                  _%plist128411%_)))))
                                      (if _%ns128426%_
                                          (_%string-e128402%_ _%ns128426%_)
                                          '#f)))
                                   (_%pre128433%_
                                    (let ((_%$e128430%_ _%pre128399%_))
                                      (if _%$e128430%_
                                          _%$e128430%_
                                          (pgetq__0
                                           'prelude:
                                           _%plist128411%_)))))
                              (values _%pre128433%_
                                      _%ns128428%_
                                      _%pkg128421%_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%plist128411%_))))
                  (let ((_%dir*128437%_
                         (path-strip-trailing-directory-separator
                          _%dir128406%_)))
                    (if (or (__string-empty? _%dir*128437%_)
                            (equal? _%dir128406%_ _%dir*128437%_))
                        (values _%pre128399%_ _%ns128400%_ '#f)
                        (let ((_%xpath128442%_
                               (path-strip-directory _%dir*128437%_))
                              (_%xdir128443%_ (path-directory _%dir*128437%_)))
                          (_%lp128404%_
                           _%xdir128443%_
                           (cons _%xpath128442%_ _%pkg-path128407%_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_%path128396%_)
        (path-strip-extension (path-strip-directory _%path128396%_))))
    (define gx#core-module-path->id
      (lambda (_%path128394%_)
        (##string->symbol (gx#core-module-path->namespace _%path128394%_))))
    (define gx#core-resolve-module-path__%
      (lambda (_%stx-path128373%_ _%rel128374%_)
        (let* ((_%path128376%_ (gx#stx-e _%stx-path128373%_))
               (_%path128378%_
                (if (__string-empty? (path-extension _%path128376%_))
                    (##string-append _%path128376%_ '".ss")
                    _%path128376%_)))
          (gx#core-resolve-path__%
           _%path128378%_
           (let ((_%$e128381%_ (gx#stx-source _%stx-path128373%_)))
             (if _%$e128381%_ _%$e128381%_ _%rel128374%_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_%stx-path128387%_)
        (let ((_%rel128389%_ '#f))
          (gx#core-resolve-module-path__% _%stx-path128387%_ _%rel128389%_))))
    (define gx#core-resolve-module-path
      (lambda _g130023_
        (let ((_g130022_ (##length _g130023_)))
          (cond ((##fx= _g130022_ 1)
                 (apply gx#core-resolve-module-path__0 _g130023_))
                ((##fx= _g130022_ 2)
                 (apply gx#core-resolve-module-path__% _g130023_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g130023_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_%libpath128258%_)
        (let* ((_%spath128260%_ (symbol->string (gx#stx-e _%libpath128258%_)))
               (_%spath128262%_
                (substring
                 _%spath128260%_
                 '1
                 (##string-length _%spath128260%_)))
               (_%ext128264%_ (path-extension _%spath128262%_))
               (_%ssi128266%_
                (if (__string-empty? _%ext128264%_)
                    (##string-append _%spath128262%_ '".ssi")
                    (##string-append
                     (path-strip-extension _%spath128262%_)
                     '".ssi")))
               (_%srcs128270%_
                (if (__string-empty? _%ext128264%_)
                    (##map (lambda (_%ext128268%_)
                             (string-append _%spath128262%_ _%ext128268%_))
                           '(".ss" ".sld" ".scm"))
                    (cons _%spath128262%_ '()))))
          (let _%lp128273%_ ((_%rest128275%_ (load-path)))
            (let* ((_%rest128276128285%_ _%rest128275%_)
                   (_%E128279128289%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rest128276128285%_
                             '([dir . rest])
                             '([]))
                      '#!void)))
              (let ((_%K128281128360%_
                     (lambda (_%rest128300%_ _%dir128301%_)
                       (letrec ((_%resolve128303%_
                                 (lambda (_%ssi128316%_ _%srcs128317%_)
                                   (let ((_%compiled-path128319%_
                                          (path-expand
                                           _%ssi128316%_
                                           _%dir128301%_)))
                                     (if (##file-exists?
                                          _%compiled-path128319%_)
                                         (path-normalize
                                          _%compiled-path128319%_)
                                         (let _%lpr128321%_ ((_%rest-src128323%_
                                                              _%srcs128317%_))
                                           (let* ((_%rest-src128324128332%_
                                                   _%rest-src128323%_)
                                                  (_%else128326128340%_
                                                   (lambda ()
                                                     (_%lp128273%_
                                                      _%rest128300%_)))
                                                  (_%K128328128348%_
                                                   (lambda (_%rest-src128343%_
                                                            _%src128344%_)
                                                     (let ((_%src-path128346%_
                                                            (path-expand
                                                             _%src128344%_
                                                             _%dir128301%_)))
                                                       (if (##file-exists?
                                                            _%src-path128346%_)
                                                           (path-normalize
                                                            _%src-path128346%_)
                                                           (_%lpr128321%_
                                                            _%rest-src128343%_))))))
                                             (if (pair? _%rest-src128324128332%_)
                                                 (let ((_%hd128329128351%_
                                                        (##car _%rest-src128324128332%_))
                                                       (_%tl128330128353%_
                                                        (##cdr _%rest-src128324128332%_)))
                                                   (let* ((_%src128356%_
                                                           _%hd128329128351%_)
                                                          (_%rest-src128358%_
                                                           _%tl128330128353%_))
                                                     (_%K128328128348%_
                                                      _%rest-src128358%_
                                                      _%src128356%_)))
                                                 (_%else128326128340%_)))))))))
                         (let ((_%$e128305%_
                                (gx#core-library-package-path-prefix
                                 _%dir128301%_)))
                           (if _%$e128305%_
                               ((lambda (_%prefix128308%_)
                                  (if (string-prefix?
                                       _%prefix128308%_
                                       _%spath128262%_)
                                      (let ((_%ssi128312%_
                                             (substring
                                              _%ssi128266%_
                                              (string-length _%prefix128308%_)
                                              (##string-length _%ssi128266%_)))
                                            (_%srcs128313%_
                                             (##map (lambda (_%src128310%_)
                                                      (substring
                                                       _%src128310%_
                                                       (string-length
                                                        _%prefix128308%_)
                                                       (string-length
                                                        _%src128310%_)))
                                                    _%srcs128270%_)))
                                        (_%resolve128303%_
                                         _%ssi128312%_
                                         _%srcs128313%_))
                                      (_%lp128273%_ _%rest128300%_)))
                                _%$e128305%_)
                               (_%resolve128303%_
                                _%ssi128266%_
                                _%srcs128270%_))))))
                    (_%K128280128294%_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"cannot find library module"
                        _%libpath128258%_))))
                (let ((_%try-match128278128297%_
                       (lambda ()
                         (if (null? _%rest128276128285%_)
                             (_%K128280128294%_)
                             (_%E128279128289%_)))))
                  (if (pair? _%rest128276128285%_)
                      (let ((_%tl128283128365%_ (##cdr _%rest128276128285%_))
                            (_%hd128282128363%_ (##car _%rest128276128285%_)))
                        (let ((_%dir128368%_ _%hd128282128363%_)
                              (_%rest128370%_ _%tl128283128365%_))
                          (_%K128281128360%_ _%rest128370%_ _%dir128368%_)))
                      (_%try-match128278128297%_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_%modpath128226%_)
        (letrec ((_%resolve128228%_
                  (lambda (_%path128249%_ _%base128250%_)
                    (let ((_%$e128252%_
                           (string-rindex__0 _%base128250%_ '#\/)))
                      (if _%$e128252%_
                          ((lambda (_%idx128255%_)
                             (gx#core-resolve-library-module-path
                              (##string->symbol
                               (string-append
                                '":"
                                (substring _%base128250%_ '0 _%idx128255%_)
                                '"/"
                                _%path128249%_))))
                           _%$e128252%_)
                          (gx#core-resolve-library-module-path
                           (##string->symbol
                            (string-append '":" _%path128249%_))))))))
          (let ((_%spath128230%_ (symbol->string (gx#stx-e _%modpath128226%_)))
                (_%mod128231%_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _%mod128231%_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"cannot resolve relative module path; not in module context"
                 _%modpath128226%_))
            (let ((_%mpath128233%_
                   (symbol->string
                    (##structure-ref
                     _%mod128231%_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _%lp128235%_ ((_%spath128237%_ _%spath128230%_)
                                 (_%mpath128238%_ _%mpath128233%_))
                (if (string-prefix? '"../" _%spath128237%_)
                    (let ((_%$e128241%_
                           (string-rindex__0 _%mpath128238%_ '#\/)))
                      (if _%$e128241%_
                          ((lambda (_%idx128244%_)
                             (_%lp128235%_
                              (substring
                               _%spath128237%_
                               '3
                               (string-length _%spath128237%_))
                              (substring _%mpath128238%_ '0 _%idx128244%_)))
                           _%$e128241%_)
                          (gx#raise-syntax-error
                           '#f
                           '"cannot resolve relative module path; illegal traversal"
                           _%modpath128226%_)))
                    (if (string-prefix? '"./" _%spath128237%_)
                        (_%lp128235%_
                         (substring
                          _%spath128237%_
                          '2
                          (string-length _%spath128237%_))
                         _%mpath128238%_)
                        (_%resolve128228%_
                         _%spath128237%_
                         _%mpath128238%_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_%dir128218%_)
        (let ((_%$e128220%_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _%dir128218%_))))
          (if _%$e128220%_
              ((lambda (_%pkg128223%_)
                 (##string-append (symbol->string _%pkg128223%_) '"/"))
               _%$e128220%_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_%dir128188%_ _%exists?128189%_)
        (let ((_%$e128191%_ (__hash-get gx#__module-pkg-cache _%dir128188%_)))
          (if _%$e128191%_
              _%$e128191%_
              (let* ((_%gerbil.pkg128195%_
                      (path-expand '"gerbil.pkg" _%dir128188%_))
                     (_%plist128205%_
                      (if (or _%exists?128189%_
                              (##file-exists? _%gerbil.pkg128195%_))
                          (let ((_%e128200%_
                                 (gx#call-with-input-source-file
                                  _%gerbil.pkg128195%_
                                  read)))
                            (if (eof-object? _%e128200%_)
                                '()
                                (if (list? _%e128200%_)
                                    _%e128200%_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _%gerbil.pkg128195%_
                                     _%e128200%_))))
                          '())))
                (__hash-put!
                 gx#__module-pkg-cache
                 _%dir128188%_
                 _%plist128205%_)
                _%plist128205%_)))))
    (define gx#core-library-package-plist__0
      (lambda (_%dir128211%_)
        (let ((_%exists?128213%_ '#f))
          (gx#core-library-package-plist__% _%dir128211%_ _%exists?128213%_))))
    (define gx#core-library-package-plist
      (lambda _g130025_
        (let ((_g130024_ (##length _g130025_)))
          (cond ((##fx= _g130024_ 1)
                 (apply gx#core-library-package-plist__0 _g130025_))
                ((##fx= _g130024_ 2)
                 (apply gx#core-library-package-plist__% _g130025_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g130025_))))))
    (define gx#core-library-module-path?
      (lambda (_%stx128185%_)
        (gx#core-special-module-path? _%stx128185%_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_%stx128183%_)
        (gx#core-special-module-path? _%stx128183%_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_%stx128178%_ _%char128179%_)
        (if (gx#identifier? _%stx128178%_)
            (if (interned-symbol? (gx#stx-e _%stx128178%_))
                (let ((_%str128181%_
                       (symbol->string (gx#stx-e _%stx128178%_))))
                  (if (##fx> (##string-length _%str128181%_) '1)
                      (eq? (string-ref _%str128181%_ '0) _%char128179%_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_%stx128172%_)
        (gx#core-bound-identifier?__%
         _%stx128172%_
         (lambda (_%g128173128175%_)
           (gx#expander-binding?__% _%g128173128175%_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_%stx128166%_)
        (gx#core-bound-identifier?__%
         _%stx128166%_
         (lambda (_%g128167128169%_)
           (gx#expander-binding?__% _%g128167128169%_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_%stx128153%_)
        (letrec ((_%module-prelude?128155%_
                  (lambda (_%e128161%_)
                    (let ((_%$e128163%_
                           (##structure-instance-of?
                            _%e128161%_
                            'gx#module-context::t)))
                      (if _%$e128163%_
                          _%$e128163%_
                          (##structure-instance-of?
                           _%e128161%_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _%stx128153%_
           (lambda (_%g128156128158%_)
             (gx#expander-binding?__%
              _%g128156128158%_
              _%module-prelude?128155%_))))))
    (define gx#core-bind-import!__%
      (lambda (_%in128083%_ _%ctx128084%_ _%force-weak?128085%_)
        (let* ((_%in128086128095%_ _%in128083%_)
               (_%E128088128099%_
                (lambda ()
                  (error '"No clause matching"
                         _%in128086128095%_
                         '((module-import source key phi weak?)))
                  '#!void))
               (_%K128089128112%_
                (lambda (_%weak?128102%_
                         _%phi128103%_
                         _%key128104%_
                         _%source128105%_)
                  (gx#core-bind!__%
                   _%key128104%_
                   (let ((_%e128107%_
                          (gx#core-resolve-module-export _%source128105%_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref _%e128107%_ '1 '#f '#f)
                      _%key128104%_
                      _%phi128103%_
                      _%e128107%_
                      (##unchecked-structure-ref _%source128105%_ '1 '#f '#f)
                      (let ((_%$e128109%_ _%force-weak?128085%_))
                        (if _%$e128109%_ _%$e128109%_ _%weak?128102%_))))
                   gx#core-context-rebind?
                   _%phi128103%_
                   _%ctx128084%_))))
          (if (##structure-direct-instance-of?
               _%in128086128095%_
               'gx#module-import::t)
              (let* ((_%e128090128115%_
                      (##unchecked-structure-ref
                       _%in128086128095%_
                       '1
                       '#f
                       '#f))
                     (_%source128118%_ _%e128090128115%_)
                     (_%e128091128120%_
                      (##unchecked-structure-ref
                       _%in128086128095%_
                       '2
                       '#f
                       '#f))
                     (_%key128123%_ _%e128091128120%_)
                     (_%e128092128125%_
                      (##unchecked-structure-ref
                       _%in128086128095%_
                       '3
                       '#f
                       '#f))
                     (_%phi128128%_ _%e128092128125%_)
                     (_%e128093128130%_
                      (##unchecked-structure-ref
                       _%in128086128095%_
                       '4
                       '#f
                       '#f))
                     (_%weak?128133%_ _%e128093128130%_))
                (_%K128089128112%_
                 _%weak?128133%_
                 _%phi128128%_
                 _%key128123%_
                 _%source128118%_))
              (_%E128088128099%_)))))
    (define gx#core-bind-import!__0
      (lambda (_%in128138%_)
        (let* ((_%ctx128140%_ (gx#current-expander-context))
               (_%force-weak?128142%_ '#f))
          (gx#core-bind-import!__%
           _%in128138%_
           _%ctx128140%_
           _%force-weak?128142%_))))
    (define gx#core-bind-import!__1
      (lambda (_%in128144%_ _%ctx128145%_)
        (let ((_%force-weak?128147%_ '#f))
          (gx#core-bind-import!__%
           _%in128144%_
           _%ctx128145%_
           _%force-weak?128147%_))))
    (define gx#core-bind-import!
      (lambda _g130027_
        (let ((_g130026_ (##length _g130027_)))
          (cond ((##fx= _g130026_ 1) (apply gx#core-bind-import!__0 _g130027_))
                ((##fx= _g130026_ 2) (apply gx#core-bind-import!__1 _g130027_))
                ((##fx= _g130026_ 3) (apply gx#core-bind-import!__% _g130027_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g130027_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_%in128069%_ _%ctx128070%_)
        (gx#core-bind-import!__% _%in128069%_ _%ctx128070%_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_%in128075%_)
        (let ((_%ctx128077%_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _%in128075%_ _%ctx128077%_))))
    (define gx#core-bind-weak-import!
      (lambda _g130029_
        (let ((_g130028_ (##length _g130029_)))
          (cond ((##fx= _g130028_ 1)
                 (apply gx#core-bind-weak-import!__0 _g130029_))
                ((##fx= _g130028_ 2)
                 (apply gx#core-bind-weak-import!__% _g130029_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g130029_))))))
    (define gx#core-resolve-module-export
      (lambda (_%out127960%_)
        (letrec ((_%subst127962%_
                  (lambda (_%key128008%_)
                    (let* ((_%key128009128017%_ _%key128008%_)
                           (_%else128011128025%_ (lambda () _%key128008%_))
                           (_%K128013128056%_
                            (lambda (_%mark128028%_ _%id128029%_)
                              (let* ((_%mark128030128036%_ _%mark128028%_)
                                     (_%E128032128040%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark128030128036%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K128033128048%_
                                      (lambda (_%subst128043%_)
                                        (let ((_%$e128045%_
                                               (if _%subst128043%_
                                                   (hash-get
                                                    _%subst128043%_
                                                    _%id128029%_)
                                                   '#f)))
                                          (if _%$e128045%_
                                              _%$e128045%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _%key128008%_))))))
                                (if (##structure-instance-of?
                                     _%mark128030128036%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e128034128051%_
                                            (##unchecked-structure-ref
                                             _%mark128030128036%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst128054%_ _%e128034128051%_))
                                      (_%K128033128048%_ _%subst128054%_))
                                    (_%E128032128040%_))))))
                      (if (pair? _%key128009128017%_)
                          (let ((_%hd128014128059%_
                                 (##car _%key128009128017%_))
                                (_%tl128015128061%_
                                 (##cdr _%key128009128017%_)))
                            (let* ((_%id128064%_ _%hd128014128059%_)
                                   (_%mark128066%_ _%tl128015128061%_))
                              (_%K128013128056%_ _%mark128066%_ _%id128064%_)))
                          (_%else128011128025%_))))))
          (let* ((_%out127963127973%_ _%out127960%_)
                 (_%E127965127977%_
                  (lambda ()
                    (error '"No clause matching"
                           _%out127963127973%_
                           '((module-export ctx key phi _ _)))
                    '#!void))
                 (_%K127966127984%_
                  (lambda (_%phi127980%_ _%key127981%_ _%ctx127982%_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _%ctx127982%_ _%phi127980%_)
                     (_%subst127962%_ _%key127981%_)))))
            (if (##structure-direct-instance-of?
                 _%out127963127973%_
                 'gx#module-export::t)
                (let* ((_%e127967127987%_
                        (##unchecked-structure-ref
                         _%out127963127973%_
                         '1
                         '#f
                         '#f))
                       (_%ctx127990%_ _%e127967127987%_)
                       (_%e127968127992%_
                        (##unchecked-structure-ref
                         _%out127963127973%_
                         '2
                         '#f
                         '#f))
                       (_%key127995%_ _%e127968127992%_)
                       (_%e127969127997%_
                        (##unchecked-structure-ref
                         _%out127963127973%_
                         '3
                         '#f
                         '#f))
                       (_%phi128000%_ _%e127969127997%_)
                       (_%e127970128002%_
                        (##unchecked-structure-ref
                         _%out127963127973%_
                         '4
                         '#f
                         '#f))
                       (_%e127971128005%_
                        (##unchecked-structure-ref
                         _%out127963127973%_
                         '5
                         '#f
                         '#f)))
                  (_%K127966127984%_
                   _%phi128000%_
                   _%key127995%_
                   _%ctx127990%_))
                (_%E127965127977%_))))))
    (define gx#core-module-export->import__%
      (lambda (_%out127885%_ _%rename127886%_ _%dphi127887%_)
        (let* ((_%out127888127898%_ _%out127885%_)
               (_%E127890127902%_
                (lambda ()
                  (error '"No clause matching"
                         _%out127888127898%_
                         '((module-export ctx key phi name weak?)))
                  '#!void))
               (_%K127891127914%_
                (lambda (_%weak?127905%_
                         _%name127906%_
                         _%phi127907%_
                         _%key127908%_
                         _%ctx127909%_)
                  (##structure
                   gx#module-import::t
                   _%out127885%_
                   (let ((_%$e127911%_ _%rename127886%_))
                     (if _%$e127911%_ _%$e127911%_ _%name127906%_))
                   (fx+ _%phi127907%_ _%dphi127887%_)
                   _%weak?127905%_))))
          (if (##structure-direct-instance-of?
               _%out127888127898%_
               'gx#module-export::t)
              (let* ((_%e127892127917%_
                      (##unchecked-structure-ref
                       _%out127888127898%_
                       '1
                       '#f
                       '#f))
                     (_%ctx127920%_ _%e127892127917%_)
                     (_%e127893127922%_
                      (##unchecked-structure-ref
                       _%out127888127898%_
                       '2
                       '#f
                       '#f))
                     (_%key127925%_ _%e127893127922%_)
                     (_%e127894127927%_
                      (##unchecked-structure-ref
                       _%out127888127898%_
                       '3
                       '#f
                       '#f))
                     (_%phi127930%_ _%e127894127927%_)
                     (_%e127895127932%_
                      (##unchecked-structure-ref
                       _%out127888127898%_
                       '4
                       '#f
                       '#f))
                     (_%name127935%_ _%e127895127932%_)
                     (_%e127896127937%_
                      (##unchecked-structure-ref
                       _%out127888127898%_
                       '5
                       '#f
                       '#f))
                     (_%weak?127940%_ _%e127896127937%_))
                (_%K127891127914%_
                 _%weak?127940%_
                 _%name127935%_
                 _%phi127930%_
                 _%key127925%_
                 _%ctx127920%_))
              (_%E127890127902%_)))))
    (define gx#core-module-export->import__0
      (lambda (_%out127945%_)
        (let* ((_%rename127947%_ '#f) (_%dphi127949%_ '0))
          (gx#core-module-export->import__%
           _%out127945%_
           _%rename127947%_
           _%dphi127949%_))))
    (define gx#core-module-export->import__1
      (lambda (_%out127951%_ _%rename127952%_)
        (let ((_%dphi127954%_ '0))
          (gx#core-module-export->import__%
           _%out127951%_
           _%rename127952%_
           _%dphi127954%_))))
    (define gx#core-module-export->import
      (lambda _g130031_
        (let ((_g130030_ (##length _g130031_)))
          (cond ((##fx= _g130030_ 1)
                 (apply gx#core-module-export->import__0 _g130031_))
                ((##fx= _g130030_ 2)
                 (apply gx#core-module-export->import__1 _g130031_))
                ((##fx= _g130030_ 3)
                 (apply gx#core-module-export->import__% _g130031_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g130031_))))))
    (define gx#core-expand-module%
      (lambda (_%stx127784%_)
        (letrec ((_%make-context127786%_
                  (lambda (_%id127863%_)
                    (let* ((_%super127865%_ (gx#current-expander-context))
                           (_%bind-id127867%_ (gx#stx-e _%id127863%_))
                           (_%mod-id127869%_
                            (if (##structure-instance-of?
                                 _%super127865%_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##unchecked-structure-ref
                                  _%super127865%_
                                  '1
                                  '#f
                                  '#f)
                                 '"~"
                                 _%bind-id127867%_)
                                _%bind-id127867%_))
                           (_%ns127871%_ (symbol->string _%mod-id127869%_))
                           (_%path127881%_
                            (if (##structure-instance-of?
                                 _%super127865%_
                                 'gx#module-context::t)
                                (let ((_%path127873%_
                                       (##unchecked-structure-ref
                                        _%super127865%_
                                        '7
                                        '#f
                                        '#f)))
                                  (if (or (pair? _%path127873%_)
                                          (null? _%path127873%_))
                                      (cons _%bind-id127867%_ _%path127873%_)
                                      (if (not _%path127873%_)
                                          _%bind-id127867%_
                                          (cons _%bind-id127867%_
                                                (cons _%path127873%_ '())))))
                                _%bind-id127867%_))
                           (__obj130007
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
                       __obj130007
                       _%mod-id127869%_
                       _%super127865%_
                       _%ns127871%_
                       _%path127881%_)
                      __obj130007)))
                 (_%valid-module-id?127787%_
                  (lambda (_%id127838%_)
                    (let* ((_%str127840%_ (symbol->string _%id127838%_))
                           (_%len127842%_ (##string-length _%str127840%_)))
                      (if (##fx>= _%len127842%_ '1)
                          (let _%loop127845%_ ((_%index127847%_
                                                (##fx- (##string-length
                                                        _%str127840%_)
                                                       '1)))
                            (if (##fx>= _%index127847%_ '0)
                                (let ((_%c127849%_
                                       (string-ref
                                        _%str127840%_
                                        _%index127847%_)))
                                  (if (or (and (##char>=? _%c127849%_ '#\a)
                                               (##char<=? _%c127849%_ '#\z))
                                          (and (##char>=? _%c127849%_ '#\A)
                                               (##char<=? _%c127849%_ '#\Z))
                                          (and (##char>=? _%c127849%_ '#\0)
                                               (##char<=? _%c127849%_ '#\9))
                                          (##char=? _%c127849%_ '#\_)
                                          (##char=? _%c127849%_ '#\-))
                                      (_%loop127845%_
                                       (##fx- _%index127847%_ '1))
                                      '#f))
                                '#t))
                          '#f)))))
          (let* ((_%e127788127798%_ _%stx127784%_)
                 (_%E127790127802%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e127788127798%_)))
                 (_%E127789127834%_
                  (lambda ()
                    (if (gx#stx-pair? _%e127788127798%_)
                        (let ((_%e127791127806%_
                               (gx#syntax-e _%e127788127798%_)))
                          (let ((_%hd127792127809%_ (##car _%e127791127806%_))
                                (_%tl127793127811%_ (##cdr _%e127791127806%_)))
                            (if (gx#stx-pair? _%tl127793127811%_)
                                (let ((_%e127794127814%_
                                       (gx#syntax-e _%tl127793127811%_)))
                                  (let ((_%hd127795127817%_
                                         (##car _%e127794127814%_))
                                        (_%tl127796127819%_
                                         (##cdr _%e127794127814%_)))
                                    (let* ((_%id127822%_ _%hd127795127817%_)
                                           (_%body127824%_ _%tl127796127819%_))
                                      (if (and (gx#identifier? _%id127822%_)
                                               (gx#stx-list? _%body127824%_))
                                          (if (_%valid-module-id?127787%_
                                               (gx#stx-e
                                                (gx#datum->syntax__0 '#f 'id)))
                                              (let* ((_%ctx127826%_
                                                      (_%make-context127786%_
                                                       _%id127822%_))
                                                     (_%body127828%_
                                                      (gx#core-expand-module-begin
                                                       _%body127824%_
                                                       _%ctx127826%_))
                                                     (_%body127830%_
                                                      (gx#core-quote-syntax__1
                                                       (gx#core-cons
                                                        '%#begin
                                                        _%body127828%_)
                                                       (gx#stx-source
                                                        _%stx127784%_))))
                                                (##unchecked-structure-set!
                                                 _%ctx127826%_
                                                 (__make-promise
                                                  (lambda ()
                                                    (gx#eval-syntax*
                                                     _%body127830%_)))
                                                 '10
                                                 '#f
                                                 '#f)
                                                (##unchecked-structure-set!
                                                 _%ctx127826%_
                                                 _%body127830%_
                                                 '11
                                                 '#f
                                                 '#f)
                                                (gx#core-bind-syntax!__0
                                                 _%id127822%_
                                                 _%ctx127826%_)
                                                (gx#core-quote-syntax__1
                                                 (gx#core-list
                                                  '%#module
                                                  (gx#core-quote-syntax__0
                                                   _%id127822%_)
                                                  _%body127830%_)
                                                 (gx#stx-source
                                                  _%stx127784%_)))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"invalid module id; allowed characters are A-Z,a-z,0-9,_,-"
                                               _%stx127784%_
                                               (gx#datum->syntax__0 '#f 'id)))
                                          (_%E127790127802%_)))))
                                (_%E127790127802%_))))
                        (_%E127790127802%_)))))
            (_%E127789127834%_)))))
    (define gx#core-expand-module-begin
      (lambda (_%body127750%_ _%ctx127751%_)
        (__call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_%stx127754%_
                   (gx#core-expand-head (cons '%%begin-module _%body127750%_)))
                  (_%e127755127762%_ _%stx127754%_)
                  (_%E127757127766%_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _%stx127754%_)))
                  (_%E127756127780%_
                   (lambda ()
                     (if (gx#stx-pair? _%e127755127762%_)
                         (let ((_%e127758127770%_
                                (gx#syntax-e _%e127755127762%_)))
                           (let ((_%hd127759127773%_ (##car _%e127758127770%_))
                                 (_%tl127760127775%_
                                  (##cdr _%e127758127770%_)))
                             (if (and (gx#identifier? _%hd127759127773%_)
                                      (gx#core-identifier=?
                                       _%hd127759127773%_
                                       '%#begin-module))
                                 (let ((_%body127778%_ _%tl127760127775%_))
                                   (if (gx#sealed-syntax? _%stx127754%_)
                                       _%body127778%_
                                       (gx#core-expand-module-body
                                        _%body127778%_)))
                                 (_%E127757127766%_))))
                         (_%E127757127766%_)))))
             (_%E127756127780%_)))
         gx#current-expander-context
         _%ctx127751%_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_%body127546%_)
        (letrec ((_%expand-special127548%_
                  (lambda (_%hd127677%_ _%K127678%_ _%rest127679%_ _%r127680%_)
                    (let* ((_%e127681127698%_ _%hd127677%_)
                           (_%E127693127702%_
                            (lambda ()
                              (_%K127678%_
                               _%rest127679%_
                               (cons (gx#core-expand-top _%hd127677%_)
                                     _%r127680%_))))
                           (_%E127683127714%_
                            (lambda ()
                              (if (gx#stx-pair? _%e127681127698%_)
                                  (let ((_%e127694127706%_
                                         (gx#syntax-e _%e127681127698%_)))
                                    (let ((_%hd127695127709%_
                                           (##car _%e127694127706%_))
                                          (_%tl127696127711%_
                                           (##cdr _%e127694127706%_)))
                                      (if (and (gx#identifier?
                                                _%hd127695127709%_)
                                               (gx#core-identifier=?
                                                _%hd127695127709%_
                                                '%#export))
                                          (_%K127678%_
                                           _%rest127679%_
                                           (cons _%hd127677%_ _%r127680%_))
                                          (_%E127693127702%_))))
                                  (_%E127693127702%_))))
                           (_%E127682127746%_
                            (lambda ()
                              (if (gx#stx-pair? _%e127681127698%_)
                                  (let ((_%e127684127718%_
                                         (gx#syntax-e _%e127681127698%_)))
                                    (let ((_%hd127685127721%_
                                           (##car _%e127684127718%_))
                                          (_%tl127686127723%_
                                           (##cdr _%e127684127718%_)))
                                      (if (and (gx#identifier?
                                                _%hd127685127721%_)
                                               (gx#core-identifier=?
                                                _%hd127685127721%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl127686127723%_)
                                              (let ((_%e127687127726%_
                                                     (gx#syntax-e
                                                      _%tl127686127723%_)))
                                                (let ((_%hd127688127729%_
                                                       (##car _%e127687127726%_))
                                                      (_%tl127689127731%_
                                                       (##cdr _%e127687127726%_)))
                                                  (let ((_%hd-bind127734%_
                                                         _%hd127688127729%_))
                                                    (if (gx#stx-pair?
                                                         _%tl127689127731%_)
                                                        (let ((_%e127690127736%_
                                                               (gx#syntax-e
                                                                _%tl127689127731%_)))
                                                          (let ((_%hd127691127739%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e127690127736%_))
                        (_%tl127692127741%_ (##cdr _%e127690127736%_)))
                    (let ((_%expr127744%_ _%hd127691127739%_))
                      (if (gx#stx-null? _%tl127692127741%_)
                          (if (gx#core-bind-values? _%hd-bind127734%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind127734%_)
                                (_%K127678%_
                                 _%rest127679%_
                                 (cons _%hd127677%_ _%r127680%_)))
                              (_%E127683127714%_))
                          (_%E127683127714%_)))))
                (_%E127683127714%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E127683127714%_))
                                          (_%E127683127714%_))))
                                  (_%E127683127714%_)))))
                      (_%E127682127746%_))))
                 (_%expand-body127549%_
                  (lambda (_%rbody127551%_)
                    (let _%lp127553%_ ((_%rest127555%_ _%rbody127551%_)
                                       (_%body127556%_ '()))
                      (let* ((_%rest127557127565%_ _%rest127555%_)
                             (_%else127559127573%_ (lambda () _%body127556%_))
                             (_%K127561127665%_
                              (lambda (_%rest127576%_ _%hd127577%_)
                                (let* ((_%e127578127599%_ _%hd127577%_)
                                       (_%E127594127603%_
                                        (lambda ()
                                          (_%lp127553%_
                                           _%rest127576%_
                                           (cons (gx#core-expand-expression
                                                  _%hd127577%_)
                                                 _%body127556%_))))
                                       (_%E127590127617%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e127578127599%_)
                                              (let ((_%e127595127607%_
                                                     (gx#syntax-e
                                                      _%e127578127599%_)))
                                                (let ((_%hd127596127610%_
                                                       (##car _%e127595127607%_))
                                                      (_%tl127597127612%_
                                                       (##cdr _%e127595127607%_)))
                                                  (let ((_%form127615%_
                                                         _%hd127596127610%_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _%form127615%_
                                                         gx#special-form-binding?)
                                                        (_%lp127553%_
                                                         _%rest127576%_
                                                         (cons _%hd127577%_
                                                               _%body127556%_))
                                                        (_%E127594127603%_)))))
                                              (_%E127594127603%_))))
                                       (_%E127580127629%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e127578127599%_)
                                              (let ((_%e127591127621%_
                                                     (gx#syntax-e
                                                      _%e127578127599%_)))
                                                (let ((_%hd127592127624%_
                                                       (##car _%e127591127621%_))
                                                      (_%tl127593127626%_
                                                       (##cdr _%e127591127621%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd127592127624%_)
                                                           (gx#core-identifier=?
                                                            _%hd127592127624%_
                                                            '%#export))
                                                      (_%lp127553%_
                                                       _%rest127576%_
                                                       (cons (gx#core-expand-export%__0
                                                              _%hd127577%_)
                                                             _%body127556%_))
                                                      (_%E127590127617%_))))
                                              (_%E127590127617%_))))
                                       (_%E127579127661%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e127578127599%_)
                                              (let ((_%e127581127633%_
                                                     (gx#syntax-e
                                                      _%e127578127599%_)))
                                                (let ((_%hd127582127636%_
                                                       (##car _%e127581127633%_))
                                                      (_%tl127583127638%_
                                                       (##cdr _%e127581127633%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd127582127636%_)
                                                           (gx#core-identifier=?
                                                            _%hd127582127636%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl127583127638%_)
                                                          (let ((_%e127584127641%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl127583127638%_)))
                    (let ((_%hd127585127644%_ (##car _%e127584127641%_))
                          (_%tl127586127646%_ (##cdr _%e127584127641%_)))
                      (let ((_%hd-bind127649%_ _%hd127585127644%_))
                        (if (gx#stx-pair? _%tl127586127646%_)
                            (let ((_%e127587127651%_
                                   (gx#syntax-e _%tl127586127646%_)))
                              (let ((_%hd127588127654%_
                                     (##car _%e127587127651%_))
                                    (_%tl127589127656%_
                                     (##cdr _%e127587127651%_)))
                                (let ((_%expr127659%_ _%hd127588127654%_))
                                  (if (gx#stx-null? _%tl127589127656%_)
                                      (_%lp127553%_
                                       _%rest127576%_
                                       (cons (gx#core-quote-syntax__1
                                              (gx#core-list
                                               '%#define-values
                                               (gx#core-quote-bind-values
                                                _%hd-bind127649%_)
                                               (gx#core-expand-expression
                                                _%expr127659%_))
                                              (gx#stx-source _%hd127577%_))
                                             _%body127556%_))
                                      (_%E127580127629%_)))))
                            (_%E127580127629%_)))))
                  (_%E127580127629%_))
              (_%E127580127629%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E127580127629%_)))))
                                  (_%E127579127661%_)))))
                        (if (pair? _%rest127557127565%_)
                            (let ((_%hd127562127668%_
                                   (##car _%rest127557127565%_))
                                  (_%tl127563127670%_
                                   (##cdr _%rest127557127565%_)))
                              (let* ((_%hd127673%_ _%hd127562127668%_)
                                     (_%rest127675%_ _%tl127563127670%_))
                                (_%K127561127665%_
                                 _%rest127675%_
                                 _%hd127673%_)))
                            (_%else127559127573%_)))))))
          (_%expand-body127549%_
           (gx#core-expand-block__%
            (cons '%#begin-module _%body127546%_)
            _%expand-special127548%_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_%stx127387%_
               _%expanded?127388%_
               _%method127389%_
               _%current-phi127390%_
               _%expand1127391%_)
        (letrec ((_%K127393%_
                  (lambda (_%rest127513%_ _%r127514%_)
                    (let* ((_%e127515127522%_ _%rest127513%_)
                           (_%E127517127526%_ (lambda () _%r127514%_))
                           (_%E127516127542%_
                            (lambda ()
                              (if (gx#stx-pair? _%e127515127522%_)
                                  (let ((_%e127518127530%_
                                         (gx#syntax-e _%e127515127522%_)))
                                    (let ((_%hd127519127533%_
                                           (##car _%e127518127530%_))
                                          (_%tl127520127535%_
                                           (##cdr _%e127518127530%_)))
                                      (let* ((_%hd127538%_ _%hd127519127533%_)
                                             (_%rest127540%_
                                              _%tl127520127535%_))
                                        (_%step127394%_
                                         _%hd127538%_
                                         _%rest127540%_
                                         _%r127514%_))))
                                  (_%E127517127526%_)))))
                      (_%E127516127542%_))))
                 (_%step127394%_
                  (lambda (_%hd127427%_ _%rest127428%_ _%r127429%_)
                    (let* ((_%e127430127448%_ _%hd127427%_)
                           (_%E127443127452%_
                            (lambda ()
                              (if (_%expanded?127388%_ (gx#stx-e _%hd127427%_))
                                  (_%K127393%_
                                   _%rest127428%_
                                   (cons (gx#stx-e _%hd127427%_) _%r127429%_))
                                  (_%expand1127391%_
                                   _%hd127427%_
                                   _%K127393%_
                                   _%rest127428%_
                                   _%r127429%_))))
                           (_%E127439127468%_
                            (lambda ()
                              (if (gx#stx-pair? _%e127430127448%_)
                                  (let ((_%e127444127456%_
                                         (gx#syntax-e _%e127430127448%_)))
                                    (let ((_%hd127445127459%_
                                           (##car _%e127444127456%_))
                                          (_%tl127446127461%_
                                           (##cdr _%e127444127456%_)))
                                      (let* ((_%macro127464%_
                                              _%hd127445127459%_)
                                             (_%body127466%_
                                              _%tl127446127461%_))
                                        (if (gx#core-bound-identifier?__%
                                             _%macro127464%_
                                             gx#syntax-binding?)
                                            (_%K127393%_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _%macro127464%_)
                                                    _%hd127427%_
                                                    _%method127389%_)
                                                   _%rest127428%_)
                                             _%r127429%_)
                                            (_%E127443127452%_)))))
                                  (_%E127443127452%_))))
                           (_%E127432127482%_
                            (lambda ()
                              (if (gx#stx-pair? _%e127430127448%_)
                                  (let ((_%e127440127472%_
                                         (gx#syntax-e _%e127430127448%_)))
                                    (let ((_%hd127441127475%_
                                           (##car _%e127440127472%_))
                                          (_%tl127442127477%_
                                           (##cdr _%e127440127472%_)))
                                      (if (eq? (gx#stx-e _%hd127441127475%_)
                                               'begin:)
                                          (let ((_%body127480%_
                                                 _%tl127442127477%_))
                                            (_%K127393%_
                                             (gx#stx-foldr
                                              cons
                                              _%rest127428%_
                                              _%body127480%_)
                                             _%r127429%_))
                                          (_%E127439127468%_))))
                                  (_%E127439127468%_))))
                           (_%E127431127509%_
                            (lambda ()
                              (if (gx#stx-pair? _%e127430127448%_)
                                  (let ((_%e127433127486%_
                                         (gx#syntax-e _%e127430127448%_)))
                                    (let ((_%hd127434127489%_
                                           (##car _%e127433127486%_))
                                          (_%tl127435127491%_
                                           (##cdr _%e127433127486%_)))
                                      (if (eq? (gx#stx-e _%hd127434127489%_)
                                               'phi:)
                                          (if (gx#stx-pair? _%tl127435127491%_)
                                              (let ((_%e127436127494%_
                                                     (gx#syntax-e
                                                      _%tl127435127491%_)))
                                                (let ((_%hd127437127497%_
                                                       (##car _%e127436127494%_))
                                                      (_%tl127438127499%_
                                                       (##cdr _%e127436127494%_)))
                                                  (let* ((_%dphi127502%_
                                                          _%hd127437127497%_)
                                                         (_%body127504%_
                                                          _%tl127438127499%_))
                                                    (if (gx#stx-fixnum?
                                                         _%dphi127502%_)
                                                        (let ((_%rbody127507%_
                                                               (__call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%K127393%_ _%body127504%_ '()))
                        _%current-phi127390%_
                        (fx+ (gx#stx-e _%dphi127502%_)
                             (_%current-phi127390%_)))))
                  (_%K127393%_
                   _%rest127428%_
                   (__foldr1 cons _%r127429%_ _%rbody127507%_)))
                (_%E127432127482%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E127432127482%_))
                                          (_%E127432127482%_))))
                                  (_%E127432127482%_)))))
                      (_%E127431127509%_)))))
          (let* ((_%e127395127402%_ _%stx127387%_)
                 (_%E127397127406%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e127395127402%_)))
                 (_%E127396127423%_
                  (lambda ()
                    (if (gx#stx-pair? _%e127395127402%_)
                        (let ((_%e127398127410%_
                               (gx#syntax-e _%e127395127402%_)))
                          (let ((_%hd127399127413%_ (##car _%e127398127410%_))
                                (_%tl127400127415%_ (##cdr _%e127398127410%_)))
                            (let ((_%body127418%_ _%tl127400127415%_))
                              (if (_%current-phi127390%_)
                                  (_%K127393%_ _%body127418%_ '())
                                  (__call-with-parameters
                                   (lambda () (_%K127393%_ _%body127418%_ '()))
                                   _%current-phi127390%_
                                   (gx#current-expander-phi))))))
                        (_%E127397127406%_)))))
            (_%E127396127423%_)))))
    (define gx#core-expand-import%__%
      (lambda (_%stx127041%_ _%internal-expand?127042%_)
        (letrec ((_%expand1127044%_
                  (lambda (_%hd127359%_ _%K127360%_ _%rest127361%_ _%r127362%_)
                    (if (gx#core-bound-module? _%hd127359%_)
                        (_%import1127045%_
                         (gx#syntax-local-e__0 _%hd127359%_)
                         _%K127360%_
                         _%rest127361%_
                         _%r127362%_)
                        (if (gx#core-library-module-path? _%hd127359%_)
                            (_%import1127045%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%hd127359%_))
                             _%K127360%_
                             _%rest127361%_
                             _%r127362%_)
                            (if (gx#core-library-relative-module-path?
                                 _%hd127359%_)
                                (_%import1127045%_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _%hd127359%_))
                                 _%K127360%_
                                 _%rest127361%_
                                 _%r127362%_)
                                (let ((_%e127368%_ (gx#stx-e _%hd127359%_)))
                                  (if (pair? _%e127368%_)
                                      (let ((_%$e127371%_
                                             (gx#stx-e (##car _%e127368%_))))
                                        (if (eq? 'spec: _%$e127371%_)
                                            (_%import-spec127048%_
                                             _%hd127359%_
                                             _%K127360%_
                                             _%rest127361%_
                                             _%r127362%_)
                                            (if (eq? 'in: _%$e127371%_)
                                                (_%import-submodule127046%_
                                                 _%hd127359%_
                                                 _%K127360%_
                                                 _%rest127361%_
                                                 _%r127362%_)
                                                (if (eq? 'runtime:
                                                         _%$e127371%_)
                                                    (_%import-runtime127047%_
                                                     _%hd127359%_
                                                     _%K127360%_
                                                     _%rest127361%_
                                                     _%r127362%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _%stx127041%_
                                                     _%hd127359%_)))))
                                      (if (string? _%e127368%_)
                                          (_%import1127045%_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _%hd127359%_
                                             (gx#stx-source _%stx127041%_)))
                                           _%K127360%_
                                           _%rest127361%_
                                           _%r127362%_)
                                          (if (##structure-instance-of?
                                               _%e127368%_
                                               'gx#module-context::t)
                                              (_%K127360%_
                                               _%rest127361%_
                                               (cons _%e127368%_ _%r127362%_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _%stx127041%_
                                               _%hd127359%_))))))))))
                 (_%import1127045%_
                  (lambda (_%ctx127348%_
                           _%K127349%_
                           _%rest127350%_
                           _%r127351%_)
                    (let ((_%dphi127353%_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_%K127349%_
                       _%rest127350%_
                       (cons (##structure
                              gx#import-set::t
                              _%ctx127348%_
                              _%dphi127353%_
                              (map (lambda (_%g127354127356%_)
                                     (gx#core-module-export->import__%
                                      _%g127354127356%_
                                      '#f
                                      _%dphi127353%_))
                                   (##unchecked-structure-ref
                                    _%ctx127348%_
                                    '9
                                    '#f
                                    '#f)))
                             _%r127351%_)))))
                 (_%import-submodule127046%_
                  (lambda (_%hd127315%_ _%K127316%_ _%rest127317%_ _%r127318%_)
                    (let* ((_%e127319127326%_ _%hd127315%_)
                           (_%E127321127330%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e127319127326%_)))
                           (_%E127320127344%_
                            (lambda ()
                              (if (gx#stx-pair? _%e127319127326%_)
                                  (let ((_%e127322127334%_
                                         (gx#syntax-e _%e127319127326%_)))
                                    (let ((_%hd127323127337%_
                                           (##car _%e127322127334%_))
                                          (_%tl127324127339%_
                                           (##cdr _%e127322127334%_)))
                                      (let ((_%spath127342%_
                                             _%tl127324127339%_))
                                        (_%import1127045%_
                                         (_%import-spec-source127049%_
                                          _%spath127342%_)
                                         _%K127316%_
                                         _%rest127317%_
                                         _%r127318%_))))
                                  (_%E127321127330%_)))))
                      (_%E127320127344%_))))
                 (_%import-runtime127047%_
                  (lambda (_%hd127282%_ _%K127283%_ _%rest127284%_ _%r127285%_)
                    (let* ((_%e127286127293%_ _%hd127282%_)
                           (_%E127288127297%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e127286127293%_)))
                           (_%E127287127311%_
                            (lambda ()
                              (if (gx#stx-pair? _%e127286127293%_)
                                  (let ((_%e127289127301%_
                                         (gx#syntax-e _%e127286127293%_)))
                                    (let ((_%hd127290127304%_
                                           (##car _%e127289127301%_))
                                          (_%tl127291127306%_
                                           (##cdr _%e127289127301%_)))
                                      (let ((_%spath127309%_
                                             _%tl127291127306%_))
                                        (_%K127283%_
                                         _%rest127284%_
                                         (cons (_%import-spec-source127049%_
                                                _%spath127309%_)
                                               _%r127285%_)))))
                                  (_%E127288127297%_)))))
                      (_%E127287127311%_))))
                 (_%import-spec127048%_
                  (lambda (_%hd127120%_ _%K127121%_ _%rest127122%_ _%r127123%_)
                    (let* ((_%e127124127141%_ _%hd127120%_)
                           (_%E127133127145%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e127124127141%_)))
                           (_%E127126127256%_
                            (lambda ()
                              (if (gx#stx-pair? _%e127124127141%_)
                                  (let ((_%e127134127149%_
                                         (gx#syntax-e _%e127124127141%_)))
                                    (let ((_%hd127135127152%_
                                           (##car _%e127134127149%_))
                                          (_%tl127136127154%_
                                           (##cdr _%e127134127149%_)))
                                      (if (gx#stx-pair? _%tl127136127154%_)
                                          (let ((_%e127137127157%_
                                                 (gx#syntax-e
                                                  _%tl127136127154%_)))
                                            (let ((_%hd127138127160%_
                                                   (##car _%e127137127157%_))
                                                  (_%tl127139127162%_
                                                   (##cdr _%e127137127157%_)))
                                              (let* ((_%path127165%_
                                                      _%hd127138127160%_)
                                                     (_%specs127167%_
                                                      _%tl127139127162%_))
                                                (let ((_%src-ctx127169%_
                                                       (_%import-spec-source127049%_
                                                        _%path127165%_))
                                                      (_%exports127170%_
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
                                                      (_%specs127171%_
                                                       (gx#syntax->list
                                                        _%specs127167%_)))
                                                  (for-each
                                                   (lambda (_%out127173%_)
                                                     (__hash-put!
                                                      _%exports127170%_
                                                      (cons (##unchecked-structure-ref
                                                             _%out127173%_
                                                             '3
                                                             '#f
                                                             '#f)
                                                            (##unchecked-structure-ref
                                                             _%out127173%_
                                                             '4
                                                             '#f
                                                             '#f))
                                                      _%out127173%_))
                                                   (##unchecked-structure-ref
                                                    _%src-ctx127169%_
                                                    '9
                                                    '#f
                                                    '#f))
                                                  (_%K127121%_
                                                   _%rest127122%_
                                                   (__foldl1
                                                    (lambda (_%spec127175%_
                                                             _%r127176%_)
                                                      (let* ((_%e127177127193%_
                                                              _%spec127175%_)
                                                             (_%E127179127197%_
                                                              (lambda ()
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid syntax-case clause"
                         _%e127177127193%_)))
                     (_%E127178127252%_
                      (lambda ()
                        (if (gx#stx-pair? _%e127177127193%_)
                            (let ((_%e127180127201%_
                                   (gx#syntax-e _%e127177127193%_)))
                              (let ((_%hd127181127204%_
                                     (##car _%e127180127201%_))
                                    (_%tl127182127206%_
                                     (##cdr _%e127180127201%_)))
                                (let ((_%phi127209%_ _%hd127181127204%_))
                                  (if (gx#stx-pair? _%tl127182127206%_)
                                      (let ((_%e127183127211%_
                                             (gx#syntax-e _%tl127182127206%_)))
                                        (let ((_%hd127184127214%_
                                               (##car _%e127183127211%_))
                                              (_%tl127185127216%_
                                               (##cdr _%e127183127211%_)))
                                          (let ((_%name127219%_
                                                 _%hd127184127214%_))
                                            (if (gx#stx-pair?
                                                 _%tl127185127216%_)
                                                (let ((_%e127186127221%_
                                                       (gx#syntax-e
                                                        _%tl127185127216%_)))
                                                  (let ((_%hd127187127224%_
                                                         (##car _%e127186127221%_))
                                                        (_%tl127188127226%_
                                                         (##cdr _%e127186127221%_)))
                                                    (let ((_%src-phi127229%_
                                                           _%hd127187127224%_))
                                                      (if (gx#stx-pair?
                                                           _%tl127188127226%_)
                                                          (let ((_%e127189127231%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl127188127226%_)))
                    (let ((_%hd127190127234%_ (##car _%e127189127231%_))
                          (_%tl127191127236%_ (##cdr _%e127189127231%_)))
                      (let ((_%src-name127239%_ _%hd127190127234%_))
                        (if (gx#stx-null? _%tl127191127236%_)
                            (if (and (gx#stx-fixnum? _%src-phi127229%_)
                                     (gx#identifier? _%src-name127239%_)
                                     (gx#stx-fixnum? _%phi127209%_)
                                     (gx#identifier? _%name127219%_))
                                (let ((_%src-phi127241%_
                                       (gx#stx-e _%src-phi127229%_))
                                      (_%src-name127242%_
                                       (gx#core-identifier-key
                                        _%src-name127239%_))
                                      (_%phi127243%_ (gx#stx-e _%phi127209%_))
                                      (_%name127244%_
                                       (gx#core-identifier-key
                                        _%name127219%_)))
                                  (let ((_%$e127246%_
                                         (__hash-get
                                          _%exports127170%_
                                          (cons _%src-phi127241%_
                                                _%src-name127242%_))))
                                    (if _%$e127246%_
                                        ((lambda (_%out127249%_)
                                           (cons (gx#core-module-export->import__%
                                                  _%out127249%_
                                                  _%name127244%_
                                                  (fx- _%phi127243%_
                                                       _%src-phi127241%_))
                                                 _%r127176%_))
                                         _%$e127246%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; no matching export"
                                         _%stx127041%_
                                         _%hd127120%_))))
                                (_%E127179127197%_))
                            (_%E127179127197%_)))))
                  (_%E127179127197%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E127179127197%_)))))
                                      (_%E127179127197%_)))))
                            (_%E127179127197%_)))))
                (_%E127178127252%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r127123%_
                                                    _%specs127171%_))))))
                                          (_%E127133127145%_))))
                                  (_%E127133127145%_))))
                           (_%E127125127278%_
                            (lambda ()
                              (if (gx#stx-pair? _%e127124127141%_)
                                  (let ((_%e127127127260%_
                                         (gx#syntax-e _%e127124127141%_)))
                                    (let ((_%hd127128127263%_
                                           (##car _%e127127127260%_))
                                          (_%tl127129127265%_
                                           (##cdr _%e127127127260%_)))
                                      (if (gx#stx-pair? _%tl127129127265%_)
                                          (let ((_%e127130127268%_
                                                 (gx#syntax-e
                                                  _%tl127129127265%_)))
                                            (let ((_%hd127131127271%_
                                                   (##car _%e127130127268%_))
                                                  (_%tl127132127273%_
                                                   (##cdr _%e127130127268%_)))
                                              (let ((_%path127276%_
                                                     _%hd127131127271%_))
                                                (if (gx#stx-null?
                                                     _%tl127132127273%_)
                                                    (_%K127121%_
                                                     _%rest127122%_
                                                     (cons (_%import-spec-source127049%_
                                                            _%path127276%_)
                                                           _%r127123%_))
                                                    (_%E127126127256%_)))))
                                          (_%E127126127256%_))))
                                  (_%E127126127256%_)))))
                      (_%E127125127278%_))))
                 (_%import-spec-source127049%_
                  (lambda (_%spath127118%_)
                    (gx#core-import-nested-module
                     _%spath127118%_
                     _%stx127041%_)))
                 (_%import!127050%_
                  (lambda (_%rbody127063%_)
                    (letrec* ((_%current-ctx127065%_
                               (gx#current-expander-context))
                              (_%deps127066%_ (make-hash-table-eq))
                              (_%bind!127067%_
                               (lambda (_%hd127116%_)
                                 (gx#core-bind-import!__1
                                  _%hd127116%_
                                  _%current-ctx127065%_))))
                      (let _%lp127069%_ ((_%rest127071%_ _%rbody127063%_)
                                         (_%body127072%_ '()))
                        (let* ((_%rest127073127081%_ _%rest127071%_)
                               (_%else127075127092%_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _%current-ctx127065%_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _%current-ctx127065%_
                                       (__foldl1
                                        cons
                                        (##unchecked-structure-ref
                                         _%current-ctx127065%_
                                         '8
                                         '#f
                                         '#f)
                                        _%body127072%_)
                                       '8
                                       '#f
                                       '#f)
                                      '#!void)
                                  (__hash-for-each
                                   (lambda (_%ctx127089%_ _%_127090%_)
                                     (gx#eval-module _%ctx127089%_))
                                   _%deps127066%_)
                                  _%body127072%_))
                               (_%K127077127104%_
                                (lambda (_%rest127095%_ _%hd127096%_)
                                  (if (##structure-direct-instance-of?
                                       _%hd127096%_
                                       'gx#module-import::t)
                                      (let ()
                                        (_%bind!127067%_ _%hd127096%_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _%hd127096%_
                                                   '3
                                                   '#f
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _%hd127096%_
                                                            '1
                                                            '#f
                                                            '#f)
                                                           '3
                                                           '#f
                                                           '#f)))
                                            (__hash-put!
                                             _%deps127066%_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _%hd127096%_
                                               '1
                                               '#f
                                               '#f)
                                              '1
                                              '#f
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _%hd127096%_
                                           'gx#import-set::t)
                                          (let ()
                                            (for-each
                                             _%bind!127067%_
                                             (##unchecked-structure-ref
                                              _%hd127096%_
                                              '3
                                              '#f
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _%hd127096%_
                                                  '2
                                                  '#f
                                                  '#f))
                                                (__hash-put!
                                                 _%deps127066%_
                                                 (##unchecked-structure-ref
                                                  _%hd127096%_
                                                  '1
                                                  '#f
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_%$e127100%_
                                                 (##structure-instance-of?
                                                  _%hd127096%_
                                                  'gx#module-context::t)))
                                            (if _%$e127100%_
                                                _%$e127100%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _%stx127041%_
                                                 _%hd127096%_)))))
                                  (_%lp127069%_
                                   _%rest127095%_
                                   (cons _%hd127096%_ _%body127072%_)))))
                          (if (pair? _%rest127073127081%_)
                              (let ((_%hd127078127107%_
                                     (##car _%rest127073127081%_))
                                    (_%tl127079127109%_
                                     (##cdr _%rest127073127081%_)))
                                (let* ((_%hd127112%_ _%hd127078127107%_)
                                       (_%rest127114%_ _%tl127079127109%_))
                                  (_%K127077127104%_
                                   _%rest127114%_
                                   _%hd127112%_)))
                              (_%else127075127092%_)))))))
                 (_%expanded-import?127051%_
                  (lambda (_%e127055%_)
                    (let ((_%$e127057%_
                           (##structure-direct-instance-of?
                            _%e127055%_
                            'gx#import-set::t)))
                      (if _%$e127057%_
                          _%$e127057%_
                          (let ((_%$e127060%_
                                 (##structure-direct-instance-of?
                                  _%e127055%_
                                  'gx#module-import::t)))
                            (if _%$e127060%_
                                _%$e127060%_
                                (##structure-instance-of?
                                 _%e127055%_
                                 'gx#module-context::t))))))))
          (let ((_%rbody127053%_
                 (gx#core-expand-import/export
                  _%stx127041%_
                  _%expanded-import?127051%_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _%expand1127044%_)))
            (if _%internal-expand?127042%_
                (reverse _%rbody127053%_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_%import!127050%_ _%rbody127053%_))
                 (gx#stx-source _%stx127041%_)))))))
    (define gx#core-expand-import%__0
      (lambda (_%stx127380%_)
        (let ((_%internal-expand?127382%_ '#f))
          (gx#core-expand-import%__%
           _%stx127380%_
           _%internal-expand?127382%_))))
    (define gx#core-expand-import%
      (lambda _g130033_
        (let ((_g130032_ (##length _g130033_)))
          (cond ((##fx= _g130032_ 1)
                 (apply gx#core-expand-import%__0 _g130033_))
                ((##fx= _g130032_ 2)
                 (apply gx#core-expand-import%__% _g130033_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g130033_))))))
    (define gx#core-import-nested-module
      (lambda (_%spath126968%_ _%where126969%_)
        (let* ((_%e126970126977%_ _%spath126968%_)
               (_%E126972126981%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126970126977%_)))
               (_%E126971127036%_
                (lambda ()
                  (if (gx#stx-pair? _%e126970126977%_)
                      (let ((_%e126973126985%_
                             (gx#syntax-e _%e126970126977%_)))
                        (let ((_%hd126974126988%_ (##car _%e126973126985%_))
                              (_%tl126975126990%_ (##cdr _%e126973126985%_)))
                          (let* ((_%origin126993%_ _%hd126974126988%_)
                                 (_%sub126995%_ _%tl126975126990%_)
                                 (_%origin-ctx126997%_
                                  (if (gx#stx-false? _%origin126993%_)
                                      (gx#current-expander-context)
                                      (gx#import-module__0 _%origin126993%_))))
                            (let _%lp126999%_ ((_%rest127001%_ _%sub126995%_)
                                               (_%ctx127002%_
                                                _%origin-ctx126997%_))
                              (let* ((_%e127003127010%_ _%rest127001%_)
                                     (_%E127005127014%_
                                      (lambda () _%ctx127002%_))
                                     (_%E127004127032%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e127003127010%_)
                                            (let ((_%e127006127018%_
                                                   (gx#syntax-e
                                                    _%e127003127010%_)))
                                              (let ((_%hd127007127021%_
                                                     (##car _%e127006127018%_))
                                                    (_%tl127008127023%_
                                                     (##cdr _%e127006127018%_)))
                                                (let* ((_%id127026%_
                                                        _%hd127007127021%_)
                                                       (_%rest127028%_
                                                        _%tl127008127023%_)
                                                       (_%bind127030%_
                                                        (gx#resolve-identifier__%
                                                         _%id127026%_
                                                         '0
                                                         _%ctx127002%_)))
                                                  (if (and (##structure-direct-instance-of?
                                                            _%bind127030%_
                                                            'gx#syntax-binding::t)
                                                           (##structure-instance-of?
                                                            (##unchecked-structure-ref
                                                             _%bind127030%_
                                                             '4
                                                             '#f
                                                             '#f)
                                                            'gx#module-context::t))
                                                      '#!void
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; not bound as module"
                                                       _%where126969%_
                                                       _%spath126968%_
                                                       _%id127026%_))
                                                  (_%lp126999%_
                                                   _%rest127028%_
                                                   (##unchecked-structure-ref
                                                    _%bind127030%_
                                                    '4
                                                    '#f
                                                    '#f)))))
                                            (_%E127005127014%_)))))
                                (_%E127004127032%_))))))
                      (_%E126972126981%_)))))
          (_%E126971127036%_))))
    (define gx#core-expand-import-source
      (lambda (_%hd126966%_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _%hd126966%_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_%stx126460%_ _%internal-expand?126461%_)
        (letrec* ((_%make-export__129961129962%_
                   (lambda (_%bind126914%_
                            _%phi126915%_
                            _%ctx126916%_
                            _%name126917%_)
                     (let* ((_%key126919%_
                             (##unchecked-structure-ref
                              _%bind126914%_
                              '2
                              '#f
                              '#f))
                            (_%export-key126921%_
                             (if _%name126917%_
                                 (gx#core-identifier-key _%name126917%_)
                                 _%key126919%_)))
                       (##structure
                        gx#module-export::t
                        _%ctx126916%_
                        _%key126919%_
                        _%phi126915%_
                        _%export-key126921%_
                        (let ((_%$e126924%_
                               (##structure-instance-of?
                                _%bind126914%_
                                'gx#extern-binding::t)))
                          (if _%$e126924%_
                              _%$e126924%_
                              (##structure-direct-instance-of?
                               _%bind126914%_
                               'gx#import-binding::t)))))))
                  (_%make-export__0__129963129966%_
                   (lambda (_%bind126930%_)
                     (let* ((_%phi126932%_ (gx#current-export-expander-phi))
                            (_%ctx126934%_ (gx#current-expander-context))
                            (_%name126936%_ '#f))
                       (_%make-export__129961129962%_
                        _%bind126930%_
                        _%phi126932%_
                        _%ctx126934%_
                        _%name126936%_))))
                  (_%make-export__1__129964129967%_
                   (lambda (_%bind126938%_ _%phi126939%_)
                     (let* ((_%ctx126941%_ (gx#current-expander-context))
                            (_%name126943%_ '#f))
                       (_%make-export__129961129962%_
                        _%bind126938%_
                        _%phi126939%_
                        _%ctx126941%_
                        _%name126943%_))))
                  (_%make-export__2__129965129968%_
                   (lambda (_%bind126945%_ _%phi126946%_ _%ctx126947%_)
                     (let ((_%name126949%_ '#f))
                       (_%make-export__129961129962%_
                        _%bind126945%_
                        _%phi126946%_
                        _%ctx126947%_
                        _%name126949%_))))
                  (_%make-export126463%_
                   (lambda _g130035_
                     (let ((_g130034_ (##length _g130035_)))
                       (cond ((##fx= _g130034_ 1)
                              (apply _%make-export__0__129963129966%_
                                     _g130035_))
                             ((##fx= _g130034_ 2)
                              (apply _%make-export__1__129964129967%_
                                     _g130035_))
                             ((##fx= _g130034_ 3)
                              (apply _%make-export__2__129965129968%_
                                     _g130035_))
                             ((##fx= _g130034_ 4)
                              (apply _%make-export__129961129962%_ _g130035_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g130035_))))))
                  (_%expand1126464%_
                   (lambda (_%hd126619%_
                            _%K126620%_
                            _%rest126621%_
                            _%r126622%_)
                     (let* ((_%e126623126655%_ _%hd126619%_)
                            (_%E126650126659%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _%stx126460%_
                                _%hd126619%_)))
                            (_%E126640126743%_
                             (lambda ()
                               (if (gx#stx-pair? _%e126623126655%_)
                                   (let ((_%e126651126663%_
                                          (gx#syntax-e _%e126623126655%_)))
                                     (let ((_%hd126652126666%_
                                            (##car _%e126651126663%_))
                                           (_%tl126653126668%_
                                            (##cdr _%e126651126663%_)))
                                       (if (eq? (gx#stx-e _%hd126652126666%_)
                                                'import:)
                                           (let ((_%in126671%_
                                                  _%tl126653126668%_))
                                             (if (gx#stx-list? _%in126671%_)
                                                 (let _%lp126673%_ ((_%in-rest126675%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%in126671%_)
                            (_%r126676%_ _%r126622%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%e126677126684%_
                                                           _%in-rest126675%_)
                                                          (_%E126679126688%_
                                                           (lambda ()
                                                             (_%K126620%_
                                                              _%rest126621%_
                                                              _%r126676%_)))
                                                          (_%E126678126739%_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%e126677126684%_)
                         (let ((_%e126680126692%_
                                (gx#syntax-e _%e126677126684%_)))
                           (let ((_%hd126681126695%_ (##car _%e126680126692%_))
                                 (_%tl126682126697%_
                                  (##cdr _%e126680126692%_)))
                             (let* ((_%hd126700%_ _%hd126681126695%_)
                                    (_%in-rest126702%_ _%tl126682126697%_)
                                    (_%src126737%_
                                     (if (gx#core-bound-module? _%hd126700%_)
                                         (gx#syntax-local-e__0 _%hd126700%_)
                                         (if (gx#core-library-module-path?
                                              _%hd126700%_)
                                             (gx#import-module__0
                                              (gx#core-resolve-library-module-path
                                               _%hd126700%_))
                                             (if (gx#core-library-relative-module-path?
                                                  _%hd126700%_)
                                                 (gx#import-module__0
                                                  (gx#core-resolve-library-relative-module-path
                                                   _%hd126700%_))
                                                 (if (gx#stx-string?
                                                      _%hd126700%_)
                                                     (gx#import-module__0
                                                      (gx#core-resolve-module-path__%
                                                       _%hd126700%_
                                                       (gx#stx-source
                                                        _%stx126460%_)))
                                                     (let* ((_%e126708126715%_
                                                             _%hd126700%_)
                                                            (_%E126710126719%_
                                                             (lambda ()
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; illegal re-export"
                                                                _%stx126460%_
                                                                _%hd126700%_)))
                                                            (_%E126709126733%_
                                                             (lambda ()
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%e126708126715%_)
                           (let ((_%e126711126723%_
                                  (gx#syntax-e _%e126708126715%_)))
                             (let ((_%hd126712126726%_
                                    (##car _%e126711126723%_))
                                   (_%tl126713126728%_
                                    (##cdr _%e126711126723%_)))
                               (if (eq? (gx#stx-e _%hd126712126726%_) 'in:)
                                   (let ((_%spath126731%_ _%tl126713126728%_))
                                     (gx#core-import-nested-module
                                      _%spath126731%_
                                      _%stx126460%_))
                                   (_%E126710126719%_))))
                           (_%E126710126719%_)))))
               (_%E126709126733%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (_%lp126673%_
                                _%in-rest126702%_
                                (_%export-imports126465%_
                                 _%src126737%_
                                 _%r126676%_)))))
                         (_%E126679126688%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E126678126739%_)))
                                                 (_%E126650126659%_)))
                                           (_%E126650126659%_))))
                                   (_%E126650126659%_))))
                            (_%E126627126783%_
                             (lambda ()
                               (if (gx#stx-pair? _%e126623126655%_)
                                   (let ((_%e126641126747%_
                                          (gx#syntax-e _%e126623126655%_)))
                                     (let ((_%hd126642126750%_
                                            (##car _%e126641126747%_))
                                           (_%tl126643126752%_
                                            (##cdr _%e126641126747%_)))
                                       (if (eq? (gx#stx-e _%hd126642126750%_)
                                                'rename:)
                                           (if (gx#stx-pair?
                                                _%tl126643126752%_)
                                               (let ((_%e126644126755%_
                                                      (gx#syntax-e
                                                       _%tl126643126752%_)))
                                                 (let ((_%hd126645126758%_
                                                        (##car _%e126644126755%_))
                                                       (_%tl126646126760%_
                                                        (##cdr _%e126644126755%_)))
                                                   (let ((_%id126763%_
                                                          _%hd126645126758%_))
                                                     (if (gx#stx-pair?
                                                          _%tl126646126760%_)
                                                         (let ((_%e126647126765%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl126646126760%_)))
                   (let ((_%hd126648126768%_ (##car _%e126647126765%_))
                         (_%tl126649126770%_ (##cdr _%e126647126765%_)))
                     (let ((_%name126773%_ _%hd126648126768%_))
                       (if (gx#stx-null? _%tl126649126770%_)
                           (let* ((_%phi126775%_
                                   (gx#current-export-expander-phi))
                                  (_%$e126777%_
                                   (gx#core-resolve-identifier__1
                                    _%id126763%_
                                    _%phi126775%_)))
                             (if _%$e126777%_
                                 ((lambda (_%bind126780%_)
                                    (_%K126620%_
                                     _%rest126621%_
                                     (cons (_%make-export__129961129962%_
                                            _%bind126780%_
                                            _%phi126775%_
                                            (gx#current-expander-context)
                                            _%name126773%_)
                                           _%r126622%_)))
                                  _%$e126777%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Reference to unbound identifier"
                                  _%stx126460%_
                                  _%hd126619%_
                                  _%id126763%_)))
                           (_%E126640126743%_)))))
                 (_%E126640126743%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E126640126743%_))
                                           (_%E126640126743%_))))
                                   (_%E126640126743%_))))
                            (_%E126626126833%_
                             (lambda ()
                               (if (gx#stx-pair? _%e126623126655%_)
                                   (let ((_%e126628126787%_
                                          (gx#syntax-e _%e126623126655%_)))
                                     (let ((_%hd126629126790%_
                                            (##car _%e126628126787%_))
                                           (_%tl126630126792%_
                                            (##cdr _%e126628126787%_)))
                                       (if (eq? (gx#stx-e _%hd126629126790%_)
                                                'spec:)
                                           (if (gx#stx-pair?
                                                _%tl126630126792%_)
                                               (let ((_%e126631126795%_
                                                      (gx#syntax-e
                                                       _%tl126630126792%_)))
                                                 (let ((_%hd126632126798%_
                                                        (##car _%e126631126795%_))
                                                       (_%tl126633126800%_
                                                        (##cdr _%e126631126795%_)))
                                                   (let ((_%phi126803%_
                                                          _%hd126632126798%_))
                                                     (if (gx#stx-pair?
                                                          _%tl126633126800%_)
                                                         (let ((_%e126634126805%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl126633126800%_)))
                   (let ((_%hd126635126808%_ (##car _%e126634126805%_))
                         (_%tl126636126810%_ (##cdr _%e126634126805%_)))
                     (let ((_%id126813%_ _%hd126635126808%_))
                       (if (gx#stx-pair? _%tl126636126810%_)
                           (let ((_%e126637126815%_
                                  (gx#syntax-e _%tl126636126810%_)))
                             (let ((_%hd126638126818%_
                                    (##car _%e126637126815%_))
                                   (_%tl126639126820%_
                                    (##cdr _%e126637126815%_)))
                               (let ((_%name126823%_ _%hd126638126818%_))
                                 (if (gx#stx-null? _%tl126639126820%_)
                                     (if (and (gx#stx-fixnum? _%phi126803%_)
                                              (gx#identifier? _%id126813%_)
                                              (gx#identifier? _%name126823%_))
                                         (let* ((_%phi126825%_
                                                 (gx#stx-e _%phi126803%_))
                                                (_%$e126827%_
                                                 (gx#core-resolve-identifier__1
                                                  _%id126813%_
                                                  _%phi126825%_)))
                                           (if _%$e126827%_
                                               ((lambda (_%bind126830%_)
                                                  (_%K126620%_
                                                   _%rest126621%_
                                                   (cons (_%make-export__129961129962%_
                                                          _%bind126830%_
                                                          _%phi126825%_
                                                          (gx#current-expander-context)
                                                          _%name126823%_)
                                                         _%r126622%_)))
                                                _%$e126827%_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _%stx126460%_
                                                _%hd126619%_
                                                _%id126813%_)))
                                         (_%E126627126783%_))
                                     (_%E126627126783%_)))))
                           (_%E126627126783%_)))))
                 (_%E126627126783%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E126627126783%_))
                                           (_%E126627126783%_))))
                                   (_%E126627126783%_))))
                            (_%E126625126845%_
                             (lambda ()
                               (let ((_%id126837%_ _%e126623126655%_))
                                 (if (gx#identifier? _%id126837%_)
                                     (let ((_%$e126839%_
                                            (gx#core-resolve-identifier__1
                                             _%id126837%_
                                             (gx#current-export-expander-phi))))
                                       (if _%$e126839%_
                                           ((lambda (_%bind126842%_)
                                              (_%K126620%_
                                               _%rest126621%_
                                               (cons (_%make-export__0__129963129966%_
                                                      _%bind126842%_)
                                                     _%r126622%_)))
                                            _%$e126839%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _%stx126460%_
                                            _%hd126619%_)))
                                     (_%E126626126833%_)))))
                            (_%E126624126909%_
                             (lambda ()
                               (if (eq? (gx#stx-e _%e126623126655%_) '#t)
                                   (let* ((_%current-ctx126849%_
                                           (gx#current-expander-context))
                                          (_%current-phi126851%_
                                           (gx#current-export-expander-phi))
                                          (_%phi-ctx126853%_
                                           (gx#core-context-shift
                                            _%current-ctx126849%_
                                            _%current-phi126851%_))
                                          (_%phi-bind126855%_
                                           (hash->list
                                            (##unchecked-structure-ref
                                             _%phi-ctx126853%_
                                             '2
                                             '#f
                                             '#f))))
                                     (let _%lp126858%_ ((_%bind-rest126860%_
                                                         _%phi-bind126855%_)
                                                        (_%set126861%_ '()))
                                       (let* ((_%bind-rest126862126872%_
                                               _%bind-rest126860%_)
                                              (_%else126864126880%_
                                               (lambda ()
                                                 (_%K126620%_
                                                  _%rest126621%_
                                                  (cons (##structure
                                                         gx#export-set::t
                                                         '#f
                                                         _%current-phi126851%_
                                                         _%set126861%_)
                                                        _%r126622%_))))
                                              (_%K126866126890%_
                                               (lambda (_%bind-rest126883%_
                                                        _%bind126884%_
                                                        _%key126885%_)
                                                 (if (or (##structure-direct-instance-of?
                                                          _%bind126884%_
                                                          'gx#import-binding::t)
                                                         (gx#private-feature-binding?
                                                          _%bind126884%_))
                                                     (_%lp126858%_
                                                      _%bind-rest126883%_
                                                      _%set126861%_)
                                                     (_%lp126858%_
                                                      _%bind-rest126883%_
                                                      (cons (_%make-export__2__129965129968%_
                                                             _%bind126884%_
                                                             _%current-phi126851%_
                                                             _%current-ctx126849%_)
                                                            _%set126861%_))))))
                                         (if (pair? _%bind-rest126862126872%_)
                                             (let ((_%hd126867126893%_
                                                    (##car _%bind-rest126862126872%_))
                                                   (_%tl126868126895%_
                                                    (##cdr _%bind-rest126862126872%_)))
                                               (if (pair? _%hd126867126893%_)
                                                   (let ((_%hd126869126898%_
                                                          (##car _%hd126867126893%_))
                                                         (_%tl126870126900%_
                                                          (##cdr _%hd126867126893%_)))
                                                     (let* ((_%key126903%_
                                                             _%hd126869126898%_)
                                                            (_%bind126905%_
                                                             _%tl126870126900%_)
                                                            (_%bind-rest126907%_
                                                             _%tl126868126895%_))
                                                       (_%K126866126890%_
                                                        _%bind-rest126907%_
                                                        _%bind126905%_
                                                        _%key126903%_)))
                                                   (_%else126864126880%_)))
                                             (_%else126864126880%_)))))
                                   (_%E126625126845%_)))))
                       (_%E126624126909%_))))
                  (_%export-imports126465%_
                   (lambda (_%src126495%_ _%r126496%_)
                     (letrec* ((_%current-ctx126498%_
                                (gx#current-expander-context))
                               (_%current-phi126499%_
                                (gx#current-export-expander-phi))
                               (_%import->export126500%_
                                (lambda (_%in126581%_)
                                  (let* ((_%in126582126590%_ _%in126581%_)
                                         (_%E126584126594%_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _%in126582126590%_
                                                   '((module-import
                                                      out
                                                      key
                                                      phi)))
                                            '#!void))
                                         (_%K126585126601%_
                                          (lambda (_%phi126597%_
                                                   _%key126598%_
                                                   _%out126599%_)
                                            (##structure
                                             gx#module-export::t
                                             _%current-ctx126498%_
                                             _%key126598%_
                                             _%phi126597%_
                                             _%key126598%_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _%in126582126590%_
                                         'gx#module-import::t)
                                        (let* ((_%e126586126604%_
                                                (##unchecked-structure-ref
                                                 _%in126582126590%_
                                                 '1
                                                 '#f
                                                 '#f))
                                               (_%out126607%_
                                                _%e126586126604%_)
                                               (_%e126587126609%_
                                                (##unchecked-structure-ref
                                                 _%in126582126590%_
                                                 '2
                                                 '#f
                                                 '#f))
                                               (_%key126612%_
                                                _%e126587126609%_)
                                               (_%e126588126614%_
                                                (##unchecked-structure-ref
                                                 _%in126582126590%_
                                                 '3
                                                 '#f
                                                 '#f))
                                               (_%phi126617%_
                                                _%e126588126614%_))
                                          (_%K126585126601%_
                                           _%phi126617%_
                                           _%key126612%_
                                           _%out126607%_))
                                        (_%E126584126594%_)))))
                               (_%fold-e126501%_
                                (lambda (_%in126503%_ _%r126504%_)
                                  (let* ((_%in126505126519%_ _%in126503%_)
                                         (_%else126508126527%_
                                          (lambda () _%r126504%_)))
                                    (let ((_%K126514126563%_
                                           (lambda (_%phi126559%_
                                                    _%key126560%_
                                                    _%out126561%_)
                                             (if (and (fx= _%phi126559%_
                                                           _%current-phi126499%_)
                                                      (eq? _%src126495%_
                                                           (##unchecked-structure-ref
                                                            _%out126561%_
                                                            '1
                                                            '#f
                                                            '#f)))
                                                 (cons (_%import->export126500%_
                                                        _%in126503%_)
                                                       _%r126504%_)
                                                 _%r126504%_)))
                                          (_%K126510126538%_
                                           (lambda (_%imports126531%_
                                                    _%phi126532%_
                                                    _%ctx126533%_)
                                             (if (and (fx= _%phi126532%_
                                                           _%current-phi126499%_)
                                                      (eq? _%src126495%_
                                                           _%ctx126533%_))
                                                 (__foldl1
                                                  (lambda (_%in126535%_
                                                           _%r126536%_)
                                                    (cons (_%import->export126500%_
                                                           _%in126535%_)
                                                          _%r126536%_))
                                                  _%r126504%_
                                                  _%imports126531%_)
                                                 _%r126504%_))))
                                      (let ((_%try-match126507126556%_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _%in126505126519%_
                                                    'gx#import-set::t)
                                                   (let* ((_%e126511126541%_
                                                           (##unchecked-structure-ref
                                                            _%in126505126519%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                          (_%e126512126546%_
                                                           (##unchecked-structure-ref
                                                            _%in126505126519%_
                                                            '2
                                                            '#f
                                                            '#f))
                                                          (_%e126513126551%_
                                                           (##unchecked-structure-ref
                                                            _%in126505126519%_
                                                            '3
                                                            '#f
                                                            '#f)))
                                                     (let ((_%ctx126544%_
                                                            _%e126511126541%_)
                                                           (_%phi126549%_
                                                            _%e126512126546%_)
                                                           (_%imports126554%_
                                                            _%e126513126551%_))
                                                       (_%K126510126538%_
                                                        _%imports126554%_
                                                        _%phi126549%_
                                                        _%ctx126544%_)))
                                                   (_%else126508126527%_)))))
                                        (if (##structure-direct-instance-of?
                                             _%in126505126519%_
                                             'gx#module-import::t)
                                            (let* ((_%e126515126566%_
                                                    (##unchecked-structure-ref
                                                     _%in126505126519%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                   (_%e126516126571%_
                                                    (##unchecked-structure-ref
                                                     _%in126505126519%_
                                                     '2
                                                     '#f
                                                     '#f))
                                                   (_%e126517126576%_
                                                    (##unchecked-structure-ref
                                                     _%in126505126519%_
                                                     '3
                                                     '#f
                                                     '#f)))
                                              (let ((_%out126569%_
                                                     _%e126515126566%_)
                                                    (_%key126574%_
                                                     _%e126516126571%_)
                                                    (_%phi126579%_
                                                     _%e126517126576%_))
                                                (_%K126514126563%_
                                                 _%phi126579%_
                                                 _%key126574%_
                                                 _%out126569%_)))
                                            (_%try-match126507126556%_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _%src126495%_
                              _%current-phi126499%_
                              (__foldl1
                               _%fold-e126501%_
                               '()
                               (##unchecked-structure-ref
                                _%current-ctx126498%_
                                '8
                                '#f
                                '#f)))
                             _%r126496%_))))
                  (_%export!126466%_
                   (lambda (_%rbody126482%_)
                     (letrec* ((_%current-ctx126484%_
                                (gx#current-expander-context))
                               (_%fold-e126485%_
                                (lambda (_%out126489%_ _%r126490%_)
                                  (if (##structure-direct-instance-of?
                                       _%out126489%_
                                       'gx#module-export::t)
                                      (cons _%out126489%_ _%r126490%_)
                                      (if (##structure-direct-instance-of?
                                           _%out126489%_
                                           'gx#export-set::t)
                                          (__foldl1
                                           cons
                                           _%r126490%_
                                           (##unchecked-structure-ref
                                            _%out126489%_
                                            '3
                                            '#f
                                            '#f))
                                          _%r126490%_)))))
                       (let ((_%body126487%_ (reverse _%rbody126482%_)))
                         (##unchecked-structure-set!
                          _%current-ctx126484%_
                          (__foldl1
                           _%fold-e126485%_
                           (##unchecked-structure-ref
                            _%current-ctx126484%_
                            '9
                            '#f
                            '#f)
                           _%body126487%_)
                          '9
                          '#f
                          '#f)
                         _%body126487%_))))
                  (_%expanded-export?126467%_
                   (lambda (_%e126477%_)
                     (let ((_%$e126479%_
                            (##structure-direct-instance-of?
                             _%e126477%_
                             'gx#module-export::t)))
                       (if _%$e126479%_
                           _%$e126479%_
                           (##structure-direct-instance-of?
                            _%e126477%_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _%internal-expand?126461%_)
              (let ((_%rbody126473%_
                     (gx#core-expand-import/export
                      _%stx126460%_
                      _%expanded-export?126467%_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _%expand1126464%_)))
                (if _%internal-expand?126461%_
                    (reverse _%rbody126473%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons
                      '%#export
                      (_%export!126466%_ _%rbody126473%_))
                     (gx#stx-source _%stx126460%_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _%stx126460%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _%stx126460%_))))))
    (define gx#core-expand-export%__0
      (lambda (_%stx126959%_)
        (let ((_%internal-expand?126961%_ '#f))
          (gx#core-expand-export%__%
           _%stx126959%_
           _%internal-expand?126961%_))))
    (define gx#core-expand-export%
      (lambda _g130037_
        (let ((_g130036_ (##length _g130037_)))
          (cond ((##fx= _g130036_ 1)
                 (apply gx#core-expand-export%__0 _g130037_))
                ((##fx= _g130036_ 2)
                 (apply gx#core-expand-export%__% _g130037_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g130037_))))))
    (define gx#core-expand-export-source
      (lambda (_%hd126457%_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _%hd126457%_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_%stx126427%_)
        (let* ((_%e126428126435%_ _%stx126427%_)
               (_%E126430126439%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126428126435%_)))
               (_%E126429126453%_
                (lambda ()
                  (if (gx#stx-pair? _%e126428126435%_)
                      (let ((_%e126431126443%_
                             (gx#syntax-e _%e126428126435%_)))
                        (let ((_%hd126432126446%_ (##car _%e126431126443%_))
                              (_%tl126433126448%_ (##cdr _%e126431126443%_)))
                          (let ((_%body126451%_ _%tl126433126448%_))
                            (if (gx#identifier-list? _%body126451%_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _%body126451%_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _%body126451%_))
                                   (gx#stx-source _%stx126427%_)))
                                (_%E126430126439%_)))))
                      (_%E126430126439%_)))))
          (_%E126429126453%_))))
    (define gx#core-bind-feature!__%
      (lambda (_%id126393%_ _%private?126394%_ _%phi126395%_ _%ctx126396%_)
        (gx#core-bind-syntax!__%
         _%id126393%_
         ((if _%private?126394%_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _%id126393%_))
         _%private?126394%_
         _%phi126395%_
         _%ctx126396%_)))
    (define gx#core-bind-feature!__0
      (lambda (_%id126401%_)
        (let* ((_%private?126403%_ '#f)
               (_%phi126405%_ (gx#current-expander-phi))
               (_%ctx126407%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id126401%_
           _%private?126403%_
           _%phi126405%_
           _%ctx126407%_))))
    (define gx#core-bind-feature!__1
      (lambda (_%id126409%_ _%private?126410%_)
        (let* ((_%phi126412%_ (gx#current-expander-phi))
               (_%ctx126414%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id126409%_
           _%private?126410%_
           _%phi126412%_
           _%ctx126414%_))))
    (define gx#core-bind-feature!__2
      (lambda (_%id126416%_ _%private?126417%_ _%phi126418%_)
        (let ((_%ctx126420%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id126416%_
           _%private?126417%_
           _%phi126418%_
           _%ctx126420%_))))
    (define gx#core-bind-feature!
      (lambda _g130039_
        (let ((_g130038_ (##length _g130039_)))
          (cond ((##fx= _g130038_ 1)
                 (apply gx#core-bind-feature!__0 _g130039_))
                ((##fx= _g130038_ 2)
                 (apply gx#core-bind-feature!__1 _g130039_))
                ((##fx= _g130038_ 3)
                 (apply gx#core-bind-feature!__2 _g130039_))
                ((##fx= _g130038_ 4)
                 (apply gx#core-bind-feature!__% _g130039_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g130039_))))))))
