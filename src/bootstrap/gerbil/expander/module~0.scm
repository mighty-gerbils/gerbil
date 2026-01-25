(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1769382895)
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
      (lambda _%$args141149%_
        (apply make-instance gx#module-import::t _%$args141149%_)))
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
      (lambda _%$args141146%_
        (apply make-instance gx#module-export::t _%$args141146%_)))
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
      (lambda _%$args141143%_
        (apply make-instance gx#import-set::t _%$args141143%_)))
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
      (lambda _%$args141140%_
        (apply make-instance gx#export-set::t _%$args141140%_)))
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
      (lambda _%$args141137%_
        (apply make-instance gx#import-expander::t _%$args141137%_)))
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
      (lambda _%$args141134%_
        (apply make-instance gx#export-expander::t _%$args141134%_)))
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
      (lambda _%$args141131%_
        (apply make-instance gx#import-export-expander::t _%$args141131%_)))
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
      (lambda (_%path141128%_ _%fun141129%_)
        (call-with-input-file
         (cons 'path: (cons _%path141128%_ gx#source-file-settings))
         _%fun141129%_)))
    (define gx#module-context:::init!
      (lambda (_%self141111%_
               _%id141112%_
               _%super141113%_
               _%ns141114%_
               _%path141115%_)
        (let ((_%self141118%_ _%self141111%_))
          (if (##fx< '11 (##structure-length _%self141118%_))
              (begin
                (##unchecked-structure-set!
                 _%self141118%_
                 _%id141112%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self141118%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self141118%_
                 _%super141113%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self141118%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self141118%_ '#f '5 '#f '#f)
                (##unchecked-structure-set!
                 _%self141118%_
                 _%ns141114%_
                 '6
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self141118%_
                 _%path141115%_
                 '7
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self141118%_ '() '8 '#f '#f)
                (##unchecked-structure-set! _%self141118%_ '() '9 '#f '#f)
                (##unchecked-structure-set! _%self141118%_ '#f '10 '#f '#f)
                (##unchecked-structure-set! _%self141118%_ '#f '11 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self141118%_
                     '11
                     (##structure-length _%self141118%_))))))
    (__bind-method!__%
     gx#module-context::t
     ':init!
     gx#module-context:::init!
     '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_%self140944%_ _%ctx140945%_ _%root140946%_)
        (let* ((_%self140949%_ _%self140944%_)
               (_%super140965%_
                (let ((_%$e140959%_ _%root140946%_))
                  (if _%$e140959%_
                      _%$e140959%_
                      (let ((_%$e140962%_ (gx#core-context-root__0)))
                        (if _%$e140962%_
                            _%$e140962%_
                            (let ((__obj141193
                                   (##structure gx#root-context::t '#f '#f)))
                              (let ((__constructor141194
                                     (direct-method-ref
                                      gx#root-context::t
                                      __obj141193
                                      ':init!)))
                                (if __constructor141194
                                    (__constructor141194 __obj141193)
                                    (error '"missing constructor method implementation"
                                           'class:
                                           gx#root-context::t
                                           'method:
                                           ':init!)))
                              __obj141193)))))))
          (if _%ctx140945%_
              (let ((_%id140968%_
                     (##structure-ref
                      _%ctx140945%_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_%path140969%_
                     (##structure-ref
                      _%ctx140945%_
                      '7
                      gx#module-context::t
                      '#f))
                    (_%in140970%_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _%ctx140945%_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_%e140971%_
                     (__make-atomic-promise
                      (lambda () (gx#eval-module _%ctx140945%_)))))
                (if (##fx< '8 (##structure-length _%self140949%_))
                    (begin
                      (##unchecked-structure-set!
                       _%self140949%_
                       _%id140968%_
                       '1
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self140949%_
                       (make-hash-table-eq 'size: (##length _%in140970%_))
                       '2
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self140949%_
                       _%super140965%_
                       '3
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self140949%_
                       '#f
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self140949%_
                       '#f
                       '5
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self140949%_
                       _%path140969%_
                       '6
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self140949%_
                       _%in140970%_
                       '7
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self140949%_
                       _%e140971%_
                       '8
                       '#f
                       '#f)
                      '#!void)
                    (error '"struct-instance-init!: too many arguments for struct"
                           _%self140949%_
                           '8
                           (##structure-length _%self140949%_)))
                (##for-each
                 (lambda (_%g140972140974%_)
                   (gx#core-bind-weak-import!__%
                    _%g140972140974%_
                    _%self140949%_))
                 _%in140970%_))
              (if (##fx< '8 (##structure-length _%self140949%_))
                  (begin
                    (##unchecked-structure-set! _%self140949%_ '#f '1 '#f '#f)
                    (##unchecked-structure-set!
                     _%self140949%_
                     (make-hash-table-eq)
                     '2
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self140949%_
                     _%super140965%_
                     '3
                     '#f
                     '#f)
                    (##unchecked-structure-set! _%self140949%_ '#f '4 '#f '#f)
                    (##unchecked-structure-set! _%self140949%_ '#f '5 '#f '#f)
                    (##unchecked-structure-set! _%self140949%_ '#f '6 '#f '#f)
                    (##unchecked-structure-set! _%self140949%_ '() '7 '#f '#f)
                    (##unchecked-structure-set! _%self140949%_ '#f '8 '#f '#f)
                    '#!void)
                  (error '"struct-instance-init!: too many arguments for struct"
                         _%self140949%_
                         '8
                         (##structure-length _%self140949%_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_%self140980%_ _%ctx140981%_)
        (let ((_%root140983%_ '#f))
          (gx#prelude-context:::init!__%
           _%self140980%_
           _%ctx140981%_
           _%root140983%_))))
    (define gx#prelude-context:::init!
      (lambda _g141199_
        (let ((_g141200_ (##length _g141199_)))
          (cond ((##fx= _g141200_ 2)
                 (apply gx#prelude-context:::init!__0 _g141199_))
                ((##fx= _g141200_ 3)
                 (apply gx#prelude-context:::init!__% _g141199_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g141199_))))))
    (__bind-method!__%
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_%self140818%_ _%e140819%_)
        (if (##fx< '3 (##structure-length _%self140818%_))
            (begin
              (##unchecked-structure-set!
               _%self140818%_
               _%e140819%_
               '1
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self140818%_
               (gx#current-expander-context)
               '2
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self140818%_
               (##fx- (gx#current-expander-phi) '1)
               '3
               '#f
               '#f)
              '#!void)
            (error '"struct-instance-init!: too many arguments for struct"
                   _%self140818%_
                   '3
                   (##structure-length _%self140818%_)))))
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
      (lambda (_%g140444140447%_ _%g140445140449%_)
        (gx#core-apply-user-expander__%
         _%g140444140447%_
         _%g140445140449%_
         'apply-import-expander)))
    (__bind-method!__%
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_%g140315140318%_ _%g140316140320%_)
        (gx#core-apply-user-expander__%
         _%g140315140318%_
         _%g140316140320%_
         'apply-export-expander)))
    (__bind-method!__%
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_%ctx140186%_)
        (let* ((_%path140188%_
                (##structure-ref _%ctx140186%_ '7 gx#module-context::t '#f))
               (_%path140190%_
                (if (pair? _%path140188%_)
                    (##last _%path140188%_)
                    _%path140188%_)))
          (if (string? _%path140190%_) _%path140190%_ '#f))))
    (define gx#import-module__%
      (lambda (_%path140162%_ _%reload?140163%_ _%eval?140164%_)
        (let ((_%ctx140166%_
               ((gx#current-expander-module-import)
                _%path140162%_
                _%reload?140163%_)))
          (if (and _%ctx140166%_ _%eval?140164%_)
              (gx#eval-module _%ctx140166%_)
              '#!void)
          _%ctx140166%_)))
    (define gx#import-module__0
      (lambda (_%path140171%_)
        (let* ((_%reload?140173%_ '#f) (_%eval?140175%_ '#f))
          (gx#import-module__%
           _%path140171%_
           _%reload?140173%_
           _%eval?140175%_))))
    (define gx#import-module__1
      (lambda (_%path140177%_ _%reload?140178%_)
        (let ((_%eval?140180%_ '#f))
          (gx#import-module__%
           _%path140177%_
           _%reload?140178%_
           _%eval?140180%_))))
    (define gx#import-module
      (lambda _g141201_
        (let ((_g141202_ (##length _g141201_)))
          (cond ((##fx= _g141202_ 1) (apply gx#import-module__0 _g141201_))
                ((##fx= _g141202_ 2) (apply gx#import-module__1 _g141201_))
                ((##fx= _g141202_ 3) (apply gx#import-module__% _g141201_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g141201_))))))
    (define gx#eval-module
      (lambda (_%mod140159%_)
        ((gx#current-expander-module-eval) _%mod140159%_)))
    (define gx#core-eval-module
      (lambda (_%obj140138%_)
        (letrec ((_%force-e140140%_
                  (lambda (_%getf140154%_ _%e140155%_)
                    (call-with-parameters__1
                     (lambda ()
                       (call-with-parameters__1
                        (lambda () (force (_%getf140154%_ _%e140155%_)))
                        gx#current-expander-phi
                        '0))
                     gx#current-expander-context
                     _%e140155%_))))
          (let _%recur140142%_ ((_%e140144%_ _%obj140138%_))
            (if (##structure-instance-of? _%e140144%_ 'gx#module-context::t)
                (let ()
                  (let ((_%$e140147%_
                         (gx#core-context-prelude__% _%e140144%_)))
                    (if _%$e140147%_ (_%recur140142%_ _%$e140147%_) '#!void))
                  (_%force-e140140%_ gx#module-context-e _%e140144%_))
                (if (##structure-instance-of?
                     _%e140144%_
                     'gx#prelude-context::t)
                    (_%force-e140140%_ gx#prelude-context-e _%e140144%_)
                    (if (gx#stx-string? _%e140144%_)
                        (_%recur140142%_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _%e140144%_)))
                        (if (gx#core-library-module-path? _%e140144%_)
                            (_%recur140142%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%e140144%_)))
                            (error '"cannot eval module" _%obj140138%_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_%ctx140118%_)
        (let _%lp140120%_ ((_%e140122%_ _%ctx140118%_))
          (if (or (##structure-instance-of? _%e140122%_ 'gx#module-context::t)
                  (##structure-instance-of? _%e140122%_ 'gx#local-context::t))
              (_%lp140120%_ (##unchecked-structure-ref _%e140122%_ '3 '#f '#f))
              (if (##structure-instance-of? _%e140122%_ 'gx#prelude-context::t)
                  _%e140122%_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_%ctx140134%_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _%ctx140134%_))))
    (define gx#core-context-prelude
      (lambda _g141203_
        (let ((_g141204_ (##length _g141203_)))
          (cond ((##fx= _g141204_ 0)
                 (apply gx#core-context-prelude__0 _g141203_))
                ((##fx= _g141204_ 1)
                 (apply gx#core-context-prelude__% _g141203_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g141203_))))))
    (define gx#core-module->prelude-context
      (lambda (_%ctx140109%_)
        (let ((_%$e140111%_ (__hash-get gx#__module-registry _%ctx140109%_)))
          (if _%$e140111%_
              _%$e140111%_
              (let ((_%pre140115%_
                     (let ((__obj141195
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
                        __obj141195
                        _%ctx140109%_)
                       __obj141195)))
                (__hash-put! gx#__module-registry _%ctx140109%_ _%pre140115%_)
                _%pre140115%_)))))
    (define gx#core-import-module__%
      (lambda (_%rpath139977%_ _%reload?139978%_)
        (letrec ((_%import-source139980%_
                  (lambda (_%path140068%_)
                    (if (member _%path140068%_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _%path140068%_)
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
                                      (let ((_g141205_
                                             (gx#core-read-module
                                              _%path140068%_)))
                                        (begin
                                          (let ((_g141206_
                                                 (if (##values? _g141205_)
                                                     (##values-length
                                                      _g141205_)
                                                     1)))
                                            (if (not (##fx= _g141206_ 4))
                                                (error "Context expects 4 values"
                                                       _g141206_)))
                                          (let ((_%pre140076%_
                                                 (##values-ref _g141205_ 0))
                                                (_%id140077%_
                                                 (##values-ref _g141205_ 1))
                                                (_%ns140078%_
                                                 (##values-ref _g141205_ 2))
                                                (_%body140079%_
                                                 (##values-ref _g141205_ 3)))
                                            (let* ((_%prelude140089%_
                                                    (if (##structure-instance-of?
                                                         _%pre140076%_
                                                         'gx#prelude-context::t)
                                                        _%pre140076%_
                                                        (if (##structure-instance-of?
                                                             _%pre140076%_
                                                             'gx#module-context::t)
                                                            (gx#core-module->prelude-context
                                                             _%pre140076%_)
                                                            (if (string? _%pre140076%_)
                                                                (gx#core-module->prelude-context
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#core-import-module__0 _%pre140076%_))
                        (if (not _%pre140076%_)
                            (let ((_%$e140085%_
                                   (gx#current-expander-module-prelude)))
                              (if _%$e140085%_
                                  _%$e140085%_
                                  (let ((__obj141196
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
                                     __obj141196
                                     '#f)
                                    __obj141196)))
                            (error '"cannot import module; unknown prelude"
                                   _%rpath139977%_
                                   _%pre140076%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%ctx140091%_
                                                    (let ((__obj141197
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
                                                       __obj141197
                                                       _%id140077%_
                                                       _%prelude140089%_
                                                       _%ns140078%_
                                                       _%path140068%_)
                                                      __obj141197))
                                                   (_%body140093%_
                                                    (gx#core-expand-module-begin
                                                     _%body140079%_
                                                     _%ctx140091%_))
                                                   (_%body140095%_
                                                    (gx#core-quote-syntax__%
                                                     (gx#core-cons
                                                      '%#begin
                                                      _%body140093%_)
                                                     _%path140068%_
                                                     _%ctx140091%_
                                                     '())))
                                              (##unchecked-structure-set!
                                               _%ctx140091%_
                                               (__make-atomic-promise
                                                (lambda ()
                                                  (gx#eval-syntax*
                                                   _%body140095%_)))
                                               '10
                                               '#f
                                               '#f)
                                              (##unchecked-structure-set!
                                               _%ctx140091%_
                                               _%body140095%_
                                               '11
                                               '#f
                                               '#f)
                                              (__hash-put!
                                               gx#__module-registry
                                               _%path140068%_
                                               _%ctx140091%_)
                                              (__hash-put!
                                               gx#__module-registry
                                               _%id140077%_
                                               _%ctx140091%_)
                                              _%ctx140091%_)))))
                                    gx#current-export-expander-phi
                                    '#f))
                                 gx#current-import-expander-phi
                                 '#f))
                              gx#current-expander-path
                              (cons _%path140068%_
                                    (gx#current-expander-path))))
                           gx#current-expander-phi
                           '0))
                        gx#current-expander-marks
                        '()))
                     gx#current-expander-context
                     (gx#core-context-root__0))))
                 (_%import-submodule139981%_
                  (lambda (_%rpath139997%_)
                    (let* ((_%rpath139998140005%_ _%rpath139997%_)
                           (_%E140000140008%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%rpath139998140005%_
                                     '([origin . refs]))
                              '#!void))
                           (_%K140001140056%_
                            (lambda (_%refs140011%_ _%origin140012%_)
                              (let ((_%ctx140014%_
                                     (if _%origin140012%_
                                         (gx#core-import-module__%
                                          _%origin140012%_
                                          _%reload?139978%_)
                                         (gx#current-expander-context))))
                                (let _%lp140016%_ ((_%rest140018%_
                                                    _%refs140011%_)
                                                   (_%ctx140019%_
                                                    _%ctx140014%_))
                                  (let* ((_%rest140020140028%_ _%rest140018%_)
                                         (_%else140022140036%_
                                          (lambda () _%ctx140019%_))
                                         (_%K140024140044%_
                                          (lambda (_%rest140039%_ _%id140040%_)
                                            (let ((_%bind140042%_
                                                   (gx#resolve-identifier__%
                                                    _%id140040%_
                                                    '0
                                                    _%ctx140019%_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _%bind140042%_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _%bind140042%_
                                                         '4
                                                         '#f
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_%lp140016%_
                                                   _%rest140039%_
                                                   (##unchecked-structure-ref
                                                    _%bind140042%_
                                                    '4
                                                    '#f
                                                    '#f))
                                                  (error '"cannot import submodule; not bound as a module"
                                                         _%rpath139997%_
                                                         _%id140040%_
                                                         _%bind140042%_))))))
                                    (if (pair? _%rest140020140028%_)
                                        (let ((_%hd140025140047%_
                                               (##car _%rest140020140028%_))
                                              (_%tl140026140049%_
                                               (##cdr _%rest140020140028%_)))
                                          (let* ((_%id140052%_
                                                  _%hd140025140047%_)
                                                 (_%rest140054%_
                                                  _%tl140026140049%_))
                                            (_%K140024140044%_
                                             _%rest140054%_
                                             _%id140052%_)))
                                        (_%else140022140036%_))))))))
                      (if (pair? _%rpath139998140005%_)
                          (let ((_%hd140002140059%_
                                 (##car _%rpath139998140005%_))
                                (_%tl140003140061%_
                                 (##cdr _%rpath139998140005%_)))
                            (let* ((_%origin140064%_ _%hd140002140059%_)
                                   (_%refs140066%_ _%tl140003140061%_))
                              (_%K140001140056%_
                               _%refs140066%_
                               _%origin140064%_)))
                          (_%E140000140008%_))))))
          (let ((_%$e139983%_
                 (if (not _%reload?139978%_)
                     (__hash-get gx#__module-registry _%rpath139977%_)
                     '#f)))
            (if _%$e139983%_
                _%$e139983%_
                (if (list? _%rpath139977%_)
                    (_%import-submodule139981%_ _%rpath139977%_)
                    (if (gx#core-library-module-path? _%rpath139977%_)
                        (let ((_%ctx139988%_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _%rpath139977%_)
                                _%reload?139978%_)))
                          (__hash-put!
                           gx#__module-registry
                           _%rpath139977%_
                           _%ctx139988%_)
                          _%ctx139988%_)
                        (let* ((_%npath139991%_
                                (path-normalize _%rpath139977%_))
                               (_%$e139993%_
                                (if (not _%reload?139978%_)
                                    (__hash-get
                                     gx#__module-registry
                                     _%npath139991%_)
                                    '#f)))
                          (if _%$e139993%_
                              _%$e139993%_
                              (_%import-source139980%_
                               _%npath139991%_))))))))))
    (define gx#core-import-module__0
      (lambda (_%rpath140102%_)
        (let ((_%reload?140104%_ '#f))
          (gx#core-import-module__% _%rpath140102%_ _%reload?140104%_))))
    (define gx#core-import-module
      (lambda _g141207_
        (let ((_g141208_ (##length _g141207_)))
          (cond ((##fx= _g141208_ 1)
                 (apply gx#core-import-module__0 _g141207_))
                ((##fx= _g141208_ 2)
                 (apply gx#core-import-module__% _g141207_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g141207_))))))
    (define gx#core-read-module
      (lambda (_%path139966%_)
        (__with-catch
         (lambda (_%exn139968%_)
           (if (and (datum-parsing-exception? _%exn139968%_)
                    (eq? (datum-parsing-exception-filepos _%exn139968%_) '0))
               (gx#core-read-module/lang _%path139966%_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _%path139966%_
                (call-with-parameters__1
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_%g139970139972%_)
                      (display-exception__% _%exn139968%_ _%g139970139972%_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _%path139966%_)))))
    (define gx#core-read-module/sexp
      (lambda (_%path139818%_)
        (let _%lp139820%_ ((_%body139822%_
                            (read-syntax-from-file _%path139818%_))
                           (_%pre139823%_ '#f)
                           (_%ns139824%_ '#f)
                           (_%pkg139825%_ '#f))
          (let* ((_%e139826139850%_ _%body139822%_)
                 (_%E139842139876%_
                  (lambda ()
                    (let ((_g141209_
                           (if _%pkg139825%_
                               (values _%pre139823%_
                                       _%ns139824%_
                                       _%pkg139825%_)
                               (gx#core-read-module-package
                                _%path139818%_
                                _%pre139823%_
                                _%ns139824%_))))
                      (begin
                        (let ((_g141210_
                               (if (##values? _g141209_)
                                   (##values-length _g141209_)
                                   1)))
                          (if (not (##fx= _g141210_ 3))
                              (error "Context expects 3 values" _g141210_)))
                        (let ((_%pre139854%_ (##values-ref _g141209_ 0))
                              (_%ns139855%_ (##values-ref _g141209_ 1))
                              (_%pkg139856%_ (##values-ref _g141209_ 2)))
                          (let* ((_%prelude139862%_
                                  (if (gx#core-bound-module-prelude?
                                       _%pre139854%_)
                                      (gx#syntax-local-e__0 _%pre139854%_)
                                      (if (gx#core-library-module-path?
                                           _%pre139854%_)
                                          (gx#core-resolve-library-module-path
                                           _%pre139854%_)
                                          (if (gx#stx-string? _%pre139854%_)
                                              (gx#core-resolve-module-path__%
                                               _%pre139854%_
                                               _%path139818%_)
                                              (gx#stx-e _%pre139854%_)))))
                                 (_%path-id139864%_
                                  (gx#core-module-path->namespace
                                   _%path139818%_))
                                 (_%pkg-id139866%_
                                  (if _%pkg139856%_
                                      (##string-append
                                       _%pkg139856%_
                                       '"/"
                                       _%path-id139864%_)
                                      _%path-id139864%_))
                                 (_%module-id139868%_
                                  (##string->symbol _%pkg-id139866%_))
                                 (_%module-ns139873%_
                                  (if (eq? _%ns139855%_ '#!void)
                                      '#f
                                      (let ((_%$e139870%_ _%ns139855%_))
                                        (if _%$e139870%_
                                            _%$e139870%_
                                            _%pkg-id139866%_)))))
                            (values _%prelude139862%_
                                    _%module-id139868%_
                                    _%module-ns139873%_
                                    _%body139822%_)))))))
                 (_%E139835139908%_
                  (lambda ()
                    (if (gx#stx-pair? _%e139826139850%_)
                        (let ((_%e139843139880%_
                               (gx#syntax-e _%e139826139850%_)))
                          (let ((_%hd139844139883%_ (##car _%e139843139880%_))
                                (_%tl139845139885%_ (##cdr _%e139843139880%_)))
                            (if (eq? (gx#stx-e _%hd139844139883%_) 'package:)
                                (if (gx#stx-pair? _%tl139845139885%_)
                                    (let ((_%e139846139888%_
                                           (gx#syntax-e _%tl139845139885%_)))
                                      (let ((_%hd139847139891%_
                                             (##car _%e139846139888%_))
                                            (_%tl139848139893%_
                                             (##cdr _%e139846139888%_)))
                                        (let* ((_%pkg139896%_
                                                _%hd139847139891%_)
                                               (_%rest139898%_
                                                _%tl139848139893%_)
                                               (_%pkg139906%_
                                                (if (gx#identifier?
                                                     _%pkg139896%_)
                                                    (symbol->string
                                                     (gx#stx-e _%pkg139896%_))
                                                    (if (or (gx#stx-string?
                                                             _%pkg139896%_)
                                                            (gx#stx-false?
                                                             _%pkg139896%_))
                                                        (gx#stx-e
                                                         _%pkg139896%_)
                                                        (gx#raise-syntax-error
                                                         'import
                                                         '"Bad syntax; Illegal package name"
                                                         _%pkg139896%_)))))
                                          (_%lp139820%_
                                           _%rest139898%_
                                           _%pre139823%_
                                           _%ns139824%_
                                           _%pkg139906%_))))
                                    (_%E139842139876%_))
                                (_%E139842139876%_))))
                        (_%E139842139876%_))))
                 (_%E139828139938%_
                  (lambda ()
                    (if (gx#stx-pair? _%e139826139850%_)
                        (let ((_%e139836139912%_
                               (gx#syntax-e _%e139826139850%_)))
                          (let ((_%hd139837139915%_ (##car _%e139836139912%_))
                                (_%tl139838139917%_ (##cdr _%e139836139912%_)))
                            (if (eq? (gx#stx-e _%hd139837139915%_) 'namespace:)
                                (if (gx#stx-pair? _%tl139838139917%_)
                                    (let ((_%e139839139920%_
                                           (gx#syntax-e _%tl139838139917%_)))
                                      (let ((_%hd139840139923%_
                                             (##car _%e139839139920%_))
                                            (_%tl139841139925%_
                                             (##cdr _%e139839139920%_)))
                                        (let* ((_%ns139928%_
                                                _%hd139840139923%_)
                                               (_%rest139930%_
                                                _%tl139841139925%_)
                                               (_%ns139936%_
                                                (if (gx#identifier?
                                                     _%ns139928%_)
                                                    (symbol->string
                                                     (gx#stx-e _%ns139928%_))
                                                    (if (gx#stx-string?
                                                         _%ns139928%_)
                                                        (gx#stx-e _%ns139928%_)
                                                        (if (gx#stx-false?
                                                             _%ns139928%_)
                                                            '#!void
                                                            (gx#raise-syntax-error
                                                             'import
                                                             '"Bad syntax; illegal namespace"
                                                             _%ns139928%_))))))
                                          (_%lp139820%_
                                           _%rest139930%_
                                           _%pre139823%_
                                           _%ns139936%_
                                           _%pkg139825%_))))
                                    (_%E139835139908%_))
                                (_%E139835139908%_))))
                        (_%E139835139908%_))))
                 (_%E139827139962%_
                  (lambda ()
                    (if (gx#stx-pair? _%e139826139850%_)
                        (let ((_%e139829139942%_
                               (gx#syntax-e _%e139826139850%_)))
                          (let ((_%hd139830139945%_ (##car _%e139829139942%_))
                                (_%tl139831139947%_ (##cdr _%e139829139942%_)))
                            (if (eq? (gx#stx-e _%hd139830139945%_) 'prelude:)
                                (if (gx#stx-pair? _%tl139831139947%_)
                                    (let ((_%e139832139950%_
                                           (gx#syntax-e _%tl139831139947%_)))
                                      (let ((_%hd139833139953%_
                                             (##car _%e139832139950%_))
                                            (_%tl139834139955%_
                                             (##cdr _%e139832139950%_)))
                                        (let* ((_%prelude139958%_
                                                _%hd139833139953%_)
                                               (_%rest139960%_
                                                _%tl139834139955%_))
                                          (_%lp139820%_
                                           _%rest139960%_
                                           _%prelude139958%_
                                           _%ns139824%_
                                           _%pkg139825%_))))
                                    (_%E139828139938%_))
                                (_%E139828139938%_))))
                        (_%E139828139938%_)))))
            (_%E139827139962%_)))))
    (define gx#core-read-module/lang
      (lambda (_%path139639%_)
        (letrec ((_%default-read-module-body139641%_
                  (lambda (_%inp139810%_)
                    (let _%lp139812%_ ((_%body139814%_ '()))
                      (let ((_%next139816%_ (read-syntax__% _%inp139810%_)))
                        (if (eof-object? _%next139816%_)
                            (reverse _%body139814%_)
                            (_%lp139812%_
                             (cons _%next139816%_ _%body139814%_)))))))
                 (_%read-body139642%_
                  (lambda (_%inp139727%_
                           _%pre139728%_
                           _%ns139729%_
                           _%pkg139730%_
                           _%args139731%_)
                    (let ((_g141211_
                           (if _%pkg139730%_
                               (values _%pre139728%_
                                       _%ns139729%_
                                       _%pkg139730%_)
                               (gx#core-read-module-package
                                _%path139639%_
                                _%pre139728%_
                                _%ns139729%_))))
                      (begin
                        (let ((_g141212_
                               (if (##values? _g141211_)
                                   (##values-length _g141211_)
                                   1)))
                          (if (not (##fx= _g141212_ 3))
                              (error "Context expects 3 values" _g141212_)))
                        (let ((_%pre139733%_ (##values-ref _g141211_ 0))
                              (_%ns139734%_ (##values-ref _g141211_ 1))
                              (_%pkg139735%_ (##values-ref _g141211_ 2)))
                          (let* ((_%prelude139737%_
                                  (gx#import-module__0 _%pre139733%_))
                                 (_%read-module-body139792%_
                                  (let ((_%$e139783%_
                                         (__find (lambda (_%e139738139740%_)
                                                   (let* ((_%e139738139742139752%_
                                                           _%e139738139740%_)
                                                          (_%else139744139760%_
                                                           (lambda () '#f))
                                                          (_%K139746139764%_
                                                           (lambda () '#t)))
                                                     (if (##structure-direct-instance-of?
                                                          _%e139738139742139752%_
                                                          'gx#module-export::t)
                                                         (let* ((_%e139747139767%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##unchecked-structure-ref
                          _%e139738139742139752%_
                          '1
                          '#f
                          '#f))
                        (_%e139748139770%_
                         (##unchecked-structure-ref
                          _%e139738139742139752%_
                          '2
                          '#f
                          '#f))
                        (_%e139749139773%_
                         (##unchecked-structure-ref
                          _%e139738139742139752%_
                          '3
                          '#f
                          '#f)))
                   (if (##eq? _%e139749139773%_ '1)
                       (let ((_%e139750139776%_
                              (##unchecked-structure-ref
                               _%e139738139742139752%_
                               '4
                               '#f
                               '#f)))
                         (if ((lambda (_%g139778139780%_)
                                (eq? _%g139778139780%_ 'read-module-body))
                              _%e139750139776%_)
                             (_%K139746139764%_)
                             (_%else139744139760%_)))
                       (_%else139744139760%_)))
                 (_%else139744139760%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (##unchecked-structure-ref
                                                  _%prelude139737%_
                                                  '9
                                                  '#f
                                                  '#f))))
                                    (if _%$e139783%_
                                        ((lambda (_%xport139786%_)
                                           (let ((_%proc139789%_
                                                  (__with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _%xport139786%_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _%proc139789%_)
                                                 _%proc139789%_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _%path139639%_
                                                  _%pre139733%_
                                                  _%proc139789%_))))
                                         _%$e139783%_)
                                        _%default-read-module-body139641%_)))
                                 (_%path-id139794%_
                                  (gx#core-module-path->namespace
                                   _%path139639%_))
                                 (_%pkg-id139796%_
                                  (if _%pkg139735%_
                                      (##string-append
                                       _%pkg139735%_
                                       '"/"
                                       _%path-id139794%_)
                                      _%path-id139794%_))
                                 (_%module-id139798%_
                                  (##string->symbol _%pkg-id139796%_))
                                 (_%module-ns139803%_
                                  (let ((_%$e139800%_ _%ns139734%_))
                                    (if _%$e139800%_
                                        _%$e139800%_
                                        _%pkg-id139796%_)))
                                 (_%body139807%_
                                  (call-with-parameters__1
                                   (lambda ()
                                     (call-with-parameters__1
                                      (lambda ()
                                        (_%read-module-body139792%_
                                         _%inp139727%_))
                                      gx#current-module-reader-args
                                      _%args139731%_))
                                   gx#current-module-reader-path
                                   _%path139639%_)))
                            (values _%prelude139737%_
                                    _%module-id139798%_
                                    _%module-ns139803%_
                                    _%body139807%_)))))))
                 (_%string-e139643%_
                  (lambda (_%obj139721%_ _%what139722%_)
                    (if (string? _%obj139721%_)
                        _%obj139721%_
                        (if (symbol? _%obj139721%_)
                            (##symbol->string _%obj139721%_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _%what139722%_)
                             _%path139639%_
                             _%obj139721%_)))))
                 (_%read-lang-args139644%_
                  (lambda (_%inp139676%_ _%args139677%_)
                    (let* ((_%args139678139686%_ _%args139677%_)
                           (_%else139680139694%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _%path139639%_)))
                           (_%K139682139709%_
                            (lambda (_%args139697%_ _%prelude139698%_)
                              (let* ((_%pkg139700%_
                                      (pgetq__0 'package: _%args139697%_))
                                     (_%pkg139702%_
                                      (if _%pkg139700%_
                                          (_%string-e139643%_
                                           _%pkg139700%_
                                           '"package")
                                          '#f))
                                     (_%ns139704%_
                                      (pgetq__0 'namespace: _%args139697%_))
                                     (_%ns139706%_
                                      (if _%ns139704%_
                                          (_%string-e139643%_
                                           _%ns139704%_
                                           '"namespace")
                                          '#f)))
                                (_%read-body139642%_
                                 _%inp139676%_
                                 _%prelude139698%_
                                 _%ns139706%_
                                 _%pkg139702%_
                                 _%args139697%_)))))
                      (if (pair? _%args139678139686%_)
                          (let ((_%hd139683139712%_
                                 (##car _%args139678139686%_))
                                (_%tl139684139714%_
                                 (##cdr _%args139678139686%_)))
                            (let* ((_%prelude139717%_ _%hd139683139712%_)
                                   (_%args139719%_ _%tl139684139714%_))
                              (_%K139682139709%_
                               _%args139719%_
                               _%prelude139717%_)))
                          (_%else139680139694%_)))))
                 (_%read-lang139645%_
                  (lambda (_%inp139650%_)
                    (let* ((_%head139652%_ (read-line _%inp139650%_))
                           (_%$e139654%_
                            (string-index__0 _%head139652%_ '#\space)))
                      (if _%$e139654%_
                          ((lambda (_%ix139657%_)
                             (let ((_%lang139659%_
                                    (substring
                                     _%head139652%_
                                     '0
                                     _%ix139657%_)))
                               (if (equal? _%lang139659%_ '"#lang")
                                   (let* ((_%rest139661%_
                                           (substring
                                            _%head139652%_
                                            (##fx+ _%ix139657%_ '1)
                                            (string-length _%head139652%_)))
                                          (_%args139672%_
                                           (__with-catch
                                            (lambda (_%g139662139664%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _%path139639%_
                                               _%g139662139664%_))
                                            (lambda ()
                                              (call-with-input-string
                                               _%rest139661%_
                                               (lambda (_%g139667139669%_)
                                                 (read-all
                                                  _%g139667139669%_
                                                  read)))))))
                                     (_%read-lang-args139644%_
                                      _%inp139650%_
                                      _%args139672%_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _%path139639%_))))
                           _%$e139654%_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _%path139639%_)))))
                 (_%read-e139646%_
                  (lambda (_%inp139648%_)
                    (if (eq? (peek-char _%inp139648%_) '#\#)
                        (_%read-lang139645%_ _%inp139648%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _%path139639%_)))))
          (gx#call-with-input-source-file _%path139639%_ _%read-e139646%_))))
    (define gx#core-read-module-package
      (lambda (_%path139587%_ _%pre139588%_ _%ns139589%_)
        (letrec ((_%string-e139591%_
                  (lambda (_%e139634%_)
                    (if (symbol? _%e139634%_)
                        (##symbol->string _%e139634%_)
                        (if (string? _%e139634%_)
                            _%e139634%_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%e139634%_))))))
          (let _%lp139593%_ ((_%dir139595%_ (path-directory _%path139587%_))
                             (_%pkg-path139596%_ '()))
            (let ((_%gerbil.pkg139598%_
                   (path-expand '"gerbil.pkg" _%dir139595%_)))
              (if (##file-exists? _%gerbil.pkg139598%_)
                  (let ((_%plist139600%_
                         (gx#core-library-package-plist__% _%dir139595%_ '#t)))
                    (if (null? _%plist139600%_)
                        (let ((_%pkg139603%_
                               (if (null? _%pkg-path139596%_)
                                   '#f
                                   (string-join _%pkg-path139596%_ '"/"))))
                          (values _%pre139588%_ _%ns139589%_ _%pkg139603%_))
                        (if (list? _%plist139600%_)
                            (let* ((_%root139606%_
                                    (pgetq__0 'package: _%plist139600%_))
                                   (_%pkg139610%_
                                    (let ((_%pkg-path139608%_
                                           (if _%root139606%_
                                               (cons (_%string-e139591%_
                                                      _%root139606%_)
                                                     _%pkg-path139596%_)
                                               _%pkg-path139596%_)))
                                      (if (null? _%pkg-path139608%_)
                                          '#f
                                          (string-join
                                           _%pkg-path139608%_
                                           '"/"))))
                                   (_%ns139617%_
                                    (let ((_%ns139615%_
                                           (let ((_%$e139612%_ _%ns139589%_))
                                             (if _%$e139612%_
                                                 _%$e139612%_
                                                 (pgetq__0
                                                  'namespace:
                                                  _%plist139600%_)))))
                                      (if _%ns139615%_
                                          (_%string-e139591%_ _%ns139615%_)
                                          '#f)))
                                   (_%pre139622%_
                                    (let ((_%$e139619%_ _%pre139588%_))
                                      (if _%$e139619%_
                                          _%$e139619%_
                                          (pgetq__0
                                           'prelude:
                                           _%plist139600%_)))))
                              (values _%pre139622%_
                                      _%ns139617%_
                                      _%pkg139610%_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%plist139600%_))))
                  (let ((_%dir*139626%_
                         (path-strip-trailing-directory-separator
                          _%dir139595%_)))
                    (if (or (__string-empty? _%dir*139626%_)
                            (equal? _%dir139595%_ _%dir*139626%_))
                        (values _%pre139588%_ _%ns139589%_ '#f)
                        (let ((_%xpath139631%_
                               (path-strip-directory _%dir*139626%_))
                              (_%xdir139632%_ (path-directory _%dir*139626%_)))
                          (_%lp139593%_
                           _%xdir139632%_
                           (cons _%xpath139631%_ _%pkg-path139596%_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_%path139585%_)
        (path-strip-extension (path-strip-directory _%path139585%_))))
    (define gx#core-module-path->id
      (lambda (_%path139583%_)
        (##string->symbol (gx#core-module-path->namespace _%path139583%_))))
    (define gx#core-resolve-module-path__%
      (lambda (_%stx-path139562%_ _%rel139563%_)
        (let* ((_%path139565%_ (gx#stx-e _%stx-path139562%_))
               (_%path139567%_
                (if (__string-empty? (path-extension _%path139565%_))
                    (##string-append _%path139565%_ '".ss")
                    _%path139565%_)))
          (gx#core-resolve-path__%
           _%path139567%_
           (let ((_%$e139570%_ (gx#stx-source _%stx-path139562%_)))
             (if _%$e139570%_ _%$e139570%_ _%rel139563%_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_%stx-path139576%_)
        (let ((_%rel139578%_ '#f))
          (gx#core-resolve-module-path__% _%stx-path139576%_ _%rel139578%_))))
    (define gx#core-resolve-module-path
      (lambda _g141213_
        (let ((_g141214_ (##length _g141213_)))
          (cond ((##fx= _g141214_ 1)
                 (apply gx#core-resolve-module-path__0 _g141213_))
                ((##fx= _g141214_ 2)
                 (apply gx#core-resolve-module-path__% _g141213_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g141213_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_%libpath139447%_)
        (let* ((_%spath139449%_ (symbol->string (gx#stx-e _%libpath139447%_)))
               (_%spath139451%_
                (substring
                 _%spath139449%_
                 '1
                 (##string-length _%spath139449%_)))
               (_%ext139453%_ (path-extension _%spath139451%_))
               (_%ssi139455%_
                (if (__string-empty? _%ext139453%_)
                    (##string-append _%spath139451%_ '".ssi")
                    (##string-append
                     (path-strip-extension _%spath139451%_)
                     '".ssi")))
               (_%srcs139459%_
                (if (__string-empty? _%ext139453%_)
                    (##map (lambda (_%ext139457%_)
                             (string-append _%spath139451%_ _%ext139457%_))
                           '(".ss" ".sld" ".scm"))
                    (cons _%spath139451%_ '()))))
          (let _%lp139462%_ ((_%rest139464%_ (load-path)))
            (let* ((_%rest139465139474%_ _%rest139464%_)
                   (_%E139468139478%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rest139465139474%_
                             '([dir . rest])
                             '([]))
                      '#!void)))
              (let ((_%K139470139549%_
                     (lambda (_%rest139489%_ _%dir139490%_)
                       (letrec ((_%resolve139492%_
                                 (lambda (_%ssi139505%_ _%srcs139506%_)
                                   (let ((_%compiled-path139508%_
                                          (path-expand
                                           _%ssi139505%_
                                           _%dir139490%_)))
                                     (if (##file-exists?
                                          _%compiled-path139508%_)
                                         (path-normalize
                                          _%compiled-path139508%_)
                                         (let _%lpr139510%_ ((_%rest-src139512%_
                                                              _%srcs139506%_))
                                           (let* ((_%rest-src139513139521%_
                                                   _%rest-src139512%_)
                                                  (_%else139515139529%_
                                                   (lambda ()
                                                     (_%lp139462%_
                                                      _%rest139489%_)))
                                                  (_%K139517139537%_
                                                   (lambda (_%rest-src139532%_
                                                            _%src139533%_)
                                                     (let ((_%src-path139535%_
                                                            (path-expand
                                                             _%src139533%_
                                                             _%dir139490%_)))
                                                       (if (##file-exists?
                                                            _%src-path139535%_)
                                                           (path-normalize
                                                            _%src-path139535%_)
                                                           (_%lpr139510%_
                                                            _%rest-src139532%_))))))
                                             (if (pair? _%rest-src139513139521%_)
                                                 (let ((_%hd139518139540%_
                                                        (##car _%rest-src139513139521%_))
                                                       (_%tl139519139542%_
                                                        (##cdr _%rest-src139513139521%_)))
                                                   (let* ((_%src139545%_
                                                           _%hd139518139540%_)
                                                          (_%rest-src139547%_
                                                           _%tl139519139542%_))
                                                     (_%K139517139537%_
                                                      _%rest-src139547%_
                                                      _%src139545%_)))
                                                 (_%else139515139529%_)))))))))
                         (let ((_%$e139494%_
                                (gx#core-library-package-path-prefix
                                 _%dir139490%_)))
                           (if _%$e139494%_
                               ((lambda (_%prefix139497%_)
                                  (if (string-prefix?
                                       _%prefix139497%_
                                       _%spath139451%_)
                                      (let ((_%ssi139501%_
                                             (substring
                                              _%ssi139455%_
                                              (string-length _%prefix139497%_)
                                              (##string-length _%ssi139455%_)))
                                            (_%srcs139502%_
                                             (##map (lambda (_%src139499%_)
                                                      (substring
                                                       _%src139499%_
                                                       (string-length
                                                        _%prefix139497%_)
                                                       (string-length
                                                        _%src139499%_)))
                                                    _%srcs139459%_)))
                                        (_%resolve139492%_
                                         _%ssi139501%_
                                         _%srcs139502%_))
                                      (_%lp139462%_ _%rest139489%_)))
                                _%$e139494%_)
                               (_%resolve139492%_
                                _%ssi139455%_
                                _%srcs139459%_))))))
                    (_%K139469139483%_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"cannot find library module"
                        _%libpath139447%_))))
                (let ((_%try-match139467139486%_
                       (lambda ()
                         (if (null? _%rest139465139474%_)
                             (_%K139469139483%_)
                             (_%E139468139478%_)))))
                  (if (pair? _%rest139465139474%_)
                      (let ((_%tl139472139554%_ (##cdr _%rest139465139474%_))
                            (_%hd139471139552%_ (##car _%rest139465139474%_)))
                        (let ((_%dir139557%_ _%hd139471139552%_)
                              (_%rest139559%_ _%tl139472139554%_))
                          (_%K139470139549%_ _%rest139559%_ _%dir139557%_)))
                      (_%try-match139467139486%_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_%modpath139415%_)
        (letrec ((_%resolve139417%_
                  (lambda (_%path139438%_ _%base139439%_)
                    (let ((_%$e139441%_
                           (string-rindex__0 _%base139439%_ '#\/)))
                      (if _%$e139441%_
                          ((lambda (_%idx139444%_)
                             (gx#core-resolve-library-module-path
                              (##string->symbol
                               (string-append
                                '":"
                                (substring _%base139439%_ '0 _%idx139444%_)
                                '"/"
                                _%path139438%_))))
                           _%$e139441%_)
                          (gx#core-resolve-library-module-path
                           (##string->symbol
                            (string-append '":" _%path139438%_))))))))
          (let ((_%spath139419%_ (symbol->string (gx#stx-e _%modpath139415%_)))
                (_%mod139420%_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _%mod139420%_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"cannot resolve relative module path; not in module context"
                 _%modpath139415%_))
            (let ((_%mpath139422%_
                   (symbol->string
                    (##structure-ref
                     _%mod139420%_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _%lp139424%_ ((_%spath139426%_ _%spath139419%_)
                                 (_%mpath139427%_ _%mpath139422%_))
                (if (string-prefix? '"../" _%spath139426%_)
                    (let ((_%$e139430%_
                           (string-rindex__0 _%mpath139427%_ '#\/)))
                      (if _%$e139430%_
                          ((lambda (_%idx139433%_)
                             (_%lp139424%_
                              (substring
                               _%spath139426%_
                               '3
                               (string-length _%spath139426%_))
                              (substring _%mpath139427%_ '0 _%idx139433%_)))
                           _%$e139430%_)
                          (gx#raise-syntax-error
                           '#f
                           '"cannot resolve relative module path; illegal traversal"
                           _%modpath139415%_)))
                    (if (string-prefix? '"./" _%spath139426%_)
                        (_%lp139424%_
                         (substring
                          _%spath139426%_
                          '2
                          (string-length _%spath139426%_))
                         _%mpath139427%_)
                        (_%resolve139417%_
                         _%spath139426%_
                         _%mpath139427%_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_%dir139407%_)
        (let ((_%$e139409%_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _%dir139407%_))))
          (if _%$e139409%_
              ((lambda (_%pkg139412%_)
                 (##string-append (symbol->string _%pkg139412%_) '"/"))
               _%$e139409%_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_%dir139377%_ _%exists?139378%_)
        (let ((_%$e139380%_ (__hash-get gx#__module-pkg-cache _%dir139377%_)))
          (if _%$e139380%_
              _%$e139380%_
              (let* ((_%gerbil.pkg139384%_
                      (path-expand '"gerbil.pkg" _%dir139377%_))
                     (_%plist139394%_
                      (if (or _%exists?139378%_
                              (##file-exists? _%gerbil.pkg139384%_))
                          (let ((_%e139389%_
                                 (gx#call-with-input-source-file
                                  _%gerbil.pkg139384%_
                                  read)))
                            (if (eof-object? _%e139389%_)
                                '()
                                (if (list? _%e139389%_)
                                    _%e139389%_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _%gerbil.pkg139384%_
                                     _%e139389%_))))
                          '())))
                (__hash-put!
                 gx#__module-pkg-cache
                 _%dir139377%_
                 _%plist139394%_)
                _%plist139394%_)))))
    (define gx#core-library-package-plist__0
      (lambda (_%dir139400%_)
        (let ((_%exists?139402%_ '#f))
          (gx#core-library-package-plist__% _%dir139400%_ _%exists?139402%_))))
    (define gx#core-library-package-plist
      (lambda _g141215_
        (let ((_g141216_ (##length _g141215_)))
          (cond ((##fx= _g141216_ 1)
                 (apply gx#core-library-package-plist__0 _g141215_))
                ((##fx= _g141216_ 2)
                 (apply gx#core-library-package-plist__% _g141215_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g141215_))))))
    (define gx#core-library-module-path?
      (lambda (_%stx139374%_)
        (gx#core-special-module-path? _%stx139374%_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_%stx139372%_)
        (gx#core-special-module-path? _%stx139372%_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_%stx139367%_ _%char139368%_)
        (if (gx#identifier? _%stx139367%_)
            (if (interned-symbol? (gx#stx-e _%stx139367%_))
                (let ((_%str139370%_
                       (symbol->string (gx#stx-e _%stx139367%_))))
                  (if (##fx> (##string-length _%str139370%_) '1)
                      (eq? (string-ref _%str139370%_ '0) _%char139368%_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_%stx139361%_)
        (gx#core-bound-identifier?__%
         _%stx139361%_
         (lambda (_%g139362139364%_)
           (gx#expander-binding?__% _%g139362139364%_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_%stx139355%_)
        (gx#core-bound-identifier?__%
         _%stx139355%_
         (lambda (_%g139356139358%_)
           (gx#expander-binding?__% _%g139356139358%_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_%stx139342%_)
        (letrec ((_%module-prelude?139344%_
                  (lambda (_%e139350%_)
                    (let ((_%$e139352%_
                           (##structure-instance-of?
                            _%e139350%_
                            'gx#module-context::t)))
                      (if _%$e139352%_
                          _%$e139352%_
                          (##structure-instance-of?
                           _%e139350%_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _%stx139342%_
           (lambda (_%g139345139347%_)
             (gx#expander-binding?__%
              _%g139345139347%_
              _%module-prelude?139344%_))))))
    (define gx#core-bind-import!__%
      (lambda (_%in139273%_ _%ctx139274%_ _%force-weak?139275%_)
        (let* ((_%in139276139285%_ _%in139273%_)
               (_%E139278139288%_
                (lambda ()
                  (error '"No clause matching"
                         _%in139276139285%_
                         '((module-import source key phi weak?)))
                  '#!void))
               (_%K139279139301%_
                (lambda (_%weak?139291%_
                         _%phi139292%_
                         _%key139293%_
                         _%source139294%_)
                  (gx#core-bind!__%
                   _%key139293%_
                   (let ((_%e139296%_
                          (gx#core-resolve-module-export _%source139294%_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref _%e139296%_ '1 '#f '#f)
                      _%key139293%_
                      _%phi139292%_
                      _%e139296%_
                      (##unchecked-structure-ref _%source139294%_ '1 '#f '#f)
                      (let ((_%$e139298%_ _%force-weak?139275%_))
                        (if _%$e139298%_ _%$e139298%_ _%weak?139291%_))))
                   gx#core-context-rebind?
                   _%phi139292%_
                   _%ctx139274%_))))
          (if (##structure-direct-instance-of?
               _%in139276139285%_
               'gx#module-import::t)
              (let* ((_%e139280139304%_
                      (##unchecked-structure-ref
                       _%in139276139285%_
                       '1
                       '#f
                       '#f))
                     (_%source139307%_ _%e139280139304%_)
                     (_%e139281139309%_
                      (##unchecked-structure-ref
                       _%in139276139285%_
                       '2
                       '#f
                       '#f))
                     (_%key139312%_ _%e139281139309%_)
                     (_%e139282139314%_
                      (##unchecked-structure-ref
                       _%in139276139285%_
                       '3
                       '#f
                       '#f))
                     (_%phi139317%_ _%e139282139314%_)
                     (_%e139283139319%_
                      (##unchecked-structure-ref
                       _%in139276139285%_
                       '4
                       '#f
                       '#f))
                     (_%weak?139322%_ _%e139283139319%_))
                (_%K139279139301%_
                 _%weak?139322%_
                 _%phi139317%_
                 _%key139312%_
                 _%source139307%_))
              (_%E139278139288%_)))))
    (define gx#core-bind-import!__0
      (lambda (_%in139327%_)
        (let* ((_%ctx139329%_ (gx#current-expander-context))
               (_%force-weak?139331%_ '#f))
          (gx#core-bind-import!__%
           _%in139327%_
           _%ctx139329%_
           _%force-weak?139331%_))))
    (define gx#core-bind-import!__1
      (lambda (_%in139333%_ _%ctx139334%_)
        (let ((_%force-weak?139336%_ '#f))
          (gx#core-bind-import!__%
           _%in139333%_
           _%ctx139334%_
           _%force-weak?139336%_))))
    (define gx#core-bind-import!
      (lambda _g141217_
        (let ((_g141218_ (##length _g141217_)))
          (cond ((##fx= _g141218_ 1) (apply gx#core-bind-import!__0 _g141217_))
                ((##fx= _g141218_ 2) (apply gx#core-bind-import!__1 _g141217_))
                ((##fx= _g141218_ 3) (apply gx#core-bind-import!__% _g141217_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g141217_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_%in139259%_ _%ctx139260%_)
        (gx#core-bind-import!__% _%in139259%_ _%ctx139260%_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_%in139265%_)
        (let ((_%ctx139267%_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _%in139265%_ _%ctx139267%_))))
    (define gx#core-bind-weak-import!
      (lambda _g141219_
        (let ((_g141220_ (##length _g141219_)))
          (cond ((##fx= _g141220_ 1)
                 (apply gx#core-bind-weak-import!__0 _g141219_))
                ((##fx= _g141220_ 2)
                 (apply gx#core-bind-weak-import!__% _g141219_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g141219_))))))
    (define gx#core-resolve-module-export
      (lambda (_%out139152%_)
        (letrec ((_%subst139154%_
                  (lambda (_%key139199%_)
                    (let* ((_%key139200139208%_ _%key139199%_)
                           (_%else139202139216%_ (lambda () _%key139199%_))
                           (_%K139204139246%_
                            (lambda (_%mark139219%_ _%id139220%_)
                              (let* ((_%mark139221139227%_ _%mark139219%_)
                                     (_%E139223139230%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark139221139227%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K139224139238%_
                                      (lambda (_%subst139233%_)
                                        (let ((_%$e139235%_
                                               (if _%subst139233%_
                                                   (hash-get
                                                    _%subst139233%_
                                                    _%id139220%_)
                                                   '#f)))
                                          (if _%$e139235%_
                                              _%$e139235%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _%key139199%_))))))
                                (if (##structure-instance-of?
                                     _%mark139221139227%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e139225139241%_
                                            (##unchecked-structure-ref
                                             _%mark139221139227%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst139244%_ _%e139225139241%_))
                                      (_%K139224139238%_ _%subst139244%_))
                                    (_%E139223139230%_))))))
                      (if (pair? _%key139200139208%_)
                          (let ((_%hd139205139249%_
                                 (##car _%key139200139208%_))
                                (_%tl139206139251%_
                                 (##cdr _%key139200139208%_)))
                            (let* ((_%id139254%_ _%hd139205139249%_)
                                   (_%mark139256%_ _%tl139206139251%_))
                              (_%K139204139246%_ _%mark139256%_ _%id139254%_)))
                          (_%else139202139216%_))))))
          (let* ((_%out139155139165%_ _%out139152%_)
                 (_%E139157139168%_
                  (lambda ()
                    (error '"No clause matching"
                           _%out139155139165%_
                           '((module-export ctx key phi _ _)))
                    '#!void))
                 (_%K139158139175%_
                  (lambda (_%phi139171%_ _%key139172%_ _%ctx139173%_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _%ctx139173%_ _%phi139171%_)
                     (_%subst139154%_ _%key139172%_)))))
            (if (##structure-direct-instance-of?
                 _%out139155139165%_
                 'gx#module-export::t)
                (let* ((_%e139159139178%_
                        (##unchecked-structure-ref
                         _%out139155139165%_
                         '1
                         '#f
                         '#f))
                       (_%ctx139181%_ _%e139159139178%_)
                       (_%e139160139183%_
                        (##unchecked-structure-ref
                         _%out139155139165%_
                         '2
                         '#f
                         '#f))
                       (_%key139186%_ _%e139160139183%_)
                       (_%e139161139188%_
                        (##unchecked-structure-ref
                         _%out139155139165%_
                         '3
                         '#f
                         '#f))
                       (_%phi139191%_ _%e139161139188%_)
                       (_%e139162139193%_
                        (##unchecked-structure-ref
                         _%out139155139165%_
                         '4
                         '#f
                         '#f))
                       (_%e139163139196%_
                        (##unchecked-structure-ref
                         _%out139155139165%_
                         '5
                         '#f
                         '#f)))
                  (_%K139158139175%_
                   _%phi139191%_
                   _%key139186%_
                   _%ctx139181%_))
                (_%E139157139168%_))))))
    (define gx#core-module-export->import__%
      (lambda (_%out139078%_ _%rename139079%_ _%dphi139080%_)
        (let* ((_%out139081139091%_ _%out139078%_)
               (_%E139083139094%_
                (lambda ()
                  (error '"No clause matching"
                         _%out139081139091%_
                         '((module-export ctx key phi name weak?)))
                  '#!void))
               (_%K139084139106%_
                (lambda (_%weak?139097%_
                         _%name139098%_
                         _%phi139099%_
                         _%key139100%_
                         _%ctx139101%_)
                  (##structure
                   gx#module-import::t
                   _%out139078%_
                   (let ((_%$e139103%_ _%rename139079%_))
                     (if _%$e139103%_ _%$e139103%_ _%name139098%_))
                   (fx+ _%phi139099%_ _%dphi139080%_)
                   _%weak?139097%_))))
          (if (##structure-direct-instance-of?
               _%out139081139091%_
               'gx#module-export::t)
              (let* ((_%e139085139109%_
                      (##unchecked-structure-ref
                       _%out139081139091%_
                       '1
                       '#f
                       '#f))
                     (_%ctx139112%_ _%e139085139109%_)
                     (_%e139086139114%_
                      (##unchecked-structure-ref
                       _%out139081139091%_
                       '2
                       '#f
                       '#f))
                     (_%key139117%_ _%e139086139114%_)
                     (_%e139087139119%_
                      (##unchecked-structure-ref
                       _%out139081139091%_
                       '3
                       '#f
                       '#f))
                     (_%phi139122%_ _%e139087139119%_)
                     (_%e139088139124%_
                      (##unchecked-structure-ref
                       _%out139081139091%_
                       '4
                       '#f
                       '#f))
                     (_%name139127%_ _%e139088139124%_)
                     (_%e139089139129%_
                      (##unchecked-structure-ref
                       _%out139081139091%_
                       '5
                       '#f
                       '#f))
                     (_%weak?139132%_ _%e139089139129%_))
                (_%K139084139106%_
                 _%weak?139132%_
                 _%name139127%_
                 _%phi139122%_
                 _%key139117%_
                 _%ctx139112%_))
              (_%E139083139094%_)))))
    (define gx#core-module-export->import__0
      (lambda (_%out139137%_)
        (let* ((_%rename139139%_ '#f) (_%dphi139141%_ '0))
          (gx#core-module-export->import__%
           _%out139137%_
           _%rename139139%_
           _%dphi139141%_))))
    (define gx#core-module-export->import__1
      (lambda (_%out139143%_ _%rename139144%_)
        (let ((_%dphi139146%_ '0))
          (gx#core-module-export->import__%
           _%out139143%_
           _%rename139144%_
           _%dphi139146%_))))
    (define gx#core-module-export->import
      (lambda _g141221_
        (let ((_g141222_ (##length _g141221_)))
          (cond ((##fx= _g141222_ 1)
                 (apply gx#core-module-export->import__0 _g141221_))
                ((##fx= _g141222_ 2)
                 (apply gx#core-module-export->import__1 _g141221_))
                ((##fx= _g141222_ 3)
                 (apply gx#core-module-export->import__% _g141221_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g141221_))))))
    (define gx#core-expand-module%
      (lambda (_%stx138977%_)
        (letrec ((_%make-context138979%_
                  (lambda (_%id139056%_)
                    (let* ((_%super139058%_ (gx#current-expander-context))
                           (_%bind-id139060%_ (gx#stx-e _%id139056%_))
                           (_%mod-id139062%_
                            (if (##structure-instance-of?
                                 _%super139058%_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##unchecked-structure-ref
                                  _%super139058%_
                                  '1
                                  '#f
                                  '#f)
                                 '"~"
                                 _%bind-id139060%_)
                                _%bind-id139060%_))
                           (_%ns139064%_ (symbol->string _%mod-id139062%_))
                           (_%path139074%_
                            (if (##structure-instance-of?
                                 _%super139058%_
                                 'gx#module-context::t)
                                (let ((_%path139066%_
                                       (##unchecked-structure-ref
                                        _%super139058%_
                                        '7
                                        '#f
                                        '#f)))
                                  (if (or (pair? _%path139066%_)
                                          (null? _%path139066%_))
                                      (cons _%bind-id139060%_ _%path139066%_)
                                      (if (not _%path139066%_)
                                          _%bind-id139060%_
                                          (cons _%bind-id139060%_
                                                (cons _%path139066%_ '())))))
                                _%bind-id139060%_))
                           (__obj141198
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
                       __obj141198
                       _%mod-id139062%_
                       _%super139058%_
                       _%ns139064%_
                       _%path139074%_)
                      __obj141198)))
                 (_%valid-module-id?138980%_
                  (lambda (_%id139031%_)
                    (let* ((_%str139033%_ (symbol->string _%id139031%_))
                           (_%len139035%_ (##string-length _%str139033%_)))
                      (if (##fx>= _%len139035%_ '1)
                          (let _%loop139038%_ ((_%index139040%_
                                                (##fx- (##string-length
                                                        _%str139033%_)
                                                       '1)))
                            (if (##fx>= _%index139040%_ '0)
                                (let ((_%c139042%_
                                       (string-ref
                                        _%str139033%_
                                        _%index139040%_)))
                                  (if (or (and (##char>=? _%c139042%_ '#\a)
                                               (##char<=? _%c139042%_ '#\z))
                                          (and (##char>=? _%c139042%_ '#\A)
                                               (##char<=? _%c139042%_ '#\Z))
                                          (and (##char>=? _%c139042%_ '#\0)
                                               (##char<=? _%c139042%_ '#\9))
                                          (##char=? _%c139042%_ '#\_)
                                          (##char=? _%c139042%_ '#\-))
                                      (_%loop139038%_
                                       (##fx- _%index139040%_ '1))
                                      '#f))
                                '#t))
                          '#f)))))
          (let* ((_%e138981138991%_ _%stx138977%_)
                 (_%E138983138995%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e138981138991%_)))
                 (_%E138982139027%_
                  (lambda ()
                    (if (gx#stx-pair? _%e138981138991%_)
                        (let ((_%e138984138999%_
                               (gx#syntax-e _%e138981138991%_)))
                          (let ((_%hd138985139002%_ (##car _%e138984138999%_))
                                (_%tl138986139004%_ (##cdr _%e138984138999%_)))
                            (if (gx#stx-pair? _%tl138986139004%_)
                                (let ((_%e138987139007%_
                                       (gx#syntax-e _%tl138986139004%_)))
                                  (let ((_%hd138988139010%_
                                         (##car _%e138987139007%_))
                                        (_%tl138989139012%_
                                         (##cdr _%e138987139007%_)))
                                    (let* ((_%id139015%_ _%hd138988139010%_)
                                           (_%body139017%_ _%tl138989139012%_))
                                      (if (and (gx#identifier? _%id139015%_)
                                               (gx#stx-list? _%body139017%_))
                                          (if (_%valid-module-id?138980%_
                                               (gx#stx-e
                                                (gx#datum->syntax__0 '#f 'id)))
                                              (let* ((_%ctx139019%_
                                                      (_%make-context138979%_
                                                       _%id139015%_))
                                                     (_%body139021%_
                                                      (gx#core-expand-module-begin
                                                       _%body139017%_
                                                       _%ctx139019%_))
                                                     (_%body139023%_
                                                      (gx#core-quote-syntax__1
                                                       (gx#core-cons
                                                        '%#begin
                                                        _%body139021%_)
                                                       (gx#stx-source
                                                        _%stx138977%_))))
                                                (##unchecked-structure-set!
                                                 _%ctx139019%_
                                                 (__make-atomic-promise
                                                  (lambda ()
                                                    (gx#eval-syntax*
                                                     _%body139023%_)))
                                                 '10
                                                 '#f
                                                 '#f)
                                                (##unchecked-structure-set!
                                                 _%ctx139019%_
                                                 _%body139023%_
                                                 '11
                                                 '#f
                                                 '#f)
                                                (gx#core-bind-syntax!__0
                                                 _%id139015%_
                                                 _%ctx139019%_)
                                                (gx#core-quote-syntax__1
                                                 (gx#core-list
                                                  '%#module
                                                  (gx#core-quote-syntax__0
                                                   _%id139015%_)
                                                  _%body139023%_)
                                                 (gx#stx-source
                                                  _%stx138977%_)))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"invalid module id; allowed characters are A-Z,a-z,0-9,_,-"
                                               _%stx138977%_
                                               (gx#datum->syntax__0 '#f 'id)))
                                          (_%E138983138995%_)))))
                                (_%E138983138995%_))))
                        (_%E138983138995%_)))))
            (_%E138982139027%_)))))
    (define gx#core-expand-module-begin
      (lambda (_%body138942%_ _%ctx138943%_)
        (call-with-parameters__1
         (lambda ()
           (call-with-parameters__1
            (lambda ()
              (gx#core-bind-feature!__1 'gerbil-module '#t)
              (let* ((_%stx138947%_
                      (gx#core-expand-head
                       (cons '%%begin-module _%body138942%_)))
                     (_%e138948138955%_ _%stx138947%_)
                     (_%E138950138959%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module body expansion"
                         _%stx138947%_)))
                     (_%E138949138973%_
                      (lambda ()
                        (if (gx#stx-pair? _%e138948138955%_)
                            (let ((_%e138951138963%_
                                   (gx#syntax-e _%e138948138955%_)))
                              (let ((_%hd138952138966%_
                                     (##car _%e138951138963%_))
                                    (_%tl138953138968%_
                                     (##cdr _%e138951138963%_)))
                                (if (and (gx#identifier? _%hd138952138966%_)
                                         (gx#core-identifier=?
                                          _%hd138952138966%_
                                          '%#begin-module))
                                    (let ((_%body138971%_ _%tl138953138968%_))
                                      (if (gx#sealed-syntax? _%stx138947%_)
                                          _%body138971%_
                                          (gx#core-expand-module-body
                                           _%body138971%_)))
                                    (_%E138950138959%_))))
                            (_%E138950138959%_)))))
                (_%E138949138973%_)))
            gx#current-expander-phi
            '0))
         gx#current-expander-context
         _%ctx138943%_)))
    (define gx#core-expand-module-body
      (lambda (_%body138738%_)
        (letrec ((_%expand-special138740%_
                  (lambda (_%hd138869%_ _%K138870%_ _%rest138871%_ _%r138872%_)
                    (let* ((_%e138873138890%_ _%hd138869%_)
                           (_%E138885138894%_
                            (lambda ()
                              (_%K138870%_
                               _%rest138871%_
                               (cons (gx#core-expand-top _%hd138869%_)
                                     _%r138872%_))))
                           (_%E138875138906%_
                            (lambda ()
                              (if (gx#stx-pair? _%e138873138890%_)
                                  (let ((_%e138886138898%_
                                         (gx#syntax-e _%e138873138890%_)))
                                    (let ((_%hd138887138901%_
                                           (##car _%e138886138898%_))
                                          (_%tl138888138903%_
                                           (##cdr _%e138886138898%_)))
                                      (if (and (gx#identifier?
                                                _%hd138887138901%_)
                                               (gx#core-identifier=?
                                                _%hd138887138901%_
                                                '%#export))
                                          (_%K138870%_
                                           _%rest138871%_
                                           (cons _%hd138869%_ _%r138872%_))
                                          (_%E138885138894%_))))
                                  (_%E138885138894%_))))
                           (_%E138874138938%_
                            (lambda ()
                              (if (gx#stx-pair? _%e138873138890%_)
                                  (let ((_%e138876138910%_
                                         (gx#syntax-e _%e138873138890%_)))
                                    (let ((_%hd138877138913%_
                                           (##car _%e138876138910%_))
                                          (_%tl138878138915%_
                                           (##cdr _%e138876138910%_)))
                                      (if (and (gx#identifier?
                                                _%hd138877138913%_)
                                               (gx#core-identifier=?
                                                _%hd138877138913%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl138878138915%_)
                                              (let ((_%e138879138918%_
                                                     (gx#syntax-e
                                                      _%tl138878138915%_)))
                                                (let ((_%hd138880138921%_
                                                       (##car _%e138879138918%_))
                                                      (_%tl138881138923%_
                                                       (##cdr _%e138879138918%_)))
                                                  (let ((_%hd-bind138926%_
                                                         _%hd138880138921%_))
                                                    (if (gx#stx-pair?
                                                         _%tl138881138923%_)
                                                        (let ((_%e138882138928%_
                                                               (gx#syntax-e
                                                                _%tl138881138923%_)))
                                                          (let ((_%hd138883138931%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e138882138928%_))
                        (_%tl138884138933%_ (##cdr _%e138882138928%_)))
                    (let ((_%expr138936%_ _%hd138883138931%_))
                      (if (gx#stx-null? _%tl138884138933%_)
                          (if (gx#core-bind-values? _%hd-bind138926%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind138926%_)
                                (_%K138870%_
                                 _%rest138871%_
                                 (cons _%hd138869%_ _%r138872%_)))
                              (_%E138875138906%_))
                          (_%E138875138906%_)))))
                (_%E138875138906%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E138875138906%_))
                                          (_%E138875138906%_))))
                                  (_%E138875138906%_)))))
                      (_%E138874138938%_))))
                 (_%expand-body138741%_
                  (lambda (_%rbody138743%_)
                    (let _%lp138745%_ ((_%rest138747%_ _%rbody138743%_)
                                       (_%body138748%_ '()))
                      (let* ((_%rest138749138757%_ _%rest138747%_)
                             (_%else138751138765%_ (lambda () _%body138748%_))
                             (_%K138753138857%_
                              (lambda (_%rest138768%_ _%hd138769%_)
                                (let* ((_%e138770138791%_ _%hd138769%_)
                                       (_%E138786138795%_
                                        (lambda ()
                                          (_%lp138745%_
                                           _%rest138768%_
                                           (cons (gx#core-expand-expression
                                                  _%hd138769%_)
                                                 _%body138748%_))))
                                       (_%E138782138809%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e138770138791%_)
                                              (let ((_%e138787138799%_
                                                     (gx#syntax-e
                                                      _%e138770138791%_)))
                                                (let ((_%hd138788138802%_
                                                       (##car _%e138787138799%_))
                                                      (_%tl138789138804%_
                                                       (##cdr _%e138787138799%_)))
                                                  (let ((_%form138807%_
                                                         _%hd138788138802%_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _%form138807%_
                                                         gx#special-form-binding?)
                                                        (_%lp138745%_
                                                         _%rest138768%_
                                                         (cons _%hd138769%_
                                                               _%body138748%_))
                                                        (_%E138786138795%_)))))
                                              (_%E138786138795%_))))
                                       (_%E138772138821%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e138770138791%_)
                                              (let ((_%e138783138813%_
                                                     (gx#syntax-e
                                                      _%e138770138791%_)))
                                                (let ((_%hd138784138816%_
                                                       (##car _%e138783138813%_))
                                                      (_%tl138785138818%_
                                                       (##cdr _%e138783138813%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd138784138816%_)
                                                           (gx#core-identifier=?
                                                            _%hd138784138816%_
                                                            '%#export))
                                                      (_%lp138745%_
                                                       _%rest138768%_
                                                       (cons (gx#core-expand-export%__0
                                                              _%hd138769%_)
                                                             _%body138748%_))
                                                      (_%E138782138809%_))))
                                              (_%E138782138809%_))))
                                       (_%E138771138853%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e138770138791%_)
                                              (let ((_%e138773138825%_
                                                     (gx#syntax-e
                                                      _%e138770138791%_)))
                                                (let ((_%hd138774138828%_
                                                       (##car _%e138773138825%_))
                                                      (_%tl138775138830%_
                                                       (##cdr _%e138773138825%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd138774138828%_)
                                                           (gx#core-identifier=?
                                                            _%hd138774138828%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl138775138830%_)
                                                          (let ((_%e138776138833%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl138775138830%_)))
                    (let ((_%hd138777138836%_ (##car _%e138776138833%_))
                          (_%tl138778138838%_ (##cdr _%e138776138833%_)))
                      (let ((_%hd-bind138841%_ _%hd138777138836%_))
                        (if (gx#stx-pair? _%tl138778138838%_)
                            (let ((_%e138779138843%_
                                   (gx#syntax-e _%tl138778138838%_)))
                              (let ((_%hd138780138846%_
                                     (##car _%e138779138843%_))
                                    (_%tl138781138848%_
                                     (##cdr _%e138779138843%_)))
                                (let ((_%expr138851%_ _%hd138780138846%_))
                                  (if (gx#stx-null? _%tl138781138848%_)
                                      (_%lp138745%_
                                       _%rest138768%_
                                       (cons (gx#core-quote-syntax__1
                                              (gx#core-list
                                               '%#define-values
                                               (gx#core-quote-bind-values
                                                _%hd-bind138841%_)
                                               (gx#core-expand-expression
                                                _%expr138851%_))
                                              (gx#stx-source _%hd138769%_))
                                             _%body138748%_))
                                      (_%E138772138821%_)))))
                            (_%E138772138821%_)))))
                  (_%E138772138821%_))
              (_%E138772138821%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E138772138821%_)))))
                                  (_%E138771138853%_)))))
                        (if (pair? _%rest138749138757%_)
                            (let ((_%hd138754138860%_
                                   (##car _%rest138749138757%_))
                                  (_%tl138755138862%_
                                   (##cdr _%rest138749138757%_)))
                              (let* ((_%hd138865%_ _%hd138754138860%_)
                                     (_%rest138867%_ _%tl138755138862%_))
                                (_%K138753138857%_
                                 _%rest138867%_
                                 _%hd138865%_)))
                            (_%else138751138765%_)))))))
          (_%expand-body138741%_
           (gx#core-expand-block__%
            (cons '%#begin-module _%body138738%_)
            _%expand-special138740%_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_%stx138579%_
               _%expanded?138580%_
               _%method138581%_
               _%current-phi138582%_
               _%expand1138583%_)
        (letrec ((_%K138585%_
                  (lambda (_%rest138705%_ _%r138706%_)
                    (let* ((_%e138707138714%_ _%rest138705%_)
                           (_%E138709138718%_ (lambda () _%r138706%_))
                           (_%E138708138734%_
                            (lambda ()
                              (if (gx#stx-pair? _%e138707138714%_)
                                  (let ((_%e138710138722%_
                                         (gx#syntax-e _%e138707138714%_)))
                                    (let ((_%hd138711138725%_
                                           (##car _%e138710138722%_))
                                          (_%tl138712138727%_
                                           (##cdr _%e138710138722%_)))
                                      (let* ((_%hd138730%_ _%hd138711138725%_)
                                             (_%rest138732%_
                                              _%tl138712138727%_))
                                        (_%step138586%_
                                         _%hd138730%_
                                         _%rest138732%_
                                         _%r138706%_))))
                                  (_%E138709138718%_)))))
                      (_%E138708138734%_))))
                 (_%step138586%_
                  (lambda (_%hd138619%_ _%rest138620%_ _%r138621%_)
                    (let* ((_%e138622138640%_ _%hd138619%_)
                           (_%E138635138644%_
                            (lambda ()
                              (if (_%expanded?138580%_ (gx#stx-e _%hd138619%_))
                                  (_%K138585%_
                                   _%rest138620%_
                                   (cons (gx#stx-e _%hd138619%_) _%r138621%_))
                                  (_%expand1138583%_
                                   _%hd138619%_
                                   _%K138585%_
                                   _%rest138620%_
                                   _%r138621%_))))
                           (_%E138631138660%_
                            (lambda ()
                              (if (gx#stx-pair? _%e138622138640%_)
                                  (let ((_%e138636138648%_
                                         (gx#syntax-e _%e138622138640%_)))
                                    (let ((_%hd138637138651%_
                                           (##car _%e138636138648%_))
                                          (_%tl138638138653%_
                                           (##cdr _%e138636138648%_)))
                                      (let* ((_%macro138656%_
                                              _%hd138637138651%_)
                                             (_%body138658%_
                                              _%tl138638138653%_))
                                        (if (gx#core-bound-identifier?__%
                                             _%macro138656%_
                                             gx#syntax-binding?)
                                            (_%K138585%_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _%macro138656%_)
                                                    _%hd138619%_
                                                    _%method138581%_)
                                                   _%rest138620%_)
                                             _%r138621%_)
                                            (_%E138635138644%_)))))
                                  (_%E138635138644%_))))
                           (_%E138624138674%_
                            (lambda ()
                              (if (gx#stx-pair? _%e138622138640%_)
                                  (let ((_%e138632138664%_
                                         (gx#syntax-e _%e138622138640%_)))
                                    (let ((_%hd138633138667%_
                                           (##car _%e138632138664%_))
                                          (_%tl138634138669%_
                                           (##cdr _%e138632138664%_)))
                                      (if (eq? (gx#stx-e _%hd138633138667%_)
                                               'begin:)
                                          (let ((_%body138672%_
                                                 _%tl138634138669%_))
                                            (_%K138585%_
                                             (gx#stx-foldr
                                              cons
                                              _%rest138620%_
                                              _%body138672%_)
                                             _%r138621%_))
                                          (_%E138631138660%_))))
                                  (_%E138631138660%_))))
                           (_%E138623138701%_
                            (lambda ()
                              (if (gx#stx-pair? _%e138622138640%_)
                                  (let ((_%e138625138678%_
                                         (gx#syntax-e _%e138622138640%_)))
                                    (let ((_%hd138626138681%_
                                           (##car _%e138625138678%_))
                                          (_%tl138627138683%_
                                           (##cdr _%e138625138678%_)))
                                      (if (eq? (gx#stx-e _%hd138626138681%_)
                                               'phi:)
                                          (if (gx#stx-pair? _%tl138627138683%_)
                                              (let ((_%e138628138686%_
                                                     (gx#syntax-e
                                                      _%tl138627138683%_)))
                                                (let ((_%hd138629138689%_
                                                       (##car _%e138628138686%_))
                                                      (_%tl138630138691%_
                                                       (##cdr _%e138628138686%_)))
                                                  (let* ((_%dphi138694%_
                                                          _%hd138629138689%_)
                                                         (_%body138696%_
                                                          _%tl138630138691%_))
                                                    (if (gx#stx-fixnum?
                                                         _%dphi138694%_)
                                                        (let ((_%rbody138699%_
                                                               (call-with-parameters__1
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%K138585%_ _%body138696%_ '()))
                        _%current-phi138582%_
                        (fx+ (gx#stx-e _%dphi138694%_)
                             (_%current-phi138582%_)))))
                  (_%K138585%_
                   _%rest138620%_
                   (__foldr1 cons _%r138621%_ _%rbody138699%_)))
                (_%E138624138674%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E138624138674%_))
                                          (_%E138624138674%_))))
                                  (_%E138624138674%_)))))
                      (_%E138623138701%_)))))
          (let* ((_%e138587138594%_ _%stx138579%_)
                 (_%E138589138598%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e138587138594%_)))
                 (_%E138588138615%_
                  (lambda ()
                    (if (gx#stx-pair? _%e138587138594%_)
                        (let ((_%e138590138602%_
                               (gx#syntax-e _%e138587138594%_)))
                          (let ((_%hd138591138605%_ (##car _%e138590138602%_))
                                (_%tl138592138607%_ (##cdr _%e138590138602%_)))
                            (let ((_%body138610%_ _%tl138592138607%_))
                              (if (_%current-phi138582%_)
                                  (_%K138585%_ _%body138610%_ '())
                                  (call-with-parameters__1
                                   (lambda () (_%K138585%_ _%body138610%_ '()))
                                   _%current-phi138582%_
                                   (gx#current-expander-phi))))))
                        (_%E138589138598%_)))))
            (_%E138588138615%_)))))
    (define gx#core-expand-import%__%
      (lambda (_%stx138233%_ _%internal-expand?138234%_)
        (letrec ((_%expand1138236%_
                  (lambda (_%hd138551%_ _%K138552%_ _%rest138553%_ _%r138554%_)
                    (if (gx#core-bound-module? _%hd138551%_)
                        (_%import1138237%_
                         (gx#syntax-local-e__0 _%hd138551%_)
                         _%K138552%_
                         _%rest138553%_
                         _%r138554%_)
                        (if (gx#core-library-module-path? _%hd138551%_)
                            (_%import1138237%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%hd138551%_))
                             _%K138552%_
                             _%rest138553%_
                             _%r138554%_)
                            (if (gx#core-library-relative-module-path?
                                 _%hd138551%_)
                                (_%import1138237%_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _%hd138551%_))
                                 _%K138552%_
                                 _%rest138553%_
                                 _%r138554%_)
                                (let ((_%e138560%_ (gx#stx-e _%hd138551%_)))
                                  (if (pair? _%e138560%_)
                                      (let ((_%$e138563%_
                                             (gx#stx-e (##car _%e138560%_))))
                                        (if (eq? 'spec: _%$e138563%_)
                                            (_%import-spec138240%_
                                             _%hd138551%_
                                             _%K138552%_
                                             _%rest138553%_
                                             _%r138554%_)
                                            (if (eq? 'in: _%$e138563%_)
                                                (_%import-submodule138238%_
                                                 _%hd138551%_
                                                 _%K138552%_
                                                 _%rest138553%_
                                                 _%r138554%_)
                                                (if (eq? 'runtime:
                                                         _%$e138563%_)
                                                    (_%import-runtime138239%_
                                                     _%hd138551%_
                                                     _%K138552%_
                                                     _%rest138553%_
                                                     _%r138554%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _%stx138233%_
                                                     _%hd138551%_)))))
                                      (if (string? _%e138560%_)
                                          (_%import1138237%_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _%hd138551%_
                                             (gx#stx-source _%stx138233%_)))
                                           _%K138552%_
                                           _%rest138553%_
                                           _%r138554%_)
                                          (if (##structure-instance-of?
                                               _%e138560%_
                                               'gx#module-context::t)
                                              (_%K138552%_
                                               _%rest138553%_
                                               (cons _%e138560%_ _%r138554%_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _%stx138233%_
                                               _%hd138551%_))))))))))
                 (_%import1138237%_
                  (lambda (_%ctx138540%_
                           _%K138541%_
                           _%rest138542%_
                           _%r138543%_)
                    (let ((_%dphi138545%_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_%K138541%_
                       _%rest138542%_
                       (cons (##structure
                              gx#import-set::t
                              _%ctx138540%_
                              _%dphi138545%_
                              (map (lambda (_%g138546138548%_)
                                     (gx#core-module-export->import__%
                                      _%g138546138548%_
                                      '#f
                                      _%dphi138545%_))
                                   (##unchecked-structure-ref
                                    _%ctx138540%_
                                    '9
                                    '#f
                                    '#f)))
                             _%r138543%_)))))
                 (_%import-submodule138238%_
                  (lambda (_%hd138507%_ _%K138508%_ _%rest138509%_ _%r138510%_)
                    (let* ((_%e138511138518%_ _%hd138507%_)
                           (_%E138513138522%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e138511138518%_)))
                           (_%E138512138536%_
                            (lambda ()
                              (if (gx#stx-pair? _%e138511138518%_)
                                  (let ((_%e138514138526%_
                                         (gx#syntax-e _%e138511138518%_)))
                                    (let ((_%hd138515138529%_
                                           (##car _%e138514138526%_))
                                          (_%tl138516138531%_
                                           (##cdr _%e138514138526%_)))
                                      (let ((_%spath138534%_
                                             _%tl138516138531%_))
                                        (_%import1138237%_
                                         (_%import-spec-source138241%_
                                          _%spath138534%_)
                                         _%K138508%_
                                         _%rest138509%_
                                         _%r138510%_))))
                                  (_%E138513138522%_)))))
                      (_%E138512138536%_))))
                 (_%import-runtime138239%_
                  (lambda (_%hd138474%_ _%K138475%_ _%rest138476%_ _%r138477%_)
                    (let* ((_%e138478138485%_ _%hd138474%_)
                           (_%E138480138489%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e138478138485%_)))
                           (_%E138479138503%_
                            (lambda ()
                              (if (gx#stx-pair? _%e138478138485%_)
                                  (let ((_%e138481138493%_
                                         (gx#syntax-e _%e138478138485%_)))
                                    (let ((_%hd138482138496%_
                                           (##car _%e138481138493%_))
                                          (_%tl138483138498%_
                                           (##cdr _%e138481138493%_)))
                                      (let ((_%spath138501%_
                                             _%tl138483138498%_))
                                        (_%K138475%_
                                         _%rest138476%_
                                         (cons (_%import-spec-source138241%_
                                                _%spath138501%_)
                                               _%r138477%_)))))
                                  (_%E138480138489%_)))))
                      (_%E138479138503%_))))
                 (_%import-spec138240%_
                  (lambda (_%hd138312%_ _%K138313%_ _%rest138314%_ _%r138315%_)
                    (let* ((_%e138316138333%_ _%hd138312%_)
                           (_%E138325138337%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e138316138333%_)))
                           (_%E138318138448%_
                            (lambda ()
                              (if (gx#stx-pair? _%e138316138333%_)
                                  (let ((_%e138326138341%_
                                         (gx#syntax-e _%e138316138333%_)))
                                    (let ((_%hd138327138344%_
                                           (##car _%e138326138341%_))
                                          (_%tl138328138346%_
                                           (##cdr _%e138326138341%_)))
                                      (if (gx#stx-pair? _%tl138328138346%_)
                                          (let ((_%e138329138349%_
                                                 (gx#syntax-e
                                                  _%tl138328138346%_)))
                                            (let ((_%hd138330138352%_
                                                   (##car _%e138329138349%_))
                                                  (_%tl138331138354%_
                                                   (##cdr _%e138329138349%_)))
                                              (let* ((_%path138357%_
                                                      _%hd138330138352%_)
                                                     (_%specs138359%_
                                                      _%tl138331138354%_))
                                                (let ((_%src-ctx138361%_
                                                       (_%import-spec-source138241%_
                                                        _%path138357%_))
                                                      (_%exports138362%_
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
                                                      (_%specs138363%_
                                                       (gx#syntax->list
                                                        _%specs138359%_)))
                                                  (for-each
                                                   (lambda (_%out138365%_)
                                                     (__hash-put!
                                                      _%exports138362%_
                                                      (cons (##unchecked-structure-ref
                                                             _%out138365%_
                                                             '3
                                                             '#f
                                                             '#f)
                                                            (##unchecked-structure-ref
                                                             _%out138365%_
                                                             '4
                                                             '#f
                                                             '#f))
                                                      _%out138365%_))
                                                   (##unchecked-structure-ref
                                                    _%src-ctx138361%_
                                                    '9
                                                    '#f
                                                    '#f))
                                                  (_%K138313%_
                                                   _%rest138314%_
                                                   (__foldl1
                                                    (lambda (_%spec138367%_
                                                             _%r138368%_)
                                                      (let* ((_%e138369138385%_
                                                              _%spec138367%_)
                                                             (_%E138371138389%_
                                                              (lambda ()
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid syntax-case clause"
                         _%e138369138385%_)))
                     (_%E138370138444%_
                      (lambda ()
                        (if (gx#stx-pair? _%e138369138385%_)
                            (let ((_%e138372138393%_
                                   (gx#syntax-e _%e138369138385%_)))
                              (let ((_%hd138373138396%_
                                     (##car _%e138372138393%_))
                                    (_%tl138374138398%_
                                     (##cdr _%e138372138393%_)))
                                (let ((_%phi138401%_ _%hd138373138396%_))
                                  (if (gx#stx-pair? _%tl138374138398%_)
                                      (let ((_%e138375138403%_
                                             (gx#syntax-e _%tl138374138398%_)))
                                        (let ((_%hd138376138406%_
                                               (##car _%e138375138403%_))
                                              (_%tl138377138408%_
                                               (##cdr _%e138375138403%_)))
                                          (let ((_%name138411%_
                                                 _%hd138376138406%_))
                                            (if (gx#stx-pair?
                                                 _%tl138377138408%_)
                                                (let ((_%e138378138413%_
                                                       (gx#syntax-e
                                                        _%tl138377138408%_)))
                                                  (let ((_%hd138379138416%_
                                                         (##car _%e138378138413%_))
                                                        (_%tl138380138418%_
                                                         (##cdr _%e138378138413%_)))
                                                    (let ((_%src-phi138421%_
                                                           _%hd138379138416%_))
                                                      (if (gx#stx-pair?
                                                           _%tl138380138418%_)
                                                          (let ((_%e138381138423%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl138380138418%_)))
                    (let ((_%hd138382138426%_ (##car _%e138381138423%_))
                          (_%tl138383138428%_ (##cdr _%e138381138423%_)))
                      (let ((_%src-name138431%_ _%hd138382138426%_))
                        (if (gx#stx-null? _%tl138383138428%_)
                            (if (and (gx#stx-fixnum? _%src-phi138421%_)
                                     (gx#identifier? _%src-name138431%_)
                                     (gx#stx-fixnum? _%phi138401%_)
                                     (gx#identifier? _%name138411%_))
                                (let ((_%src-phi138433%_
                                       (gx#stx-e _%src-phi138421%_))
                                      (_%src-name138434%_
                                       (gx#core-identifier-key
                                        _%src-name138431%_))
                                      (_%phi138435%_ (gx#stx-e _%phi138401%_))
                                      (_%name138436%_
                                       (gx#core-identifier-key
                                        _%name138411%_)))
                                  (let ((_%$e138438%_
                                         (__hash-get
                                          _%exports138362%_
                                          (cons _%src-phi138433%_
                                                _%src-name138434%_))))
                                    (if _%$e138438%_
                                        ((lambda (_%out138441%_)
                                           (cons (gx#core-module-export->import__%
                                                  _%out138441%_
                                                  _%name138436%_
                                                  (fx- _%phi138435%_
                                                       _%src-phi138433%_))
                                                 _%r138368%_))
                                         _%$e138438%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; no matching export"
                                         _%stx138233%_
                                         _%hd138312%_))))
                                (_%E138371138389%_))
                            (_%E138371138389%_)))))
                  (_%E138371138389%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E138371138389%_)))))
                                      (_%E138371138389%_)))))
                            (_%E138371138389%_)))))
                (_%E138370138444%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r138315%_
                                                    _%specs138363%_))))))
                                          (_%E138325138337%_))))
                                  (_%E138325138337%_))))
                           (_%E138317138470%_
                            (lambda ()
                              (if (gx#stx-pair? _%e138316138333%_)
                                  (let ((_%e138319138452%_
                                         (gx#syntax-e _%e138316138333%_)))
                                    (let ((_%hd138320138455%_
                                           (##car _%e138319138452%_))
                                          (_%tl138321138457%_
                                           (##cdr _%e138319138452%_)))
                                      (if (gx#stx-pair? _%tl138321138457%_)
                                          (let ((_%e138322138460%_
                                                 (gx#syntax-e
                                                  _%tl138321138457%_)))
                                            (let ((_%hd138323138463%_
                                                   (##car _%e138322138460%_))
                                                  (_%tl138324138465%_
                                                   (##cdr _%e138322138460%_)))
                                              (let ((_%path138468%_
                                                     _%hd138323138463%_))
                                                (if (gx#stx-null?
                                                     _%tl138324138465%_)
                                                    (_%K138313%_
                                                     _%rest138314%_
                                                     (cons (_%import-spec-source138241%_
                                                            _%path138468%_)
                                                           _%r138315%_))
                                                    (_%E138318138448%_)))))
                                          (_%E138318138448%_))))
                                  (_%E138318138448%_)))))
                      (_%E138317138470%_))))
                 (_%import-spec-source138241%_
                  (lambda (_%spath138310%_)
                    (gx#core-import-nested-module
                     _%spath138310%_
                     _%stx138233%_)))
                 (_%import!138242%_
                  (lambda (_%rbody138255%_)
                    (letrec* ((_%current-ctx138257%_
                               (gx#current-expander-context))
                              (_%deps138258%_ (make-hash-table-eq))
                              (_%bind!138259%_
                               (lambda (_%hd138308%_)
                                 (gx#core-bind-import!__1
                                  _%hd138308%_
                                  _%current-ctx138257%_))))
                      (let _%lp138261%_ ((_%rest138263%_ _%rbody138255%_)
                                         (_%body138264%_ '()))
                        (let* ((_%rest138265138273%_ _%rest138263%_)
                               (_%else138267138284%_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _%current-ctx138257%_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _%current-ctx138257%_
                                       (__foldl1
                                        cons
                                        (##unchecked-structure-ref
                                         _%current-ctx138257%_
                                         '8
                                         '#f
                                         '#f)
                                        _%body138264%_)
                                       '8
                                       '#f
                                       '#f)
                                      '#!void)
                                  (__hash-for-each
                                   (lambda (_%ctx138281%_ _%_138282%_)
                                     (gx#eval-module _%ctx138281%_))
                                   _%deps138258%_)
                                  _%body138264%_))
                               (_%K138269138296%_
                                (lambda (_%rest138287%_ _%hd138288%_)
                                  (if (##structure-direct-instance-of?
                                       _%hd138288%_
                                       'gx#module-import::t)
                                      (let ()
                                        (_%bind!138259%_ _%hd138288%_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _%hd138288%_
                                                   '3
                                                   '#f
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _%hd138288%_
                                                            '1
                                                            '#f
                                                            '#f)
                                                           '3
                                                           '#f
                                                           '#f)))
                                            (__hash-put!
                                             _%deps138258%_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _%hd138288%_
                                               '1
                                               '#f
                                               '#f)
                                              '1
                                              '#f
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _%hd138288%_
                                           'gx#import-set::t)
                                          (let ()
                                            (for-each
                                             _%bind!138259%_
                                             (##unchecked-structure-ref
                                              _%hd138288%_
                                              '3
                                              '#f
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _%hd138288%_
                                                  '2
                                                  '#f
                                                  '#f))
                                                (__hash-put!
                                                 _%deps138258%_
                                                 (##unchecked-structure-ref
                                                  _%hd138288%_
                                                  '1
                                                  '#f
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_%$e138292%_
                                                 (##structure-instance-of?
                                                  _%hd138288%_
                                                  'gx#module-context::t)))
                                            (if _%$e138292%_
                                                _%$e138292%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _%stx138233%_
                                                 _%hd138288%_)))))
                                  (_%lp138261%_
                                   _%rest138287%_
                                   (cons _%hd138288%_ _%body138264%_)))))
                          (if (pair? _%rest138265138273%_)
                              (let ((_%hd138270138299%_
                                     (##car _%rest138265138273%_))
                                    (_%tl138271138301%_
                                     (##cdr _%rest138265138273%_)))
                                (let* ((_%hd138304%_ _%hd138270138299%_)
                                       (_%rest138306%_ _%tl138271138301%_))
                                  (_%K138269138296%_
                                   _%rest138306%_
                                   _%hd138304%_)))
                              (_%else138267138284%_)))))))
                 (_%expanded-import?138243%_
                  (lambda (_%e138247%_)
                    (let ((_%$e138249%_
                           (##structure-direct-instance-of?
                            _%e138247%_
                            'gx#import-set::t)))
                      (if _%$e138249%_
                          _%$e138249%_
                          (let ((_%$e138252%_
                                 (##structure-direct-instance-of?
                                  _%e138247%_
                                  'gx#module-import::t)))
                            (if _%$e138252%_
                                _%$e138252%_
                                (##structure-instance-of?
                                 _%e138247%_
                                 'gx#module-context::t))))))))
          (let ((_%rbody138245%_
                 (gx#core-expand-import/export
                  _%stx138233%_
                  _%expanded-import?138243%_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _%expand1138236%_)))
            (if _%internal-expand?138234%_
                (reverse _%rbody138245%_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_%import!138242%_ _%rbody138245%_))
                 (gx#stx-source _%stx138233%_)))))))
    (define gx#core-expand-import%__0
      (lambda (_%stx138572%_)
        (let ((_%internal-expand?138574%_ '#f))
          (gx#core-expand-import%__%
           _%stx138572%_
           _%internal-expand?138574%_))))
    (define gx#core-expand-import%
      (lambda _g141223_
        (let ((_g141224_ (##length _g141223_)))
          (cond ((##fx= _g141224_ 1)
                 (apply gx#core-expand-import%__0 _g141223_))
                ((##fx= _g141224_ 2)
                 (apply gx#core-expand-import%__% _g141223_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g141223_))))))
    (define gx#core-import-nested-module
      (lambda (_%spath138160%_ _%where138161%_)
        (let* ((_%e138162138169%_ _%spath138160%_)
               (_%E138164138173%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e138162138169%_)))
               (_%E138163138228%_
                (lambda ()
                  (if (gx#stx-pair? _%e138162138169%_)
                      (let ((_%e138165138177%_
                             (gx#syntax-e _%e138162138169%_)))
                        (let ((_%hd138166138180%_ (##car _%e138165138177%_))
                              (_%tl138167138182%_ (##cdr _%e138165138177%_)))
                          (let* ((_%origin138185%_ _%hd138166138180%_)
                                 (_%sub138187%_ _%tl138167138182%_)
                                 (_%origin-ctx138189%_
                                  (if (gx#stx-false? _%origin138185%_)
                                      (gx#current-expander-context)
                                      (gx#import-module__0 _%origin138185%_))))
                            (let _%lp138191%_ ((_%rest138193%_ _%sub138187%_)
                                               (_%ctx138194%_
                                                _%origin-ctx138189%_))
                              (let* ((_%e138195138202%_ _%rest138193%_)
                                     (_%E138197138206%_
                                      (lambda () _%ctx138194%_))
                                     (_%E138196138224%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e138195138202%_)
                                            (let ((_%e138198138210%_
                                                   (gx#syntax-e
                                                    _%e138195138202%_)))
                                              (let ((_%hd138199138213%_
                                                     (##car _%e138198138210%_))
                                                    (_%tl138200138215%_
                                                     (##cdr _%e138198138210%_)))
                                                (let* ((_%id138218%_
                                                        _%hd138199138213%_)
                                                       (_%rest138220%_
                                                        _%tl138200138215%_)
                                                       (_%bind138222%_
                                                        (gx#resolve-identifier__%
                                                         _%id138218%_
                                                         '0
                                                         _%ctx138194%_)))
                                                  (if (and (##structure-direct-instance-of?
                                                            _%bind138222%_
                                                            'gx#syntax-binding::t)
                                                           (##structure-instance-of?
                                                            (##unchecked-structure-ref
                                                             _%bind138222%_
                                                             '4
                                                             '#f
                                                             '#f)
                                                            'gx#module-context::t))
                                                      '#!void
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; not bound as module"
                                                       _%where138161%_
                                                       _%spath138160%_
                                                       _%id138218%_))
                                                  (_%lp138191%_
                                                   _%rest138220%_
                                                   (##unchecked-structure-ref
                                                    _%bind138222%_
                                                    '4
                                                    '#f
                                                    '#f)))))
                                            (_%E138197138206%_)))))
                                (_%E138196138224%_))))))
                      (_%E138164138173%_)))))
          (_%E138163138228%_))))
    (define gx#core-expand-import-source
      (lambda (_%hd138158%_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _%hd138158%_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_%stx137653%_ _%internal-expand?137654%_)
        (letrec* ((_%make-export__141152141153%_
                   (lambda (_%bind138106%_
                            _%phi138107%_
                            _%ctx138108%_
                            _%name138109%_)
                     (let* ((_%key138111%_
                             (##unchecked-structure-ref
                              _%bind138106%_
                              '2
                              '#f
                              '#f))
                            (_%export-key138113%_
                             (if _%name138109%_
                                 (gx#core-identifier-key _%name138109%_)
                                 _%key138111%_)))
                       (##structure
                        gx#module-export::t
                        _%ctx138108%_
                        _%key138111%_
                        _%phi138107%_
                        _%export-key138113%_
                        (let ((_%$e138116%_
                               (##structure-instance-of?
                                _%bind138106%_
                                'gx#extern-binding::t)))
                          (if _%$e138116%_
                              _%$e138116%_
                              (##structure-direct-instance-of?
                               _%bind138106%_
                               'gx#import-binding::t)))))))
                  (_%make-export__0__141154141157%_
                   (lambda (_%bind138122%_)
                     (let* ((_%phi138124%_ (gx#current-export-expander-phi))
                            (_%ctx138126%_ (gx#current-expander-context))
                            (_%name138128%_ '#f))
                       (_%make-export__141152141153%_
                        _%bind138122%_
                        _%phi138124%_
                        _%ctx138126%_
                        _%name138128%_))))
                  (_%make-export__1__141155141158%_
                   (lambda (_%bind138130%_ _%phi138131%_)
                     (let* ((_%ctx138133%_ (gx#current-expander-context))
                            (_%name138135%_ '#f))
                       (_%make-export__141152141153%_
                        _%bind138130%_
                        _%phi138131%_
                        _%ctx138133%_
                        _%name138135%_))))
                  (_%make-export__2__141156141159%_
                   (lambda (_%bind138137%_ _%phi138138%_ _%ctx138139%_)
                     (let ((_%name138141%_ '#f))
                       (_%make-export__141152141153%_
                        _%bind138137%_
                        _%phi138138%_
                        _%ctx138139%_
                        _%name138141%_))))
                  (_%make-export137656%_
                   (lambda _g141225_
                     (let ((_g141226_ (##length _g141225_)))
                       (cond ((##fx= _g141226_ 1)
                              (apply _%make-export__0__141154141157%_
                                     _g141225_))
                             ((##fx= _g141226_ 2)
                              (apply _%make-export__1__141155141158%_
                                     _g141225_))
                             ((##fx= _g141226_ 3)
                              (apply _%make-export__2__141156141159%_
                                     _g141225_))
                             ((##fx= _g141226_ 4)
                              (apply _%make-export__141152141153%_ _g141225_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g141225_))))))
                  (_%expand1137657%_
                   (lambda (_%hd137811%_
                            _%K137812%_
                            _%rest137813%_
                            _%r137814%_)
                     (let* ((_%e137815137847%_ _%hd137811%_)
                            (_%E137842137851%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _%stx137653%_
                                _%hd137811%_)))
                            (_%E137832137935%_
                             (lambda ()
                               (if (gx#stx-pair? _%e137815137847%_)
                                   (let ((_%e137843137855%_
                                          (gx#syntax-e _%e137815137847%_)))
                                     (let ((_%hd137844137858%_
                                            (##car _%e137843137855%_))
                                           (_%tl137845137860%_
                                            (##cdr _%e137843137855%_)))
                                       (if (eq? (gx#stx-e _%hd137844137858%_)
                                                'import:)
                                           (let ((_%in137863%_
                                                  _%tl137845137860%_))
                                             (if (gx#stx-list? _%in137863%_)
                                                 (let _%lp137865%_ ((_%in-rest137867%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%in137863%_)
                            (_%r137868%_ _%r137814%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%e137869137876%_
                                                           _%in-rest137867%_)
                                                          (_%E137871137880%_
                                                           (lambda ()
                                                             (_%K137812%_
                                                              _%rest137813%_
                                                              _%r137868%_)))
                                                          (_%E137870137931%_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%e137869137876%_)
                         (let ((_%e137872137884%_
                                (gx#syntax-e _%e137869137876%_)))
                           (let ((_%hd137873137887%_ (##car _%e137872137884%_))
                                 (_%tl137874137889%_
                                  (##cdr _%e137872137884%_)))
                             (let* ((_%hd137892%_ _%hd137873137887%_)
                                    (_%in-rest137894%_ _%tl137874137889%_)
                                    (_%src137929%_
                                     (if (gx#core-bound-module? _%hd137892%_)
                                         (gx#syntax-local-e__0 _%hd137892%_)
                                         (if (gx#core-library-module-path?
                                              _%hd137892%_)
                                             (gx#import-module__0
                                              (gx#core-resolve-library-module-path
                                               _%hd137892%_))
                                             (if (gx#core-library-relative-module-path?
                                                  _%hd137892%_)
                                                 (gx#import-module__0
                                                  (gx#core-resolve-library-relative-module-path
                                                   _%hd137892%_))
                                                 (if (gx#stx-string?
                                                      _%hd137892%_)
                                                     (gx#import-module__0
                                                      (gx#core-resolve-module-path__%
                                                       _%hd137892%_
                                                       (gx#stx-source
                                                        _%stx137653%_)))
                                                     (let* ((_%e137900137907%_
                                                             _%hd137892%_)
                                                            (_%E137902137911%_
                                                             (lambda ()
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; illegal re-export"
                                                                _%stx137653%_
                                                                _%hd137892%_)))
                                                            (_%E137901137925%_
                                                             (lambda ()
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%e137900137907%_)
                           (let ((_%e137903137915%_
                                  (gx#syntax-e _%e137900137907%_)))
                             (let ((_%hd137904137918%_
                                    (##car _%e137903137915%_))
                                   (_%tl137905137920%_
                                    (##cdr _%e137903137915%_)))
                               (if (eq? (gx#stx-e _%hd137904137918%_) 'in:)
                                   (let ((_%spath137923%_ _%tl137905137920%_))
                                     (gx#core-import-nested-module
                                      _%spath137923%_
                                      _%stx137653%_))
                                   (_%E137902137911%_))))
                           (_%E137902137911%_)))))
               (_%E137901137925%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (_%lp137865%_
                                _%in-rest137894%_
                                (_%export-imports137658%_
                                 _%src137929%_
                                 _%r137868%_)))))
                         (_%E137871137880%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E137870137931%_)))
                                                 (_%E137842137851%_)))
                                           (_%E137842137851%_))))
                                   (_%E137842137851%_))))
                            (_%E137819137975%_
                             (lambda ()
                               (if (gx#stx-pair? _%e137815137847%_)
                                   (let ((_%e137833137939%_
                                          (gx#syntax-e _%e137815137847%_)))
                                     (let ((_%hd137834137942%_
                                            (##car _%e137833137939%_))
                                           (_%tl137835137944%_
                                            (##cdr _%e137833137939%_)))
                                       (if (eq? (gx#stx-e _%hd137834137942%_)
                                                'rename:)
                                           (if (gx#stx-pair?
                                                _%tl137835137944%_)
                                               (let ((_%e137836137947%_
                                                      (gx#syntax-e
                                                       _%tl137835137944%_)))
                                                 (let ((_%hd137837137950%_
                                                        (##car _%e137836137947%_))
                                                       (_%tl137838137952%_
                                                        (##cdr _%e137836137947%_)))
                                                   (let ((_%id137955%_
                                                          _%hd137837137950%_))
                                                     (if (gx#stx-pair?
                                                          _%tl137838137952%_)
                                                         (let ((_%e137839137957%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl137838137952%_)))
                   (let ((_%hd137840137960%_ (##car _%e137839137957%_))
                         (_%tl137841137962%_ (##cdr _%e137839137957%_)))
                     (let ((_%name137965%_ _%hd137840137960%_))
                       (if (gx#stx-null? _%tl137841137962%_)
                           (let* ((_%phi137967%_
                                   (gx#current-export-expander-phi))
                                  (_%$e137969%_
                                   (gx#core-resolve-identifier__1
                                    _%id137955%_
                                    _%phi137967%_)))
                             (if _%$e137969%_
                                 ((lambda (_%bind137972%_)
                                    (_%K137812%_
                                     _%rest137813%_
                                     (cons (_%make-export__141152141153%_
                                            _%bind137972%_
                                            _%phi137967%_
                                            (gx#current-expander-context)
                                            _%name137965%_)
                                           _%r137814%_)))
                                  _%$e137969%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Reference to unbound identifier"
                                  _%stx137653%_
                                  _%hd137811%_
                                  _%id137955%_)))
                           (_%E137832137935%_)))))
                 (_%E137832137935%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E137832137935%_))
                                           (_%E137832137935%_))))
                                   (_%E137832137935%_))))
                            (_%E137818138025%_
                             (lambda ()
                               (if (gx#stx-pair? _%e137815137847%_)
                                   (let ((_%e137820137979%_
                                          (gx#syntax-e _%e137815137847%_)))
                                     (let ((_%hd137821137982%_
                                            (##car _%e137820137979%_))
                                           (_%tl137822137984%_
                                            (##cdr _%e137820137979%_)))
                                       (if (eq? (gx#stx-e _%hd137821137982%_)
                                                'spec:)
                                           (if (gx#stx-pair?
                                                _%tl137822137984%_)
                                               (let ((_%e137823137987%_
                                                      (gx#syntax-e
                                                       _%tl137822137984%_)))
                                                 (let ((_%hd137824137990%_
                                                        (##car _%e137823137987%_))
                                                       (_%tl137825137992%_
                                                        (##cdr _%e137823137987%_)))
                                                   (let ((_%phi137995%_
                                                          _%hd137824137990%_))
                                                     (if (gx#stx-pair?
                                                          _%tl137825137992%_)
                                                         (let ((_%e137826137997%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl137825137992%_)))
                   (let ((_%hd137827138000%_ (##car _%e137826137997%_))
                         (_%tl137828138002%_ (##cdr _%e137826137997%_)))
                     (let ((_%id138005%_ _%hd137827138000%_))
                       (if (gx#stx-pair? _%tl137828138002%_)
                           (let ((_%e137829138007%_
                                  (gx#syntax-e _%tl137828138002%_)))
                             (let ((_%hd137830138010%_
                                    (##car _%e137829138007%_))
                                   (_%tl137831138012%_
                                    (##cdr _%e137829138007%_)))
                               (let ((_%name138015%_ _%hd137830138010%_))
                                 (if (gx#stx-null? _%tl137831138012%_)
                                     (if (and (gx#stx-fixnum? _%phi137995%_)
                                              (gx#identifier? _%id138005%_)
                                              (gx#identifier? _%name138015%_))
                                         (let* ((_%phi138017%_
                                                 (gx#stx-e _%phi137995%_))
                                                (_%$e138019%_
                                                 (gx#core-resolve-identifier__1
                                                  _%id138005%_
                                                  _%phi138017%_)))
                                           (if _%$e138019%_
                                               ((lambda (_%bind138022%_)
                                                  (_%K137812%_
                                                   _%rest137813%_
                                                   (cons (_%make-export__141152141153%_
                                                          _%bind138022%_
                                                          _%phi138017%_
                                                          (gx#current-expander-context)
                                                          _%name138015%_)
                                                         _%r137814%_)))
                                                _%$e138019%_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _%stx137653%_
                                                _%hd137811%_
                                                _%id138005%_)))
                                         (_%E137819137975%_))
                                     (_%E137819137975%_)))))
                           (_%E137819137975%_)))))
                 (_%E137819137975%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E137819137975%_))
                                           (_%E137819137975%_))))
                                   (_%E137819137975%_))))
                            (_%E137817138037%_
                             (lambda ()
                               (let ((_%id138029%_ _%e137815137847%_))
                                 (if (gx#identifier? _%id138029%_)
                                     (let ((_%$e138031%_
                                            (gx#core-resolve-identifier__1
                                             _%id138029%_
                                             (gx#current-export-expander-phi))))
                                       (if _%$e138031%_
                                           ((lambda (_%bind138034%_)
                                              (_%K137812%_
                                               _%rest137813%_
                                               (cons (_%make-export__0__141154141157%_
                                                      _%bind138034%_)
                                                     _%r137814%_)))
                                            _%$e138031%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _%stx137653%_
                                            _%hd137811%_)))
                                     (_%E137818138025%_)))))
                            (_%E137816138101%_
                             (lambda ()
                               (if (eq? (gx#stx-e _%e137815137847%_) '#t)
                                   (let* ((_%current-ctx138041%_
                                           (gx#current-expander-context))
                                          (_%current-phi138043%_
                                           (gx#current-export-expander-phi))
                                          (_%phi-ctx138045%_
                                           (gx#core-context-shift
                                            _%current-ctx138041%_
                                            _%current-phi138043%_))
                                          (_%phi-bind138047%_
                                           (hash->list
                                            (##unchecked-structure-ref
                                             _%phi-ctx138045%_
                                             '2
                                             '#f
                                             '#f))))
                                     (let _%lp138050%_ ((_%bind-rest138052%_
                                                         _%phi-bind138047%_)
                                                        (_%set138053%_ '()))
                                       (let* ((_%bind-rest138054138064%_
                                               _%bind-rest138052%_)
                                              (_%else138056138072%_
                                               (lambda ()
                                                 (_%K137812%_
                                                  _%rest137813%_
                                                  (cons (##structure
                                                         gx#export-set::t
                                                         '#f
                                                         _%current-phi138043%_
                                                         _%set138053%_)
                                                        _%r137814%_))))
                                              (_%K138058138082%_
                                               (lambda (_%bind-rest138075%_
                                                        _%bind138076%_
                                                        _%key138077%_)
                                                 (if (or (##structure-direct-instance-of?
                                                          _%bind138076%_
                                                          'gx#import-binding::t)
                                                         (gx#private-feature-binding?
                                                          _%bind138076%_))
                                                     (_%lp138050%_
                                                      _%bind-rest138075%_
                                                      _%set138053%_)
                                                     (_%lp138050%_
                                                      _%bind-rest138075%_
                                                      (cons (_%make-export__2__141156141159%_
                                                             _%bind138076%_
                                                             _%current-phi138043%_
                                                             _%current-ctx138041%_)
                                                            _%set138053%_))))))
                                         (if (pair? _%bind-rest138054138064%_)
                                             (let ((_%hd138059138085%_
                                                    (##car _%bind-rest138054138064%_))
                                                   (_%tl138060138087%_
                                                    (##cdr _%bind-rest138054138064%_)))
                                               (if (pair? _%hd138059138085%_)
                                                   (let ((_%hd138061138090%_
                                                          (##car _%hd138059138085%_))
                                                         (_%tl138062138092%_
                                                          (##cdr _%hd138059138085%_)))
                                                     (let* ((_%key138095%_
                                                             _%hd138061138090%_)
                                                            (_%bind138097%_
                                                             _%tl138062138092%_)
                                                            (_%bind-rest138099%_
                                                             _%tl138060138087%_))
                                                       (_%K138058138082%_
                                                        _%bind-rest138099%_
                                                        _%bind138097%_
                                                        _%key138095%_)))
                                                   (_%else138056138072%_)))
                                             (_%else138056138072%_)))))
                                   (_%E137817138037%_)))))
                       (_%E137816138101%_))))
                  (_%export-imports137658%_
                   (lambda (_%src137688%_ _%r137689%_)
                     (letrec* ((_%current-ctx137691%_
                                (gx#current-expander-context))
                               (_%current-phi137692%_
                                (gx#current-export-expander-phi))
                               (_%import->export137693%_
                                (lambda (_%in137774%_)
                                  (let* ((_%in137775137783%_ _%in137774%_)
                                         (_%E137777137786%_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _%in137775137783%_
                                                   '((module-import
                                                      out
                                                      key
                                                      phi)))
                                            '#!void))
                                         (_%K137778137793%_
                                          (lambda (_%phi137789%_
                                                   _%key137790%_
                                                   _%out137791%_)
                                            (##structure
                                             gx#module-export::t
                                             _%current-ctx137691%_
                                             _%key137790%_
                                             _%phi137789%_
                                             _%key137790%_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _%in137775137783%_
                                         'gx#module-import::t)
                                        (let* ((_%e137779137796%_
                                                (##unchecked-structure-ref
                                                 _%in137775137783%_
                                                 '1
                                                 '#f
                                                 '#f))
                                               (_%out137799%_
                                                _%e137779137796%_)
                                               (_%e137780137801%_
                                                (##unchecked-structure-ref
                                                 _%in137775137783%_
                                                 '2
                                                 '#f
                                                 '#f))
                                               (_%key137804%_
                                                _%e137780137801%_)
                                               (_%e137781137806%_
                                                (##unchecked-structure-ref
                                                 _%in137775137783%_
                                                 '3
                                                 '#f
                                                 '#f))
                                               (_%phi137809%_
                                                _%e137781137806%_))
                                          (_%K137778137793%_
                                           _%phi137809%_
                                           _%key137804%_
                                           _%out137799%_))
                                        (_%E137777137786%_)))))
                               (_%fold-e137694%_
                                (lambda (_%in137696%_ _%r137697%_)
                                  (let* ((_%in137698137712%_ _%in137696%_)
                                         (_%else137701137720%_
                                          (lambda () _%r137697%_)))
                                    (let ((_%K137707137756%_
                                           (lambda (_%phi137752%_
                                                    _%key137753%_
                                                    _%out137754%_)
                                             (if (and (fx= _%phi137752%_
                                                           _%current-phi137692%_)
                                                      (eq? _%src137688%_
                                                           (##unchecked-structure-ref
                                                            _%out137754%_
                                                            '1
                                                            '#f
                                                            '#f)))
                                                 (cons (_%import->export137693%_
                                                        _%in137696%_)
                                                       _%r137697%_)
                                                 _%r137697%_)))
                                          (_%K137703137731%_
                                           (lambda (_%imports137724%_
                                                    _%phi137725%_
                                                    _%ctx137726%_)
                                             (if (and (fx= _%phi137725%_
                                                           _%current-phi137692%_)
                                                      (eq? _%src137688%_
                                                           _%ctx137726%_))
                                                 (__foldl1
                                                  (lambda (_%in137728%_
                                                           _%r137729%_)
                                                    (cons (_%import->export137693%_
                                                           _%in137728%_)
                                                          _%r137729%_))
                                                  _%r137697%_
                                                  _%imports137724%_)
                                                 _%r137697%_))))
                                      (let ((_%try-match137700137749%_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _%in137698137712%_
                                                    'gx#import-set::t)
                                                   (let* ((_%e137704137734%_
                                                           (##unchecked-structure-ref
                                                            _%in137698137712%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                          (_%e137705137739%_
                                                           (##unchecked-structure-ref
                                                            _%in137698137712%_
                                                            '2
                                                            '#f
                                                            '#f))
                                                          (_%e137706137744%_
                                                           (##unchecked-structure-ref
                                                            _%in137698137712%_
                                                            '3
                                                            '#f
                                                            '#f)))
                                                     (let ((_%ctx137737%_
                                                            _%e137704137734%_)
                                                           (_%phi137742%_
                                                            _%e137705137739%_)
                                                           (_%imports137747%_
                                                            _%e137706137744%_))
                                                       (_%K137703137731%_
                                                        _%imports137747%_
                                                        _%phi137742%_
                                                        _%ctx137737%_)))
                                                   (_%else137701137720%_)))))
                                        (if (##structure-direct-instance-of?
                                             _%in137698137712%_
                                             'gx#module-import::t)
                                            (let* ((_%e137708137759%_
                                                    (##unchecked-structure-ref
                                                     _%in137698137712%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                   (_%e137709137764%_
                                                    (##unchecked-structure-ref
                                                     _%in137698137712%_
                                                     '2
                                                     '#f
                                                     '#f))
                                                   (_%e137710137769%_
                                                    (##unchecked-structure-ref
                                                     _%in137698137712%_
                                                     '3
                                                     '#f
                                                     '#f)))
                                              (let ((_%out137762%_
                                                     _%e137708137759%_)
                                                    (_%key137767%_
                                                     _%e137709137764%_)
                                                    (_%phi137772%_
                                                     _%e137710137769%_))
                                                (_%K137707137756%_
                                                 _%phi137772%_
                                                 _%key137767%_
                                                 _%out137762%_)))
                                            (_%try-match137700137749%_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _%src137688%_
                              _%current-phi137692%_
                              (__foldl1
                               _%fold-e137694%_
                               '()
                               (##unchecked-structure-ref
                                _%current-ctx137691%_
                                '8
                                '#f
                                '#f)))
                             _%r137689%_))))
                  (_%export!137659%_
                   (lambda (_%rbody137675%_)
                     (letrec* ((_%current-ctx137677%_
                                (gx#current-expander-context))
                               (_%fold-e137678%_
                                (lambda (_%out137682%_ _%r137683%_)
                                  (if (##structure-direct-instance-of?
                                       _%out137682%_
                                       'gx#module-export::t)
                                      (cons _%out137682%_ _%r137683%_)
                                      (if (##structure-direct-instance-of?
                                           _%out137682%_
                                           'gx#export-set::t)
                                          (__foldl1
                                           cons
                                           _%r137683%_
                                           (##unchecked-structure-ref
                                            _%out137682%_
                                            '3
                                            '#f
                                            '#f))
                                          _%r137683%_)))))
                       (let ((_%body137680%_ (reverse _%rbody137675%_)))
                         (##unchecked-structure-set!
                          _%current-ctx137677%_
                          (__foldl1
                           _%fold-e137678%_
                           (##unchecked-structure-ref
                            _%current-ctx137677%_
                            '9
                            '#f
                            '#f)
                           _%body137680%_)
                          '9
                          '#f
                          '#f)
                         _%body137680%_))))
                  (_%expanded-export?137660%_
                   (lambda (_%e137670%_)
                     (let ((_%$e137672%_
                            (##structure-direct-instance-of?
                             _%e137670%_
                             'gx#module-export::t)))
                       (if _%$e137672%_
                           _%$e137672%_
                           (##structure-direct-instance-of?
                            _%e137670%_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _%internal-expand?137654%_)
              (let ((_%rbody137666%_
                     (gx#core-expand-import/export
                      _%stx137653%_
                      _%expanded-export?137660%_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _%expand1137657%_)))
                (if _%internal-expand?137654%_
                    (reverse _%rbody137666%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons
                      '%#export
                      (_%export!137659%_ _%rbody137666%_))
                     (gx#stx-source _%stx137653%_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _%stx137653%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _%stx137653%_))))))
    (define gx#core-expand-export%__0
      (lambda (_%stx138151%_)
        (let ((_%internal-expand?138153%_ '#f))
          (gx#core-expand-export%__%
           _%stx138151%_
           _%internal-expand?138153%_))))
    (define gx#core-expand-export%
      (lambda _g141227_
        (let ((_g141228_ (##length _g141227_)))
          (cond ((##fx= _g141228_ 1)
                 (apply gx#core-expand-export%__0 _g141227_))
                ((##fx= _g141228_ 2)
                 (apply gx#core-expand-export%__% _g141227_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g141227_))))))
    (define gx#core-expand-export-source
      (lambda (_%hd137650%_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _%hd137650%_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_%stx137620%_)
        (let* ((_%e137621137628%_ _%stx137620%_)
               (_%E137623137632%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e137621137628%_)))
               (_%E137622137646%_
                (lambda ()
                  (if (gx#stx-pair? _%e137621137628%_)
                      (let ((_%e137624137636%_
                             (gx#syntax-e _%e137621137628%_)))
                        (let ((_%hd137625137639%_ (##car _%e137624137636%_))
                              (_%tl137626137641%_ (##cdr _%e137624137636%_)))
                          (let ((_%body137644%_ _%tl137626137641%_))
                            (if (gx#identifier-list? _%body137644%_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _%body137644%_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _%body137644%_))
                                   (gx#stx-source _%stx137620%_)))
                                (_%E137623137632%_)))))
                      (_%E137623137632%_)))))
          (_%E137622137646%_))))
    (define gx#core-bind-feature!__%
      (lambda (_%id137586%_ _%private?137587%_ _%phi137588%_ _%ctx137589%_)
        (gx#core-bind-syntax!__%
         _%id137586%_
         ((if _%private?137587%_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _%id137586%_))
         _%private?137587%_
         _%phi137588%_
         _%ctx137589%_)))
    (define gx#core-bind-feature!__0
      (lambda (_%id137594%_)
        (let* ((_%private?137596%_ '#f)
               (_%phi137598%_ (gx#current-expander-phi))
               (_%ctx137600%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id137594%_
           _%private?137596%_
           _%phi137598%_
           _%ctx137600%_))))
    (define gx#core-bind-feature!__1
      (lambda (_%id137602%_ _%private?137603%_)
        (let* ((_%phi137605%_ (gx#current-expander-phi))
               (_%ctx137607%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id137602%_
           _%private?137603%_
           _%phi137605%_
           _%ctx137607%_))))
    (define gx#core-bind-feature!__2
      (lambda (_%id137609%_ _%private?137610%_ _%phi137611%_)
        (let ((_%ctx137613%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id137609%_
           _%private?137610%_
           _%phi137611%_
           _%ctx137613%_))))
    (define gx#core-bind-feature!
      (lambda _g141229_
        (let ((_g141230_ (##length _g141229_)))
          (cond ((##fx= _g141230_ 1)
                 (apply gx#core-bind-feature!__0 _g141229_))
                ((##fx= _g141230_ 2)
                 (apply gx#core-bind-feature!__1 _g141229_))
                ((##fx= _g141230_ 3)
                 (apply gx#core-bind-feature!__2 _g141229_))
                ((##fx= _g141230_ 4)
                 (apply gx#core-bind-feature!__% _g141229_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g141229_))))))))
