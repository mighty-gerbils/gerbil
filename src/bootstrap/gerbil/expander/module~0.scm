(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1768863412)
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
      (lambda _%$args140713%_
        (apply make-instance gx#module-import::t _%$args140713%_)))
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
      (lambda _%$args140710%_
        (apply make-instance gx#module-export::t _%$args140710%_)))
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
      (lambda _%$args140707%_
        (apply make-instance gx#import-set::t _%$args140707%_)))
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
      (lambda _%$args140704%_
        (apply make-instance gx#export-set::t _%$args140704%_)))
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
      (lambda _%$args140701%_
        (apply make-instance gx#import-expander::t _%$args140701%_)))
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
      (lambda _%$args140698%_
        (apply make-instance gx#export-expander::t _%$args140698%_)))
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
      (lambda _%$args140695%_
        (apply make-instance gx#import-export-expander::t _%$args140695%_)))
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
      (lambda (_%path140692%_ _%fun140693%_)
        (call-with-input-file
         (cons 'path: (cons _%path140692%_ gx#source-file-settings))
         _%fun140693%_)))
    (define gx#module-context:::init!
      (lambda (_%self140675%_
               _%id140676%_
               _%super140677%_
               _%ns140678%_
               _%path140679%_)
        (let ((_%self140682%_ _%self140675%_))
          (if (##fx< '11 (##structure-length _%self140682%_))
              (begin
                (##unchecked-structure-set!
                 _%self140682%_
                 _%id140676%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self140682%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self140682%_
                 _%super140677%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self140682%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self140682%_ '#f '5 '#f '#f)
                (##unchecked-structure-set!
                 _%self140682%_
                 _%ns140678%_
                 '6
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self140682%_
                 _%path140679%_
                 '7
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self140682%_ '() '8 '#f '#f)
                (##unchecked-structure-set! _%self140682%_ '() '9 '#f '#f)
                (##unchecked-structure-set! _%self140682%_ '#f '10 '#f '#f)
                (##unchecked-structure-set! _%self140682%_ '#f '11 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self140682%_
                     '11
                     (##structure-length _%self140682%_))))))
    (__bind-method!__%
     gx#module-context::t
     ':init!
     gx#module-context:::init!
     '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_%self140508%_ _%ctx140509%_ _%root140510%_)
        (let* ((_%self140513%_ _%self140508%_)
               (_%super140529%_
                (let ((_%$e140523%_ _%root140510%_))
                  (if _%$e140523%_
                      _%$e140523%_
                      (let ((_%$e140526%_ (gx#core-context-root__0)))
                        (if _%$e140526%_
                            _%$e140526%_
                            (let ((__obj140757
                                   (##structure gx#root-context::t '#f '#f)))
                              (let ((__constructor140758
                                     (direct-method-ref
                                      gx#root-context::t
                                      __obj140757
                                      ':init!)))
                                (if __constructor140758
                                    (__constructor140758 __obj140757)
                                    (error '"missing constructor method implementation"
                                           'class:
                                           gx#root-context::t
                                           'method:
                                           ':init!)))
                              __obj140757)))))))
          (if _%ctx140509%_
              (let ((_%id140532%_
                     (##structure-ref
                      _%ctx140509%_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_%path140533%_
                     (##structure-ref
                      _%ctx140509%_
                      '7
                      gx#module-context::t
                      '#f))
                    (_%in140534%_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _%ctx140509%_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_%e140535%_
                     (__make-atomic-promise
                      (lambda () (gx#eval-module _%ctx140509%_)))))
                (if (##fx< '8 (##structure-length _%self140513%_))
                    (begin
                      (##unchecked-structure-set!
                       _%self140513%_
                       _%id140532%_
                       '1
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self140513%_
                       (make-hash-table-eq 'size: (##length _%in140534%_))
                       '2
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self140513%_
                       _%super140529%_
                       '3
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self140513%_
                       '#f
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self140513%_
                       '#f
                       '5
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self140513%_
                       _%path140533%_
                       '6
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self140513%_
                       _%in140534%_
                       '7
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self140513%_
                       _%e140535%_
                       '8
                       '#f
                       '#f)
                      '#!void)
                    (error '"struct-instance-init!: too many arguments for struct"
                           _%self140513%_
                           '8
                           (##structure-length _%self140513%_)))
                (##for-each
                 (lambda (_%g140536140538%_)
                   (gx#core-bind-weak-import!__%
                    _%g140536140538%_
                    _%self140513%_))
                 _%in140534%_))
              (if (##fx< '8 (##structure-length _%self140513%_))
                  (begin
                    (##unchecked-structure-set! _%self140513%_ '#f '1 '#f '#f)
                    (##unchecked-structure-set!
                     _%self140513%_
                     (make-hash-table-eq)
                     '2
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self140513%_
                     _%super140529%_
                     '3
                     '#f
                     '#f)
                    (##unchecked-structure-set! _%self140513%_ '#f '4 '#f '#f)
                    (##unchecked-structure-set! _%self140513%_ '#f '5 '#f '#f)
                    (##unchecked-structure-set! _%self140513%_ '#f '6 '#f '#f)
                    (##unchecked-structure-set! _%self140513%_ '() '7 '#f '#f)
                    (##unchecked-structure-set! _%self140513%_ '#f '8 '#f '#f)
                    '#!void)
                  (error '"struct-instance-init!: too many arguments for struct"
                         _%self140513%_
                         '8
                         (##structure-length _%self140513%_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_%self140544%_ _%ctx140545%_)
        (let ((_%root140547%_ '#f))
          (gx#prelude-context:::init!__%
           _%self140544%_
           _%ctx140545%_
           _%root140547%_))))
    (define gx#prelude-context:::init!
      (lambda _g140763_
        (let ((_g140764_ (##length _g140763_)))
          (cond ((##fx= _g140764_ 2)
                 (apply gx#prelude-context:::init!__0 _g140763_))
                ((##fx= _g140764_ 3)
                 (apply gx#prelude-context:::init!__% _g140763_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g140763_))))))
    (__bind-method!__%
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_%self140382%_ _%e140383%_)
        (if (##fx< '3 (##structure-length _%self140382%_))
            (begin
              (##unchecked-structure-set!
               _%self140382%_
               _%e140383%_
               '1
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self140382%_
               (gx#current-expander-context)
               '2
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self140382%_
               (##fx- (gx#current-expander-phi) '1)
               '3
               '#f
               '#f)
              '#!void)
            (error '"struct-instance-init!: too many arguments for struct"
                   _%self140382%_
                   '3
                   (##structure-length _%self140382%_)))))
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
      (lambda (_%g140008140011%_ _%g140009140013%_)
        (gx#core-apply-user-expander__%
         _%g140008140011%_
         _%g140009140013%_
         'apply-import-expander)))
    (__bind-method!__%
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_%g139879139882%_ _%g139880139884%_)
        (gx#core-apply-user-expander__%
         _%g139879139882%_
         _%g139880139884%_
         'apply-export-expander)))
    (__bind-method!__%
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_%ctx139750%_)
        (let* ((_%path139752%_
                (##structure-ref _%ctx139750%_ '7 gx#module-context::t '#f))
               (_%path139754%_
                (if (pair? _%path139752%_)
                    (##last _%path139752%_)
                    _%path139752%_)))
          (if (string? _%path139754%_) _%path139754%_ '#f))))
    (define gx#import-module__%
      (lambda (_%path139726%_ _%reload?139727%_ _%eval?139728%_)
        (let ((_%ctx139730%_
               ((gx#current-expander-module-import)
                _%path139726%_
                _%reload?139727%_)))
          (if (and _%ctx139730%_ _%eval?139728%_)
              (gx#eval-module _%ctx139730%_)
              '#!void)
          _%ctx139730%_)))
    (define gx#import-module__0
      (lambda (_%path139735%_)
        (let* ((_%reload?139737%_ '#f) (_%eval?139739%_ '#f))
          (gx#import-module__%
           _%path139735%_
           _%reload?139737%_
           _%eval?139739%_))))
    (define gx#import-module__1
      (lambda (_%path139741%_ _%reload?139742%_)
        (let ((_%eval?139744%_ '#f))
          (gx#import-module__%
           _%path139741%_
           _%reload?139742%_
           _%eval?139744%_))))
    (define gx#import-module
      (lambda _g140765_
        (let ((_g140766_ (##length _g140765_)))
          (cond ((##fx= _g140766_ 1) (apply gx#import-module__0 _g140765_))
                ((##fx= _g140766_ 2) (apply gx#import-module__1 _g140765_))
                ((##fx= _g140766_ 3) (apply gx#import-module__% _g140765_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g140765_))))))
    (define gx#eval-module
      (lambda (_%mod139723%_)
        ((gx#current-expander-module-eval) _%mod139723%_)))
    (define gx#core-eval-module
      (lambda (_%obj139702%_)
        (letrec ((_%force-e139704%_
                  (lambda (_%getf139718%_ _%e139719%_)
                    (call-with-parameters__1
                     (lambda ()
                       (call-with-parameters__1
                        (lambda () (force (_%getf139718%_ _%e139719%_)))
                        gx#current-expander-phi
                        '0))
                     gx#current-expander-context
                     _%e139719%_))))
          (let _%recur139706%_ ((_%e139708%_ _%obj139702%_))
            (if (##structure-instance-of? _%e139708%_ 'gx#module-context::t)
                (let ()
                  (let ((_%$e139711%_
                         (gx#core-context-prelude__% _%e139708%_)))
                    (if _%$e139711%_ (_%recur139706%_ _%$e139711%_) '#!void))
                  (_%force-e139704%_ gx#module-context-e _%e139708%_))
                (if (##structure-instance-of?
                     _%e139708%_
                     'gx#prelude-context::t)
                    (_%force-e139704%_ gx#prelude-context-e _%e139708%_)
                    (if (gx#stx-string? _%e139708%_)
                        (_%recur139706%_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _%e139708%_)))
                        (if (gx#core-library-module-path? _%e139708%_)
                            (_%recur139706%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%e139708%_)))
                            (error '"cannot eval module" _%obj139702%_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_%ctx139682%_)
        (let _%lp139684%_ ((_%e139686%_ _%ctx139682%_))
          (if (or (##structure-instance-of? _%e139686%_ 'gx#module-context::t)
                  (##structure-instance-of? _%e139686%_ 'gx#local-context::t))
              (_%lp139684%_ (##unchecked-structure-ref _%e139686%_ '3 '#f '#f))
              (if (##structure-instance-of? _%e139686%_ 'gx#prelude-context::t)
                  _%e139686%_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_%ctx139698%_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _%ctx139698%_))))
    (define gx#core-context-prelude
      (lambda _g140767_
        (let ((_g140768_ (##length _g140767_)))
          (cond ((##fx= _g140768_ 0)
                 (apply gx#core-context-prelude__0 _g140767_))
                ((##fx= _g140768_ 1)
                 (apply gx#core-context-prelude__% _g140767_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g140767_))))))
    (define gx#core-module->prelude-context
      (lambda (_%ctx139673%_)
        (let ((_%$e139675%_ (__hash-get gx#__module-registry _%ctx139673%_)))
          (if _%$e139675%_
              _%$e139675%_
              (let ((_%pre139679%_
                     (let ((__obj140759
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
                        __obj140759
                        _%ctx139673%_)
                       __obj140759)))
                (__hash-put! gx#__module-registry _%ctx139673%_ _%pre139679%_)
                _%pre139679%_)))))
    (define gx#core-import-module__%
      (lambda (_%rpath139540%_ _%reload?139541%_)
        (letrec ((_%import-source139543%_
                  (lambda (_%path139632%_)
                    (if (member _%path139632%_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _%path139632%_)
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
                                      (let ((_g140769_
                                             (gx#core-read-module
                                              _%path139632%_)))
                                        (begin
                                          (let ((_g140770_
                                                 (if (##values? _g140769_)
                                                     (##values-length
                                                      _g140769_)
                                                     1)))
                                            (if (not (##fx= _g140770_ 4))
                                                (error "Context expects 4 values"
                                                       _g140770_)))
                                          (let ((_%pre139640%_
                                                 (##values-ref _g140769_ 0))
                                                (_%id139641%_
                                                 (##values-ref _g140769_ 1))
                                                (_%ns139642%_
                                                 (##values-ref _g140769_ 2))
                                                (_%body139643%_
                                                 (##values-ref _g140769_ 3)))
                                            (let* ((_%prelude139653%_
                                                    (if (##structure-instance-of?
                                                         _%pre139640%_
                                                         'gx#prelude-context::t)
                                                        _%pre139640%_
                                                        (if (##structure-instance-of?
                                                             _%pre139640%_
                                                             'gx#module-context::t)
                                                            (gx#core-module->prelude-context
                                                             _%pre139640%_)
                                                            (if (string? _%pre139640%_)
                                                                (gx#core-module->prelude-context
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#core-import-module__0 _%pre139640%_))
                        (if (not _%pre139640%_)
                            (let ((_%$e139649%_
                                   (gx#current-expander-module-prelude)))
                              (if _%$e139649%_
                                  _%$e139649%_
                                  (let ((__obj140760
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
                                     __obj140760
                                     '#f)
                                    __obj140760)))
                            (error '"cannot import module; unknown prelude"
                                   _%rpath139540%_
                                   _%pre139640%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%ctx139655%_
                                                    (let ((__obj140761
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
                                                       __obj140761
                                                       _%id139641%_
                                                       _%prelude139653%_
                                                       _%ns139642%_
                                                       _%path139632%_)
                                                      __obj140761))
                                                   (_%body139657%_
                                                    (gx#core-expand-module-begin
                                                     _%body139643%_
                                                     _%ctx139655%_))
                                                   (_%body139659%_
                                                    (gx#core-quote-syntax__%
                                                     (gx#core-cons
                                                      '%#begin
                                                      _%body139657%_)
                                                     _%path139632%_
                                                     _%ctx139655%_
                                                     '())))
                                              (##unchecked-structure-set!
                                               _%ctx139655%_
                                               (__make-atomic-promise
                                                (lambda ()
                                                  (gx#eval-syntax*
                                                   _%body139659%_)))
                                               '10
                                               '#f
                                               '#f)
                                              (##unchecked-structure-set!
                                               _%ctx139655%_
                                               _%body139659%_
                                               '11
                                               '#f
                                               '#f)
                                              (__hash-put!
                                               gx#__module-registry
                                               _%path139632%_
                                               _%ctx139655%_)
                                              (__hash-put!
                                               gx#__module-registry
                                               _%id139641%_
                                               _%ctx139655%_)
                                              _%ctx139655%_)))))
                                    gx#current-export-expander-phi
                                    '#f))
                                 gx#current-import-expander-phi
                                 '#f))
                              gx#current-expander-path
                              (cons _%path139632%_
                                    (gx#current-expander-path))))
                           gx#current-expander-phi
                           '0))
                        gx#current-expander-marks
                        '()))
                     gx#current-expander-context
                     (gx#core-context-root__0))))
                 (_%import-submodule139544%_
                  (lambda (_%rpath139560%_)
                    (let* ((_%rpath139561139568%_ _%rpath139560%_)
                           (_%E139563139572%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%rpath139561139568%_
                                     '([origin . refs]))
                              '#!void))
                           (_%K139564139620%_
                            (lambda (_%refs139575%_ _%origin139576%_)
                              (let ((_%ctx139578%_
                                     (if _%origin139576%_
                                         (gx#core-import-module__%
                                          _%origin139576%_
                                          _%reload?139541%_)
                                         (gx#current-expander-context))))
                                (let _%lp139580%_ ((_%rest139582%_
                                                    _%refs139575%_)
                                                   (_%ctx139583%_
                                                    _%ctx139578%_))
                                  (let* ((_%rest139584139592%_ _%rest139582%_)
                                         (_%else139586139600%_
                                          (lambda () _%ctx139583%_))
                                         (_%K139588139608%_
                                          (lambda (_%rest139603%_ _%id139604%_)
                                            (let ((_%bind139606%_
                                                   (gx#resolve-identifier__%
                                                    _%id139604%_
                                                    '0
                                                    _%ctx139583%_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _%bind139606%_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _%bind139606%_
                                                         '4
                                                         '#f
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_%lp139580%_
                                                   _%rest139603%_
                                                   (##unchecked-structure-ref
                                                    _%bind139606%_
                                                    '4
                                                    '#f
                                                    '#f))
                                                  (error '"cannot import submodule; not bound as a module"
                                                         _%rpath139560%_
                                                         _%id139604%_
                                                         _%bind139606%_))))))
                                    (if (pair? _%rest139584139592%_)
                                        (let ((_%hd139589139611%_
                                               (##car _%rest139584139592%_))
                                              (_%tl139590139613%_
                                               (##cdr _%rest139584139592%_)))
                                          (let* ((_%id139616%_
                                                  _%hd139589139611%_)
                                                 (_%rest139618%_
                                                  _%tl139590139613%_))
                                            (_%K139588139608%_
                                             _%rest139618%_
                                             _%id139616%_)))
                                        (_%else139586139600%_))))))))
                      (if (pair? _%rpath139561139568%_)
                          (let ((_%hd139565139623%_
                                 (##car _%rpath139561139568%_))
                                (_%tl139566139625%_
                                 (##cdr _%rpath139561139568%_)))
                            (let* ((_%origin139628%_ _%hd139565139623%_)
                                   (_%refs139630%_ _%tl139566139625%_))
                              (_%K139564139620%_
                               _%refs139630%_
                               _%origin139628%_)))
                          (_%E139563139572%_))))))
          (let ((_%$e139546%_
                 (if (not _%reload?139541%_)
                     (__hash-get gx#__module-registry _%rpath139540%_)
                     '#f)))
            (if _%$e139546%_
                _%$e139546%_
                (if (list? _%rpath139540%_)
                    (_%import-submodule139544%_ _%rpath139540%_)
                    (if (gx#core-library-module-path? _%rpath139540%_)
                        (let ((_%ctx139551%_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _%rpath139540%_)
                                _%reload?139541%_)))
                          (__hash-put!
                           gx#__module-registry
                           _%rpath139540%_
                           _%ctx139551%_)
                          _%ctx139551%_)
                        (let* ((_%npath139554%_
                                (path-normalize _%rpath139540%_))
                               (_%$e139556%_
                                (if (not _%reload?139541%_)
                                    (__hash-get
                                     gx#__module-registry
                                     _%npath139554%_)
                                    '#f)))
                          (if _%$e139556%_
                              _%$e139556%_
                              (_%import-source139543%_
                               _%npath139554%_))))))))))
    (define gx#core-import-module__0
      (lambda (_%rpath139666%_)
        (let ((_%reload?139668%_ '#f))
          (gx#core-import-module__% _%rpath139666%_ _%reload?139668%_))))
    (define gx#core-import-module
      (lambda _g140771_
        (let ((_g140772_ (##length _g140771_)))
          (cond ((##fx= _g140772_ 1)
                 (apply gx#core-import-module__0 _g140771_))
                ((##fx= _g140772_ 2)
                 (apply gx#core-import-module__% _g140771_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g140771_))))))
    (define gx#core-read-module
      (lambda (_%path139529%_)
        (__with-catch
         (lambda (_%exn139531%_)
           (if (and (datum-parsing-exception? _%exn139531%_)
                    (eq? (datum-parsing-exception-filepos _%exn139531%_) '0))
               (gx#core-read-module/lang _%path139529%_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _%path139529%_
                (call-with-parameters__1
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_%g139533139535%_)
                      (display-exception__% _%exn139531%_ _%g139533139535%_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _%path139529%_)))))
    (define gx#core-read-module/sexp
      (lambda (_%path139381%_)
        (let _%lp139383%_ ((_%body139385%_
                            (read-syntax-from-file _%path139381%_))
                           (_%pre139386%_ '#f)
                           (_%ns139387%_ '#f)
                           (_%pkg139388%_ '#f))
          (let* ((_%e139389139413%_ _%body139385%_)
                 (_%E139405139439%_
                  (lambda ()
                    (let ((_g140773_
                           (if _%pkg139388%_
                               (values _%pre139386%_
                                       _%ns139387%_
                                       _%pkg139388%_)
                               (gx#core-read-module-package
                                _%path139381%_
                                _%pre139386%_
                                _%ns139387%_))))
                      (begin
                        (let ((_g140774_
                               (if (##values? _g140773_)
                                   (##values-length _g140773_)
                                   1)))
                          (if (not (##fx= _g140774_ 3))
                              (error "Context expects 3 values" _g140774_)))
                        (let ((_%pre139417%_ (##values-ref _g140773_ 0))
                              (_%ns139418%_ (##values-ref _g140773_ 1))
                              (_%pkg139419%_ (##values-ref _g140773_ 2)))
                          (let* ((_%prelude139425%_
                                  (if (gx#core-bound-module-prelude?
                                       _%pre139417%_)
                                      (gx#syntax-local-e__0 _%pre139417%_)
                                      (if (gx#core-library-module-path?
                                           _%pre139417%_)
                                          (gx#core-resolve-library-module-path
                                           _%pre139417%_)
                                          (if (gx#stx-string? _%pre139417%_)
                                              (gx#core-resolve-module-path__%
                                               _%pre139417%_
                                               _%path139381%_)
                                              (gx#stx-e _%pre139417%_)))))
                                 (_%path-id139427%_
                                  (gx#core-module-path->namespace
                                   _%path139381%_))
                                 (_%pkg-id139429%_
                                  (if _%pkg139419%_
                                      (##string-append
                                       _%pkg139419%_
                                       '"/"
                                       _%path-id139427%_)
                                      _%path-id139427%_))
                                 (_%module-id139431%_
                                  (##string->symbol _%pkg-id139429%_))
                                 (_%module-ns139436%_
                                  (if (eq? _%ns139418%_ '#!void)
                                      '#f
                                      (let ((_%$e139433%_ _%ns139418%_))
                                        (if _%$e139433%_
                                            _%$e139433%_
                                            _%pkg-id139429%_)))))
                            (values _%prelude139425%_
                                    _%module-id139431%_
                                    _%module-ns139436%_
                                    _%body139385%_)))))))
                 (_%E139398139471%_
                  (lambda ()
                    (if (gx#stx-pair? _%e139389139413%_)
                        (let ((_%e139406139443%_
                               (gx#syntax-e _%e139389139413%_)))
                          (let ((_%hd139407139446%_ (##car _%e139406139443%_))
                                (_%tl139408139448%_ (##cdr _%e139406139443%_)))
                            (if (eq? (gx#stx-e _%hd139407139446%_) 'package:)
                                (if (gx#stx-pair? _%tl139408139448%_)
                                    (let ((_%e139409139451%_
                                           (gx#syntax-e _%tl139408139448%_)))
                                      (let ((_%hd139410139454%_
                                             (##car _%e139409139451%_))
                                            (_%tl139411139456%_
                                             (##cdr _%e139409139451%_)))
                                        (let* ((_%pkg139459%_
                                                _%hd139410139454%_)
                                               (_%rest139461%_
                                                _%tl139411139456%_)
                                               (_%pkg139469%_
                                                (if (gx#identifier?
                                                     _%pkg139459%_)
                                                    (symbol->string
                                                     (gx#stx-e _%pkg139459%_))
                                                    (if (or (gx#stx-string?
                                                             _%pkg139459%_)
                                                            (gx#stx-false?
                                                             _%pkg139459%_))
                                                        (gx#stx-e
                                                         _%pkg139459%_)
                                                        (gx#raise-syntax-error
                                                         'import
                                                         '"Bad syntax; Illegal package name"
                                                         _%pkg139459%_)))))
                                          (_%lp139383%_
                                           _%rest139461%_
                                           _%pre139386%_
                                           _%ns139387%_
                                           _%pkg139469%_))))
                                    (_%E139405139439%_))
                                (_%E139405139439%_))))
                        (_%E139405139439%_))))
                 (_%E139391139501%_
                  (lambda ()
                    (if (gx#stx-pair? _%e139389139413%_)
                        (let ((_%e139399139475%_
                               (gx#syntax-e _%e139389139413%_)))
                          (let ((_%hd139400139478%_ (##car _%e139399139475%_))
                                (_%tl139401139480%_ (##cdr _%e139399139475%_)))
                            (if (eq? (gx#stx-e _%hd139400139478%_) 'namespace:)
                                (if (gx#stx-pair? _%tl139401139480%_)
                                    (let ((_%e139402139483%_
                                           (gx#syntax-e _%tl139401139480%_)))
                                      (let ((_%hd139403139486%_
                                             (##car _%e139402139483%_))
                                            (_%tl139404139488%_
                                             (##cdr _%e139402139483%_)))
                                        (let* ((_%ns139491%_
                                                _%hd139403139486%_)
                                               (_%rest139493%_
                                                _%tl139404139488%_)
                                               (_%ns139499%_
                                                (if (gx#identifier?
                                                     _%ns139491%_)
                                                    (symbol->string
                                                     (gx#stx-e _%ns139491%_))
                                                    (if (gx#stx-string?
                                                         _%ns139491%_)
                                                        (gx#stx-e _%ns139491%_)
                                                        (if (gx#stx-false?
                                                             _%ns139491%_)
                                                            '#!void
                                                            (gx#raise-syntax-error
                                                             'import
                                                             '"Bad syntax; illegal namespace"
                                                             _%ns139491%_))))))
                                          (_%lp139383%_
                                           _%rest139493%_
                                           _%pre139386%_
                                           _%ns139499%_
                                           _%pkg139388%_))))
                                    (_%E139398139471%_))
                                (_%E139398139471%_))))
                        (_%E139398139471%_))))
                 (_%E139390139525%_
                  (lambda ()
                    (if (gx#stx-pair? _%e139389139413%_)
                        (let ((_%e139392139505%_
                               (gx#syntax-e _%e139389139413%_)))
                          (let ((_%hd139393139508%_ (##car _%e139392139505%_))
                                (_%tl139394139510%_ (##cdr _%e139392139505%_)))
                            (if (eq? (gx#stx-e _%hd139393139508%_) 'prelude:)
                                (if (gx#stx-pair? _%tl139394139510%_)
                                    (let ((_%e139395139513%_
                                           (gx#syntax-e _%tl139394139510%_)))
                                      (let ((_%hd139396139516%_
                                             (##car _%e139395139513%_))
                                            (_%tl139397139518%_
                                             (##cdr _%e139395139513%_)))
                                        (let* ((_%prelude139521%_
                                                _%hd139396139516%_)
                                               (_%rest139523%_
                                                _%tl139397139518%_))
                                          (_%lp139383%_
                                           _%rest139523%_
                                           _%prelude139521%_
                                           _%ns139387%_
                                           _%pkg139388%_))))
                                    (_%E139391139501%_))
                                (_%E139391139501%_))))
                        (_%E139391139501%_)))))
            (_%E139390139525%_)))))
    (define gx#core-read-module/lang
      (lambda (_%path139202%_)
        (letrec ((_%default-read-module-body139204%_
                  (lambda (_%inp139373%_)
                    (let _%lp139375%_ ((_%body139377%_ '()))
                      (let ((_%next139379%_ (read-syntax__% _%inp139373%_)))
                        (if (eof-object? _%next139379%_)
                            (reverse _%body139377%_)
                            (_%lp139375%_
                             (cons _%next139379%_ _%body139377%_)))))))
                 (_%read-body139205%_
                  (lambda (_%inp139290%_
                           _%pre139291%_
                           _%ns139292%_
                           _%pkg139293%_
                           _%args139294%_)
                    (let ((_g140775_
                           (if _%pkg139293%_
                               (values _%pre139291%_
                                       _%ns139292%_
                                       _%pkg139293%_)
                               (gx#core-read-module-package
                                _%path139202%_
                                _%pre139291%_
                                _%ns139292%_))))
                      (begin
                        (let ((_g140776_
                               (if (##values? _g140775_)
                                   (##values-length _g140775_)
                                   1)))
                          (if (not (##fx= _g140776_ 3))
                              (error "Context expects 3 values" _g140776_)))
                        (let ((_%pre139296%_ (##values-ref _g140775_ 0))
                              (_%ns139297%_ (##values-ref _g140775_ 1))
                              (_%pkg139298%_ (##values-ref _g140775_ 2)))
                          (let* ((_%prelude139300%_
                                  (gx#import-module__0 _%pre139296%_))
                                 (_%read-module-body139355%_
                                  (let ((_%$e139346%_
                                         (__find (lambda (_%e139301139303%_)
                                                   (let* ((_%g139305139315%_
                                                           _%e139301139303%_)
                                                          (_%else139307139323%_
                                                           (lambda () '#f))
                                                          (_%K139309139327%_
                                                           (lambda () '#t)))
                                                     (if (##structure-direct-instance-of?
                                                          _%g139305139315%_
                                                          'gx#module-export::t)
                                                         (let* ((_%e139310139330%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##unchecked-structure-ref
                          _%g139305139315%_
                          '1
                          '#f
                          '#f))
                        (_%e139311139333%_
                         (##unchecked-structure-ref
                          _%g139305139315%_
                          '2
                          '#f
                          '#f))
                        (_%e139312139336%_
                         (##unchecked-structure-ref
                          _%g139305139315%_
                          '3
                          '#f
                          '#f)))
                   (if (##eq? _%e139312139336%_ '1)
                       (let ((_%e139313139339%_
                              (##unchecked-structure-ref
                               _%g139305139315%_
                               '4
                               '#f
                               '#f)))
                         (if ((lambda (_%g139341139343%_)
                                (eq? _%g139341139343%_ 'read-module-body))
                              _%e139313139339%_)
                             (_%K139309139327%_)
                             (_%else139307139323%_)))
                       (_%else139307139323%_)))
                 (_%else139307139323%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (##unchecked-structure-ref
                                                  _%prelude139300%_
                                                  '9
                                                  '#f
                                                  '#f))))
                                    (if _%$e139346%_
                                        ((lambda (_%xport139349%_)
                                           (let ((_%proc139352%_
                                                  (__with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _%xport139349%_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _%proc139352%_)
                                                 _%proc139352%_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _%path139202%_
                                                  _%pre139296%_
                                                  _%proc139352%_))))
                                         _%$e139346%_)
                                        _%default-read-module-body139204%_)))
                                 (_%path-id139357%_
                                  (gx#core-module-path->namespace
                                   _%path139202%_))
                                 (_%pkg-id139359%_
                                  (if _%pkg139298%_
                                      (##string-append
                                       _%pkg139298%_
                                       '"/"
                                       _%path-id139357%_)
                                      _%path-id139357%_))
                                 (_%module-id139361%_
                                  (##string->symbol _%pkg-id139359%_))
                                 (_%module-ns139366%_
                                  (let ((_%$e139363%_ _%ns139297%_))
                                    (if _%$e139363%_
                                        _%$e139363%_
                                        _%pkg-id139359%_)))
                                 (_%body139370%_
                                  (call-with-parameters__1
                                   (lambda ()
                                     (call-with-parameters__1
                                      (lambda ()
                                        (_%read-module-body139355%_
                                         _%inp139290%_))
                                      gx#current-module-reader-args
                                      _%args139294%_))
                                   gx#current-module-reader-path
                                   _%path139202%_)))
                            (values _%prelude139300%_
                                    _%module-id139361%_
                                    _%module-ns139366%_
                                    _%body139370%_)))))))
                 (_%string-e139206%_
                  (lambda (_%obj139284%_ _%what139285%_)
                    (if (string? _%obj139284%_)
                        _%obj139284%_
                        (if (symbol? _%obj139284%_)
                            (##symbol->string _%obj139284%_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _%what139285%_)
                             _%path139202%_
                             _%obj139284%_)))))
                 (_%read-lang-args139207%_
                  (lambda (_%inp139239%_ _%args139240%_)
                    (let* ((_%args139241139249%_ _%args139240%_)
                           (_%else139243139257%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _%path139202%_)))
                           (_%K139245139272%_
                            (lambda (_%args139260%_ _%prelude139261%_)
                              (let* ((_%pkg139263%_
                                      (pgetq__0 'package: _%args139260%_))
                                     (_%pkg139265%_
                                      (if _%pkg139263%_
                                          (_%string-e139206%_
                                           _%pkg139263%_
                                           '"package")
                                          '#f))
                                     (_%ns139267%_
                                      (pgetq__0 'namespace: _%args139260%_))
                                     (_%ns139269%_
                                      (if _%ns139267%_
                                          (_%string-e139206%_
                                           _%ns139267%_
                                           '"namespace")
                                          '#f)))
                                (_%read-body139205%_
                                 _%inp139239%_
                                 _%prelude139261%_
                                 _%ns139269%_
                                 _%pkg139265%_
                                 _%args139260%_)))))
                      (if (pair? _%args139241139249%_)
                          (let ((_%hd139246139275%_
                                 (##car _%args139241139249%_))
                                (_%tl139247139277%_
                                 (##cdr _%args139241139249%_)))
                            (let* ((_%prelude139280%_ _%hd139246139275%_)
                                   (_%args139282%_ _%tl139247139277%_))
                              (_%K139245139272%_
                               _%args139282%_
                               _%prelude139280%_)))
                          (_%else139243139257%_)))))
                 (_%read-lang139208%_
                  (lambda (_%inp139213%_)
                    (let* ((_%head139215%_ (read-line _%inp139213%_))
                           (_%$e139217%_
                            (string-index__0 _%head139215%_ '#\space)))
                      (if _%$e139217%_
                          ((lambda (_%ix139220%_)
                             (let ((_%lang139222%_
                                    (substring
                                     _%head139215%_
                                     '0
                                     _%ix139220%_)))
                               (if (equal? _%lang139222%_ '"#lang")
                                   (let* ((_%rest139224%_
                                           (substring
                                            _%head139215%_
                                            (##fx+ _%ix139220%_ '1)
                                            (string-length _%head139215%_)))
                                          (_%args139235%_
                                           (__with-catch
                                            (lambda (_%g139225139227%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _%path139202%_
                                               _%g139225139227%_))
                                            (lambda ()
                                              (call-with-input-string
                                               _%rest139224%_
                                               (lambda (_%g139230139232%_)
                                                 (read-all
                                                  _%g139230139232%_
                                                  read)))))))
                                     (_%read-lang-args139207%_
                                      _%inp139213%_
                                      _%args139235%_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _%path139202%_))))
                           _%$e139217%_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _%path139202%_)))))
                 (_%read-e139209%_
                  (lambda (_%inp139211%_)
                    (if (eq? (peek-char _%inp139211%_) '#\#)
                        (_%read-lang139208%_ _%inp139211%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _%path139202%_)))))
          (gx#call-with-input-source-file _%path139202%_ _%read-e139209%_))))
    (define gx#core-read-module-package
      (lambda (_%path139150%_ _%pre139151%_ _%ns139152%_)
        (letrec ((_%string-e139154%_
                  (lambda (_%e139197%_)
                    (if (symbol? _%e139197%_)
                        (##symbol->string _%e139197%_)
                        (if (string? _%e139197%_)
                            _%e139197%_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%e139197%_))))))
          (let _%lp139156%_ ((_%dir139158%_ (path-directory _%path139150%_))
                             (_%pkg-path139159%_ '()))
            (let ((_%gerbil.pkg139161%_
                   (path-expand '"gerbil.pkg" _%dir139158%_)))
              (if (##file-exists? _%gerbil.pkg139161%_)
                  (let ((_%plist139163%_
                         (gx#core-library-package-plist__% _%dir139158%_ '#t)))
                    (if (null? _%plist139163%_)
                        (let ((_%pkg139166%_
                               (if (null? _%pkg-path139159%_)
                                   '#f
                                   (string-join _%pkg-path139159%_ '"/"))))
                          (values _%pre139151%_ _%ns139152%_ _%pkg139166%_))
                        (if (list? _%plist139163%_)
                            (let* ((_%root139169%_
                                    (pgetq__0 'package: _%plist139163%_))
                                   (_%pkg139173%_
                                    (let ((_%pkg-path139171%_
                                           (if _%root139169%_
                                               (cons (_%string-e139154%_
                                                      _%root139169%_)
                                                     _%pkg-path139159%_)
                                               _%pkg-path139159%_)))
                                      (if (null? _%pkg-path139171%_)
                                          '#f
                                          (string-join
                                           _%pkg-path139171%_
                                           '"/"))))
                                   (_%ns139180%_
                                    (let ((_%ns139178%_
                                           (let ((_%$e139175%_ _%ns139152%_))
                                             (if _%$e139175%_
                                                 _%$e139175%_
                                                 (pgetq__0
                                                  'namespace:
                                                  _%plist139163%_)))))
                                      (if _%ns139178%_
                                          (_%string-e139154%_ _%ns139178%_)
                                          '#f)))
                                   (_%pre139185%_
                                    (let ((_%$e139182%_ _%pre139151%_))
                                      (if _%$e139182%_
                                          _%$e139182%_
                                          (pgetq__0
                                           'prelude:
                                           _%plist139163%_)))))
                              (values _%pre139185%_
                                      _%ns139180%_
                                      _%pkg139173%_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%plist139163%_))))
                  (let ((_%dir*139189%_
                         (path-strip-trailing-directory-separator
                          _%dir139158%_)))
                    (if (or (__string-empty? _%dir*139189%_)
                            (equal? _%dir139158%_ _%dir*139189%_))
                        (values _%pre139151%_ _%ns139152%_ '#f)
                        (let ((_%xpath139194%_
                               (path-strip-directory _%dir*139189%_))
                              (_%xdir139195%_ (path-directory _%dir*139189%_)))
                          (_%lp139156%_
                           _%xdir139195%_
                           (cons _%xpath139194%_ _%pkg-path139159%_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_%path139148%_)
        (path-strip-extension (path-strip-directory _%path139148%_))))
    (define gx#core-module-path->id
      (lambda (_%path139146%_)
        (##string->symbol (gx#core-module-path->namespace _%path139146%_))))
    (define gx#core-resolve-module-path__%
      (lambda (_%stx-path139125%_ _%rel139126%_)
        (let* ((_%path139128%_ (gx#stx-e _%stx-path139125%_))
               (_%path139130%_
                (if (__string-empty? (path-extension _%path139128%_))
                    (##string-append _%path139128%_ '".ss")
                    _%path139128%_)))
          (gx#core-resolve-path__%
           _%path139130%_
           (let ((_%$e139133%_ (gx#stx-source _%stx-path139125%_)))
             (if _%$e139133%_ _%$e139133%_ _%rel139126%_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_%stx-path139139%_)
        (let ((_%rel139141%_ '#f))
          (gx#core-resolve-module-path__% _%stx-path139139%_ _%rel139141%_))))
    (define gx#core-resolve-module-path
      (lambda _g140777_
        (let ((_g140778_ (##length _g140777_)))
          (cond ((##fx= _g140778_ 1)
                 (apply gx#core-resolve-module-path__0 _g140777_))
                ((##fx= _g140778_ 2)
                 (apply gx#core-resolve-module-path__% _g140777_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g140777_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_%libpath139010%_)
        (let* ((_%spath139012%_ (symbol->string (gx#stx-e _%libpath139010%_)))
               (_%spath139014%_
                (substring
                 _%spath139012%_
                 '1
                 (##string-length _%spath139012%_)))
               (_%ext139016%_ (path-extension _%spath139014%_))
               (_%ssi139018%_
                (if (__string-empty? _%ext139016%_)
                    (##string-append _%spath139014%_ '".ssi")
                    (##string-append
                     (path-strip-extension _%spath139014%_)
                     '".ssi")))
               (_%srcs139022%_
                (if (__string-empty? _%ext139016%_)
                    (##map (lambda (_%ext139020%_)
                             (string-append _%spath139014%_ _%ext139020%_))
                           '(".ss" ".sld" ".scm"))
                    (cons _%spath139014%_ '()))))
          (let _%lp139025%_ ((_%rest139027%_ (load-path)))
            (let* ((_%rest139028139037%_ _%rest139027%_)
                   (_%E139031139041%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rest139028139037%_
                             '([dir . rest])
                             '([]))
                      '#!void)))
              (let ((_%K139033139112%_
                     (lambda (_%rest139052%_ _%dir139053%_)
                       (letrec ((_%resolve139055%_
                                 (lambda (_%ssi139068%_ _%srcs139069%_)
                                   (let ((_%compiled-path139071%_
                                          (path-expand
                                           _%ssi139068%_
                                           _%dir139053%_)))
                                     (if (##file-exists?
                                          _%compiled-path139071%_)
                                         (path-normalize
                                          _%compiled-path139071%_)
                                         (let _%lpr139073%_ ((_%rest-src139075%_
                                                              _%srcs139069%_))
                                           (let* ((_%rest-src139076139084%_
                                                   _%rest-src139075%_)
                                                  (_%else139078139092%_
                                                   (lambda ()
                                                     (_%lp139025%_
                                                      _%rest139052%_)))
                                                  (_%K139080139100%_
                                                   (lambda (_%rest-src139095%_
                                                            _%src139096%_)
                                                     (let ((_%src-path139098%_
                                                            (path-expand
                                                             _%src139096%_
                                                             _%dir139053%_)))
                                                       (if (##file-exists?
                                                            _%src-path139098%_)
                                                           (path-normalize
                                                            _%src-path139098%_)
                                                           (_%lpr139073%_
                                                            _%rest-src139095%_))))))
                                             (if (pair? _%rest-src139076139084%_)
                                                 (let ((_%hd139081139103%_
                                                        (##car _%rest-src139076139084%_))
                                                       (_%tl139082139105%_
                                                        (##cdr _%rest-src139076139084%_)))
                                                   (let* ((_%src139108%_
                                                           _%hd139081139103%_)
                                                          (_%rest-src139110%_
                                                           _%tl139082139105%_))
                                                     (_%K139080139100%_
                                                      _%rest-src139110%_
                                                      _%src139108%_)))
                                                 (_%else139078139092%_)))))))))
                         (let ((_%$e139057%_
                                (gx#core-library-package-path-prefix
                                 _%dir139053%_)))
                           (if _%$e139057%_
                               ((lambda (_%prefix139060%_)
                                  (if (string-prefix?
                                       _%prefix139060%_
                                       _%spath139014%_)
                                      (let ((_%ssi139064%_
                                             (substring
                                              _%ssi139018%_
                                              (string-length _%prefix139060%_)
                                              (##string-length _%ssi139018%_)))
                                            (_%srcs139065%_
                                             (##map (lambda (_%src139062%_)
                                                      (substring
                                                       _%src139062%_
                                                       (string-length
                                                        _%prefix139060%_)
                                                       (string-length
                                                        _%src139062%_)))
                                                    _%srcs139022%_)))
                                        (_%resolve139055%_
                                         _%ssi139064%_
                                         _%srcs139065%_))
                                      (_%lp139025%_ _%rest139052%_)))
                                _%$e139057%_)
                               (_%resolve139055%_
                                _%ssi139018%_
                                _%srcs139022%_))))))
                    (_%K139032139046%_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"cannot find library module"
                        _%libpath139010%_))))
                (let ((_%try-match139030139049%_
                       (lambda ()
                         (if (null? _%rest139028139037%_)
                             (_%K139032139046%_)
                             (_%E139031139041%_)))))
                  (if (pair? _%rest139028139037%_)
                      (let ((_%tl139035139117%_ (##cdr _%rest139028139037%_))
                            (_%hd139034139115%_ (##car _%rest139028139037%_)))
                        (let ((_%dir139120%_ _%hd139034139115%_)
                              (_%rest139122%_ _%tl139035139117%_))
                          (_%K139033139112%_ _%rest139122%_ _%dir139120%_)))
                      (_%try-match139030139049%_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_%modpath138978%_)
        (letrec ((_%resolve138980%_
                  (lambda (_%path139001%_ _%base139002%_)
                    (let ((_%$e139004%_
                           (string-rindex__0 _%base139002%_ '#\/)))
                      (if _%$e139004%_
                          ((lambda (_%idx139007%_)
                             (gx#core-resolve-library-module-path
                              (##string->symbol
                               (string-append
                                '":"
                                (substring _%base139002%_ '0 _%idx139007%_)
                                '"/"
                                _%path139001%_))))
                           _%$e139004%_)
                          (gx#core-resolve-library-module-path
                           (##string->symbol
                            (string-append '":" _%path139001%_))))))))
          (let ((_%spath138982%_ (symbol->string (gx#stx-e _%modpath138978%_)))
                (_%mod138983%_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _%mod138983%_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"cannot resolve relative module path; not in module context"
                 _%modpath138978%_))
            (let ((_%mpath138985%_
                   (symbol->string
                    (##structure-ref
                     _%mod138983%_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _%lp138987%_ ((_%spath138989%_ _%spath138982%_)
                                 (_%mpath138990%_ _%mpath138985%_))
                (if (string-prefix? '"../" _%spath138989%_)
                    (let ((_%$e138993%_
                           (string-rindex__0 _%mpath138990%_ '#\/)))
                      (if _%$e138993%_
                          ((lambda (_%idx138996%_)
                             (_%lp138987%_
                              (substring
                               _%spath138989%_
                               '3
                               (string-length _%spath138989%_))
                              (substring _%mpath138990%_ '0 _%idx138996%_)))
                           _%$e138993%_)
                          (gx#raise-syntax-error
                           '#f
                           '"cannot resolve relative module path; illegal traversal"
                           _%modpath138978%_)))
                    (if (string-prefix? '"./" _%spath138989%_)
                        (_%lp138987%_
                         (substring
                          _%spath138989%_
                          '2
                          (string-length _%spath138989%_))
                         _%mpath138990%_)
                        (_%resolve138980%_
                         _%spath138989%_
                         _%mpath138990%_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_%dir138970%_)
        (let ((_%$e138972%_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _%dir138970%_))))
          (if _%$e138972%_
              ((lambda (_%pkg138975%_)
                 (##string-append (symbol->string _%pkg138975%_) '"/"))
               _%$e138972%_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_%dir138940%_ _%exists?138941%_)
        (let ((_%$e138943%_ (__hash-get gx#__module-pkg-cache _%dir138940%_)))
          (if _%$e138943%_
              _%$e138943%_
              (let* ((_%gerbil.pkg138947%_
                      (path-expand '"gerbil.pkg" _%dir138940%_))
                     (_%plist138957%_
                      (if (or _%exists?138941%_
                              (##file-exists? _%gerbil.pkg138947%_))
                          (let ((_%e138952%_
                                 (gx#call-with-input-source-file
                                  _%gerbil.pkg138947%_
                                  read)))
                            (if (eof-object? _%e138952%_)
                                '()
                                (if (list? _%e138952%_)
                                    _%e138952%_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _%gerbil.pkg138947%_
                                     _%e138952%_))))
                          '())))
                (__hash-put!
                 gx#__module-pkg-cache
                 _%dir138940%_
                 _%plist138957%_)
                _%plist138957%_)))))
    (define gx#core-library-package-plist__0
      (lambda (_%dir138963%_)
        (let ((_%exists?138965%_ '#f))
          (gx#core-library-package-plist__% _%dir138963%_ _%exists?138965%_))))
    (define gx#core-library-package-plist
      (lambda _g140779_
        (let ((_g140780_ (##length _g140779_)))
          (cond ((##fx= _g140780_ 1)
                 (apply gx#core-library-package-plist__0 _g140779_))
                ((##fx= _g140780_ 2)
                 (apply gx#core-library-package-plist__% _g140779_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g140779_))))))
    (define gx#core-library-module-path?
      (lambda (_%stx138937%_)
        (gx#core-special-module-path? _%stx138937%_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_%stx138935%_)
        (gx#core-special-module-path? _%stx138935%_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_%stx138930%_ _%char138931%_)
        (if (gx#identifier? _%stx138930%_)
            (if (interned-symbol? (gx#stx-e _%stx138930%_))
                (let ((_%str138933%_
                       (symbol->string (gx#stx-e _%stx138930%_))))
                  (if (##fx> (##string-length _%str138933%_) '1)
                      (eq? (string-ref _%str138933%_ '0) _%char138931%_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_%stx138924%_)
        (gx#core-bound-identifier?__%
         _%stx138924%_
         (lambda (_%g138925138927%_)
           (gx#expander-binding?__% _%g138925138927%_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_%stx138918%_)
        (gx#core-bound-identifier?__%
         _%stx138918%_
         (lambda (_%g138919138921%_)
           (gx#expander-binding?__% _%g138919138921%_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_%stx138905%_)
        (letrec ((_%module-prelude?138907%_
                  (lambda (_%e138913%_)
                    (let ((_%$e138915%_
                           (##structure-instance-of?
                            _%e138913%_
                            'gx#module-context::t)))
                      (if _%$e138915%_
                          _%$e138915%_
                          (##structure-instance-of?
                           _%e138913%_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _%stx138905%_
           (lambda (_%g138908138910%_)
             (gx#expander-binding?__%
              _%g138908138910%_
              _%module-prelude?138907%_))))))
    (define gx#core-bind-import!__%
      (lambda (_%in138835%_ _%ctx138836%_ _%force-weak?138837%_)
        (let* ((_%in138838138847%_ _%in138835%_)
               (_%E138840138851%_
                (lambda ()
                  (error '"No clause matching"
                         _%in138838138847%_
                         '((module-import source key phi weak?)))
                  '#!void))
               (_%K138841138864%_
                (lambda (_%weak?138854%_
                         _%phi138855%_
                         _%key138856%_
                         _%source138857%_)
                  (gx#core-bind!__%
                   _%key138856%_
                   (let ((_%e138859%_
                          (gx#core-resolve-module-export _%source138857%_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref _%e138859%_ '1 '#f '#f)
                      _%key138856%_
                      _%phi138855%_
                      _%e138859%_
                      (##unchecked-structure-ref _%source138857%_ '1 '#f '#f)
                      (let ((_%$e138861%_ _%force-weak?138837%_))
                        (if _%$e138861%_ _%$e138861%_ _%weak?138854%_))))
                   gx#core-context-rebind?
                   _%phi138855%_
                   _%ctx138836%_))))
          (if (##structure-direct-instance-of?
               _%in138838138847%_
               'gx#module-import::t)
              (let* ((_%e138842138867%_
                      (##unchecked-structure-ref
                       _%in138838138847%_
                       '1
                       '#f
                       '#f))
                     (_%source138870%_ _%e138842138867%_)
                     (_%e138843138872%_
                      (##unchecked-structure-ref
                       _%in138838138847%_
                       '2
                       '#f
                       '#f))
                     (_%key138875%_ _%e138843138872%_)
                     (_%e138844138877%_
                      (##unchecked-structure-ref
                       _%in138838138847%_
                       '3
                       '#f
                       '#f))
                     (_%phi138880%_ _%e138844138877%_)
                     (_%e138845138882%_
                      (##unchecked-structure-ref
                       _%in138838138847%_
                       '4
                       '#f
                       '#f))
                     (_%weak?138885%_ _%e138845138882%_))
                (_%K138841138864%_
                 _%weak?138885%_
                 _%phi138880%_
                 _%key138875%_
                 _%source138870%_))
              (_%E138840138851%_)))))
    (define gx#core-bind-import!__0
      (lambda (_%in138890%_)
        (let* ((_%ctx138892%_ (gx#current-expander-context))
               (_%force-weak?138894%_ '#f))
          (gx#core-bind-import!__%
           _%in138890%_
           _%ctx138892%_
           _%force-weak?138894%_))))
    (define gx#core-bind-import!__1
      (lambda (_%in138896%_ _%ctx138897%_)
        (let ((_%force-weak?138899%_ '#f))
          (gx#core-bind-import!__%
           _%in138896%_
           _%ctx138897%_
           _%force-weak?138899%_))))
    (define gx#core-bind-import!
      (lambda _g140781_
        (let ((_g140782_ (##length _g140781_)))
          (cond ((##fx= _g140782_ 1) (apply gx#core-bind-import!__0 _g140781_))
                ((##fx= _g140782_ 2) (apply gx#core-bind-import!__1 _g140781_))
                ((##fx= _g140782_ 3) (apply gx#core-bind-import!__% _g140781_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g140781_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_%in138821%_ _%ctx138822%_)
        (gx#core-bind-import!__% _%in138821%_ _%ctx138822%_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_%in138827%_)
        (let ((_%ctx138829%_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _%in138827%_ _%ctx138829%_))))
    (define gx#core-bind-weak-import!
      (lambda _g140783_
        (let ((_g140784_ (##length _g140783_)))
          (cond ((##fx= _g140784_ 1)
                 (apply gx#core-bind-weak-import!__0 _g140783_))
                ((##fx= _g140784_ 2)
                 (apply gx#core-bind-weak-import!__% _g140783_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g140783_))))))
    (define gx#core-resolve-module-export
      (lambda (_%out138712%_)
        (letrec ((_%subst138714%_
                  (lambda (_%key138760%_)
                    (let* ((_%key138761138769%_ _%key138760%_)
                           (_%else138763138777%_ (lambda () _%key138760%_))
                           (_%K138765138808%_
                            (lambda (_%mark138780%_ _%id138781%_)
                              (let* ((_%mark138782138788%_ _%mark138780%_)
                                     (_%E138784138792%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark138782138788%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K138785138800%_
                                      (lambda (_%subst138795%_)
                                        (let ((_%$e138797%_
                                               (if _%subst138795%_
                                                   (hash-get
                                                    _%subst138795%_
                                                    _%id138781%_)
                                                   '#f)))
                                          (if _%$e138797%_
                                              _%$e138797%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _%key138760%_))))))
                                (if (##structure-instance-of?
                                     _%mark138782138788%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e138786138803%_
                                            (##unchecked-structure-ref
                                             _%mark138782138788%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst138806%_ _%e138786138803%_))
                                      (_%K138785138800%_ _%subst138806%_))
                                    (_%E138784138792%_))))))
                      (if (pair? _%key138761138769%_)
                          (let ((_%hd138766138811%_
                                 (##car _%key138761138769%_))
                                (_%tl138767138813%_
                                 (##cdr _%key138761138769%_)))
                            (let* ((_%id138816%_ _%hd138766138811%_)
                                   (_%mark138818%_ _%tl138767138813%_))
                              (_%K138765138808%_ _%mark138818%_ _%id138816%_)))
                          (_%else138763138777%_))))))
          (let* ((_%out138715138725%_ _%out138712%_)
                 (_%E138717138729%_
                  (lambda ()
                    (error '"No clause matching"
                           _%out138715138725%_
                           '((module-export ctx key phi _ _)))
                    '#!void))
                 (_%K138718138736%_
                  (lambda (_%phi138732%_ _%key138733%_ _%ctx138734%_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _%ctx138734%_ _%phi138732%_)
                     (_%subst138714%_ _%key138733%_)))))
            (if (##structure-direct-instance-of?
                 _%out138715138725%_
                 'gx#module-export::t)
                (let* ((_%e138719138739%_
                        (##unchecked-structure-ref
                         _%out138715138725%_
                         '1
                         '#f
                         '#f))
                       (_%ctx138742%_ _%e138719138739%_)
                       (_%e138720138744%_
                        (##unchecked-structure-ref
                         _%out138715138725%_
                         '2
                         '#f
                         '#f))
                       (_%key138747%_ _%e138720138744%_)
                       (_%e138721138749%_
                        (##unchecked-structure-ref
                         _%out138715138725%_
                         '3
                         '#f
                         '#f))
                       (_%phi138752%_ _%e138721138749%_)
                       (_%e138722138754%_
                        (##unchecked-structure-ref
                         _%out138715138725%_
                         '4
                         '#f
                         '#f))
                       (_%e138723138757%_
                        (##unchecked-structure-ref
                         _%out138715138725%_
                         '5
                         '#f
                         '#f)))
                  (_%K138718138736%_
                   _%phi138752%_
                   _%key138747%_
                   _%ctx138742%_))
                (_%E138717138729%_))))))
    (define gx#core-module-export->import__%
      (lambda (_%out138637%_ _%rename138638%_ _%dphi138639%_)
        (let* ((_%out138640138650%_ _%out138637%_)
               (_%E138642138654%_
                (lambda ()
                  (error '"No clause matching"
                         _%out138640138650%_
                         '((module-export ctx key phi name weak?)))
                  '#!void))
               (_%K138643138666%_
                (lambda (_%weak?138657%_
                         _%name138658%_
                         _%phi138659%_
                         _%key138660%_
                         _%ctx138661%_)
                  (##structure
                   gx#module-import::t
                   _%out138637%_
                   (let ((_%$e138663%_ _%rename138638%_))
                     (if _%$e138663%_ _%$e138663%_ _%name138658%_))
                   (fx+ _%phi138659%_ _%dphi138639%_)
                   _%weak?138657%_))))
          (if (##structure-direct-instance-of?
               _%out138640138650%_
               'gx#module-export::t)
              (let* ((_%e138644138669%_
                      (##unchecked-structure-ref
                       _%out138640138650%_
                       '1
                       '#f
                       '#f))
                     (_%ctx138672%_ _%e138644138669%_)
                     (_%e138645138674%_
                      (##unchecked-structure-ref
                       _%out138640138650%_
                       '2
                       '#f
                       '#f))
                     (_%key138677%_ _%e138645138674%_)
                     (_%e138646138679%_
                      (##unchecked-structure-ref
                       _%out138640138650%_
                       '3
                       '#f
                       '#f))
                     (_%phi138682%_ _%e138646138679%_)
                     (_%e138647138684%_
                      (##unchecked-structure-ref
                       _%out138640138650%_
                       '4
                       '#f
                       '#f))
                     (_%name138687%_ _%e138647138684%_)
                     (_%e138648138689%_
                      (##unchecked-structure-ref
                       _%out138640138650%_
                       '5
                       '#f
                       '#f))
                     (_%weak?138692%_ _%e138648138689%_))
                (_%K138643138666%_
                 _%weak?138692%_
                 _%name138687%_
                 _%phi138682%_
                 _%key138677%_
                 _%ctx138672%_))
              (_%E138642138654%_)))))
    (define gx#core-module-export->import__0
      (lambda (_%out138697%_)
        (let* ((_%rename138699%_ '#f) (_%dphi138701%_ '0))
          (gx#core-module-export->import__%
           _%out138697%_
           _%rename138699%_
           _%dphi138701%_))))
    (define gx#core-module-export->import__1
      (lambda (_%out138703%_ _%rename138704%_)
        (let ((_%dphi138706%_ '0))
          (gx#core-module-export->import__%
           _%out138703%_
           _%rename138704%_
           _%dphi138706%_))))
    (define gx#core-module-export->import
      (lambda _g140785_
        (let ((_g140786_ (##length _g140785_)))
          (cond ((##fx= _g140786_ 1)
                 (apply gx#core-module-export->import__0 _g140785_))
                ((##fx= _g140786_ 2)
                 (apply gx#core-module-export->import__1 _g140785_))
                ((##fx= _g140786_ 3)
                 (apply gx#core-module-export->import__% _g140785_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g140785_))))))
    (define gx#core-expand-module%
      (lambda (_%stx138536%_)
        (letrec ((_%make-context138538%_
                  (lambda (_%id138615%_)
                    (let* ((_%super138617%_ (gx#current-expander-context))
                           (_%bind-id138619%_ (gx#stx-e _%id138615%_))
                           (_%mod-id138621%_
                            (if (##structure-instance-of?
                                 _%super138617%_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##unchecked-structure-ref
                                  _%super138617%_
                                  '1
                                  '#f
                                  '#f)
                                 '"~"
                                 _%bind-id138619%_)
                                _%bind-id138619%_))
                           (_%ns138623%_ (symbol->string _%mod-id138621%_))
                           (_%path138633%_
                            (if (##structure-instance-of?
                                 _%super138617%_
                                 'gx#module-context::t)
                                (let ((_%path138625%_
                                       (##unchecked-structure-ref
                                        _%super138617%_
                                        '7
                                        '#f
                                        '#f)))
                                  (if (or (pair? _%path138625%_)
                                          (null? _%path138625%_))
                                      (cons _%bind-id138619%_ _%path138625%_)
                                      (if (not _%path138625%_)
                                          _%bind-id138619%_
                                          (cons _%bind-id138619%_
                                                (cons _%path138625%_ '())))))
                                _%bind-id138619%_))
                           (__obj140762
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
                       __obj140762
                       _%mod-id138621%_
                       _%super138617%_
                       _%ns138623%_
                       _%path138633%_)
                      __obj140762)))
                 (_%valid-module-id?138539%_
                  (lambda (_%id138590%_)
                    (let* ((_%str138592%_ (symbol->string _%id138590%_))
                           (_%len138594%_ (##string-length _%str138592%_)))
                      (if (##fx>= _%len138594%_ '1)
                          (let _%loop138597%_ ((_%index138599%_
                                                (##fx- (##string-length
                                                        _%str138592%_)
                                                       '1)))
                            (if (##fx>= _%index138599%_ '0)
                                (let ((_%c138601%_
                                       (string-ref
                                        _%str138592%_
                                        _%index138599%_)))
                                  (if (or (and (##char>=? _%c138601%_ '#\a)
                                               (##char<=? _%c138601%_ '#\z))
                                          (and (##char>=? _%c138601%_ '#\A)
                                               (##char<=? _%c138601%_ '#\Z))
                                          (and (##char>=? _%c138601%_ '#\0)
                                               (##char<=? _%c138601%_ '#\9))
                                          (##char=? _%c138601%_ '#\_)
                                          (##char=? _%c138601%_ '#\-))
                                      (_%loop138597%_
                                       (##fx- _%index138599%_ '1))
                                      '#f))
                                '#t))
                          '#f)))))
          (let* ((_%e138540138550%_ _%stx138536%_)
                 (_%E138542138554%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e138540138550%_)))
                 (_%E138541138586%_
                  (lambda ()
                    (if (gx#stx-pair? _%e138540138550%_)
                        (let ((_%e138543138558%_
                               (gx#syntax-e _%e138540138550%_)))
                          (let ((_%hd138544138561%_ (##car _%e138543138558%_))
                                (_%tl138545138563%_ (##cdr _%e138543138558%_)))
                            (if (gx#stx-pair? _%tl138545138563%_)
                                (let ((_%e138546138566%_
                                       (gx#syntax-e _%tl138545138563%_)))
                                  (let ((_%hd138547138569%_
                                         (##car _%e138546138566%_))
                                        (_%tl138548138571%_
                                         (##cdr _%e138546138566%_)))
                                    (let* ((_%id138574%_ _%hd138547138569%_)
                                           (_%body138576%_ _%tl138548138571%_))
                                      (if (and (gx#identifier? _%id138574%_)
                                               (gx#stx-list? _%body138576%_))
                                          (if (_%valid-module-id?138539%_
                                               (gx#stx-e
                                                (gx#datum->syntax__0 '#f 'id)))
                                              (let* ((_%ctx138578%_
                                                      (_%make-context138538%_
                                                       _%id138574%_))
                                                     (_%body138580%_
                                                      (gx#core-expand-module-begin
                                                       _%body138576%_
                                                       _%ctx138578%_))
                                                     (_%body138582%_
                                                      (gx#core-quote-syntax__1
                                                       (gx#core-cons
                                                        '%#begin
                                                        _%body138580%_)
                                                       (gx#stx-source
                                                        _%stx138536%_))))
                                                (##unchecked-structure-set!
                                                 _%ctx138578%_
                                                 (__make-atomic-promise
                                                  (lambda ()
                                                    (gx#eval-syntax*
                                                     _%body138582%_)))
                                                 '10
                                                 '#f
                                                 '#f)
                                                (##unchecked-structure-set!
                                                 _%ctx138578%_
                                                 _%body138582%_
                                                 '11
                                                 '#f
                                                 '#f)
                                                (gx#core-bind-syntax!__0
                                                 _%id138574%_
                                                 _%ctx138578%_)
                                                (gx#core-quote-syntax__1
                                                 (gx#core-list
                                                  '%#module
                                                  (gx#core-quote-syntax__0
                                                   _%id138574%_)
                                                  _%body138582%_)
                                                 (gx#stx-source
                                                  _%stx138536%_)))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"invalid module id; allowed characters are A-Z,a-z,0-9,_,-"
                                               _%stx138536%_
                                               (gx#datum->syntax__0 '#f 'id)))
                                          (_%E138542138554%_)))))
                                (_%E138542138554%_))))
                        (_%E138542138554%_)))))
            (_%E138541138586%_)))))
    (define gx#core-expand-module-begin
      (lambda (_%body138501%_ _%ctx138502%_)
        (call-with-parameters__1
         (lambda ()
           (call-with-parameters__1
            (lambda ()
              (gx#core-bind-feature!__1 'gerbil-module '#t)
              (let* ((_%stx138506%_
                      (gx#core-expand-head
                       (cons '%%begin-module _%body138501%_)))
                     (_%e138507138514%_ _%stx138506%_)
                     (_%E138509138518%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module body expansion"
                         _%stx138506%_)))
                     (_%E138508138532%_
                      (lambda ()
                        (if (gx#stx-pair? _%e138507138514%_)
                            (let ((_%e138510138522%_
                                   (gx#syntax-e _%e138507138514%_)))
                              (let ((_%hd138511138525%_
                                     (##car _%e138510138522%_))
                                    (_%tl138512138527%_
                                     (##cdr _%e138510138522%_)))
                                (if (and (gx#identifier? _%hd138511138525%_)
                                         (gx#core-identifier=?
                                          _%hd138511138525%_
                                          '%#begin-module))
                                    (let ((_%body138530%_ _%tl138512138527%_))
                                      (if (gx#sealed-syntax? _%stx138506%_)
                                          _%body138530%_
                                          (gx#core-expand-module-body
                                           _%body138530%_)))
                                    (_%E138509138518%_))))
                            (_%E138509138518%_)))))
                (_%E138508138532%_)))
            gx#current-expander-phi
            '0))
         gx#current-expander-context
         _%ctx138502%_)))
    (define gx#core-expand-module-body
      (lambda (_%body138297%_)
        (letrec ((_%expand-special138299%_
                  (lambda (_%hd138428%_ _%K138429%_ _%rest138430%_ _%r138431%_)
                    (let* ((_%e138432138449%_ _%hd138428%_)
                           (_%E138444138453%_
                            (lambda ()
                              (_%K138429%_
                               _%rest138430%_
                               (cons (gx#core-expand-top _%hd138428%_)
                                     _%r138431%_))))
                           (_%E138434138465%_
                            (lambda ()
                              (if (gx#stx-pair? _%e138432138449%_)
                                  (let ((_%e138445138457%_
                                         (gx#syntax-e _%e138432138449%_)))
                                    (let ((_%hd138446138460%_
                                           (##car _%e138445138457%_))
                                          (_%tl138447138462%_
                                           (##cdr _%e138445138457%_)))
                                      (if (and (gx#identifier?
                                                _%hd138446138460%_)
                                               (gx#core-identifier=?
                                                _%hd138446138460%_
                                                '%#export))
                                          (_%K138429%_
                                           _%rest138430%_
                                           (cons _%hd138428%_ _%r138431%_))
                                          (_%E138444138453%_))))
                                  (_%E138444138453%_))))
                           (_%E138433138497%_
                            (lambda ()
                              (if (gx#stx-pair? _%e138432138449%_)
                                  (let ((_%e138435138469%_
                                         (gx#syntax-e _%e138432138449%_)))
                                    (let ((_%hd138436138472%_
                                           (##car _%e138435138469%_))
                                          (_%tl138437138474%_
                                           (##cdr _%e138435138469%_)))
                                      (if (and (gx#identifier?
                                                _%hd138436138472%_)
                                               (gx#core-identifier=?
                                                _%hd138436138472%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl138437138474%_)
                                              (let ((_%e138438138477%_
                                                     (gx#syntax-e
                                                      _%tl138437138474%_)))
                                                (let ((_%hd138439138480%_
                                                       (##car _%e138438138477%_))
                                                      (_%tl138440138482%_
                                                       (##cdr _%e138438138477%_)))
                                                  (let ((_%hd-bind138485%_
                                                         _%hd138439138480%_))
                                                    (if (gx#stx-pair?
                                                         _%tl138440138482%_)
                                                        (let ((_%e138441138487%_
                                                               (gx#syntax-e
                                                                _%tl138440138482%_)))
                                                          (let ((_%hd138442138490%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e138441138487%_))
                        (_%tl138443138492%_ (##cdr _%e138441138487%_)))
                    (let ((_%expr138495%_ _%hd138442138490%_))
                      (if (gx#stx-null? _%tl138443138492%_)
                          (if (gx#core-bind-values? _%hd-bind138485%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind138485%_)
                                (_%K138429%_
                                 _%rest138430%_
                                 (cons _%hd138428%_ _%r138431%_)))
                              (_%E138434138465%_))
                          (_%E138434138465%_)))))
                (_%E138434138465%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E138434138465%_))
                                          (_%E138434138465%_))))
                                  (_%E138434138465%_)))))
                      (_%E138433138497%_))))
                 (_%expand-body138300%_
                  (lambda (_%rbody138302%_)
                    (let _%lp138304%_ ((_%rest138306%_ _%rbody138302%_)
                                       (_%body138307%_ '()))
                      (let* ((_%rest138308138316%_ _%rest138306%_)
                             (_%else138310138324%_ (lambda () _%body138307%_))
                             (_%K138312138416%_
                              (lambda (_%rest138327%_ _%hd138328%_)
                                (let* ((_%e138329138350%_ _%hd138328%_)
                                       (_%E138345138354%_
                                        (lambda ()
                                          (_%lp138304%_
                                           _%rest138327%_
                                           (cons (gx#core-expand-expression
                                                  _%hd138328%_)
                                                 _%body138307%_))))
                                       (_%E138341138368%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e138329138350%_)
                                              (let ((_%e138346138358%_
                                                     (gx#syntax-e
                                                      _%e138329138350%_)))
                                                (let ((_%hd138347138361%_
                                                       (##car _%e138346138358%_))
                                                      (_%tl138348138363%_
                                                       (##cdr _%e138346138358%_)))
                                                  (let ((_%form138366%_
                                                         _%hd138347138361%_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _%form138366%_
                                                         gx#special-form-binding?)
                                                        (_%lp138304%_
                                                         _%rest138327%_
                                                         (cons _%hd138328%_
                                                               _%body138307%_))
                                                        (_%E138345138354%_)))))
                                              (_%E138345138354%_))))
                                       (_%E138331138380%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e138329138350%_)
                                              (let ((_%e138342138372%_
                                                     (gx#syntax-e
                                                      _%e138329138350%_)))
                                                (let ((_%hd138343138375%_
                                                       (##car _%e138342138372%_))
                                                      (_%tl138344138377%_
                                                       (##cdr _%e138342138372%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd138343138375%_)
                                                           (gx#core-identifier=?
                                                            _%hd138343138375%_
                                                            '%#export))
                                                      (_%lp138304%_
                                                       _%rest138327%_
                                                       (cons (gx#core-expand-export%__0
                                                              _%hd138328%_)
                                                             _%body138307%_))
                                                      (_%E138341138368%_))))
                                              (_%E138341138368%_))))
                                       (_%E138330138412%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e138329138350%_)
                                              (let ((_%e138332138384%_
                                                     (gx#syntax-e
                                                      _%e138329138350%_)))
                                                (let ((_%hd138333138387%_
                                                       (##car _%e138332138384%_))
                                                      (_%tl138334138389%_
                                                       (##cdr _%e138332138384%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd138333138387%_)
                                                           (gx#core-identifier=?
                                                            _%hd138333138387%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl138334138389%_)
                                                          (let ((_%e138335138392%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl138334138389%_)))
                    (let ((_%hd138336138395%_ (##car _%e138335138392%_))
                          (_%tl138337138397%_ (##cdr _%e138335138392%_)))
                      (let ((_%hd-bind138400%_ _%hd138336138395%_))
                        (if (gx#stx-pair? _%tl138337138397%_)
                            (let ((_%e138338138402%_
                                   (gx#syntax-e _%tl138337138397%_)))
                              (let ((_%hd138339138405%_
                                     (##car _%e138338138402%_))
                                    (_%tl138340138407%_
                                     (##cdr _%e138338138402%_)))
                                (let ((_%expr138410%_ _%hd138339138405%_))
                                  (if (gx#stx-null? _%tl138340138407%_)
                                      (_%lp138304%_
                                       _%rest138327%_
                                       (cons (gx#core-quote-syntax__1
                                              (gx#core-list
                                               '%#define-values
                                               (gx#core-quote-bind-values
                                                _%hd-bind138400%_)
                                               (gx#core-expand-expression
                                                _%expr138410%_))
                                              (gx#stx-source _%hd138328%_))
                                             _%body138307%_))
                                      (_%E138331138380%_)))))
                            (_%E138331138380%_)))))
                  (_%E138331138380%_))
              (_%E138331138380%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E138331138380%_)))))
                                  (_%E138330138412%_)))))
                        (if (pair? _%rest138308138316%_)
                            (let ((_%hd138313138419%_
                                   (##car _%rest138308138316%_))
                                  (_%tl138314138421%_
                                   (##cdr _%rest138308138316%_)))
                              (let* ((_%hd138424%_ _%hd138313138419%_)
                                     (_%rest138426%_ _%tl138314138421%_))
                                (_%K138312138416%_
                                 _%rest138426%_
                                 _%hd138424%_)))
                            (_%else138310138324%_)))))))
          (_%expand-body138300%_
           (gx#core-expand-block__%
            (cons '%#begin-module _%body138297%_)
            _%expand-special138299%_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_%stx138138%_
               _%expanded?138139%_
               _%method138140%_
               _%current-phi138141%_
               _%expand1138142%_)
        (letrec ((_%K138144%_
                  (lambda (_%rest138264%_ _%r138265%_)
                    (let* ((_%e138266138273%_ _%rest138264%_)
                           (_%E138268138277%_ (lambda () _%r138265%_))
                           (_%E138267138293%_
                            (lambda ()
                              (if (gx#stx-pair? _%e138266138273%_)
                                  (let ((_%e138269138281%_
                                         (gx#syntax-e _%e138266138273%_)))
                                    (let ((_%hd138270138284%_
                                           (##car _%e138269138281%_))
                                          (_%tl138271138286%_
                                           (##cdr _%e138269138281%_)))
                                      (let* ((_%hd138289%_ _%hd138270138284%_)
                                             (_%rest138291%_
                                              _%tl138271138286%_))
                                        (_%step138145%_
                                         _%hd138289%_
                                         _%rest138291%_
                                         _%r138265%_))))
                                  (_%E138268138277%_)))))
                      (_%E138267138293%_))))
                 (_%step138145%_
                  (lambda (_%hd138178%_ _%rest138179%_ _%r138180%_)
                    (let* ((_%e138181138199%_ _%hd138178%_)
                           (_%E138194138203%_
                            (lambda ()
                              (if (_%expanded?138139%_ (gx#stx-e _%hd138178%_))
                                  (_%K138144%_
                                   _%rest138179%_
                                   (cons (gx#stx-e _%hd138178%_) _%r138180%_))
                                  (_%expand1138142%_
                                   _%hd138178%_
                                   _%K138144%_
                                   _%rest138179%_
                                   _%r138180%_))))
                           (_%E138190138219%_
                            (lambda ()
                              (if (gx#stx-pair? _%e138181138199%_)
                                  (let ((_%e138195138207%_
                                         (gx#syntax-e _%e138181138199%_)))
                                    (let ((_%hd138196138210%_
                                           (##car _%e138195138207%_))
                                          (_%tl138197138212%_
                                           (##cdr _%e138195138207%_)))
                                      (let* ((_%macro138215%_
                                              _%hd138196138210%_)
                                             (_%body138217%_
                                              _%tl138197138212%_))
                                        (if (gx#core-bound-identifier?__%
                                             _%macro138215%_
                                             gx#syntax-binding?)
                                            (_%K138144%_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _%macro138215%_)
                                                    _%hd138178%_
                                                    _%method138140%_)
                                                   _%rest138179%_)
                                             _%r138180%_)
                                            (_%E138194138203%_)))))
                                  (_%E138194138203%_))))
                           (_%E138183138233%_
                            (lambda ()
                              (if (gx#stx-pair? _%e138181138199%_)
                                  (let ((_%e138191138223%_
                                         (gx#syntax-e _%e138181138199%_)))
                                    (let ((_%hd138192138226%_
                                           (##car _%e138191138223%_))
                                          (_%tl138193138228%_
                                           (##cdr _%e138191138223%_)))
                                      (if (eq? (gx#stx-e _%hd138192138226%_)
                                               'begin:)
                                          (let ((_%body138231%_
                                                 _%tl138193138228%_))
                                            (_%K138144%_
                                             (gx#stx-foldr
                                              cons
                                              _%rest138179%_
                                              _%body138231%_)
                                             _%r138180%_))
                                          (_%E138190138219%_))))
                                  (_%E138190138219%_))))
                           (_%E138182138260%_
                            (lambda ()
                              (if (gx#stx-pair? _%e138181138199%_)
                                  (let ((_%e138184138237%_
                                         (gx#syntax-e _%e138181138199%_)))
                                    (let ((_%hd138185138240%_
                                           (##car _%e138184138237%_))
                                          (_%tl138186138242%_
                                           (##cdr _%e138184138237%_)))
                                      (if (eq? (gx#stx-e _%hd138185138240%_)
                                               'phi:)
                                          (if (gx#stx-pair? _%tl138186138242%_)
                                              (let ((_%e138187138245%_
                                                     (gx#syntax-e
                                                      _%tl138186138242%_)))
                                                (let ((_%hd138188138248%_
                                                       (##car _%e138187138245%_))
                                                      (_%tl138189138250%_
                                                       (##cdr _%e138187138245%_)))
                                                  (let* ((_%dphi138253%_
                                                          _%hd138188138248%_)
                                                         (_%body138255%_
                                                          _%tl138189138250%_))
                                                    (if (gx#stx-fixnum?
                                                         _%dphi138253%_)
                                                        (let ((_%rbody138258%_
                                                               (call-with-parameters__1
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%K138144%_ _%body138255%_ '()))
                        _%current-phi138141%_
                        (fx+ (gx#stx-e _%dphi138253%_)
                             (_%current-phi138141%_)))))
                  (_%K138144%_
                   _%rest138179%_
                   (__foldr1 cons _%r138180%_ _%rbody138258%_)))
                (_%E138183138233%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E138183138233%_))
                                          (_%E138183138233%_))))
                                  (_%E138183138233%_)))))
                      (_%E138182138260%_)))))
          (let* ((_%e138146138153%_ _%stx138138%_)
                 (_%E138148138157%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e138146138153%_)))
                 (_%E138147138174%_
                  (lambda ()
                    (if (gx#stx-pair? _%e138146138153%_)
                        (let ((_%e138149138161%_
                               (gx#syntax-e _%e138146138153%_)))
                          (let ((_%hd138150138164%_ (##car _%e138149138161%_))
                                (_%tl138151138166%_ (##cdr _%e138149138161%_)))
                            (let ((_%body138169%_ _%tl138151138166%_))
                              (if (_%current-phi138141%_)
                                  (_%K138144%_ _%body138169%_ '())
                                  (call-with-parameters__1
                                   (lambda () (_%K138144%_ _%body138169%_ '()))
                                   _%current-phi138141%_
                                   (gx#current-expander-phi))))))
                        (_%E138148138157%_)))))
            (_%E138147138174%_)))))
    (define gx#core-expand-import%__%
      (lambda (_%stx137792%_ _%internal-expand?137793%_)
        (letrec ((_%expand1137795%_
                  (lambda (_%hd138110%_ _%K138111%_ _%rest138112%_ _%r138113%_)
                    (if (gx#core-bound-module? _%hd138110%_)
                        (_%import1137796%_
                         (gx#syntax-local-e__0 _%hd138110%_)
                         _%K138111%_
                         _%rest138112%_
                         _%r138113%_)
                        (if (gx#core-library-module-path? _%hd138110%_)
                            (_%import1137796%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%hd138110%_))
                             _%K138111%_
                             _%rest138112%_
                             _%r138113%_)
                            (if (gx#core-library-relative-module-path?
                                 _%hd138110%_)
                                (_%import1137796%_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _%hd138110%_))
                                 _%K138111%_
                                 _%rest138112%_
                                 _%r138113%_)
                                (let ((_%e138119%_ (gx#stx-e _%hd138110%_)))
                                  (if (pair? _%e138119%_)
                                      (let ((_%$e138122%_
                                             (gx#stx-e (##car _%e138119%_))))
                                        (if (eq? 'spec: _%$e138122%_)
                                            (_%import-spec137799%_
                                             _%hd138110%_
                                             _%K138111%_
                                             _%rest138112%_
                                             _%r138113%_)
                                            (if (eq? 'in: _%$e138122%_)
                                                (_%import-submodule137797%_
                                                 _%hd138110%_
                                                 _%K138111%_
                                                 _%rest138112%_
                                                 _%r138113%_)
                                                (if (eq? 'runtime:
                                                         _%$e138122%_)
                                                    (_%import-runtime137798%_
                                                     _%hd138110%_
                                                     _%K138111%_
                                                     _%rest138112%_
                                                     _%r138113%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _%stx137792%_
                                                     _%hd138110%_)))))
                                      (if (string? _%e138119%_)
                                          (_%import1137796%_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _%hd138110%_
                                             (gx#stx-source _%stx137792%_)))
                                           _%K138111%_
                                           _%rest138112%_
                                           _%r138113%_)
                                          (if (##structure-instance-of?
                                               _%e138119%_
                                               'gx#module-context::t)
                                              (_%K138111%_
                                               _%rest138112%_
                                               (cons _%e138119%_ _%r138113%_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _%stx137792%_
                                               _%hd138110%_))))))))))
                 (_%import1137796%_
                  (lambda (_%ctx138099%_
                           _%K138100%_
                           _%rest138101%_
                           _%r138102%_)
                    (let ((_%dphi138104%_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_%K138100%_
                       _%rest138101%_
                       (cons (##structure
                              gx#import-set::t
                              _%ctx138099%_
                              _%dphi138104%_
                              (map (lambda (_%g138105138107%_)
                                     (gx#core-module-export->import__%
                                      _%g138105138107%_
                                      '#f
                                      _%dphi138104%_))
                                   (##unchecked-structure-ref
                                    _%ctx138099%_
                                    '9
                                    '#f
                                    '#f)))
                             _%r138102%_)))))
                 (_%import-submodule137797%_
                  (lambda (_%hd138066%_ _%K138067%_ _%rest138068%_ _%r138069%_)
                    (let* ((_%e138070138077%_ _%hd138066%_)
                           (_%E138072138081%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e138070138077%_)))
                           (_%E138071138095%_
                            (lambda ()
                              (if (gx#stx-pair? _%e138070138077%_)
                                  (let ((_%e138073138085%_
                                         (gx#syntax-e _%e138070138077%_)))
                                    (let ((_%hd138074138088%_
                                           (##car _%e138073138085%_))
                                          (_%tl138075138090%_
                                           (##cdr _%e138073138085%_)))
                                      (let ((_%spath138093%_
                                             _%tl138075138090%_))
                                        (_%import1137796%_
                                         (_%import-spec-source137800%_
                                          _%spath138093%_)
                                         _%K138067%_
                                         _%rest138068%_
                                         _%r138069%_))))
                                  (_%E138072138081%_)))))
                      (_%E138071138095%_))))
                 (_%import-runtime137798%_
                  (lambda (_%hd138033%_ _%K138034%_ _%rest138035%_ _%r138036%_)
                    (let* ((_%e138037138044%_ _%hd138033%_)
                           (_%E138039138048%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e138037138044%_)))
                           (_%E138038138062%_
                            (lambda ()
                              (if (gx#stx-pair? _%e138037138044%_)
                                  (let ((_%e138040138052%_
                                         (gx#syntax-e _%e138037138044%_)))
                                    (let ((_%hd138041138055%_
                                           (##car _%e138040138052%_))
                                          (_%tl138042138057%_
                                           (##cdr _%e138040138052%_)))
                                      (let ((_%spath138060%_
                                             _%tl138042138057%_))
                                        (_%K138034%_
                                         _%rest138035%_
                                         (cons (_%import-spec-source137800%_
                                                _%spath138060%_)
                                               _%r138036%_)))))
                                  (_%E138039138048%_)))))
                      (_%E138038138062%_))))
                 (_%import-spec137799%_
                  (lambda (_%hd137871%_ _%K137872%_ _%rest137873%_ _%r137874%_)
                    (let* ((_%e137875137892%_ _%hd137871%_)
                           (_%E137884137896%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e137875137892%_)))
                           (_%E137877138007%_
                            (lambda ()
                              (if (gx#stx-pair? _%e137875137892%_)
                                  (let ((_%e137885137900%_
                                         (gx#syntax-e _%e137875137892%_)))
                                    (let ((_%hd137886137903%_
                                           (##car _%e137885137900%_))
                                          (_%tl137887137905%_
                                           (##cdr _%e137885137900%_)))
                                      (if (gx#stx-pair? _%tl137887137905%_)
                                          (let ((_%e137888137908%_
                                                 (gx#syntax-e
                                                  _%tl137887137905%_)))
                                            (let ((_%hd137889137911%_
                                                   (##car _%e137888137908%_))
                                                  (_%tl137890137913%_
                                                   (##cdr _%e137888137908%_)))
                                              (let* ((_%path137916%_
                                                      _%hd137889137911%_)
                                                     (_%specs137918%_
                                                      _%tl137890137913%_))
                                                (let ((_%src-ctx137920%_
                                                       (_%import-spec-source137800%_
                                                        _%path137916%_))
                                                      (_%exports137921%_
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
                                                      (_%specs137922%_
                                                       (gx#syntax->list
                                                        _%specs137918%_)))
                                                  (for-each
                                                   (lambda (_%out137924%_)
                                                     (__hash-put!
                                                      _%exports137921%_
                                                      (cons (##unchecked-structure-ref
                                                             _%out137924%_
                                                             '3
                                                             '#f
                                                             '#f)
                                                            (##unchecked-structure-ref
                                                             _%out137924%_
                                                             '4
                                                             '#f
                                                             '#f))
                                                      _%out137924%_))
                                                   (##unchecked-structure-ref
                                                    _%src-ctx137920%_
                                                    '9
                                                    '#f
                                                    '#f))
                                                  (_%K137872%_
                                                   _%rest137873%_
                                                   (__foldl1
                                                    (lambda (_%spec137926%_
                                                             _%r137927%_)
                                                      (let* ((_%e137928137944%_
                                                              _%spec137926%_)
                                                             (_%E137930137948%_
                                                              (lambda ()
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid syntax-case clause"
                         _%e137928137944%_)))
                     (_%E137929138003%_
                      (lambda ()
                        (if (gx#stx-pair? _%e137928137944%_)
                            (let ((_%e137931137952%_
                                   (gx#syntax-e _%e137928137944%_)))
                              (let ((_%hd137932137955%_
                                     (##car _%e137931137952%_))
                                    (_%tl137933137957%_
                                     (##cdr _%e137931137952%_)))
                                (let ((_%phi137960%_ _%hd137932137955%_))
                                  (if (gx#stx-pair? _%tl137933137957%_)
                                      (let ((_%e137934137962%_
                                             (gx#syntax-e _%tl137933137957%_)))
                                        (let ((_%hd137935137965%_
                                               (##car _%e137934137962%_))
                                              (_%tl137936137967%_
                                               (##cdr _%e137934137962%_)))
                                          (let ((_%name137970%_
                                                 _%hd137935137965%_))
                                            (if (gx#stx-pair?
                                                 _%tl137936137967%_)
                                                (let ((_%e137937137972%_
                                                       (gx#syntax-e
                                                        _%tl137936137967%_)))
                                                  (let ((_%hd137938137975%_
                                                         (##car _%e137937137972%_))
                                                        (_%tl137939137977%_
                                                         (##cdr _%e137937137972%_)))
                                                    (let ((_%src-phi137980%_
                                                           _%hd137938137975%_))
                                                      (if (gx#stx-pair?
                                                           _%tl137939137977%_)
                                                          (let ((_%e137940137982%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl137939137977%_)))
                    (let ((_%hd137941137985%_ (##car _%e137940137982%_))
                          (_%tl137942137987%_ (##cdr _%e137940137982%_)))
                      (let ((_%src-name137990%_ _%hd137941137985%_))
                        (if (gx#stx-null? _%tl137942137987%_)
                            (if (and (gx#stx-fixnum? _%src-phi137980%_)
                                     (gx#identifier? _%src-name137990%_)
                                     (gx#stx-fixnum? _%phi137960%_)
                                     (gx#identifier? _%name137970%_))
                                (let ((_%src-phi137992%_
                                       (gx#stx-e _%src-phi137980%_))
                                      (_%src-name137993%_
                                       (gx#core-identifier-key
                                        _%src-name137990%_))
                                      (_%phi137994%_ (gx#stx-e _%phi137960%_))
                                      (_%name137995%_
                                       (gx#core-identifier-key
                                        _%name137970%_)))
                                  (let ((_%$e137997%_
                                         (__hash-get
                                          _%exports137921%_
                                          (cons _%src-phi137992%_
                                                _%src-name137993%_))))
                                    (if _%$e137997%_
                                        ((lambda (_%out138000%_)
                                           (cons (gx#core-module-export->import__%
                                                  _%out138000%_
                                                  _%name137995%_
                                                  (fx- _%phi137994%_
                                                       _%src-phi137992%_))
                                                 _%r137927%_))
                                         _%$e137997%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; no matching export"
                                         _%stx137792%_
                                         _%hd137871%_))))
                                (_%E137930137948%_))
                            (_%E137930137948%_)))))
                  (_%E137930137948%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E137930137948%_)))))
                                      (_%E137930137948%_)))))
                            (_%E137930137948%_)))))
                (_%E137929138003%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r137874%_
                                                    _%specs137922%_))))))
                                          (_%E137884137896%_))))
                                  (_%E137884137896%_))))
                           (_%E137876138029%_
                            (lambda ()
                              (if (gx#stx-pair? _%e137875137892%_)
                                  (let ((_%e137878138011%_
                                         (gx#syntax-e _%e137875137892%_)))
                                    (let ((_%hd137879138014%_
                                           (##car _%e137878138011%_))
                                          (_%tl137880138016%_
                                           (##cdr _%e137878138011%_)))
                                      (if (gx#stx-pair? _%tl137880138016%_)
                                          (let ((_%e137881138019%_
                                                 (gx#syntax-e
                                                  _%tl137880138016%_)))
                                            (let ((_%hd137882138022%_
                                                   (##car _%e137881138019%_))
                                                  (_%tl137883138024%_
                                                   (##cdr _%e137881138019%_)))
                                              (let ((_%path138027%_
                                                     _%hd137882138022%_))
                                                (if (gx#stx-null?
                                                     _%tl137883138024%_)
                                                    (_%K137872%_
                                                     _%rest137873%_
                                                     (cons (_%import-spec-source137800%_
                                                            _%path138027%_)
                                                           _%r137874%_))
                                                    (_%E137877138007%_)))))
                                          (_%E137877138007%_))))
                                  (_%E137877138007%_)))))
                      (_%E137876138029%_))))
                 (_%import-spec-source137800%_
                  (lambda (_%spath137869%_)
                    (gx#core-import-nested-module
                     _%spath137869%_
                     _%stx137792%_)))
                 (_%import!137801%_
                  (lambda (_%rbody137814%_)
                    (letrec* ((_%current-ctx137816%_
                               (gx#current-expander-context))
                              (_%deps137817%_ (make-hash-table-eq))
                              (_%bind!137818%_
                               (lambda (_%hd137867%_)
                                 (gx#core-bind-import!__1
                                  _%hd137867%_
                                  _%current-ctx137816%_))))
                      (let _%lp137820%_ ((_%rest137822%_ _%rbody137814%_)
                                         (_%body137823%_ '()))
                        (let* ((_%rest137824137832%_ _%rest137822%_)
                               (_%else137826137843%_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _%current-ctx137816%_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _%current-ctx137816%_
                                       (__foldl1
                                        cons
                                        (##unchecked-structure-ref
                                         _%current-ctx137816%_
                                         '8
                                         '#f
                                         '#f)
                                        _%body137823%_)
                                       '8
                                       '#f
                                       '#f)
                                      '#!void)
                                  (__hash-for-each
                                   (lambda (_%ctx137840%_ _%_137841%_)
                                     (gx#eval-module _%ctx137840%_))
                                   _%deps137817%_)
                                  _%body137823%_))
                               (_%K137828137855%_
                                (lambda (_%rest137846%_ _%hd137847%_)
                                  (if (##structure-direct-instance-of?
                                       _%hd137847%_
                                       'gx#module-import::t)
                                      (let ()
                                        (_%bind!137818%_ _%hd137847%_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _%hd137847%_
                                                   '3
                                                   '#f
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _%hd137847%_
                                                            '1
                                                            '#f
                                                            '#f)
                                                           '3
                                                           '#f
                                                           '#f)))
                                            (__hash-put!
                                             _%deps137817%_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _%hd137847%_
                                               '1
                                               '#f
                                               '#f)
                                              '1
                                              '#f
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _%hd137847%_
                                           'gx#import-set::t)
                                          (let ()
                                            (for-each
                                             _%bind!137818%_
                                             (##unchecked-structure-ref
                                              _%hd137847%_
                                              '3
                                              '#f
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _%hd137847%_
                                                  '2
                                                  '#f
                                                  '#f))
                                                (__hash-put!
                                                 _%deps137817%_
                                                 (##unchecked-structure-ref
                                                  _%hd137847%_
                                                  '1
                                                  '#f
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_%$e137851%_
                                                 (##structure-instance-of?
                                                  _%hd137847%_
                                                  'gx#module-context::t)))
                                            (if _%$e137851%_
                                                _%$e137851%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _%stx137792%_
                                                 _%hd137847%_)))))
                                  (_%lp137820%_
                                   _%rest137846%_
                                   (cons _%hd137847%_ _%body137823%_)))))
                          (if (pair? _%rest137824137832%_)
                              (let ((_%hd137829137858%_
                                     (##car _%rest137824137832%_))
                                    (_%tl137830137860%_
                                     (##cdr _%rest137824137832%_)))
                                (let* ((_%hd137863%_ _%hd137829137858%_)
                                       (_%rest137865%_ _%tl137830137860%_))
                                  (_%K137828137855%_
                                   _%rest137865%_
                                   _%hd137863%_)))
                              (_%else137826137843%_)))))))
                 (_%expanded-import?137802%_
                  (lambda (_%e137806%_)
                    (let ((_%$e137808%_
                           (##structure-direct-instance-of?
                            _%e137806%_
                            'gx#import-set::t)))
                      (if _%$e137808%_
                          _%$e137808%_
                          (let ((_%$e137811%_
                                 (##structure-direct-instance-of?
                                  _%e137806%_
                                  'gx#module-import::t)))
                            (if _%$e137811%_
                                _%$e137811%_
                                (##structure-instance-of?
                                 _%e137806%_
                                 'gx#module-context::t))))))))
          (let ((_%rbody137804%_
                 (gx#core-expand-import/export
                  _%stx137792%_
                  _%expanded-import?137802%_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _%expand1137795%_)))
            (if _%internal-expand?137793%_
                (reverse _%rbody137804%_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_%import!137801%_ _%rbody137804%_))
                 (gx#stx-source _%stx137792%_)))))))
    (define gx#core-expand-import%__0
      (lambda (_%stx138131%_)
        (let ((_%internal-expand?138133%_ '#f))
          (gx#core-expand-import%__%
           _%stx138131%_
           _%internal-expand?138133%_))))
    (define gx#core-expand-import%
      (lambda _g140787_
        (let ((_g140788_ (##length _g140787_)))
          (cond ((##fx= _g140788_ 1)
                 (apply gx#core-expand-import%__0 _g140787_))
                ((##fx= _g140788_ 2)
                 (apply gx#core-expand-import%__% _g140787_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g140787_))))))
    (define gx#core-import-nested-module
      (lambda (_%spath137719%_ _%where137720%_)
        (let* ((_%e137721137728%_ _%spath137719%_)
               (_%E137723137732%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e137721137728%_)))
               (_%E137722137787%_
                (lambda ()
                  (if (gx#stx-pair? _%e137721137728%_)
                      (let ((_%e137724137736%_
                             (gx#syntax-e _%e137721137728%_)))
                        (let ((_%hd137725137739%_ (##car _%e137724137736%_))
                              (_%tl137726137741%_ (##cdr _%e137724137736%_)))
                          (let* ((_%origin137744%_ _%hd137725137739%_)
                                 (_%sub137746%_ _%tl137726137741%_)
                                 (_%origin-ctx137748%_
                                  (if (gx#stx-false? _%origin137744%_)
                                      (gx#current-expander-context)
                                      (gx#import-module__0 _%origin137744%_))))
                            (let _%lp137750%_ ((_%rest137752%_ _%sub137746%_)
                                               (_%ctx137753%_
                                                _%origin-ctx137748%_))
                              (let* ((_%e137754137761%_ _%rest137752%_)
                                     (_%E137756137765%_
                                      (lambda () _%ctx137753%_))
                                     (_%E137755137783%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e137754137761%_)
                                            (let ((_%e137757137769%_
                                                   (gx#syntax-e
                                                    _%e137754137761%_)))
                                              (let ((_%hd137758137772%_
                                                     (##car _%e137757137769%_))
                                                    (_%tl137759137774%_
                                                     (##cdr _%e137757137769%_)))
                                                (let* ((_%id137777%_
                                                        _%hd137758137772%_)
                                                       (_%rest137779%_
                                                        _%tl137759137774%_)
                                                       (_%bind137781%_
                                                        (gx#resolve-identifier__%
                                                         _%id137777%_
                                                         '0
                                                         _%ctx137753%_)))
                                                  (if (and (##structure-direct-instance-of?
                                                            _%bind137781%_
                                                            'gx#syntax-binding::t)
                                                           (##structure-instance-of?
                                                            (##unchecked-structure-ref
                                                             _%bind137781%_
                                                             '4
                                                             '#f
                                                             '#f)
                                                            'gx#module-context::t))
                                                      '#!void
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; not bound as module"
                                                       _%where137720%_
                                                       _%spath137719%_
                                                       _%id137777%_))
                                                  (_%lp137750%_
                                                   _%rest137779%_
                                                   (##unchecked-structure-ref
                                                    _%bind137781%_
                                                    '4
                                                    '#f
                                                    '#f)))))
                                            (_%E137756137765%_)))))
                                (_%E137755137783%_))))))
                      (_%E137723137732%_)))))
          (_%E137722137787%_))))
    (define gx#core-expand-import-source
      (lambda (_%hd137717%_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _%hd137717%_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_%stx137211%_ _%internal-expand?137212%_)
        (letrec* ((_%make-export__140716140717%_
                   (lambda (_%bind137665%_
                            _%phi137666%_
                            _%ctx137667%_
                            _%name137668%_)
                     (let* ((_%key137670%_
                             (##unchecked-structure-ref
                              _%bind137665%_
                              '2
                              '#f
                              '#f))
                            (_%export-key137672%_
                             (if _%name137668%_
                                 (gx#core-identifier-key _%name137668%_)
                                 _%key137670%_)))
                       (##structure
                        gx#module-export::t
                        _%ctx137667%_
                        _%key137670%_
                        _%phi137666%_
                        _%export-key137672%_
                        (let ((_%$e137675%_
                               (##structure-instance-of?
                                _%bind137665%_
                                'gx#extern-binding::t)))
                          (if _%$e137675%_
                              _%$e137675%_
                              (##structure-direct-instance-of?
                               _%bind137665%_
                               'gx#import-binding::t)))))))
                  (_%make-export__0__140718140721%_
                   (lambda (_%bind137681%_)
                     (let* ((_%phi137683%_ (gx#current-export-expander-phi))
                            (_%ctx137685%_ (gx#current-expander-context))
                            (_%name137687%_ '#f))
                       (_%make-export__140716140717%_
                        _%bind137681%_
                        _%phi137683%_
                        _%ctx137685%_
                        _%name137687%_))))
                  (_%make-export__1__140719140722%_
                   (lambda (_%bind137689%_ _%phi137690%_)
                     (let* ((_%ctx137692%_ (gx#current-expander-context))
                            (_%name137694%_ '#f))
                       (_%make-export__140716140717%_
                        _%bind137689%_
                        _%phi137690%_
                        _%ctx137692%_
                        _%name137694%_))))
                  (_%make-export__2__140720140723%_
                   (lambda (_%bind137696%_ _%phi137697%_ _%ctx137698%_)
                     (let ((_%name137700%_ '#f))
                       (_%make-export__140716140717%_
                        _%bind137696%_
                        _%phi137697%_
                        _%ctx137698%_
                        _%name137700%_))))
                  (_%make-export137214%_
                   (lambda _g140789_
                     (let ((_g140790_ (##length _g140789_)))
                       (cond ((##fx= _g140790_ 1)
                              (apply _%make-export__0__140718140721%_
                                     _g140789_))
                             ((##fx= _g140790_ 2)
                              (apply _%make-export__1__140719140722%_
                                     _g140789_))
                             ((##fx= _g140790_ 3)
                              (apply _%make-export__2__140720140723%_
                                     _g140789_))
                             ((##fx= _g140790_ 4)
                              (apply _%make-export__140716140717%_ _g140789_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g140789_))))))
                  (_%expand1137215%_
                   (lambda (_%hd137370%_
                            _%K137371%_
                            _%rest137372%_
                            _%r137373%_)
                     (let* ((_%e137374137406%_ _%hd137370%_)
                            (_%E137401137410%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _%stx137211%_
                                _%hd137370%_)))
                            (_%E137391137494%_
                             (lambda ()
                               (if (gx#stx-pair? _%e137374137406%_)
                                   (let ((_%e137402137414%_
                                          (gx#syntax-e _%e137374137406%_)))
                                     (let ((_%hd137403137417%_
                                            (##car _%e137402137414%_))
                                           (_%tl137404137419%_
                                            (##cdr _%e137402137414%_)))
                                       (if (eq? (gx#stx-e _%hd137403137417%_)
                                                'import:)
                                           (let ((_%in137422%_
                                                  _%tl137404137419%_))
                                             (if (gx#stx-list? _%in137422%_)
                                                 (let _%lp137424%_ ((_%in-rest137426%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%in137422%_)
                            (_%r137427%_ _%r137373%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%e137428137435%_
                                                           _%in-rest137426%_)
                                                          (_%E137430137439%_
                                                           (lambda ()
                                                             (_%K137371%_
                                                              _%rest137372%_
                                                              _%r137427%_)))
                                                          (_%E137429137490%_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%e137428137435%_)
                         (let ((_%e137431137443%_
                                (gx#syntax-e _%e137428137435%_)))
                           (let ((_%hd137432137446%_ (##car _%e137431137443%_))
                                 (_%tl137433137448%_
                                  (##cdr _%e137431137443%_)))
                             (let* ((_%hd137451%_ _%hd137432137446%_)
                                    (_%in-rest137453%_ _%tl137433137448%_)
                                    (_%src137488%_
                                     (if (gx#core-bound-module? _%hd137451%_)
                                         (gx#syntax-local-e__0 _%hd137451%_)
                                         (if (gx#core-library-module-path?
                                              _%hd137451%_)
                                             (gx#import-module__0
                                              (gx#core-resolve-library-module-path
                                               _%hd137451%_))
                                             (if (gx#core-library-relative-module-path?
                                                  _%hd137451%_)
                                                 (gx#import-module__0
                                                  (gx#core-resolve-library-relative-module-path
                                                   _%hd137451%_))
                                                 (if (gx#stx-string?
                                                      _%hd137451%_)
                                                     (gx#import-module__0
                                                      (gx#core-resolve-module-path__%
                                                       _%hd137451%_
                                                       (gx#stx-source
                                                        _%stx137211%_)))
                                                     (let* ((_%e137459137466%_
                                                             _%hd137451%_)
                                                            (_%E137461137470%_
                                                             (lambda ()
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; illegal re-export"
                                                                _%stx137211%_
                                                                _%hd137451%_)))
                                                            (_%E137460137484%_
                                                             (lambda ()
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%e137459137466%_)
                           (let ((_%e137462137474%_
                                  (gx#syntax-e _%e137459137466%_)))
                             (let ((_%hd137463137477%_
                                    (##car _%e137462137474%_))
                                   (_%tl137464137479%_
                                    (##cdr _%e137462137474%_)))
                               (if (eq? (gx#stx-e _%hd137463137477%_) 'in:)
                                   (let ((_%spath137482%_ _%tl137464137479%_))
                                     (gx#core-import-nested-module
                                      _%spath137482%_
                                      _%stx137211%_))
                                   (_%E137461137470%_))))
                           (_%E137461137470%_)))))
               (_%E137460137484%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (_%lp137424%_
                                _%in-rest137453%_
                                (_%export-imports137216%_
                                 _%src137488%_
                                 _%r137427%_)))))
                         (_%E137430137439%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E137429137490%_)))
                                                 (_%E137401137410%_)))
                                           (_%E137401137410%_))))
                                   (_%E137401137410%_))))
                            (_%E137378137534%_
                             (lambda ()
                               (if (gx#stx-pair? _%e137374137406%_)
                                   (let ((_%e137392137498%_
                                          (gx#syntax-e _%e137374137406%_)))
                                     (let ((_%hd137393137501%_
                                            (##car _%e137392137498%_))
                                           (_%tl137394137503%_
                                            (##cdr _%e137392137498%_)))
                                       (if (eq? (gx#stx-e _%hd137393137501%_)
                                                'rename:)
                                           (if (gx#stx-pair?
                                                _%tl137394137503%_)
                                               (let ((_%e137395137506%_
                                                      (gx#syntax-e
                                                       _%tl137394137503%_)))
                                                 (let ((_%hd137396137509%_
                                                        (##car _%e137395137506%_))
                                                       (_%tl137397137511%_
                                                        (##cdr _%e137395137506%_)))
                                                   (let ((_%id137514%_
                                                          _%hd137396137509%_))
                                                     (if (gx#stx-pair?
                                                          _%tl137397137511%_)
                                                         (let ((_%e137398137516%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl137397137511%_)))
                   (let ((_%hd137399137519%_ (##car _%e137398137516%_))
                         (_%tl137400137521%_ (##cdr _%e137398137516%_)))
                     (let ((_%name137524%_ _%hd137399137519%_))
                       (if (gx#stx-null? _%tl137400137521%_)
                           (let* ((_%phi137526%_
                                   (gx#current-export-expander-phi))
                                  (_%$e137528%_
                                   (gx#core-resolve-identifier__1
                                    _%id137514%_
                                    _%phi137526%_)))
                             (if _%$e137528%_
                                 ((lambda (_%bind137531%_)
                                    (_%K137371%_
                                     _%rest137372%_
                                     (cons (_%make-export__140716140717%_
                                            _%bind137531%_
                                            _%phi137526%_
                                            (gx#current-expander-context)
                                            _%name137524%_)
                                           _%r137373%_)))
                                  _%$e137528%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Reference to unbound identifier"
                                  _%stx137211%_
                                  _%hd137370%_
                                  _%id137514%_)))
                           (_%E137391137494%_)))))
                 (_%E137391137494%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E137391137494%_))
                                           (_%E137391137494%_))))
                                   (_%E137391137494%_))))
                            (_%E137377137584%_
                             (lambda ()
                               (if (gx#stx-pair? _%e137374137406%_)
                                   (let ((_%e137379137538%_
                                          (gx#syntax-e _%e137374137406%_)))
                                     (let ((_%hd137380137541%_
                                            (##car _%e137379137538%_))
                                           (_%tl137381137543%_
                                            (##cdr _%e137379137538%_)))
                                       (if (eq? (gx#stx-e _%hd137380137541%_)
                                                'spec:)
                                           (if (gx#stx-pair?
                                                _%tl137381137543%_)
                                               (let ((_%e137382137546%_
                                                      (gx#syntax-e
                                                       _%tl137381137543%_)))
                                                 (let ((_%hd137383137549%_
                                                        (##car _%e137382137546%_))
                                                       (_%tl137384137551%_
                                                        (##cdr _%e137382137546%_)))
                                                   (let ((_%phi137554%_
                                                          _%hd137383137549%_))
                                                     (if (gx#stx-pair?
                                                          _%tl137384137551%_)
                                                         (let ((_%e137385137556%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl137384137551%_)))
                   (let ((_%hd137386137559%_ (##car _%e137385137556%_))
                         (_%tl137387137561%_ (##cdr _%e137385137556%_)))
                     (let ((_%id137564%_ _%hd137386137559%_))
                       (if (gx#stx-pair? _%tl137387137561%_)
                           (let ((_%e137388137566%_
                                  (gx#syntax-e _%tl137387137561%_)))
                             (let ((_%hd137389137569%_
                                    (##car _%e137388137566%_))
                                   (_%tl137390137571%_
                                    (##cdr _%e137388137566%_)))
                               (let ((_%name137574%_ _%hd137389137569%_))
                                 (if (gx#stx-null? _%tl137390137571%_)
                                     (if (and (gx#stx-fixnum? _%phi137554%_)
                                              (gx#identifier? _%id137564%_)
                                              (gx#identifier? _%name137574%_))
                                         (let* ((_%phi137576%_
                                                 (gx#stx-e _%phi137554%_))
                                                (_%$e137578%_
                                                 (gx#core-resolve-identifier__1
                                                  _%id137564%_
                                                  _%phi137576%_)))
                                           (if _%$e137578%_
                                               ((lambda (_%bind137581%_)
                                                  (_%K137371%_
                                                   _%rest137372%_
                                                   (cons (_%make-export__140716140717%_
                                                          _%bind137581%_
                                                          _%phi137576%_
                                                          (gx#current-expander-context)
                                                          _%name137574%_)
                                                         _%r137373%_)))
                                                _%$e137578%_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _%stx137211%_
                                                _%hd137370%_
                                                _%id137564%_)))
                                         (_%E137378137534%_))
                                     (_%E137378137534%_)))))
                           (_%E137378137534%_)))))
                 (_%E137378137534%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E137378137534%_))
                                           (_%E137378137534%_))))
                                   (_%E137378137534%_))))
                            (_%E137376137596%_
                             (lambda ()
                               (let ((_%id137588%_ _%e137374137406%_))
                                 (if (gx#identifier? _%id137588%_)
                                     (let ((_%$e137590%_
                                            (gx#core-resolve-identifier__1
                                             _%id137588%_
                                             (gx#current-export-expander-phi))))
                                       (if _%$e137590%_
                                           ((lambda (_%bind137593%_)
                                              (_%K137371%_
                                               _%rest137372%_
                                               (cons (_%make-export__0__140718140721%_
                                                      _%bind137593%_)
                                                     _%r137373%_)))
                                            _%$e137590%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _%stx137211%_
                                            _%hd137370%_)))
                                     (_%E137377137584%_)))))
                            (_%E137375137660%_
                             (lambda ()
                               (if (eq? (gx#stx-e _%e137374137406%_) '#t)
                                   (let* ((_%current-ctx137600%_
                                           (gx#current-expander-context))
                                          (_%current-phi137602%_
                                           (gx#current-export-expander-phi))
                                          (_%phi-ctx137604%_
                                           (gx#core-context-shift
                                            _%current-ctx137600%_
                                            _%current-phi137602%_))
                                          (_%phi-bind137606%_
                                           (hash->list
                                            (##unchecked-structure-ref
                                             _%phi-ctx137604%_
                                             '2
                                             '#f
                                             '#f))))
                                     (let _%lp137609%_ ((_%bind-rest137611%_
                                                         _%phi-bind137606%_)
                                                        (_%set137612%_ '()))
                                       (let* ((_%bind-rest137613137623%_
                                               _%bind-rest137611%_)
                                              (_%else137615137631%_
                                               (lambda ()
                                                 (_%K137371%_
                                                  _%rest137372%_
                                                  (cons (##structure
                                                         gx#export-set::t
                                                         '#f
                                                         _%current-phi137602%_
                                                         _%set137612%_)
                                                        _%r137373%_))))
                                              (_%K137617137641%_
                                               (lambda (_%bind-rest137634%_
                                                        _%bind137635%_
                                                        _%key137636%_)
                                                 (if (or (##structure-direct-instance-of?
                                                          _%bind137635%_
                                                          'gx#import-binding::t)
                                                         (gx#private-feature-binding?
                                                          _%bind137635%_))
                                                     (_%lp137609%_
                                                      _%bind-rest137634%_
                                                      _%set137612%_)
                                                     (_%lp137609%_
                                                      _%bind-rest137634%_
                                                      (cons (_%make-export__2__140720140723%_
                                                             _%bind137635%_
                                                             _%current-phi137602%_
                                                             _%current-ctx137600%_)
                                                            _%set137612%_))))))
                                         (if (pair? _%bind-rest137613137623%_)
                                             (let ((_%hd137618137644%_
                                                    (##car _%bind-rest137613137623%_))
                                                   (_%tl137619137646%_
                                                    (##cdr _%bind-rest137613137623%_)))
                                               (if (pair? _%hd137618137644%_)
                                                   (let ((_%hd137620137649%_
                                                          (##car _%hd137618137644%_))
                                                         (_%tl137621137651%_
                                                          (##cdr _%hd137618137644%_)))
                                                     (let* ((_%key137654%_
                                                             _%hd137620137649%_)
                                                            (_%bind137656%_
                                                             _%tl137621137651%_)
                                                            (_%bind-rest137658%_
                                                             _%tl137619137646%_))
                                                       (_%K137617137641%_
                                                        _%bind-rest137658%_
                                                        _%bind137656%_
                                                        _%key137654%_)))
                                                   (_%else137615137631%_)))
                                             (_%else137615137631%_)))))
                                   (_%E137376137596%_)))))
                       (_%E137375137660%_))))
                  (_%export-imports137216%_
                   (lambda (_%src137246%_ _%r137247%_)
                     (letrec* ((_%current-ctx137249%_
                                (gx#current-expander-context))
                               (_%current-phi137250%_
                                (gx#current-export-expander-phi))
                               (_%import->export137251%_
                                (lambda (_%in137332%_)
                                  (let* ((_%in137333137341%_ _%in137332%_)
                                         (_%E137335137345%_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _%in137333137341%_
                                                   '((module-import
                                                      out
                                                      key
                                                      phi)))
                                            '#!void))
                                         (_%K137336137352%_
                                          (lambda (_%phi137348%_
                                                   _%key137349%_
                                                   _%out137350%_)
                                            (##structure
                                             gx#module-export::t
                                             _%current-ctx137249%_
                                             _%key137349%_
                                             _%phi137348%_
                                             _%key137349%_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _%in137333137341%_
                                         'gx#module-import::t)
                                        (let* ((_%e137337137355%_
                                                (##unchecked-structure-ref
                                                 _%in137333137341%_
                                                 '1
                                                 '#f
                                                 '#f))
                                               (_%out137358%_
                                                _%e137337137355%_)
                                               (_%e137338137360%_
                                                (##unchecked-structure-ref
                                                 _%in137333137341%_
                                                 '2
                                                 '#f
                                                 '#f))
                                               (_%key137363%_
                                                _%e137338137360%_)
                                               (_%e137339137365%_
                                                (##unchecked-structure-ref
                                                 _%in137333137341%_
                                                 '3
                                                 '#f
                                                 '#f))
                                               (_%phi137368%_
                                                _%e137339137365%_))
                                          (_%K137336137352%_
                                           _%phi137368%_
                                           _%key137363%_
                                           _%out137358%_))
                                        (_%E137335137345%_)))))
                               (_%fold-e137252%_
                                (lambda (_%in137254%_ _%r137255%_)
                                  (let* ((_%in137256137270%_ _%in137254%_)
                                         (_%else137259137278%_
                                          (lambda () _%r137255%_)))
                                    (let ((_%K137265137314%_
                                           (lambda (_%phi137310%_
                                                    _%key137311%_
                                                    _%out137312%_)
                                             (if (and (fx= _%phi137310%_
                                                           _%current-phi137250%_)
                                                      (eq? _%src137246%_
                                                           (##unchecked-structure-ref
                                                            _%out137312%_
                                                            '1
                                                            '#f
                                                            '#f)))
                                                 (cons (_%import->export137251%_
                                                        _%in137254%_)
                                                       _%r137255%_)
                                                 _%r137255%_)))
                                          (_%K137261137289%_
                                           (lambda (_%imports137282%_
                                                    _%phi137283%_
                                                    _%ctx137284%_)
                                             (if (and (fx= _%phi137283%_
                                                           _%current-phi137250%_)
                                                      (eq? _%src137246%_
                                                           _%ctx137284%_))
                                                 (__foldl1
                                                  (lambda (_%in137286%_
                                                           _%r137287%_)
                                                    (cons (_%import->export137251%_
                                                           _%in137286%_)
                                                          _%r137287%_))
                                                  _%r137255%_
                                                  _%imports137282%_)
                                                 _%r137255%_))))
                                      (let ((_%try-match137258137307%_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _%in137256137270%_
                                                    'gx#import-set::t)
                                                   (let* ((_%e137262137292%_
                                                           (##unchecked-structure-ref
                                                            _%in137256137270%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                          (_%e137263137297%_
                                                           (##unchecked-structure-ref
                                                            _%in137256137270%_
                                                            '2
                                                            '#f
                                                            '#f))
                                                          (_%e137264137302%_
                                                           (##unchecked-structure-ref
                                                            _%in137256137270%_
                                                            '3
                                                            '#f
                                                            '#f)))
                                                     (let ((_%ctx137295%_
                                                            _%e137262137292%_)
                                                           (_%phi137300%_
                                                            _%e137263137297%_)
                                                           (_%imports137305%_
                                                            _%e137264137302%_))
                                                       (_%K137261137289%_
                                                        _%imports137305%_
                                                        _%phi137300%_
                                                        _%ctx137295%_)))
                                                   (_%else137259137278%_)))))
                                        (if (##structure-direct-instance-of?
                                             _%in137256137270%_
                                             'gx#module-import::t)
                                            (let* ((_%e137266137317%_
                                                    (##unchecked-structure-ref
                                                     _%in137256137270%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                   (_%e137267137322%_
                                                    (##unchecked-structure-ref
                                                     _%in137256137270%_
                                                     '2
                                                     '#f
                                                     '#f))
                                                   (_%e137268137327%_
                                                    (##unchecked-structure-ref
                                                     _%in137256137270%_
                                                     '3
                                                     '#f
                                                     '#f)))
                                              (let ((_%out137320%_
                                                     _%e137266137317%_)
                                                    (_%key137325%_
                                                     _%e137267137322%_)
                                                    (_%phi137330%_
                                                     _%e137268137327%_))
                                                (_%K137265137314%_
                                                 _%phi137330%_
                                                 _%key137325%_
                                                 _%out137320%_)))
                                            (_%try-match137258137307%_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _%src137246%_
                              _%current-phi137250%_
                              (__foldl1
                               _%fold-e137252%_
                               '()
                               (##unchecked-structure-ref
                                _%current-ctx137249%_
                                '8
                                '#f
                                '#f)))
                             _%r137247%_))))
                  (_%export!137217%_
                   (lambda (_%rbody137233%_)
                     (letrec* ((_%current-ctx137235%_
                                (gx#current-expander-context))
                               (_%fold-e137236%_
                                (lambda (_%out137240%_ _%r137241%_)
                                  (if (##structure-direct-instance-of?
                                       _%out137240%_
                                       'gx#module-export::t)
                                      (cons _%out137240%_ _%r137241%_)
                                      (if (##structure-direct-instance-of?
                                           _%out137240%_
                                           'gx#export-set::t)
                                          (__foldl1
                                           cons
                                           _%r137241%_
                                           (##unchecked-structure-ref
                                            _%out137240%_
                                            '3
                                            '#f
                                            '#f))
                                          _%r137241%_)))))
                       (let ((_%body137238%_ (reverse _%rbody137233%_)))
                         (##unchecked-structure-set!
                          _%current-ctx137235%_
                          (__foldl1
                           _%fold-e137236%_
                           (##unchecked-structure-ref
                            _%current-ctx137235%_
                            '9
                            '#f
                            '#f)
                           _%body137238%_)
                          '9
                          '#f
                          '#f)
                         _%body137238%_))))
                  (_%expanded-export?137218%_
                   (lambda (_%e137228%_)
                     (let ((_%$e137230%_
                            (##structure-direct-instance-of?
                             _%e137228%_
                             'gx#module-export::t)))
                       (if _%$e137230%_
                           _%$e137230%_
                           (##structure-direct-instance-of?
                            _%e137228%_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _%internal-expand?137212%_)
              (let ((_%rbody137224%_
                     (gx#core-expand-import/export
                      _%stx137211%_
                      _%expanded-export?137218%_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _%expand1137215%_)))
                (if _%internal-expand?137212%_
                    (reverse _%rbody137224%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons
                      '%#export
                      (_%export!137217%_ _%rbody137224%_))
                     (gx#stx-source _%stx137211%_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _%stx137211%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _%stx137211%_))))))
    (define gx#core-expand-export%__0
      (lambda (_%stx137710%_)
        (let ((_%internal-expand?137712%_ '#f))
          (gx#core-expand-export%__%
           _%stx137710%_
           _%internal-expand?137712%_))))
    (define gx#core-expand-export%
      (lambda _g140791_
        (let ((_g140792_ (##length _g140791_)))
          (cond ((##fx= _g140792_ 1)
                 (apply gx#core-expand-export%__0 _g140791_))
                ((##fx= _g140792_ 2)
                 (apply gx#core-expand-export%__% _g140791_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g140791_))))))
    (define gx#core-expand-export-source
      (lambda (_%hd137208%_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _%hd137208%_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_%stx137178%_)
        (let* ((_%e137179137186%_ _%stx137178%_)
               (_%E137181137190%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e137179137186%_)))
               (_%E137180137204%_
                (lambda ()
                  (if (gx#stx-pair? _%e137179137186%_)
                      (let ((_%e137182137194%_
                             (gx#syntax-e _%e137179137186%_)))
                        (let ((_%hd137183137197%_ (##car _%e137182137194%_))
                              (_%tl137184137199%_ (##cdr _%e137182137194%_)))
                          (let ((_%body137202%_ _%tl137184137199%_))
                            (if (gx#identifier-list? _%body137202%_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _%body137202%_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _%body137202%_))
                                   (gx#stx-source _%stx137178%_)))
                                (_%E137181137190%_)))))
                      (_%E137181137190%_)))))
          (_%E137180137204%_))))
    (define gx#core-bind-feature!__%
      (lambda (_%id137144%_ _%private?137145%_ _%phi137146%_ _%ctx137147%_)
        (gx#core-bind-syntax!__%
         _%id137144%_
         ((if _%private?137145%_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _%id137144%_))
         _%private?137145%_
         _%phi137146%_
         _%ctx137147%_)))
    (define gx#core-bind-feature!__0
      (lambda (_%id137152%_)
        (let* ((_%private?137154%_ '#f)
               (_%phi137156%_ (gx#current-expander-phi))
               (_%ctx137158%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id137152%_
           _%private?137154%_
           _%phi137156%_
           _%ctx137158%_))))
    (define gx#core-bind-feature!__1
      (lambda (_%id137160%_ _%private?137161%_)
        (let* ((_%phi137163%_ (gx#current-expander-phi))
               (_%ctx137165%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id137160%_
           _%private?137161%_
           _%phi137163%_
           _%ctx137165%_))))
    (define gx#core-bind-feature!__2
      (lambda (_%id137167%_ _%private?137168%_ _%phi137169%_)
        (let ((_%ctx137171%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id137167%_
           _%private?137168%_
           _%phi137169%_
           _%ctx137171%_))))
    (define gx#core-bind-feature!
      (lambda _g140793_
        (let ((_g140794_ (##length _g140793_)))
          (cond ((##fx= _g140794_ 1)
                 (apply gx#core-bind-feature!__0 _g140793_))
                ((##fx= _g140794_ 2)
                 (apply gx#core-bind-feature!__1 _g140793_))
                ((##fx= _g140794_ 3)
                 (apply gx#core-bind-feature!__2 _g140793_))
                ((##fx= _g140794_ 4)
                 (apply gx#core-bind-feature!__% _g140793_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g140793_))))))))
