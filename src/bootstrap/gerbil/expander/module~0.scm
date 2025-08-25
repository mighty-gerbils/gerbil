(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1756156300)
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
      (lambda _%$args137032%_
        (apply make-instance gx#module-import::t _%$args137032%_)))
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
      (lambda _%$args137029%_
        (apply make-instance gx#module-export::t _%$args137029%_)))
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
      (lambda _%$args137026%_
        (apply make-instance gx#import-set::t _%$args137026%_)))
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
      (lambda _%$args137023%_
        (apply make-instance gx#export-set::t _%$args137023%_)))
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
      (lambda _%$args137020%_
        (apply make-instance gx#import-expander::t _%$args137020%_)))
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
      (lambda _%$args137017%_
        (apply make-instance gx#export-expander::t _%$args137017%_)))
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
      (lambda _%$args137014%_
        (apply make-instance gx#import-export-expander::t _%$args137014%_)))
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
      (lambda (_%path137011%_ _%fun137012%_)
        (call-with-input-file
         (cons 'path: (cons _%path137011%_ gx#source-file-settings))
         _%fun137012%_)))
    (define gx#module-context:::init!
      (lambda (_%self136994%_
               _%id136995%_
               _%super136996%_
               _%ns136997%_
               _%path136998%_)
        (let ((_%self137001%_ _%self136994%_))
          (if (##fx< '11 (##structure-length _%self137001%_))
              (begin
                (##unchecked-structure-set!
                 _%self137001%_
                 _%id136995%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self137001%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self137001%_
                 _%super136996%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self137001%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self137001%_ '#f '5 '#f '#f)
                (##unchecked-structure-set!
                 _%self137001%_
                 _%ns136997%_
                 '6
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self137001%_
                 _%path136998%_
                 '7
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self137001%_ '() '8 '#f '#f)
                (##unchecked-structure-set! _%self137001%_ '() '9 '#f '#f)
                (##unchecked-structure-set! _%self137001%_ '#f '10 '#f '#f)
                (##unchecked-structure-set! _%self137001%_ '#f '11 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self137001%_
                     '11
                     (##structure-length _%self137001%_))))))
    (__bind-method!__%
     gx#module-context::t
     ':init!
     gx#module-context:::init!
     '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_%self136827%_ _%ctx136828%_ _%root136829%_)
        (let* ((_%self136832%_ _%self136827%_)
               (_%super136848%_
                (let ((_%$e136842%_ _%root136829%_))
                  (if _%$e136842%_
                      _%$e136842%_
                      (let ((_%$e136845%_ (gx#core-context-root__0)))
                        (if _%$e136845%_
                            _%$e136845%_
                            (let ((__obj137076
                                   (##structure gx#root-context::t '#f '#f)))
                              (let ((__constructor137077
                                     (direct-method-ref
                                      gx#root-context::t
                                      __obj137076
                                      ':init!)))
                                (if __constructor137077
                                    (__constructor137077 __obj137076)
                                    (error '"missing constructor method implementation"
                                           'class:
                                           gx#root-context::t
                                           'method:
                                           ':init!)))
                              __obj137076)))))))
          (if _%ctx136828%_
              (let ((_%id136851%_
                     (##structure-ref
                      _%ctx136828%_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_%path136852%_
                     (##structure-ref
                      _%ctx136828%_
                      '7
                      gx#module-context::t
                      '#f))
                    (_%in136853%_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _%ctx136828%_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_%e136854%_
                     (__make-promise
                      (lambda () (gx#eval-module _%ctx136828%_)))))
                (if (##fx< '8 (##structure-length _%self136832%_))
                    (begin
                      (##unchecked-structure-set!
                       _%self136832%_
                       _%id136851%_
                       '1
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self136832%_
                       (make-hash-table-eq 'size: (##length _%in136853%_))
                       '2
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self136832%_
                       _%super136848%_
                       '3
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self136832%_
                       '#f
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self136832%_
                       '#f
                       '5
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self136832%_
                       _%path136852%_
                       '6
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self136832%_
                       _%in136853%_
                       '7
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self136832%_
                       _%e136854%_
                       '8
                       '#f
                       '#f)
                      '#!void)
                    (error '"struct-instance-init!: too many arguments for struct"
                           _%self136832%_
                           '8
                           (##structure-length _%self136832%_)))
                (##for-each
                 (lambda (_%g136855136857%_)
                   (gx#core-bind-weak-import!__%
                    _%g136855136857%_
                    _%self136832%_))
                 _%in136853%_))
              (if (##fx< '8 (##structure-length _%self136832%_))
                  (begin
                    (##unchecked-structure-set! _%self136832%_ '#f '1 '#f '#f)
                    (##unchecked-structure-set!
                     _%self136832%_
                     (make-hash-table-eq)
                     '2
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self136832%_
                     _%super136848%_
                     '3
                     '#f
                     '#f)
                    (##unchecked-structure-set! _%self136832%_ '#f '4 '#f '#f)
                    (##unchecked-structure-set! _%self136832%_ '#f '5 '#f '#f)
                    (##unchecked-structure-set! _%self136832%_ '#f '6 '#f '#f)
                    (##unchecked-structure-set! _%self136832%_ '() '7 '#f '#f)
                    (##unchecked-structure-set! _%self136832%_ '#f '8 '#f '#f)
                    '#!void)
                  (error '"struct-instance-init!: too many arguments for struct"
                         _%self136832%_
                         '8
                         (##structure-length _%self136832%_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_%self136863%_ _%ctx136864%_)
        (let ((_%root136866%_ '#f))
          (gx#prelude-context:::init!__%
           _%self136863%_
           _%ctx136864%_
           _%root136866%_))))
    (define gx#prelude-context:::init!
      (lambda _g137082_
        (let ((_g137083_ (##length _g137082_)))
          (cond ((##fx= _g137083_ 2)
                 (apply gx#prelude-context:::init!__0 _g137082_))
                ((##fx= _g137083_ 3)
                 (apply gx#prelude-context:::init!__% _g137082_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g137082_))))))
    (__bind-method!__%
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_%self136701%_ _%e136702%_)
        (if (##fx< '3 (##structure-length _%self136701%_))
            (begin
              (##unchecked-structure-set!
               _%self136701%_
               _%e136702%_
               '1
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self136701%_
               (gx#current-expander-context)
               '2
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self136701%_
               (##fx- (gx#current-expander-phi) '1)
               '3
               '#f
               '#f)
              '#!void)
            (error '"struct-instance-init!: too many arguments for struct"
                   _%self136701%_
                   '3
                   (##structure-length _%self136701%_)))))
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
      (lambda (_%g136327136330%_ _%g136328136332%_)
        (gx#core-apply-user-expander__%
         _%g136327136330%_
         _%g136328136332%_
         'apply-import-expander)))
    (__bind-method!__%
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_%g136198136201%_ _%g136199136203%_)
        (gx#core-apply-user-expander__%
         _%g136198136201%_
         _%g136199136203%_
         'apply-export-expander)))
    (__bind-method!__%
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_%ctx136069%_)
        (let* ((_%path136071%_
                (##structure-ref _%ctx136069%_ '7 gx#module-context::t '#f))
               (_%path136073%_
                (if (pair? _%path136071%_)
                    (##last _%path136071%_)
                    _%path136071%_)))
          (if (string? _%path136073%_) _%path136073%_ '#f))))
    (define gx#import-module__%
      (lambda (_%path136045%_ _%reload?136046%_ _%eval?136047%_)
        (let ((_%ctx136049%_
               ((gx#current-expander-module-import)
                _%path136045%_
                _%reload?136046%_)))
          (if (and _%ctx136049%_ _%eval?136047%_)
              (gx#eval-module _%ctx136049%_)
              '#!void)
          _%ctx136049%_)))
    (define gx#import-module__0
      (lambda (_%path136054%_)
        (let* ((_%reload?136056%_ '#f) (_%eval?136058%_ '#f))
          (gx#import-module__%
           _%path136054%_
           _%reload?136056%_
           _%eval?136058%_))))
    (define gx#import-module__1
      (lambda (_%path136060%_ _%reload?136061%_)
        (let ((_%eval?136063%_ '#f))
          (gx#import-module__%
           _%path136060%_
           _%reload?136061%_
           _%eval?136063%_))))
    (define gx#import-module
      (lambda _g137084_
        (let ((_g137085_ (##length _g137084_)))
          (cond ((##fx= _g137085_ 1) (apply gx#import-module__0 _g137084_))
                ((##fx= _g137085_ 2) (apply gx#import-module__1 _g137084_))
                ((##fx= _g137085_ 3) (apply gx#import-module__% _g137084_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g137084_))))))
    (define gx#eval-module
      (lambda (_%mod136042%_)
        ((gx#current-expander-module-eval) _%mod136042%_)))
    (define gx#core-eval-module
      (lambda (_%obj136021%_)
        (letrec ((_%force-e136023%_
                  (lambda (_%getf136037%_ _%e136038%_)
                    (call-with-parameters__1
                     (lambda ()
                       (call-with-parameters__1
                        (lambda () (force (_%getf136037%_ _%e136038%_)))
                        gx#current-expander-phi
                        '0))
                     gx#current-expander-context
                     _%e136038%_))))
          (let _%recur136025%_ ((_%e136027%_ _%obj136021%_))
            (if (##structure-instance-of? _%e136027%_ 'gx#module-context::t)
                (let ()
                  (let ((_%$e136030%_
                         (gx#core-context-prelude__% _%e136027%_)))
                    (if _%$e136030%_ (_%recur136025%_ _%$e136030%_) '#!void))
                  (_%force-e136023%_ gx#module-context-e _%e136027%_))
                (if (##structure-instance-of?
                     _%e136027%_
                     'gx#prelude-context::t)
                    (_%force-e136023%_ gx#prelude-context-e _%e136027%_)
                    (if (gx#stx-string? _%e136027%_)
                        (_%recur136025%_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _%e136027%_)))
                        (if (gx#core-library-module-path? _%e136027%_)
                            (_%recur136025%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%e136027%_)))
                            (error '"cannot eval module" _%obj136021%_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_%ctx136001%_)
        (let _%lp136003%_ ((_%e136005%_ _%ctx136001%_))
          (if (or (##structure-instance-of? _%e136005%_ 'gx#module-context::t)
                  (##structure-instance-of? _%e136005%_ 'gx#local-context::t))
              (_%lp136003%_ (##unchecked-structure-ref _%e136005%_ '3 '#f '#f))
              (if (##structure-instance-of? _%e136005%_ 'gx#prelude-context::t)
                  _%e136005%_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_%ctx136017%_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _%ctx136017%_))))
    (define gx#core-context-prelude
      (lambda _g137086_
        (let ((_g137087_ (##length _g137086_)))
          (cond ((##fx= _g137087_ 0)
                 (apply gx#core-context-prelude__0 _g137086_))
                ((##fx= _g137087_ 1)
                 (apply gx#core-context-prelude__% _g137086_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g137086_))))))
    (define gx#core-module->prelude-context
      (lambda (_%ctx135992%_)
        (let ((_%$e135994%_ (__hash-get gx#__module-registry _%ctx135992%_)))
          (if _%$e135994%_
              _%$e135994%_
              (let ((_%pre135998%_
                     (let ((__obj137078
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
                        __obj137078
                        _%ctx135992%_)
                       __obj137078)))
                (__hash-put! gx#__module-registry _%ctx135992%_ _%pre135998%_)
                _%pre135998%_)))))
    (define gx#core-import-module__%
      (lambda (_%rpath135859%_ _%reload?135860%_)
        (letrec ((_%import-source135862%_
                  (lambda (_%path135951%_)
                    (if (member _%path135951%_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _%path135951%_)
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
                                      (let ((_g137088_
                                             (gx#core-read-module
                                              _%path135951%_)))
                                        (begin
                                          (let ((_g137089_
                                                 (if (##values? _g137088_)
                                                     (##values-length
                                                      _g137088_)
                                                     1)))
                                            (if (not (##fx= _g137089_ 4))
                                                (error "Context expects 4 values"
                                                       _g137089_)))
                                          (let ((_%pre135959%_
                                                 (##values-ref _g137088_ 0))
                                                (_%id135960%_
                                                 (##values-ref _g137088_ 1))
                                                (_%ns135961%_
                                                 (##values-ref _g137088_ 2))
                                                (_%body135962%_
                                                 (##values-ref _g137088_ 3)))
                                            (let* ((_%prelude135972%_
                                                    (if (##structure-instance-of?
                                                         _%pre135959%_
                                                         'gx#prelude-context::t)
                                                        _%pre135959%_
                                                        (if (##structure-instance-of?
                                                             _%pre135959%_
                                                             'gx#module-context::t)
                                                            (gx#core-module->prelude-context
                                                             _%pre135959%_)
                                                            (if (string? _%pre135959%_)
                                                                (gx#core-module->prelude-context
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#core-import-module__0 _%pre135959%_))
                        (if (not _%pre135959%_)
                            (let ((_%$e135968%_
                                   (gx#current-expander-module-prelude)))
                              (if _%$e135968%_
                                  _%$e135968%_
                                  (let ((__obj137079
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
                                     __obj137079
                                     '#f)
                                    __obj137079)))
                            (error '"cannot import module; unknown prelude"
                                   _%rpath135859%_
                                   _%pre135959%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%ctx135974%_
                                                    (let ((__obj137080
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
                                                       __obj137080
                                                       _%id135960%_
                                                       _%prelude135972%_
                                                       _%ns135961%_
                                                       _%path135951%_)
                                                      __obj137080))
                                                   (_%body135976%_
                                                    (gx#core-expand-module-begin
                                                     _%body135962%_
                                                     _%ctx135974%_))
                                                   (_%body135978%_
                                                    (gx#core-quote-syntax__%
                                                     (gx#core-cons
                                                      '%#begin
                                                      _%body135976%_)
                                                     _%path135951%_
                                                     _%ctx135974%_
                                                     '())))
                                              (##unchecked-structure-set!
                                               _%ctx135974%_
                                               (__make-promise
                                                (lambda ()
                                                  (gx#eval-syntax*
                                                   _%body135978%_)))
                                               '10
                                               '#f
                                               '#f)
                                              (##unchecked-structure-set!
                                               _%ctx135974%_
                                               _%body135978%_
                                               '11
                                               '#f
                                               '#f)
                                              (__hash-put!
                                               gx#__module-registry
                                               _%path135951%_
                                               _%ctx135974%_)
                                              (__hash-put!
                                               gx#__module-registry
                                               _%id135960%_
                                               _%ctx135974%_)
                                              _%ctx135974%_)))))
                                    gx#current-export-expander-phi
                                    '#f))
                                 gx#current-import-expander-phi
                                 '#f))
                              gx#current-expander-path
                              (cons _%path135951%_
                                    (gx#current-expander-path))))
                           gx#current-expander-phi
                           '0))
                        gx#current-expander-marks
                        '()))
                     gx#current-expander-context
                     (gx#core-context-root__0))))
                 (_%import-submodule135863%_
                  (lambda (_%rpath135879%_)
                    (let* ((_%rpath135880135887%_ _%rpath135879%_)
                           (_%E135882135891%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%rpath135880135887%_
                                     '([origin . refs]))
                              '#!void))
                           (_%K135883135939%_
                            (lambda (_%refs135894%_ _%origin135895%_)
                              (let ((_%ctx135897%_
                                     (if _%origin135895%_
                                         (gx#core-import-module__%
                                          _%origin135895%_
                                          _%reload?135860%_)
                                         (gx#current-expander-context))))
                                (let _%lp135899%_ ((_%rest135901%_
                                                    _%refs135894%_)
                                                   (_%ctx135902%_
                                                    _%ctx135897%_))
                                  (let* ((_%rest135903135911%_ _%rest135901%_)
                                         (_%else135905135919%_
                                          (lambda () _%ctx135902%_))
                                         (_%K135907135927%_
                                          (lambda (_%rest135922%_ _%id135923%_)
                                            (let ((_%bind135925%_
                                                   (gx#resolve-identifier__%
                                                    _%id135923%_
                                                    '0
                                                    _%ctx135902%_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _%bind135925%_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _%bind135925%_
                                                         '4
                                                         '#f
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_%lp135899%_
                                                   _%rest135922%_
                                                   (##unchecked-structure-ref
                                                    _%bind135925%_
                                                    '4
                                                    '#f
                                                    '#f))
                                                  (error '"cannot import submodule; not bound as a module"
                                                         _%rpath135879%_
                                                         _%id135923%_
                                                         _%bind135925%_))))))
                                    (if (pair? _%rest135903135911%_)
                                        (let ((_%hd135908135930%_
                                               (##car _%rest135903135911%_))
                                              (_%tl135909135932%_
                                               (##cdr _%rest135903135911%_)))
                                          (let* ((_%id135935%_
                                                  _%hd135908135930%_)
                                                 (_%rest135937%_
                                                  _%tl135909135932%_))
                                            (_%K135907135927%_
                                             _%rest135937%_
                                             _%id135935%_)))
                                        (_%else135905135919%_))))))))
                      (if (pair? _%rpath135880135887%_)
                          (let ((_%hd135884135942%_
                                 (##car _%rpath135880135887%_))
                                (_%tl135885135944%_
                                 (##cdr _%rpath135880135887%_)))
                            (let* ((_%origin135947%_ _%hd135884135942%_)
                                   (_%refs135949%_ _%tl135885135944%_))
                              (_%K135883135939%_
                               _%refs135949%_
                               _%origin135947%_)))
                          (_%E135882135891%_))))))
          (let ((_%$e135865%_
                 (if (not _%reload?135860%_)
                     (__hash-get gx#__module-registry _%rpath135859%_)
                     '#f)))
            (if _%$e135865%_
                _%$e135865%_
                (if (list? _%rpath135859%_)
                    (_%import-submodule135863%_ _%rpath135859%_)
                    (if (gx#core-library-module-path? _%rpath135859%_)
                        (let ((_%ctx135870%_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _%rpath135859%_)
                                _%reload?135860%_)))
                          (__hash-put!
                           gx#__module-registry
                           _%rpath135859%_
                           _%ctx135870%_)
                          _%ctx135870%_)
                        (let* ((_%npath135873%_
                                (path-normalize _%rpath135859%_))
                               (_%$e135875%_
                                (if (not _%reload?135860%_)
                                    (__hash-get
                                     gx#__module-registry
                                     _%npath135873%_)
                                    '#f)))
                          (if _%$e135875%_
                              _%$e135875%_
                              (_%import-source135862%_
                               _%npath135873%_))))))))))
    (define gx#core-import-module__0
      (lambda (_%rpath135985%_)
        (let ((_%reload?135987%_ '#f))
          (gx#core-import-module__% _%rpath135985%_ _%reload?135987%_))))
    (define gx#core-import-module
      (lambda _g137090_
        (let ((_g137091_ (##length _g137090_)))
          (cond ((##fx= _g137091_ 1)
                 (apply gx#core-import-module__0 _g137090_))
                ((##fx= _g137091_ 2)
                 (apply gx#core-import-module__% _g137090_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g137090_))))))
    (define gx#core-read-module
      (lambda (_%path135848%_)
        (__with-catch
         (lambda (_%exn135850%_)
           (if (and (datum-parsing-exception? _%exn135850%_)
                    (eq? (datum-parsing-exception-filepos _%exn135850%_) '0))
               (gx#core-read-module/lang _%path135848%_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _%path135848%_
                (call-with-parameters__1
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_%g135852135854%_)
                      (display-exception__% _%exn135850%_ _%g135852135854%_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _%path135848%_)))))
    (define gx#core-read-module/sexp
      (lambda (_%path135700%_)
        (let _%lp135702%_ ((_%body135704%_
                            (read-syntax-from-file _%path135700%_))
                           (_%pre135705%_ '#f)
                           (_%ns135706%_ '#f)
                           (_%pkg135707%_ '#f))
          (let* ((_%e135708135732%_ _%body135704%_)
                 (_%E135724135758%_
                  (lambda ()
                    (let ((_g137092_
                           (if _%pkg135707%_
                               (values _%pre135705%_
                                       _%ns135706%_
                                       _%pkg135707%_)
                               (gx#core-read-module-package
                                _%path135700%_
                                _%pre135705%_
                                _%ns135706%_))))
                      (begin
                        (let ((_g137093_
                               (if (##values? _g137092_)
                                   (##values-length _g137092_)
                                   1)))
                          (if (not (##fx= _g137093_ 3))
                              (error "Context expects 3 values" _g137093_)))
                        (let ((_%pre135736%_ (##values-ref _g137092_ 0))
                              (_%ns135737%_ (##values-ref _g137092_ 1))
                              (_%pkg135738%_ (##values-ref _g137092_ 2)))
                          (let* ((_%prelude135744%_
                                  (if (gx#core-bound-module-prelude?
                                       _%pre135736%_)
                                      (gx#syntax-local-e__0 _%pre135736%_)
                                      (if (gx#core-library-module-path?
                                           _%pre135736%_)
                                          (gx#core-resolve-library-module-path
                                           _%pre135736%_)
                                          (if (gx#stx-string? _%pre135736%_)
                                              (gx#core-resolve-module-path__%
                                               _%pre135736%_
                                               _%path135700%_)
                                              (gx#stx-e _%pre135736%_)))))
                                 (_%path-id135746%_
                                  (gx#core-module-path->namespace
                                   _%path135700%_))
                                 (_%pkg-id135748%_
                                  (if _%pkg135738%_
                                      (##string-append
                                       _%pkg135738%_
                                       '"/"
                                       _%path-id135746%_)
                                      _%path-id135746%_))
                                 (_%module-id135750%_
                                  (##string->symbol _%pkg-id135748%_))
                                 (_%module-ns135755%_
                                  (if (eq? _%ns135737%_ '#!void)
                                      '#f
                                      (let ((_%$e135752%_ _%ns135737%_))
                                        (if _%$e135752%_
                                            _%$e135752%_
                                            _%pkg-id135748%_)))))
                            (values _%prelude135744%_
                                    _%module-id135750%_
                                    _%module-ns135755%_
                                    _%body135704%_)))))))
                 (_%E135717135790%_
                  (lambda ()
                    (if (gx#stx-pair? _%e135708135732%_)
                        (let ((_%e135725135762%_
                               (gx#syntax-e _%e135708135732%_)))
                          (let ((_%hd135726135765%_ (##car _%e135725135762%_))
                                (_%tl135727135767%_ (##cdr _%e135725135762%_)))
                            (if (eq? (gx#stx-e _%hd135726135765%_) 'package:)
                                (if (gx#stx-pair? _%tl135727135767%_)
                                    (let ((_%e135728135770%_
                                           (gx#syntax-e _%tl135727135767%_)))
                                      (let ((_%hd135729135773%_
                                             (##car _%e135728135770%_))
                                            (_%tl135730135775%_
                                             (##cdr _%e135728135770%_)))
                                        (let* ((_%pkg135778%_
                                                _%hd135729135773%_)
                                               (_%rest135780%_
                                                _%tl135730135775%_)
                                               (_%pkg135788%_
                                                (if (gx#identifier?
                                                     _%pkg135778%_)
                                                    (symbol->string
                                                     (gx#stx-e _%pkg135778%_))
                                                    (if (or (gx#stx-string?
                                                             _%pkg135778%_)
                                                            (gx#stx-false?
                                                             _%pkg135778%_))
                                                        (gx#stx-e
                                                         _%pkg135778%_)
                                                        (gx#raise-syntax-error
                                                         'import
                                                         '"Bad syntax; Illegal package name"
                                                         _%pkg135778%_)))))
                                          (_%lp135702%_
                                           _%rest135780%_
                                           _%pre135705%_
                                           _%ns135706%_
                                           _%pkg135788%_))))
                                    (_%E135724135758%_))
                                (_%E135724135758%_))))
                        (_%E135724135758%_))))
                 (_%E135710135820%_
                  (lambda ()
                    (if (gx#stx-pair? _%e135708135732%_)
                        (let ((_%e135718135794%_
                               (gx#syntax-e _%e135708135732%_)))
                          (let ((_%hd135719135797%_ (##car _%e135718135794%_))
                                (_%tl135720135799%_ (##cdr _%e135718135794%_)))
                            (if (eq? (gx#stx-e _%hd135719135797%_) 'namespace:)
                                (if (gx#stx-pair? _%tl135720135799%_)
                                    (let ((_%e135721135802%_
                                           (gx#syntax-e _%tl135720135799%_)))
                                      (let ((_%hd135722135805%_
                                             (##car _%e135721135802%_))
                                            (_%tl135723135807%_
                                             (##cdr _%e135721135802%_)))
                                        (let* ((_%ns135810%_
                                                _%hd135722135805%_)
                                               (_%rest135812%_
                                                _%tl135723135807%_)
                                               (_%ns135818%_
                                                (if (gx#identifier?
                                                     _%ns135810%_)
                                                    (symbol->string
                                                     (gx#stx-e _%ns135810%_))
                                                    (if (gx#stx-string?
                                                         _%ns135810%_)
                                                        (gx#stx-e _%ns135810%_)
                                                        (if (gx#stx-false?
                                                             _%ns135810%_)
                                                            '#!void
                                                            (gx#raise-syntax-error
                                                             'import
                                                             '"Bad syntax; illegal namespace"
                                                             _%ns135810%_))))))
                                          (_%lp135702%_
                                           _%rest135812%_
                                           _%pre135705%_
                                           _%ns135818%_
                                           _%pkg135707%_))))
                                    (_%E135717135790%_))
                                (_%E135717135790%_))))
                        (_%E135717135790%_))))
                 (_%E135709135844%_
                  (lambda ()
                    (if (gx#stx-pair? _%e135708135732%_)
                        (let ((_%e135711135824%_
                               (gx#syntax-e _%e135708135732%_)))
                          (let ((_%hd135712135827%_ (##car _%e135711135824%_))
                                (_%tl135713135829%_ (##cdr _%e135711135824%_)))
                            (if (eq? (gx#stx-e _%hd135712135827%_) 'prelude:)
                                (if (gx#stx-pair? _%tl135713135829%_)
                                    (let ((_%e135714135832%_
                                           (gx#syntax-e _%tl135713135829%_)))
                                      (let ((_%hd135715135835%_
                                             (##car _%e135714135832%_))
                                            (_%tl135716135837%_
                                             (##cdr _%e135714135832%_)))
                                        (let* ((_%prelude135840%_
                                                _%hd135715135835%_)
                                               (_%rest135842%_
                                                _%tl135716135837%_))
                                          (_%lp135702%_
                                           _%rest135842%_
                                           _%prelude135840%_
                                           _%ns135706%_
                                           _%pkg135707%_))))
                                    (_%E135710135820%_))
                                (_%E135710135820%_))))
                        (_%E135710135820%_)))))
            (_%E135709135844%_)))))
    (define gx#core-read-module/lang
      (lambda (_%path135521%_)
        (letrec ((_%default-read-module-body135523%_
                  (lambda (_%inp135692%_)
                    (let _%lp135694%_ ((_%body135696%_ '()))
                      (let ((_%next135698%_ (read-syntax__% _%inp135692%_)))
                        (if (eof-object? _%next135698%_)
                            (reverse _%body135696%_)
                            (_%lp135694%_
                             (cons _%next135698%_ _%body135696%_)))))))
                 (_%read-body135524%_
                  (lambda (_%inp135609%_
                           _%pre135610%_
                           _%ns135611%_
                           _%pkg135612%_
                           _%args135613%_)
                    (let ((_g137094_
                           (if _%pkg135612%_
                               (values _%pre135610%_
                                       _%ns135611%_
                                       _%pkg135612%_)
                               (gx#core-read-module-package
                                _%path135521%_
                                _%pre135610%_
                                _%ns135611%_))))
                      (begin
                        (let ((_g137095_
                               (if (##values? _g137094_)
                                   (##values-length _g137094_)
                                   1)))
                          (if (not (##fx= _g137095_ 3))
                              (error "Context expects 3 values" _g137095_)))
                        (let ((_%pre135615%_ (##values-ref _g137094_ 0))
                              (_%ns135616%_ (##values-ref _g137094_ 1))
                              (_%pkg135617%_ (##values-ref _g137094_ 2)))
                          (let* ((_%prelude135619%_
                                  (gx#import-module__0 _%pre135615%_))
                                 (_%read-module-body135674%_
                                  (let ((_%$e135665%_
                                         (__find (lambda (_%e135620135622%_)
                                                   (let* ((_%g135624135634%_
                                                           _%e135620135622%_)
                                                          (_%else135626135642%_
                                                           (lambda () '#f))
                                                          (_%K135628135646%_
                                                           (lambda () '#t)))
                                                     (if (##structure-direct-instance-of?
                                                          _%g135624135634%_
                                                          'gx#module-export::t)
                                                         (let* ((_%e135629135649%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##unchecked-structure-ref
                          _%g135624135634%_
                          '1
                          '#f
                          '#f))
                        (_%e135630135652%_
                         (##unchecked-structure-ref
                          _%g135624135634%_
                          '2
                          '#f
                          '#f))
                        (_%e135631135655%_
                         (##unchecked-structure-ref
                          _%g135624135634%_
                          '3
                          '#f
                          '#f)))
                   (if (##eq? _%e135631135655%_ '1)
                       (let ((_%e135632135658%_
                              (##unchecked-structure-ref
                               _%g135624135634%_
                               '4
                               '#f
                               '#f)))
                         (if ((lambda (_%g135660135662%_)
                                (eq? _%g135660135662%_ 'read-module-body))
                              _%e135632135658%_)
                             (_%K135628135646%_)
                             (_%else135626135642%_)))
                       (_%else135626135642%_)))
                 (_%else135626135642%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (##unchecked-structure-ref
                                                  _%prelude135619%_
                                                  '9
                                                  '#f
                                                  '#f))))
                                    (if _%$e135665%_
                                        ((lambda (_%xport135668%_)
                                           (let ((_%proc135671%_
                                                  (__with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _%xport135668%_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _%proc135671%_)
                                                 _%proc135671%_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _%path135521%_
                                                  _%pre135615%_
                                                  _%proc135671%_))))
                                         _%$e135665%_)
                                        _%default-read-module-body135523%_)))
                                 (_%path-id135676%_
                                  (gx#core-module-path->namespace
                                   _%path135521%_))
                                 (_%pkg-id135678%_
                                  (if _%pkg135617%_
                                      (##string-append
                                       _%pkg135617%_
                                       '"/"
                                       _%path-id135676%_)
                                      _%path-id135676%_))
                                 (_%module-id135680%_
                                  (##string->symbol _%pkg-id135678%_))
                                 (_%module-ns135685%_
                                  (let ((_%$e135682%_ _%ns135616%_))
                                    (if _%$e135682%_
                                        _%$e135682%_
                                        _%pkg-id135678%_)))
                                 (_%body135689%_
                                  (call-with-parameters__1
                                   (lambda ()
                                     (call-with-parameters__1
                                      (lambda ()
                                        (_%read-module-body135674%_
                                         _%inp135609%_))
                                      gx#current-module-reader-args
                                      _%args135613%_))
                                   gx#current-module-reader-path
                                   _%path135521%_)))
                            (values _%prelude135619%_
                                    _%module-id135680%_
                                    _%module-ns135685%_
                                    _%body135689%_)))))))
                 (_%string-e135525%_
                  (lambda (_%obj135603%_ _%what135604%_)
                    (if (string? _%obj135603%_)
                        _%obj135603%_
                        (if (symbol? _%obj135603%_)
                            (##symbol->string _%obj135603%_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _%what135604%_)
                             _%path135521%_
                             _%obj135603%_)))))
                 (_%read-lang-args135526%_
                  (lambda (_%inp135558%_ _%args135559%_)
                    (let* ((_%args135560135568%_ _%args135559%_)
                           (_%else135562135576%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _%path135521%_)))
                           (_%K135564135591%_
                            (lambda (_%args135579%_ _%prelude135580%_)
                              (let* ((_%pkg135582%_
                                      (pgetq__0 'package: _%args135579%_))
                                     (_%pkg135584%_
                                      (if _%pkg135582%_
                                          (_%string-e135525%_
                                           _%pkg135582%_
                                           '"package")
                                          '#f))
                                     (_%ns135586%_
                                      (pgetq__0 'namespace: _%args135579%_))
                                     (_%ns135588%_
                                      (if _%ns135586%_
                                          (_%string-e135525%_
                                           _%ns135586%_
                                           '"namespace")
                                          '#f)))
                                (_%read-body135524%_
                                 _%inp135558%_
                                 _%prelude135580%_
                                 _%ns135588%_
                                 _%pkg135584%_
                                 _%args135579%_)))))
                      (if (pair? _%args135560135568%_)
                          (let ((_%hd135565135594%_
                                 (##car _%args135560135568%_))
                                (_%tl135566135596%_
                                 (##cdr _%args135560135568%_)))
                            (let* ((_%prelude135599%_ _%hd135565135594%_)
                                   (_%args135601%_ _%tl135566135596%_))
                              (_%K135564135591%_
                               _%args135601%_
                               _%prelude135599%_)))
                          (_%else135562135576%_)))))
                 (_%read-lang135527%_
                  (lambda (_%inp135532%_)
                    (let* ((_%head135534%_ (read-line _%inp135532%_))
                           (_%$e135536%_
                            (string-index__0 _%head135534%_ '#\space)))
                      (if _%$e135536%_
                          ((lambda (_%ix135539%_)
                             (let ((_%lang135541%_
                                    (substring
                                     _%head135534%_
                                     '0
                                     _%ix135539%_)))
                               (if (equal? _%lang135541%_ '"#lang")
                                   (let* ((_%rest135543%_
                                           (substring
                                            _%head135534%_
                                            (##fx+ _%ix135539%_ '1)
                                            (string-length _%head135534%_)))
                                          (_%args135554%_
                                           (__with-catch
                                            (lambda (_%g135544135546%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _%path135521%_
                                               _%g135544135546%_))
                                            (lambda ()
                                              (call-with-input-string
                                               _%rest135543%_
                                               (lambda (_%g135549135551%_)
                                                 (read-all
                                                  _%g135549135551%_
                                                  read)))))))
                                     (_%read-lang-args135526%_
                                      _%inp135532%_
                                      _%args135554%_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _%path135521%_))))
                           _%$e135536%_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _%path135521%_)))))
                 (_%read-e135528%_
                  (lambda (_%inp135530%_)
                    (if (eq? (peek-char _%inp135530%_) '#\#)
                        (_%read-lang135527%_ _%inp135530%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _%path135521%_)))))
          (gx#call-with-input-source-file _%path135521%_ _%read-e135528%_))))
    (define gx#core-read-module-package
      (lambda (_%path135469%_ _%pre135470%_ _%ns135471%_)
        (letrec ((_%string-e135473%_
                  (lambda (_%e135516%_)
                    (if (symbol? _%e135516%_)
                        (##symbol->string _%e135516%_)
                        (if (string? _%e135516%_)
                            _%e135516%_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%e135516%_))))))
          (let _%lp135475%_ ((_%dir135477%_ (path-directory _%path135469%_))
                             (_%pkg-path135478%_ '()))
            (let ((_%gerbil.pkg135480%_
                   (path-expand '"gerbil.pkg" _%dir135477%_)))
              (if (##file-exists? _%gerbil.pkg135480%_)
                  (let ((_%plist135482%_
                         (gx#core-library-package-plist__% _%dir135477%_ '#t)))
                    (if (null? _%plist135482%_)
                        (let ((_%pkg135485%_
                               (if (null? _%pkg-path135478%_)
                                   '#f
                                   (string-join _%pkg-path135478%_ '"/"))))
                          (values _%pre135470%_ _%ns135471%_ _%pkg135485%_))
                        (if (list? _%plist135482%_)
                            (let* ((_%root135488%_
                                    (pgetq__0 'package: _%plist135482%_))
                                   (_%pkg135492%_
                                    (let ((_%pkg-path135490%_
                                           (if _%root135488%_
                                               (cons (_%string-e135473%_
                                                      _%root135488%_)
                                                     _%pkg-path135478%_)
                                               _%pkg-path135478%_)))
                                      (if (null? _%pkg-path135490%_)
                                          '#f
                                          (string-join
                                           _%pkg-path135490%_
                                           '"/"))))
                                   (_%ns135499%_
                                    (let ((_%ns135497%_
                                           (let ((_%$e135494%_ _%ns135471%_))
                                             (if _%$e135494%_
                                                 _%$e135494%_
                                                 (pgetq__0
                                                  'namespace:
                                                  _%plist135482%_)))))
                                      (if _%ns135497%_
                                          (_%string-e135473%_ _%ns135497%_)
                                          '#f)))
                                   (_%pre135504%_
                                    (let ((_%$e135501%_ _%pre135470%_))
                                      (if _%$e135501%_
                                          _%$e135501%_
                                          (pgetq__0
                                           'prelude:
                                           _%plist135482%_)))))
                              (values _%pre135504%_
                                      _%ns135499%_
                                      _%pkg135492%_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%plist135482%_))))
                  (let ((_%dir*135508%_
                         (path-strip-trailing-directory-separator
                          _%dir135477%_)))
                    (if (or (__string-empty? _%dir*135508%_)
                            (equal? _%dir135477%_ _%dir*135508%_))
                        (values _%pre135470%_ _%ns135471%_ '#f)
                        (let ((_%xpath135513%_
                               (path-strip-directory _%dir*135508%_))
                              (_%xdir135514%_ (path-directory _%dir*135508%_)))
                          (_%lp135475%_
                           _%xdir135514%_
                           (cons _%xpath135513%_ _%pkg-path135478%_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_%path135467%_)
        (path-strip-extension (path-strip-directory _%path135467%_))))
    (define gx#core-module-path->id
      (lambda (_%path135465%_)
        (##string->symbol (gx#core-module-path->namespace _%path135465%_))))
    (define gx#core-resolve-module-path__%
      (lambda (_%stx-path135444%_ _%rel135445%_)
        (let* ((_%path135447%_ (gx#stx-e _%stx-path135444%_))
               (_%path135449%_
                (if (__string-empty? (path-extension _%path135447%_))
                    (##string-append _%path135447%_ '".ss")
                    _%path135447%_)))
          (gx#core-resolve-path__%
           _%path135449%_
           (let ((_%$e135452%_ (gx#stx-source _%stx-path135444%_)))
             (if _%$e135452%_ _%$e135452%_ _%rel135445%_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_%stx-path135458%_)
        (let ((_%rel135460%_ '#f))
          (gx#core-resolve-module-path__% _%stx-path135458%_ _%rel135460%_))))
    (define gx#core-resolve-module-path
      (lambda _g137096_
        (let ((_g137097_ (##length _g137096_)))
          (cond ((##fx= _g137097_ 1)
                 (apply gx#core-resolve-module-path__0 _g137096_))
                ((##fx= _g137097_ 2)
                 (apply gx#core-resolve-module-path__% _g137096_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g137096_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_%libpath135329%_)
        (let* ((_%spath135331%_ (symbol->string (gx#stx-e _%libpath135329%_)))
               (_%spath135333%_
                (substring
                 _%spath135331%_
                 '1
                 (##string-length _%spath135331%_)))
               (_%ext135335%_ (path-extension _%spath135333%_))
               (_%ssi135337%_
                (if (__string-empty? _%ext135335%_)
                    (##string-append _%spath135333%_ '".ssi")
                    (##string-append
                     (path-strip-extension _%spath135333%_)
                     '".ssi")))
               (_%srcs135341%_
                (if (__string-empty? _%ext135335%_)
                    (##map (lambda (_%ext135339%_)
                             (string-append _%spath135333%_ _%ext135339%_))
                           '(".ss" ".sld" ".scm"))
                    (cons _%spath135333%_ '()))))
          (let _%lp135344%_ ((_%rest135346%_ (load-path)))
            (let* ((_%rest135347135356%_ _%rest135346%_)
                   (_%E135350135360%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rest135347135356%_
                             '([dir . rest])
                             '([]))
                      '#!void)))
              (let ((_%K135352135431%_
                     (lambda (_%rest135371%_ _%dir135372%_)
                       (letrec ((_%resolve135374%_
                                 (lambda (_%ssi135387%_ _%srcs135388%_)
                                   (let ((_%compiled-path135390%_
                                          (path-expand
                                           _%ssi135387%_
                                           _%dir135372%_)))
                                     (if (##file-exists?
                                          _%compiled-path135390%_)
                                         (path-normalize
                                          _%compiled-path135390%_)
                                         (let _%lpr135392%_ ((_%rest-src135394%_
                                                              _%srcs135388%_))
                                           (let* ((_%rest-src135395135403%_
                                                   _%rest-src135394%_)
                                                  (_%else135397135411%_
                                                   (lambda ()
                                                     (_%lp135344%_
                                                      _%rest135371%_)))
                                                  (_%K135399135419%_
                                                   (lambda (_%rest-src135414%_
                                                            _%src135415%_)
                                                     (let ((_%src-path135417%_
                                                            (path-expand
                                                             _%src135415%_
                                                             _%dir135372%_)))
                                                       (if (##file-exists?
                                                            _%src-path135417%_)
                                                           (path-normalize
                                                            _%src-path135417%_)
                                                           (_%lpr135392%_
                                                            _%rest-src135414%_))))))
                                             (if (pair? _%rest-src135395135403%_)
                                                 (let ((_%hd135400135422%_
                                                        (##car _%rest-src135395135403%_))
                                                       (_%tl135401135424%_
                                                        (##cdr _%rest-src135395135403%_)))
                                                   (let* ((_%src135427%_
                                                           _%hd135400135422%_)
                                                          (_%rest-src135429%_
                                                           _%tl135401135424%_))
                                                     (_%K135399135419%_
                                                      _%rest-src135429%_
                                                      _%src135427%_)))
                                                 (_%else135397135411%_)))))))))
                         (let ((_%$e135376%_
                                (gx#core-library-package-path-prefix
                                 _%dir135372%_)))
                           (if _%$e135376%_
                               ((lambda (_%prefix135379%_)
                                  (if (string-prefix?
                                       _%prefix135379%_
                                       _%spath135333%_)
                                      (let ((_%ssi135383%_
                                             (substring
                                              _%ssi135337%_
                                              (string-length _%prefix135379%_)
                                              (##string-length _%ssi135337%_)))
                                            (_%srcs135384%_
                                             (##map (lambda (_%src135381%_)
                                                      (substring
                                                       _%src135381%_
                                                       (string-length
                                                        _%prefix135379%_)
                                                       (string-length
                                                        _%src135381%_)))
                                                    _%srcs135341%_)))
                                        (_%resolve135374%_
                                         _%ssi135383%_
                                         _%srcs135384%_))
                                      (_%lp135344%_ _%rest135371%_)))
                                _%$e135376%_)
                               (_%resolve135374%_
                                _%ssi135337%_
                                _%srcs135341%_))))))
                    (_%K135351135365%_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"cannot find library module"
                        _%libpath135329%_))))
                (let ((_%try-match135349135368%_
                       (lambda ()
                         (if (null? _%rest135347135356%_)
                             (_%K135351135365%_)
                             (_%E135350135360%_)))))
                  (if (pair? _%rest135347135356%_)
                      (let ((_%tl135354135436%_ (##cdr _%rest135347135356%_))
                            (_%hd135353135434%_ (##car _%rest135347135356%_)))
                        (let ((_%dir135439%_ _%hd135353135434%_)
                              (_%rest135441%_ _%tl135354135436%_))
                          (_%K135352135431%_ _%rest135441%_ _%dir135439%_)))
                      (_%try-match135349135368%_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_%modpath135297%_)
        (letrec ((_%resolve135299%_
                  (lambda (_%path135320%_ _%base135321%_)
                    (let ((_%$e135323%_
                           (string-rindex__0 _%base135321%_ '#\/)))
                      (if _%$e135323%_
                          ((lambda (_%idx135326%_)
                             (gx#core-resolve-library-module-path
                              (##string->symbol
                               (string-append
                                '":"
                                (substring _%base135321%_ '0 _%idx135326%_)
                                '"/"
                                _%path135320%_))))
                           _%$e135323%_)
                          (gx#core-resolve-library-module-path
                           (##string->symbol
                            (string-append '":" _%path135320%_))))))))
          (let ((_%spath135301%_ (symbol->string (gx#stx-e _%modpath135297%_)))
                (_%mod135302%_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _%mod135302%_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"cannot resolve relative module path; not in module context"
                 _%modpath135297%_))
            (let ((_%mpath135304%_
                   (symbol->string
                    (##structure-ref
                     _%mod135302%_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _%lp135306%_ ((_%spath135308%_ _%spath135301%_)
                                 (_%mpath135309%_ _%mpath135304%_))
                (if (string-prefix? '"../" _%spath135308%_)
                    (let ((_%$e135312%_
                           (string-rindex__0 _%mpath135309%_ '#\/)))
                      (if _%$e135312%_
                          ((lambda (_%idx135315%_)
                             (_%lp135306%_
                              (substring
                               _%spath135308%_
                               '3
                               (string-length _%spath135308%_))
                              (substring _%mpath135309%_ '0 _%idx135315%_)))
                           _%$e135312%_)
                          (gx#raise-syntax-error
                           '#f
                           '"cannot resolve relative module path; illegal traversal"
                           _%modpath135297%_)))
                    (if (string-prefix? '"./" _%spath135308%_)
                        (_%lp135306%_
                         (substring
                          _%spath135308%_
                          '2
                          (string-length _%spath135308%_))
                         _%mpath135309%_)
                        (_%resolve135299%_
                         _%spath135308%_
                         _%mpath135309%_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_%dir135289%_)
        (let ((_%$e135291%_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _%dir135289%_))))
          (if _%$e135291%_
              ((lambda (_%pkg135294%_)
                 (##string-append (symbol->string _%pkg135294%_) '"/"))
               _%$e135291%_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_%dir135259%_ _%exists?135260%_)
        (let ((_%$e135262%_ (__hash-get gx#__module-pkg-cache _%dir135259%_)))
          (if _%$e135262%_
              _%$e135262%_
              (let* ((_%gerbil.pkg135266%_
                      (path-expand '"gerbil.pkg" _%dir135259%_))
                     (_%plist135276%_
                      (if (or _%exists?135260%_
                              (##file-exists? _%gerbil.pkg135266%_))
                          (let ((_%e135271%_
                                 (gx#call-with-input-source-file
                                  _%gerbil.pkg135266%_
                                  read)))
                            (if (eof-object? _%e135271%_)
                                '()
                                (if (list? _%e135271%_)
                                    _%e135271%_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _%gerbil.pkg135266%_
                                     _%e135271%_))))
                          '())))
                (__hash-put!
                 gx#__module-pkg-cache
                 _%dir135259%_
                 _%plist135276%_)
                _%plist135276%_)))))
    (define gx#core-library-package-plist__0
      (lambda (_%dir135282%_)
        (let ((_%exists?135284%_ '#f))
          (gx#core-library-package-plist__% _%dir135282%_ _%exists?135284%_))))
    (define gx#core-library-package-plist
      (lambda _g137098_
        (let ((_g137099_ (##length _g137098_)))
          (cond ((##fx= _g137099_ 1)
                 (apply gx#core-library-package-plist__0 _g137098_))
                ((##fx= _g137099_ 2)
                 (apply gx#core-library-package-plist__% _g137098_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g137098_))))))
    (define gx#core-library-module-path?
      (lambda (_%stx135256%_)
        (gx#core-special-module-path? _%stx135256%_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_%stx135254%_)
        (gx#core-special-module-path? _%stx135254%_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_%stx135249%_ _%char135250%_)
        (if (gx#identifier? _%stx135249%_)
            (if (interned-symbol? (gx#stx-e _%stx135249%_))
                (let ((_%str135252%_
                       (symbol->string (gx#stx-e _%stx135249%_))))
                  (if (##fx> (##string-length _%str135252%_) '1)
                      (eq? (string-ref _%str135252%_ '0) _%char135250%_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_%stx135243%_)
        (gx#core-bound-identifier?__%
         _%stx135243%_
         (lambda (_%g135244135246%_)
           (gx#expander-binding?__% _%g135244135246%_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_%stx135237%_)
        (gx#core-bound-identifier?__%
         _%stx135237%_
         (lambda (_%g135238135240%_)
           (gx#expander-binding?__% _%g135238135240%_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_%stx135224%_)
        (letrec ((_%module-prelude?135226%_
                  (lambda (_%e135232%_)
                    (let ((_%$e135234%_
                           (##structure-instance-of?
                            _%e135232%_
                            'gx#module-context::t)))
                      (if _%$e135234%_
                          _%$e135234%_
                          (##structure-instance-of?
                           _%e135232%_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _%stx135224%_
           (lambda (_%g135227135229%_)
             (gx#expander-binding?__%
              _%g135227135229%_
              _%module-prelude?135226%_))))))
    (define gx#core-bind-import!__%
      (lambda (_%in135154%_ _%ctx135155%_ _%force-weak?135156%_)
        (let* ((_%in135157135166%_ _%in135154%_)
               (_%E135159135170%_
                (lambda ()
                  (error '"No clause matching"
                         _%in135157135166%_
                         '((module-import source key phi weak?)))
                  '#!void))
               (_%K135160135183%_
                (lambda (_%weak?135173%_
                         _%phi135174%_
                         _%key135175%_
                         _%source135176%_)
                  (gx#core-bind!__%
                   _%key135175%_
                   (let ((_%e135178%_
                          (gx#core-resolve-module-export _%source135176%_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref _%e135178%_ '1 '#f '#f)
                      _%key135175%_
                      _%phi135174%_
                      _%e135178%_
                      (##unchecked-structure-ref _%source135176%_ '1 '#f '#f)
                      (let ((_%$e135180%_ _%force-weak?135156%_))
                        (if _%$e135180%_ _%$e135180%_ _%weak?135173%_))))
                   gx#core-context-rebind?
                   _%phi135174%_
                   _%ctx135155%_))))
          (if (##structure-direct-instance-of?
               _%in135157135166%_
               'gx#module-import::t)
              (let* ((_%e135161135186%_
                      (##unchecked-structure-ref
                       _%in135157135166%_
                       '1
                       '#f
                       '#f))
                     (_%source135189%_ _%e135161135186%_)
                     (_%e135162135191%_
                      (##unchecked-structure-ref
                       _%in135157135166%_
                       '2
                       '#f
                       '#f))
                     (_%key135194%_ _%e135162135191%_)
                     (_%e135163135196%_
                      (##unchecked-structure-ref
                       _%in135157135166%_
                       '3
                       '#f
                       '#f))
                     (_%phi135199%_ _%e135163135196%_)
                     (_%e135164135201%_
                      (##unchecked-structure-ref
                       _%in135157135166%_
                       '4
                       '#f
                       '#f))
                     (_%weak?135204%_ _%e135164135201%_))
                (_%K135160135183%_
                 _%weak?135204%_
                 _%phi135199%_
                 _%key135194%_
                 _%source135189%_))
              (_%E135159135170%_)))))
    (define gx#core-bind-import!__0
      (lambda (_%in135209%_)
        (let* ((_%ctx135211%_ (gx#current-expander-context))
               (_%force-weak?135213%_ '#f))
          (gx#core-bind-import!__%
           _%in135209%_
           _%ctx135211%_
           _%force-weak?135213%_))))
    (define gx#core-bind-import!__1
      (lambda (_%in135215%_ _%ctx135216%_)
        (let ((_%force-weak?135218%_ '#f))
          (gx#core-bind-import!__%
           _%in135215%_
           _%ctx135216%_
           _%force-weak?135218%_))))
    (define gx#core-bind-import!
      (lambda _g137100_
        (let ((_g137101_ (##length _g137100_)))
          (cond ((##fx= _g137101_ 1) (apply gx#core-bind-import!__0 _g137100_))
                ((##fx= _g137101_ 2) (apply gx#core-bind-import!__1 _g137100_))
                ((##fx= _g137101_ 3) (apply gx#core-bind-import!__% _g137100_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g137100_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_%in135140%_ _%ctx135141%_)
        (gx#core-bind-import!__% _%in135140%_ _%ctx135141%_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_%in135146%_)
        (let ((_%ctx135148%_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _%in135146%_ _%ctx135148%_))))
    (define gx#core-bind-weak-import!
      (lambda _g137102_
        (let ((_g137103_ (##length _g137102_)))
          (cond ((##fx= _g137103_ 1)
                 (apply gx#core-bind-weak-import!__0 _g137102_))
                ((##fx= _g137103_ 2)
                 (apply gx#core-bind-weak-import!__% _g137102_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g137102_))))))
    (define gx#core-resolve-module-export
      (lambda (_%out135031%_)
        (letrec ((_%subst135033%_
                  (lambda (_%key135079%_)
                    (let* ((_%key135080135088%_ _%key135079%_)
                           (_%else135082135096%_ (lambda () _%key135079%_))
                           (_%K135084135127%_
                            (lambda (_%mark135099%_ _%id135100%_)
                              (let* ((_%mark135101135107%_ _%mark135099%_)
                                     (_%E135103135111%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark135101135107%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K135104135119%_
                                      (lambda (_%subst135114%_)
                                        (let ((_%$e135116%_
                                               (if _%subst135114%_
                                                   (hash-get
                                                    _%subst135114%_
                                                    _%id135100%_)
                                                   '#f)))
                                          (if _%$e135116%_
                                              _%$e135116%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _%key135079%_))))))
                                (if (##structure-instance-of?
                                     _%mark135101135107%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e135105135122%_
                                            (##unchecked-structure-ref
                                             _%mark135101135107%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst135125%_ _%e135105135122%_))
                                      (_%K135104135119%_ _%subst135125%_))
                                    (_%E135103135111%_))))))
                      (if (pair? _%key135080135088%_)
                          (let ((_%hd135085135130%_
                                 (##car _%key135080135088%_))
                                (_%tl135086135132%_
                                 (##cdr _%key135080135088%_)))
                            (let* ((_%id135135%_ _%hd135085135130%_)
                                   (_%mark135137%_ _%tl135086135132%_))
                              (_%K135084135127%_ _%mark135137%_ _%id135135%_)))
                          (_%else135082135096%_))))))
          (let* ((_%out135034135044%_ _%out135031%_)
                 (_%E135036135048%_
                  (lambda ()
                    (error '"No clause matching"
                           _%out135034135044%_
                           '((module-export ctx key phi _ _)))
                    '#!void))
                 (_%K135037135055%_
                  (lambda (_%phi135051%_ _%key135052%_ _%ctx135053%_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _%ctx135053%_ _%phi135051%_)
                     (_%subst135033%_ _%key135052%_)))))
            (if (##structure-direct-instance-of?
                 _%out135034135044%_
                 'gx#module-export::t)
                (let* ((_%e135038135058%_
                        (##unchecked-structure-ref
                         _%out135034135044%_
                         '1
                         '#f
                         '#f))
                       (_%ctx135061%_ _%e135038135058%_)
                       (_%e135039135063%_
                        (##unchecked-structure-ref
                         _%out135034135044%_
                         '2
                         '#f
                         '#f))
                       (_%key135066%_ _%e135039135063%_)
                       (_%e135040135068%_
                        (##unchecked-structure-ref
                         _%out135034135044%_
                         '3
                         '#f
                         '#f))
                       (_%phi135071%_ _%e135040135068%_)
                       (_%e135041135073%_
                        (##unchecked-structure-ref
                         _%out135034135044%_
                         '4
                         '#f
                         '#f))
                       (_%e135042135076%_
                        (##unchecked-structure-ref
                         _%out135034135044%_
                         '5
                         '#f
                         '#f)))
                  (_%K135037135055%_
                   _%phi135071%_
                   _%key135066%_
                   _%ctx135061%_))
                (_%E135036135048%_))))))
    (define gx#core-module-export->import__%
      (lambda (_%out134956%_ _%rename134957%_ _%dphi134958%_)
        (let* ((_%out134959134969%_ _%out134956%_)
               (_%E134961134973%_
                (lambda ()
                  (error '"No clause matching"
                         _%out134959134969%_
                         '((module-export ctx key phi name weak?)))
                  '#!void))
               (_%K134962134985%_
                (lambda (_%weak?134976%_
                         _%name134977%_
                         _%phi134978%_
                         _%key134979%_
                         _%ctx134980%_)
                  (##structure
                   gx#module-import::t
                   _%out134956%_
                   (let ((_%$e134982%_ _%rename134957%_))
                     (if _%$e134982%_ _%$e134982%_ _%name134977%_))
                   (fx+ _%phi134978%_ _%dphi134958%_)
                   _%weak?134976%_))))
          (if (##structure-direct-instance-of?
               _%out134959134969%_
               'gx#module-export::t)
              (let* ((_%e134963134988%_
                      (##unchecked-structure-ref
                       _%out134959134969%_
                       '1
                       '#f
                       '#f))
                     (_%ctx134991%_ _%e134963134988%_)
                     (_%e134964134993%_
                      (##unchecked-structure-ref
                       _%out134959134969%_
                       '2
                       '#f
                       '#f))
                     (_%key134996%_ _%e134964134993%_)
                     (_%e134965134998%_
                      (##unchecked-structure-ref
                       _%out134959134969%_
                       '3
                       '#f
                       '#f))
                     (_%phi135001%_ _%e134965134998%_)
                     (_%e134966135003%_
                      (##unchecked-structure-ref
                       _%out134959134969%_
                       '4
                       '#f
                       '#f))
                     (_%name135006%_ _%e134966135003%_)
                     (_%e134967135008%_
                      (##unchecked-structure-ref
                       _%out134959134969%_
                       '5
                       '#f
                       '#f))
                     (_%weak?135011%_ _%e134967135008%_))
                (_%K134962134985%_
                 _%weak?135011%_
                 _%name135006%_
                 _%phi135001%_
                 _%key134996%_
                 _%ctx134991%_))
              (_%E134961134973%_)))))
    (define gx#core-module-export->import__0
      (lambda (_%out135016%_)
        (let* ((_%rename135018%_ '#f) (_%dphi135020%_ '0))
          (gx#core-module-export->import__%
           _%out135016%_
           _%rename135018%_
           _%dphi135020%_))))
    (define gx#core-module-export->import__1
      (lambda (_%out135022%_ _%rename135023%_)
        (let ((_%dphi135025%_ '0))
          (gx#core-module-export->import__%
           _%out135022%_
           _%rename135023%_
           _%dphi135025%_))))
    (define gx#core-module-export->import
      (lambda _g137104_
        (let ((_g137105_ (##length _g137104_)))
          (cond ((##fx= _g137105_ 1)
                 (apply gx#core-module-export->import__0 _g137104_))
                ((##fx= _g137105_ 2)
                 (apply gx#core-module-export->import__1 _g137104_))
                ((##fx= _g137105_ 3)
                 (apply gx#core-module-export->import__% _g137104_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g137104_))))))
    (define gx#core-expand-module%
      (lambda (_%stx134855%_)
        (letrec ((_%make-context134857%_
                  (lambda (_%id134934%_)
                    (let* ((_%super134936%_ (gx#current-expander-context))
                           (_%bind-id134938%_ (gx#stx-e _%id134934%_))
                           (_%mod-id134940%_
                            (if (##structure-instance-of?
                                 _%super134936%_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##unchecked-structure-ref
                                  _%super134936%_
                                  '1
                                  '#f
                                  '#f)
                                 '"~"
                                 _%bind-id134938%_)
                                _%bind-id134938%_))
                           (_%ns134942%_ (symbol->string _%mod-id134940%_))
                           (_%path134952%_
                            (if (##structure-instance-of?
                                 _%super134936%_
                                 'gx#module-context::t)
                                (let ((_%path134944%_
                                       (##unchecked-structure-ref
                                        _%super134936%_
                                        '7
                                        '#f
                                        '#f)))
                                  (if (or (pair? _%path134944%_)
                                          (null? _%path134944%_))
                                      (cons _%bind-id134938%_ _%path134944%_)
                                      (if (not _%path134944%_)
                                          _%bind-id134938%_
                                          (cons _%bind-id134938%_
                                                (cons _%path134944%_ '())))))
                                _%bind-id134938%_))
                           (__obj137081
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
                       __obj137081
                       _%mod-id134940%_
                       _%super134936%_
                       _%ns134942%_
                       _%path134952%_)
                      __obj137081)))
                 (_%valid-module-id?134858%_
                  (lambda (_%id134909%_)
                    (let* ((_%str134911%_ (symbol->string _%id134909%_))
                           (_%len134913%_ (##string-length _%str134911%_)))
                      (if (##fx>= _%len134913%_ '1)
                          (let _%loop134916%_ ((_%index134918%_
                                                (##fx- (##string-length
                                                        _%str134911%_)
                                                       '1)))
                            (if (##fx>= _%index134918%_ '0)
                                (let ((_%c134920%_
                                       (string-ref
                                        _%str134911%_
                                        _%index134918%_)))
                                  (if (or (and (##char>=? _%c134920%_ '#\a)
                                               (##char<=? _%c134920%_ '#\z))
                                          (and (##char>=? _%c134920%_ '#\A)
                                               (##char<=? _%c134920%_ '#\Z))
                                          (and (##char>=? _%c134920%_ '#\0)
                                               (##char<=? _%c134920%_ '#\9))
                                          (##char=? _%c134920%_ '#\_)
                                          (##char=? _%c134920%_ '#\-))
                                      (_%loop134916%_
                                       (##fx- _%index134918%_ '1))
                                      '#f))
                                '#t))
                          '#f)))))
          (let* ((_%e134859134869%_ _%stx134855%_)
                 (_%E134861134873%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e134859134869%_)))
                 (_%E134860134905%_
                  (lambda ()
                    (if (gx#stx-pair? _%e134859134869%_)
                        (let ((_%e134862134877%_
                               (gx#syntax-e _%e134859134869%_)))
                          (let ((_%hd134863134880%_ (##car _%e134862134877%_))
                                (_%tl134864134882%_ (##cdr _%e134862134877%_)))
                            (if (gx#stx-pair? _%tl134864134882%_)
                                (let ((_%e134865134885%_
                                       (gx#syntax-e _%tl134864134882%_)))
                                  (let ((_%hd134866134888%_
                                         (##car _%e134865134885%_))
                                        (_%tl134867134890%_
                                         (##cdr _%e134865134885%_)))
                                    (let* ((_%id134893%_ _%hd134866134888%_)
                                           (_%body134895%_ _%tl134867134890%_))
                                      (if (and (gx#identifier? _%id134893%_)
                                               (gx#stx-list? _%body134895%_))
                                          (if (_%valid-module-id?134858%_
                                               (gx#stx-e
                                                (gx#datum->syntax__0 '#f 'id)))
                                              (let* ((_%ctx134897%_
                                                      (_%make-context134857%_
                                                       _%id134893%_))
                                                     (_%body134899%_
                                                      (gx#core-expand-module-begin
                                                       _%body134895%_
                                                       _%ctx134897%_))
                                                     (_%body134901%_
                                                      (gx#core-quote-syntax__1
                                                       (gx#core-cons
                                                        '%#begin
                                                        _%body134899%_)
                                                       (gx#stx-source
                                                        _%stx134855%_))))
                                                (##unchecked-structure-set!
                                                 _%ctx134897%_
                                                 (__make-promise
                                                  (lambda ()
                                                    (gx#eval-syntax*
                                                     _%body134901%_)))
                                                 '10
                                                 '#f
                                                 '#f)
                                                (##unchecked-structure-set!
                                                 _%ctx134897%_
                                                 _%body134901%_
                                                 '11
                                                 '#f
                                                 '#f)
                                                (gx#core-bind-syntax!__0
                                                 _%id134893%_
                                                 _%ctx134897%_)
                                                (gx#core-quote-syntax__1
                                                 (gx#core-list
                                                  '%#module
                                                  (gx#core-quote-syntax__0
                                                   _%id134893%_)
                                                  _%body134901%_)
                                                 (gx#stx-source
                                                  _%stx134855%_)))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"invalid module id; allowed characters are A-Z,a-z,0-9,_,-"
                                               _%stx134855%_
                                               (gx#datum->syntax__0 '#f 'id)))
                                          (_%E134861134873%_)))))
                                (_%E134861134873%_))))
                        (_%E134861134873%_)))))
            (_%E134860134905%_)))))
    (define gx#core-expand-module-begin
      (lambda (_%body134820%_ _%ctx134821%_)
        (call-with-parameters__1
         (lambda ()
           (call-with-parameters__1
            (lambda ()
              (gx#core-bind-feature!__1 'gerbil-module '#t)
              (let* ((_%stx134825%_
                      (gx#core-expand-head
                       (cons '%%begin-module _%body134820%_)))
                     (_%e134826134833%_ _%stx134825%_)
                     (_%E134828134837%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module body expansion"
                         _%stx134825%_)))
                     (_%E134827134851%_
                      (lambda ()
                        (if (gx#stx-pair? _%e134826134833%_)
                            (let ((_%e134829134841%_
                                   (gx#syntax-e _%e134826134833%_)))
                              (let ((_%hd134830134844%_
                                     (##car _%e134829134841%_))
                                    (_%tl134831134846%_
                                     (##cdr _%e134829134841%_)))
                                (if (and (gx#identifier? _%hd134830134844%_)
                                         (gx#core-identifier=?
                                          _%hd134830134844%_
                                          '%#begin-module))
                                    (let ((_%body134849%_ _%tl134831134846%_))
                                      (if (gx#sealed-syntax? _%stx134825%_)
                                          _%body134849%_
                                          (gx#core-expand-module-body
                                           _%body134849%_)))
                                    (_%E134828134837%_))))
                            (_%E134828134837%_)))))
                (_%E134827134851%_)))
            gx#current-expander-phi
            '0))
         gx#current-expander-context
         _%ctx134821%_)))
    (define gx#core-expand-module-body
      (lambda (_%body134616%_)
        (letrec ((_%expand-special134618%_
                  (lambda (_%hd134747%_ _%K134748%_ _%rest134749%_ _%r134750%_)
                    (let* ((_%e134751134768%_ _%hd134747%_)
                           (_%E134763134772%_
                            (lambda ()
                              (_%K134748%_
                               _%rest134749%_
                               (cons (gx#core-expand-top _%hd134747%_)
                                     _%r134750%_))))
                           (_%E134753134784%_
                            (lambda ()
                              (if (gx#stx-pair? _%e134751134768%_)
                                  (let ((_%e134764134776%_
                                         (gx#syntax-e _%e134751134768%_)))
                                    (let ((_%hd134765134779%_
                                           (##car _%e134764134776%_))
                                          (_%tl134766134781%_
                                           (##cdr _%e134764134776%_)))
                                      (if (and (gx#identifier?
                                                _%hd134765134779%_)
                                               (gx#core-identifier=?
                                                _%hd134765134779%_
                                                '%#export))
                                          (_%K134748%_
                                           _%rest134749%_
                                           (cons _%hd134747%_ _%r134750%_))
                                          (_%E134763134772%_))))
                                  (_%E134763134772%_))))
                           (_%E134752134816%_
                            (lambda ()
                              (if (gx#stx-pair? _%e134751134768%_)
                                  (let ((_%e134754134788%_
                                         (gx#syntax-e _%e134751134768%_)))
                                    (let ((_%hd134755134791%_
                                           (##car _%e134754134788%_))
                                          (_%tl134756134793%_
                                           (##cdr _%e134754134788%_)))
                                      (if (and (gx#identifier?
                                                _%hd134755134791%_)
                                               (gx#core-identifier=?
                                                _%hd134755134791%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl134756134793%_)
                                              (let ((_%e134757134796%_
                                                     (gx#syntax-e
                                                      _%tl134756134793%_)))
                                                (let ((_%hd134758134799%_
                                                       (##car _%e134757134796%_))
                                                      (_%tl134759134801%_
                                                       (##cdr _%e134757134796%_)))
                                                  (let ((_%hd-bind134804%_
                                                         _%hd134758134799%_))
                                                    (if (gx#stx-pair?
                                                         _%tl134759134801%_)
                                                        (let ((_%e134760134806%_
                                                               (gx#syntax-e
                                                                _%tl134759134801%_)))
                                                          (let ((_%hd134761134809%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e134760134806%_))
                        (_%tl134762134811%_ (##cdr _%e134760134806%_)))
                    (let ((_%expr134814%_ _%hd134761134809%_))
                      (if (gx#stx-null? _%tl134762134811%_)
                          (if (gx#core-bind-values? _%hd-bind134804%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind134804%_)
                                (_%K134748%_
                                 _%rest134749%_
                                 (cons _%hd134747%_ _%r134750%_)))
                              (_%E134753134784%_))
                          (_%E134753134784%_)))))
                (_%E134753134784%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E134753134784%_))
                                          (_%E134753134784%_))))
                                  (_%E134753134784%_)))))
                      (_%E134752134816%_))))
                 (_%expand-body134619%_
                  (lambda (_%rbody134621%_)
                    (let _%lp134623%_ ((_%rest134625%_ _%rbody134621%_)
                                       (_%body134626%_ '()))
                      (let* ((_%rest134627134635%_ _%rest134625%_)
                             (_%else134629134643%_ (lambda () _%body134626%_))
                             (_%K134631134735%_
                              (lambda (_%rest134646%_ _%hd134647%_)
                                (let* ((_%e134648134669%_ _%hd134647%_)
                                       (_%E134664134673%_
                                        (lambda ()
                                          (_%lp134623%_
                                           _%rest134646%_
                                           (cons (gx#core-expand-expression
                                                  _%hd134647%_)
                                                 _%body134626%_))))
                                       (_%E134660134687%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e134648134669%_)
                                              (let ((_%e134665134677%_
                                                     (gx#syntax-e
                                                      _%e134648134669%_)))
                                                (let ((_%hd134666134680%_
                                                       (##car _%e134665134677%_))
                                                      (_%tl134667134682%_
                                                       (##cdr _%e134665134677%_)))
                                                  (let ((_%form134685%_
                                                         _%hd134666134680%_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _%form134685%_
                                                         gx#special-form-binding?)
                                                        (_%lp134623%_
                                                         _%rest134646%_
                                                         (cons _%hd134647%_
                                                               _%body134626%_))
                                                        (_%E134664134673%_)))))
                                              (_%E134664134673%_))))
                                       (_%E134650134699%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e134648134669%_)
                                              (let ((_%e134661134691%_
                                                     (gx#syntax-e
                                                      _%e134648134669%_)))
                                                (let ((_%hd134662134694%_
                                                       (##car _%e134661134691%_))
                                                      (_%tl134663134696%_
                                                       (##cdr _%e134661134691%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd134662134694%_)
                                                           (gx#core-identifier=?
                                                            _%hd134662134694%_
                                                            '%#export))
                                                      (_%lp134623%_
                                                       _%rest134646%_
                                                       (cons (gx#core-expand-export%__0
                                                              _%hd134647%_)
                                                             _%body134626%_))
                                                      (_%E134660134687%_))))
                                              (_%E134660134687%_))))
                                       (_%E134649134731%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e134648134669%_)
                                              (let ((_%e134651134703%_
                                                     (gx#syntax-e
                                                      _%e134648134669%_)))
                                                (let ((_%hd134652134706%_
                                                       (##car _%e134651134703%_))
                                                      (_%tl134653134708%_
                                                       (##cdr _%e134651134703%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd134652134706%_)
                                                           (gx#core-identifier=?
                                                            _%hd134652134706%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl134653134708%_)
                                                          (let ((_%e134654134711%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl134653134708%_)))
                    (let ((_%hd134655134714%_ (##car _%e134654134711%_))
                          (_%tl134656134716%_ (##cdr _%e134654134711%_)))
                      (let ((_%hd-bind134719%_ _%hd134655134714%_))
                        (if (gx#stx-pair? _%tl134656134716%_)
                            (let ((_%e134657134721%_
                                   (gx#syntax-e _%tl134656134716%_)))
                              (let ((_%hd134658134724%_
                                     (##car _%e134657134721%_))
                                    (_%tl134659134726%_
                                     (##cdr _%e134657134721%_)))
                                (let ((_%expr134729%_ _%hd134658134724%_))
                                  (if (gx#stx-null? _%tl134659134726%_)
                                      (_%lp134623%_
                                       _%rest134646%_
                                       (cons (gx#core-quote-syntax__1
                                              (gx#core-list
                                               '%#define-values
                                               (gx#core-quote-bind-values
                                                _%hd-bind134719%_)
                                               (gx#core-expand-expression
                                                _%expr134729%_))
                                              (gx#stx-source _%hd134647%_))
                                             _%body134626%_))
                                      (_%E134650134699%_)))))
                            (_%E134650134699%_)))))
                  (_%E134650134699%_))
              (_%E134650134699%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E134650134699%_)))))
                                  (_%E134649134731%_)))))
                        (if (pair? _%rest134627134635%_)
                            (let ((_%hd134632134738%_
                                   (##car _%rest134627134635%_))
                                  (_%tl134633134740%_
                                   (##cdr _%rest134627134635%_)))
                              (let* ((_%hd134743%_ _%hd134632134738%_)
                                     (_%rest134745%_ _%tl134633134740%_))
                                (_%K134631134735%_
                                 _%rest134745%_
                                 _%hd134743%_)))
                            (_%else134629134643%_)))))))
          (_%expand-body134619%_
           (gx#core-expand-block__%
            (cons '%#begin-module _%body134616%_)
            _%expand-special134618%_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_%stx134457%_
               _%expanded?134458%_
               _%method134459%_
               _%current-phi134460%_
               _%expand1134461%_)
        (letrec ((_%K134463%_
                  (lambda (_%rest134583%_ _%r134584%_)
                    (let* ((_%e134585134592%_ _%rest134583%_)
                           (_%E134587134596%_ (lambda () _%r134584%_))
                           (_%E134586134612%_
                            (lambda ()
                              (if (gx#stx-pair? _%e134585134592%_)
                                  (let ((_%e134588134600%_
                                         (gx#syntax-e _%e134585134592%_)))
                                    (let ((_%hd134589134603%_
                                           (##car _%e134588134600%_))
                                          (_%tl134590134605%_
                                           (##cdr _%e134588134600%_)))
                                      (let* ((_%hd134608%_ _%hd134589134603%_)
                                             (_%rest134610%_
                                              _%tl134590134605%_))
                                        (_%step134464%_
                                         _%hd134608%_
                                         _%rest134610%_
                                         _%r134584%_))))
                                  (_%E134587134596%_)))))
                      (_%E134586134612%_))))
                 (_%step134464%_
                  (lambda (_%hd134497%_ _%rest134498%_ _%r134499%_)
                    (let* ((_%e134500134518%_ _%hd134497%_)
                           (_%E134513134522%_
                            (lambda ()
                              (if (_%expanded?134458%_ (gx#stx-e _%hd134497%_))
                                  (_%K134463%_
                                   _%rest134498%_
                                   (cons (gx#stx-e _%hd134497%_) _%r134499%_))
                                  (_%expand1134461%_
                                   _%hd134497%_
                                   _%K134463%_
                                   _%rest134498%_
                                   _%r134499%_))))
                           (_%E134509134538%_
                            (lambda ()
                              (if (gx#stx-pair? _%e134500134518%_)
                                  (let ((_%e134514134526%_
                                         (gx#syntax-e _%e134500134518%_)))
                                    (let ((_%hd134515134529%_
                                           (##car _%e134514134526%_))
                                          (_%tl134516134531%_
                                           (##cdr _%e134514134526%_)))
                                      (let* ((_%macro134534%_
                                              _%hd134515134529%_)
                                             (_%body134536%_
                                              _%tl134516134531%_))
                                        (if (gx#core-bound-identifier?__%
                                             _%macro134534%_
                                             gx#syntax-binding?)
                                            (_%K134463%_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _%macro134534%_)
                                                    _%hd134497%_
                                                    _%method134459%_)
                                                   _%rest134498%_)
                                             _%r134499%_)
                                            (_%E134513134522%_)))))
                                  (_%E134513134522%_))))
                           (_%E134502134552%_
                            (lambda ()
                              (if (gx#stx-pair? _%e134500134518%_)
                                  (let ((_%e134510134542%_
                                         (gx#syntax-e _%e134500134518%_)))
                                    (let ((_%hd134511134545%_
                                           (##car _%e134510134542%_))
                                          (_%tl134512134547%_
                                           (##cdr _%e134510134542%_)))
                                      (if (eq? (gx#stx-e _%hd134511134545%_)
                                               'begin:)
                                          (let ((_%body134550%_
                                                 _%tl134512134547%_))
                                            (_%K134463%_
                                             (gx#stx-foldr
                                              cons
                                              _%rest134498%_
                                              _%body134550%_)
                                             _%r134499%_))
                                          (_%E134509134538%_))))
                                  (_%E134509134538%_))))
                           (_%E134501134579%_
                            (lambda ()
                              (if (gx#stx-pair? _%e134500134518%_)
                                  (let ((_%e134503134556%_
                                         (gx#syntax-e _%e134500134518%_)))
                                    (let ((_%hd134504134559%_
                                           (##car _%e134503134556%_))
                                          (_%tl134505134561%_
                                           (##cdr _%e134503134556%_)))
                                      (if (eq? (gx#stx-e _%hd134504134559%_)
                                               'phi:)
                                          (if (gx#stx-pair? _%tl134505134561%_)
                                              (let ((_%e134506134564%_
                                                     (gx#syntax-e
                                                      _%tl134505134561%_)))
                                                (let ((_%hd134507134567%_
                                                       (##car _%e134506134564%_))
                                                      (_%tl134508134569%_
                                                       (##cdr _%e134506134564%_)))
                                                  (let* ((_%dphi134572%_
                                                          _%hd134507134567%_)
                                                         (_%body134574%_
                                                          _%tl134508134569%_))
                                                    (if (gx#stx-fixnum?
                                                         _%dphi134572%_)
                                                        (let ((_%rbody134577%_
                                                               (call-with-parameters__1
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%K134463%_ _%body134574%_ '()))
                        _%current-phi134460%_
                        (fx+ (gx#stx-e _%dphi134572%_)
                             (_%current-phi134460%_)))))
                  (_%K134463%_
                   _%rest134498%_
                   (__foldr1 cons _%r134499%_ _%rbody134577%_)))
                (_%E134502134552%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E134502134552%_))
                                          (_%E134502134552%_))))
                                  (_%E134502134552%_)))))
                      (_%E134501134579%_)))))
          (let* ((_%e134465134472%_ _%stx134457%_)
                 (_%E134467134476%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e134465134472%_)))
                 (_%E134466134493%_
                  (lambda ()
                    (if (gx#stx-pair? _%e134465134472%_)
                        (let ((_%e134468134480%_
                               (gx#syntax-e _%e134465134472%_)))
                          (let ((_%hd134469134483%_ (##car _%e134468134480%_))
                                (_%tl134470134485%_ (##cdr _%e134468134480%_)))
                            (let ((_%body134488%_ _%tl134470134485%_))
                              (if (_%current-phi134460%_)
                                  (_%K134463%_ _%body134488%_ '())
                                  (call-with-parameters__1
                                   (lambda () (_%K134463%_ _%body134488%_ '()))
                                   _%current-phi134460%_
                                   (gx#current-expander-phi))))))
                        (_%E134467134476%_)))))
            (_%E134466134493%_)))))
    (define gx#core-expand-import%__%
      (lambda (_%stx134111%_ _%internal-expand?134112%_)
        (letrec ((_%expand1134114%_
                  (lambda (_%hd134429%_ _%K134430%_ _%rest134431%_ _%r134432%_)
                    (if (gx#core-bound-module? _%hd134429%_)
                        (_%import1134115%_
                         (gx#syntax-local-e__0 _%hd134429%_)
                         _%K134430%_
                         _%rest134431%_
                         _%r134432%_)
                        (if (gx#core-library-module-path? _%hd134429%_)
                            (_%import1134115%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%hd134429%_))
                             _%K134430%_
                             _%rest134431%_
                             _%r134432%_)
                            (if (gx#core-library-relative-module-path?
                                 _%hd134429%_)
                                (_%import1134115%_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _%hd134429%_))
                                 _%K134430%_
                                 _%rest134431%_
                                 _%r134432%_)
                                (let ((_%e134438%_ (gx#stx-e _%hd134429%_)))
                                  (if (pair? _%e134438%_)
                                      (let ((_%$e134441%_
                                             (gx#stx-e (##car _%e134438%_))))
                                        (if (eq? 'spec: _%$e134441%_)
                                            (_%import-spec134118%_
                                             _%hd134429%_
                                             _%K134430%_
                                             _%rest134431%_
                                             _%r134432%_)
                                            (if (eq? 'in: _%$e134441%_)
                                                (_%import-submodule134116%_
                                                 _%hd134429%_
                                                 _%K134430%_
                                                 _%rest134431%_
                                                 _%r134432%_)
                                                (if (eq? 'runtime:
                                                         _%$e134441%_)
                                                    (_%import-runtime134117%_
                                                     _%hd134429%_
                                                     _%K134430%_
                                                     _%rest134431%_
                                                     _%r134432%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _%stx134111%_
                                                     _%hd134429%_)))))
                                      (if (string? _%e134438%_)
                                          (_%import1134115%_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _%hd134429%_
                                             (gx#stx-source _%stx134111%_)))
                                           _%K134430%_
                                           _%rest134431%_
                                           _%r134432%_)
                                          (if (##structure-instance-of?
                                               _%e134438%_
                                               'gx#module-context::t)
                                              (_%K134430%_
                                               _%rest134431%_
                                               (cons _%e134438%_ _%r134432%_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _%stx134111%_
                                               _%hd134429%_))))))))))
                 (_%import1134115%_
                  (lambda (_%ctx134418%_
                           _%K134419%_
                           _%rest134420%_
                           _%r134421%_)
                    (let ((_%dphi134423%_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_%K134419%_
                       _%rest134420%_
                       (cons (##structure
                              gx#import-set::t
                              _%ctx134418%_
                              _%dphi134423%_
                              (map (lambda (_%g134424134426%_)
                                     (gx#core-module-export->import__%
                                      _%g134424134426%_
                                      '#f
                                      _%dphi134423%_))
                                   (##unchecked-structure-ref
                                    _%ctx134418%_
                                    '9
                                    '#f
                                    '#f)))
                             _%r134421%_)))))
                 (_%import-submodule134116%_
                  (lambda (_%hd134385%_ _%K134386%_ _%rest134387%_ _%r134388%_)
                    (let* ((_%e134389134396%_ _%hd134385%_)
                           (_%E134391134400%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e134389134396%_)))
                           (_%E134390134414%_
                            (lambda ()
                              (if (gx#stx-pair? _%e134389134396%_)
                                  (let ((_%e134392134404%_
                                         (gx#syntax-e _%e134389134396%_)))
                                    (let ((_%hd134393134407%_
                                           (##car _%e134392134404%_))
                                          (_%tl134394134409%_
                                           (##cdr _%e134392134404%_)))
                                      (let ((_%spath134412%_
                                             _%tl134394134409%_))
                                        (_%import1134115%_
                                         (_%import-spec-source134119%_
                                          _%spath134412%_)
                                         _%K134386%_
                                         _%rest134387%_
                                         _%r134388%_))))
                                  (_%E134391134400%_)))))
                      (_%E134390134414%_))))
                 (_%import-runtime134117%_
                  (lambda (_%hd134352%_ _%K134353%_ _%rest134354%_ _%r134355%_)
                    (let* ((_%e134356134363%_ _%hd134352%_)
                           (_%E134358134367%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e134356134363%_)))
                           (_%E134357134381%_
                            (lambda ()
                              (if (gx#stx-pair? _%e134356134363%_)
                                  (let ((_%e134359134371%_
                                         (gx#syntax-e _%e134356134363%_)))
                                    (let ((_%hd134360134374%_
                                           (##car _%e134359134371%_))
                                          (_%tl134361134376%_
                                           (##cdr _%e134359134371%_)))
                                      (let ((_%spath134379%_
                                             _%tl134361134376%_))
                                        (_%K134353%_
                                         _%rest134354%_
                                         (cons (_%import-spec-source134119%_
                                                _%spath134379%_)
                                               _%r134355%_)))))
                                  (_%E134358134367%_)))))
                      (_%E134357134381%_))))
                 (_%import-spec134118%_
                  (lambda (_%hd134190%_ _%K134191%_ _%rest134192%_ _%r134193%_)
                    (let* ((_%e134194134211%_ _%hd134190%_)
                           (_%E134203134215%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e134194134211%_)))
                           (_%E134196134326%_
                            (lambda ()
                              (if (gx#stx-pair? _%e134194134211%_)
                                  (let ((_%e134204134219%_
                                         (gx#syntax-e _%e134194134211%_)))
                                    (let ((_%hd134205134222%_
                                           (##car _%e134204134219%_))
                                          (_%tl134206134224%_
                                           (##cdr _%e134204134219%_)))
                                      (if (gx#stx-pair? _%tl134206134224%_)
                                          (let ((_%e134207134227%_
                                                 (gx#syntax-e
                                                  _%tl134206134224%_)))
                                            (let ((_%hd134208134230%_
                                                   (##car _%e134207134227%_))
                                                  (_%tl134209134232%_
                                                   (##cdr _%e134207134227%_)))
                                              (let* ((_%path134235%_
                                                      _%hd134208134230%_)
                                                     (_%specs134237%_
                                                      _%tl134209134232%_))
                                                (let ((_%src-ctx134239%_
                                                       (_%import-spec-source134119%_
                                                        _%path134235%_))
                                                      (_%exports134240%_
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
                                                      (_%specs134241%_
                                                       (gx#syntax->list
                                                        _%specs134237%_)))
                                                  (for-each
                                                   (lambda (_%out134243%_)
                                                     (__hash-put!
                                                      _%exports134240%_
                                                      (cons (##unchecked-structure-ref
                                                             _%out134243%_
                                                             '3
                                                             '#f
                                                             '#f)
                                                            (##unchecked-structure-ref
                                                             _%out134243%_
                                                             '4
                                                             '#f
                                                             '#f))
                                                      _%out134243%_))
                                                   (##unchecked-structure-ref
                                                    _%src-ctx134239%_
                                                    '9
                                                    '#f
                                                    '#f))
                                                  (_%K134191%_
                                                   _%rest134192%_
                                                   (__foldl1
                                                    (lambda (_%spec134245%_
                                                             _%r134246%_)
                                                      (let* ((_%e134247134263%_
                                                              _%spec134245%_)
                                                             (_%E134249134267%_
                                                              (lambda ()
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid syntax-case clause"
                         _%e134247134263%_)))
                     (_%E134248134322%_
                      (lambda ()
                        (if (gx#stx-pair? _%e134247134263%_)
                            (let ((_%e134250134271%_
                                   (gx#syntax-e _%e134247134263%_)))
                              (let ((_%hd134251134274%_
                                     (##car _%e134250134271%_))
                                    (_%tl134252134276%_
                                     (##cdr _%e134250134271%_)))
                                (let ((_%phi134279%_ _%hd134251134274%_))
                                  (if (gx#stx-pair? _%tl134252134276%_)
                                      (let ((_%e134253134281%_
                                             (gx#syntax-e _%tl134252134276%_)))
                                        (let ((_%hd134254134284%_
                                               (##car _%e134253134281%_))
                                              (_%tl134255134286%_
                                               (##cdr _%e134253134281%_)))
                                          (let ((_%name134289%_
                                                 _%hd134254134284%_))
                                            (if (gx#stx-pair?
                                                 _%tl134255134286%_)
                                                (let ((_%e134256134291%_
                                                       (gx#syntax-e
                                                        _%tl134255134286%_)))
                                                  (let ((_%hd134257134294%_
                                                         (##car _%e134256134291%_))
                                                        (_%tl134258134296%_
                                                         (##cdr _%e134256134291%_)))
                                                    (let ((_%src-phi134299%_
                                                           _%hd134257134294%_))
                                                      (if (gx#stx-pair?
                                                           _%tl134258134296%_)
                                                          (let ((_%e134259134301%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl134258134296%_)))
                    (let ((_%hd134260134304%_ (##car _%e134259134301%_))
                          (_%tl134261134306%_ (##cdr _%e134259134301%_)))
                      (let ((_%src-name134309%_ _%hd134260134304%_))
                        (if (gx#stx-null? _%tl134261134306%_)
                            (if (and (gx#stx-fixnum? _%src-phi134299%_)
                                     (gx#identifier? _%src-name134309%_)
                                     (gx#stx-fixnum? _%phi134279%_)
                                     (gx#identifier? _%name134289%_))
                                (let ((_%src-phi134311%_
                                       (gx#stx-e _%src-phi134299%_))
                                      (_%src-name134312%_
                                       (gx#core-identifier-key
                                        _%src-name134309%_))
                                      (_%phi134313%_ (gx#stx-e _%phi134279%_))
                                      (_%name134314%_
                                       (gx#core-identifier-key
                                        _%name134289%_)))
                                  (let ((_%$e134316%_
                                         (__hash-get
                                          _%exports134240%_
                                          (cons _%src-phi134311%_
                                                _%src-name134312%_))))
                                    (if _%$e134316%_
                                        ((lambda (_%out134319%_)
                                           (cons (gx#core-module-export->import__%
                                                  _%out134319%_
                                                  _%name134314%_
                                                  (fx- _%phi134313%_
                                                       _%src-phi134311%_))
                                                 _%r134246%_))
                                         _%$e134316%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; no matching export"
                                         _%stx134111%_
                                         _%hd134190%_))))
                                (_%E134249134267%_))
                            (_%E134249134267%_)))))
                  (_%E134249134267%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E134249134267%_)))))
                                      (_%E134249134267%_)))))
                            (_%E134249134267%_)))))
                (_%E134248134322%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r134193%_
                                                    _%specs134241%_))))))
                                          (_%E134203134215%_))))
                                  (_%E134203134215%_))))
                           (_%E134195134348%_
                            (lambda ()
                              (if (gx#stx-pair? _%e134194134211%_)
                                  (let ((_%e134197134330%_
                                         (gx#syntax-e _%e134194134211%_)))
                                    (let ((_%hd134198134333%_
                                           (##car _%e134197134330%_))
                                          (_%tl134199134335%_
                                           (##cdr _%e134197134330%_)))
                                      (if (gx#stx-pair? _%tl134199134335%_)
                                          (let ((_%e134200134338%_
                                                 (gx#syntax-e
                                                  _%tl134199134335%_)))
                                            (let ((_%hd134201134341%_
                                                   (##car _%e134200134338%_))
                                                  (_%tl134202134343%_
                                                   (##cdr _%e134200134338%_)))
                                              (let ((_%path134346%_
                                                     _%hd134201134341%_))
                                                (if (gx#stx-null?
                                                     _%tl134202134343%_)
                                                    (_%K134191%_
                                                     _%rest134192%_
                                                     (cons (_%import-spec-source134119%_
                                                            _%path134346%_)
                                                           _%r134193%_))
                                                    (_%E134196134326%_)))))
                                          (_%E134196134326%_))))
                                  (_%E134196134326%_)))))
                      (_%E134195134348%_))))
                 (_%import-spec-source134119%_
                  (lambda (_%spath134188%_)
                    (gx#core-import-nested-module
                     _%spath134188%_
                     _%stx134111%_)))
                 (_%import!134120%_
                  (lambda (_%rbody134133%_)
                    (letrec* ((_%current-ctx134135%_
                               (gx#current-expander-context))
                              (_%deps134136%_ (make-hash-table-eq))
                              (_%bind!134137%_
                               (lambda (_%hd134186%_)
                                 (gx#core-bind-import!__1
                                  _%hd134186%_
                                  _%current-ctx134135%_))))
                      (let _%lp134139%_ ((_%rest134141%_ _%rbody134133%_)
                                         (_%body134142%_ '()))
                        (let* ((_%rest134143134151%_ _%rest134141%_)
                               (_%else134145134162%_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _%current-ctx134135%_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _%current-ctx134135%_
                                       (__foldl1
                                        cons
                                        (##unchecked-structure-ref
                                         _%current-ctx134135%_
                                         '8
                                         '#f
                                         '#f)
                                        _%body134142%_)
                                       '8
                                       '#f
                                       '#f)
                                      '#!void)
                                  (__hash-for-each
                                   (lambda (_%ctx134159%_ _%_134160%_)
                                     (gx#eval-module _%ctx134159%_))
                                   _%deps134136%_)
                                  _%body134142%_))
                               (_%K134147134174%_
                                (lambda (_%rest134165%_ _%hd134166%_)
                                  (if (##structure-direct-instance-of?
                                       _%hd134166%_
                                       'gx#module-import::t)
                                      (let ()
                                        (_%bind!134137%_ _%hd134166%_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _%hd134166%_
                                                   '3
                                                   '#f
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _%hd134166%_
                                                            '1
                                                            '#f
                                                            '#f)
                                                           '3
                                                           '#f
                                                           '#f)))
                                            (__hash-put!
                                             _%deps134136%_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _%hd134166%_
                                               '1
                                               '#f
                                               '#f)
                                              '1
                                              '#f
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _%hd134166%_
                                           'gx#import-set::t)
                                          (let ()
                                            (for-each
                                             _%bind!134137%_
                                             (##unchecked-structure-ref
                                              _%hd134166%_
                                              '3
                                              '#f
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _%hd134166%_
                                                  '2
                                                  '#f
                                                  '#f))
                                                (__hash-put!
                                                 _%deps134136%_
                                                 (##unchecked-structure-ref
                                                  _%hd134166%_
                                                  '1
                                                  '#f
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_%$e134170%_
                                                 (##structure-instance-of?
                                                  _%hd134166%_
                                                  'gx#module-context::t)))
                                            (if _%$e134170%_
                                                _%$e134170%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _%stx134111%_
                                                 _%hd134166%_)))))
                                  (_%lp134139%_
                                   _%rest134165%_
                                   (cons _%hd134166%_ _%body134142%_)))))
                          (if (pair? _%rest134143134151%_)
                              (let ((_%hd134148134177%_
                                     (##car _%rest134143134151%_))
                                    (_%tl134149134179%_
                                     (##cdr _%rest134143134151%_)))
                                (let* ((_%hd134182%_ _%hd134148134177%_)
                                       (_%rest134184%_ _%tl134149134179%_))
                                  (_%K134147134174%_
                                   _%rest134184%_
                                   _%hd134182%_)))
                              (_%else134145134162%_)))))))
                 (_%expanded-import?134121%_
                  (lambda (_%e134125%_)
                    (let ((_%$e134127%_
                           (##structure-direct-instance-of?
                            _%e134125%_
                            'gx#import-set::t)))
                      (if _%$e134127%_
                          _%$e134127%_
                          (let ((_%$e134130%_
                                 (##structure-direct-instance-of?
                                  _%e134125%_
                                  'gx#module-import::t)))
                            (if _%$e134130%_
                                _%$e134130%_
                                (##structure-instance-of?
                                 _%e134125%_
                                 'gx#module-context::t))))))))
          (let ((_%rbody134123%_
                 (gx#core-expand-import/export
                  _%stx134111%_
                  _%expanded-import?134121%_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _%expand1134114%_)))
            (if _%internal-expand?134112%_
                (reverse _%rbody134123%_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_%import!134120%_ _%rbody134123%_))
                 (gx#stx-source _%stx134111%_)))))))
    (define gx#core-expand-import%__0
      (lambda (_%stx134450%_)
        (let ((_%internal-expand?134452%_ '#f))
          (gx#core-expand-import%__%
           _%stx134450%_
           _%internal-expand?134452%_))))
    (define gx#core-expand-import%
      (lambda _g137106_
        (let ((_g137107_ (##length _g137106_)))
          (cond ((##fx= _g137107_ 1)
                 (apply gx#core-expand-import%__0 _g137106_))
                ((##fx= _g137107_ 2)
                 (apply gx#core-expand-import%__% _g137106_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g137106_))))))
    (define gx#core-import-nested-module
      (lambda (_%spath134038%_ _%where134039%_)
        (let* ((_%e134040134047%_ _%spath134038%_)
               (_%E134042134051%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e134040134047%_)))
               (_%E134041134106%_
                (lambda ()
                  (if (gx#stx-pair? _%e134040134047%_)
                      (let ((_%e134043134055%_
                             (gx#syntax-e _%e134040134047%_)))
                        (let ((_%hd134044134058%_ (##car _%e134043134055%_))
                              (_%tl134045134060%_ (##cdr _%e134043134055%_)))
                          (let* ((_%origin134063%_ _%hd134044134058%_)
                                 (_%sub134065%_ _%tl134045134060%_)
                                 (_%origin-ctx134067%_
                                  (if (gx#stx-false? _%origin134063%_)
                                      (gx#current-expander-context)
                                      (gx#import-module__0 _%origin134063%_))))
                            (let _%lp134069%_ ((_%rest134071%_ _%sub134065%_)
                                               (_%ctx134072%_
                                                _%origin-ctx134067%_))
                              (let* ((_%e134073134080%_ _%rest134071%_)
                                     (_%E134075134084%_
                                      (lambda () _%ctx134072%_))
                                     (_%E134074134102%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e134073134080%_)
                                            (let ((_%e134076134088%_
                                                   (gx#syntax-e
                                                    _%e134073134080%_)))
                                              (let ((_%hd134077134091%_
                                                     (##car _%e134076134088%_))
                                                    (_%tl134078134093%_
                                                     (##cdr _%e134076134088%_)))
                                                (let* ((_%id134096%_
                                                        _%hd134077134091%_)
                                                       (_%rest134098%_
                                                        _%tl134078134093%_)
                                                       (_%bind134100%_
                                                        (gx#resolve-identifier__%
                                                         _%id134096%_
                                                         '0
                                                         _%ctx134072%_)))
                                                  (if (and (##structure-direct-instance-of?
                                                            _%bind134100%_
                                                            'gx#syntax-binding::t)
                                                           (##structure-instance-of?
                                                            (##unchecked-structure-ref
                                                             _%bind134100%_
                                                             '4
                                                             '#f
                                                             '#f)
                                                            'gx#module-context::t))
                                                      '#!void
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; not bound as module"
                                                       _%where134039%_
                                                       _%spath134038%_
                                                       _%id134096%_))
                                                  (_%lp134069%_
                                                   _%rest134098%_
                                                   (##unchecked-structure-ref
                                                    _%bind134100%_
                                                    '4
                                                    '#f
                                                    '#f)))))
                                            (_%E134075134084%_)))))
                                (_%E134074134102%_))))))
                      (_%E134042134051%_)))))
          (_%E134041134106%_))))
    (define gx#core-expand-import-source
      (lambda (_%hd134036%_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _%hd134036%_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_%stx133530%_ _%internal-expand?133531%_)
        (letrec* ((_%make-export__137035137036%_
                   (lambda (_%bind133984%_
                            _%phi133985%_
                            _%ctx133986%_
                            _%name133987%_)
                     (let* ((_%key133989%_
                             (##unchecked-structure-ref
                              _%bind133984%_
                              '2
                              '#f
                              '#f))
                            (_%export-key133991%_
                             (if _%name133987%_
                                 (gx#core-identifier-key _%name133987%_)
                                 _%key133989%_)))
                       (##structure
                        gx#module-export::t
                        _%ctx133986%_
                        _%key133989%_
                        _%phi133985%_
                        _%export-key133991%_
                        (let ((_%$e133994%_
                               (##structure-instance-of?
                                _%bind133984%_
                                'gx#extern-binding::t)))
                          (if _%$e133994%_
                              _%$e133994%_
                              (##structure-direct-instance-of?
                               _%bind133984%_
                               'gx#import-binding::t)))))))
                  (_%make-export__0__137037137040%_
                   (lambda (_%bind134000%_)
                     (let* ((_%phi134002%_ (gx#current-export-expander-phi))
                            (_%ctx134004%_ (gx#current-expander-context))
                            (_%name134006%_ '#f))
                       (_%make-export__137035137036%_
                        _%bind134000%_
                        _%phi134002%_
                        _%ctx134004%_
                        _%name134006%_))))
                  (_%make-export__1__137038137041%_
                   (lambda (_%bind134008%_ _%phi134009%_)
                     (let* ((_%ctx134011%_ (gx#current-expander-context))
                            (_%name134013%_ '#f))
                       (_%make-export__137035137036%_
                        _%bind134008%_
                        _%phi134009%_
                        _%ctx134011%_
                        _%name134013%_))))
                  (_%make-export__2__137039137042%_
                   (lambda (_%bind134015%_ _%phi134016%_ _%ctx134017%_)
                     (let ((_%name134019%_ '#f))
                       (_%make-export__137035137036%_
                        _%bind134015%_
                        _%phi134016%_
                        _%ctx134017%_
                        _%name134019%_))))
                  (_%make-export133533%_
                   (lambda _g137108_
                     (let ((_g137109_ (##length _g137108_)))
                       (cond ((##fx= _g137109_ 1)
                              (apply _%make-export__0__137037137040%_
                                     _g137108_))
                             ((##fx= _g137109_ 2)
                              (apply _%make-export__1__137038137041%_
                                     _g137108_))
                             ((##fx= _g137109_ 3)
                              (apply _%make-export__2__137039137042%_
                                     _g137108_))
                             ((##fx= _g137109_ 4)
                              (apply _%make-export__137035137036%_ _g137108_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g137108_))))))
                  (_%expand1133534%_
                   (lambda (_%hd133689%_
                            _%K133690%_
                            _%rest133691%_
                            _%r133692%_)
                     (let* ((_%e133693133725%_ _%hd133689%_)
                            (_%E133720133729%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _%stx133530%_
                                _%hd133689%_)))
                            (_%E133710133813%_
                             (lambda ()
                               (if (gx#stx-pair? _%e133693133725%_)
                                   (let ((_%e133721133733%_
                                          (gx#syntax-e _%e133693133725%_)))
                                     (let ((_%hd133722133736%_
                                            (##car _%e133721133733%_))
                                           (_%tl133723133738%_
                                            (##cdr _%e133721133733%_)))
                                       (if (eq? (gx#stx-e _%hd133722133736%_)
                                                'import:)
                                           (let ((_%in133741%_
                                                  _%tl133723133738%_))
                                             (if (gx#stx-list? _%in133741%_)
                                                 (let _%lp133743%_ ((_%in-rest133745%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%in133741%_)
                            (_%r133746%_ _%r133692%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%e133747133754%_
                                                           _%in-rest133745%_)
                                                          (_%E133749133758%_
                                                           (lambda ()
                                                             (_%K133690%_
                                                              _%rest133691%_
                                                              _%r133746%_)))
                                                          (_%E133748133809%_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%e133747133754%_)
                         (let ((_%e133750133762%_
                                (gx#syntax-e _%e133747133754%_)))
                           (let ((_%hd133751133765%_ (##car _%e133750133762%_))
                                 (_%tl133752133767%_
                                  (##cdr _%e133750133762%_)))
                             (let* ((_%hd133770%_ _%hd133751133765%_)
                                    (_%in-rest133772%_ _%tl133752133767%_)
                                    (_%src133807%_
                                     (if (gx#core-bound-module? _%hd133770%_)
                                         (gx#syntax-local-e__0 _%hd133770%_)
                                         (if (gx#core-library-module-path?
                                              _%hd133770%_)
                                             (gx#import-module__0
                                              (gx#core-resolve-library-module-path
                                               _%hd133770%_))
                                             (if (gx#core-library-relative-module-path?
                                                  _%hd133770%_)
                                                 (gx#import-module__0
                                                  (gx#core-resolve-library-relative-module-path
                                                   _%hd133770%_))
                                                 (if (gx#stx-string?
                                                      _%hd133770%_)
                                                     (gx#import-module__0
                                                      (gx#core-resolve-module-path__%
                                                       _%hd133770%_
                                                       (gx#stx-source
                                                        _%stx133530%_)))
                                                     (let* ((_%e133778133785%_
                                                             _%hd133770%_)
                                                            (_%E133780133789%_
                                                             (lambda ()
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; illegal re-export"
                                                                _%stx133530%_
                                                                _%hd133770%_)))
                                                            (_%E133779133803%_
                                                             (lambda ()
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%e133778133785%_)
                           (let ((_%e133781133793%_
                                  (gx#syntax-e _%e133778133785%_)))
                             (let ((_%hd133782133796%_
                                    (##car _%e133781133793%_))
                                   (_%tl133783133798%_
                                    (##cdr _%e133781133793%_)))
                               (if (eq? (gx#stx-e _%hd133782133796%_) 'in:)
                                   (let ((_%spath133801%_ _%tl133783133798%_))
                                     (gx#core-import-nested-module
                                      _%spath133801%_
                                      _%stx133530%_))
                                   (_%E133780133789%_))))
                           (_%E133780133789%_)))))
               (_%E133779133803%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (_%lp133743%_
                                _%in-rest133772%_
                                (_%export-imports133535%_
                                 _%src133807%_
                                 _%r133746%_)))))
                         (_%E133749133758%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E133748133809%_)))
                                                 (_%E133720133729%_)))
                                           (_%E133720133729%_))))
                                   (_%E133720133729%_))))
                            (_%E133697133853%_
                             (lambda ()
                               (if (gx#stx-pair? _%e133693133725%_)
                                   (let ((_%e133711133817%_
                                          (gx#syntax-e _%e133693133725%_)))
                                     (let ((_%hd133712133820%_
                                            (##car _%e133711133817%_))
                                           (_%tl133713133822%_
                                            (##cdr _%e133711133817%_)))
                                       (if (eq? (gx#stx-e _%hd133712133820%_)
                                                'rename:)
                                           (if (gx#stx-pair?
                                                _%tl133713133822%_)
                                               (let ((_%e133714133825%_
                                                      (gx#syntax-e
                                                       _%tl133713133822%_)))
                                                 (let ((_%hd133715133828%_
                                                        (##car _%e133714133825%_))
                                                       (_%tl133716133830%_
                                                        (##cdr _%e133714133825%_)))
                                                   (let ((_%id133833%_
                                                          _%hd133715133828%_))
                                                     (if (gx#stx-pair?
                                                          _%tl133716133830%_)
                                                         (let ((_%e133717133835%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl133716133830%_)))
                   (let ((_%hd133718133838%_ (##car _%e133717133835%_))
                         (_%tl133719133840%_ (##cdr _%e133717133835%_)))
                     (let ((_%name133843%_ _%hd133718133838%_))
                       (if (gx#stx-null? _%tl133719133840%_)
                           (let* ((_%phi133845%_
                                   (gx#current-export-expander-phi))
                                  (_%$e133847%_
                                   (gx#core-resolve-identifier__1
                                    _%id133833%_
                                    _%phi133845%_)))
                             (if _%$e133847%_
                                 ((lambda (_%bind133850%_)
                                    (_%K133690%_
                                     _%rest133691%_
                                     (cons (_%make-export__137035137036%_
                                            _%bind133850%_
                                            _%phi133845%_
                                            (gx#current-expander-context)
                                            _%name133843%_)
                                           _%r133692%_)))
                                  _%$e133847%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Reference to unbound identifier"
                                  _%stx133530%_
                                  _%hd133689%_
                                  _%id133833%_)))
                           (_%E133710133813%_)))))
                 (_%E133710133813%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E133710133813%_))
                                           (_%E133710133813%_))))
                                   (_%E133710133813%_))))
                            (_%E133696133903%_
                             (lambda ()
                               (if (gx#stx-pair? _%e133693133725%_)
                                   (let ((_%e133698133857%_
                                          (gx#syntax-e _%e133693133725%_)))
                                     (let ((_%hd133699133860%_
                                            (##car _%e133698133857%_))
                                           (_%tl133700133862%_
                                            (##cdr _%e133698133857%_)))
                                       (if (eq? (gx#stx-e _%hd133699133860%_)
                                                'spec:)
                                           (if (gx#stx-pair?
                                                _%tl133700133862%_)
                                               (let ((_%e133701133865%_
                                                      (gx#syntax-e
                                                       _%tl133700133862%_)))
                                                 (let ((_%hd133702133868%_
                                                        (##car _%e133701133865%_))
                                                       (_%tl133703133870%_
                                                        (##cdr _%e133701133865%_)))
                                                   (let ((_%phi133873%_
                                                          _%hd133702133868%_))
                                                     (if (gx#stx-pair?
                                                          _%tl133703133870%_)
                                                         (let ((_%e133704133875%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl133703133870%_)))
                   (let ((_%hd133705133878%_ (##car _%e133704133875%_))
                         (_%tl133706133880%_ (##cdr _%e133704133875%_)))
                     (let ((_%id133883%_ _%hd133705133878%_))
                       (if (gx#stx-pair? _%tl133706133880%_)
                           (let ((_%e133707133885%_
                                  (gx#syntax-e _%tl133706133880%_)))
                             (let ((_%hd133708133888%_
                                    (##car _%e133707133885%_))
                                   (_%tl133709133890%_
                                    (##cdr _%e133707133885%_)))
                               (let ((_%name133893%_ _%hd133708133888%_))
                                 (if (gx#stx-null? _%tl133709133890%_)
                                     (if (and (gx#stx-fixnum? _%phi133873%_)
                                              (gx#identifier? _%id133883%_)
                                              (gx#identifier? _%name133893%_))
                                         (let* ((_%phi133895%_
                                                 (gx#stx-e _%phi133873%_))
                                                (_%$e133897%_
                                                 (gx#core-resolve-identifier__1
                                                  _%id133883%_
                                                  _%phi133895%_)))
                                           (if _%$e133897%_
                                               ((lambda (_%bind133900%_)
                                                  (_%K133690%_
                                                   _%rest133691%_
                                                   (cons (_%make-export__137035137036%_
                                                          _%bind133900%_
                                                          _%phi133895%_
                                                          (gx#current-expander-context)
                                                          _%name133893%_)
                                                         _%r133692%_)))
                                                _%$e133897%_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _%stx133530%_
                                                _%hd133689%_
                                                _%id133883%_)))
                                         (_%E133697133853%_))
                                     (_%E133697133853%_)))))
                           (_%E133697133853%_)))))
                 (_%E133697133853%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E133697133853%_))
                                           (_%E133697133853%_))))
                                   (_%E133697133853%_))))
                            (_%E133695133915%_
                             (lambda ()
                               (let ((_%id133907%_ _%e133693133725%_))
                                 (if (gx#identifier? _%id133907%_)
                                     (let ((_%$e133909%_
                                            (gx#core-resolve-identifier__1
                                             _%id133907%_
                                             (gx#current-export-expander-phi))))
                                       (if _%$e133909%_
                                           ((lambda (_%bind133912%_)
                                              (_%K133690%_
                                               _%rest133691%_
                                               (cons (_%make-export__0__137037137040%_
                                                      _%bind133912%_)
                                                     _%r133692%_)))
                                            _%$e133909%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _%stx133530%_
                                            _%hd133689%_)))
                                     (_%E133696133903%_)))))
                            (_%E133694133979%_
                             (lambda ()
                               (if (eq? (gx#stx-e _%e133693133725%_) '#t)
                                   (let* ((_%current-ctx133919%_
                                           (gx#current-expander-context))
                                          (_%current-phi133921%_
                                           (gx#current-export-expander-phi))
                                          (_%phi-ctx133923%_
                                           (gx#core-context-shift
                                            _%current-ctx133919%_
                                            _%current-phi133921%_))
                                          (_%phi-bind133925%_
                                           (hash->list
                                            (##unchecked-structure-ref
                                             _%phi-ctx133923%_
                                             '2
                                             '#f
                                             '#f))))
                                     (let _%lp133928%_ ((_%bind-rest133930%_
                                                         _%phi-bind133925%_)
                                                        (_%set133931%_ '()))
                                       (let* ((_%bind-rest133932133942%_
                                               _%bind-rest133930%_)
                                              (_%else133934133950%_
                                               (lambda ()
                                                 (_%K133690%_
                                                  _%rest133691%_
                                                  (cons (##structure
                                                         gx#export-set::t
                                                         '#f
                                                         _%current-phi133921%_
                                                         _%set133931%_)
                                                        _%r133692%_))))
                                              (_%K133936133960%_
                                               (lambda (_%bind-rest133953%_
                                                        _%bind133954%_
                                                        _%key133955%_)
                                                 (if (or (##structure-direct-instance-of?
                                                          _%bind133954%_
                                                          'gx#import-binding::t)
                                                         (gx#private-feature-binding?
                                                          _%bind133954%_))
                                                     (_%lp133928%_
                                                      _%bind-rest133953%_
                                                      _%set133931%_)
                                                     (_%lp133928%_
                                                      _%bind-rest133953%_
                                                      (cons (_%make-export__2__137039137042%_
                                                             _%bind133954%_
                                                             _%current-phi133921%_
                                                             _%current-ctx133919%_)
                                                            _%set133931%_))))))
                                         (if (pair? _%bind-rest133932133942%_)
                                             (let ((_%hd133937133963%_
                                                    (##car _%bind-rest133932133942%_))
                                                   (_%tl133938133965%_
                                                    (##cdr _%bind-rest133932133942%_)))
                                               (if (pair? _%hd133937133963%_)
                                                   (let ((_%hd133939133968%_
                                                          (##car _%hd133937133963%_))
                                                         (_%tl133940133970%_
                                                          (##cdr _%hd133937133963%_)))
                                                     (let* ((_%key133973%_
                                                             _%hd133939133968%_)
                                                            (_%bind133975%_
                                                             _%tl133940133970%_)
                                                            (_%bind-rest133977%_
                                                             _%tl133938133965%_))
                                                       (_%K133936133960%_
                                                        _%bind-rest133977%_
                                                        _%bind133975%_
                                                        _%key133973%_)))
                                                   (_%else133934133950%_)))
                                             (_%else133934133950%_)))))
                                   (_%E133695133915%_)))))
                       (_%E133694133979%_))))
                  (_%export-imports133535%_
                   (lambda (_%src133565%_ _%r133566%_)
                     (letrec* ((_%current-ctx133568%_
                                (gx#current-expander-context))
                               (_%current-phi133569%_
                                (gx#current-export-expander-phi))
                               (_%import->export133570%_
                                (lambda (_%in133651%_)
                                  (let* ((_%in133652133660%_ _%in133651%_)
                                         (_%E133654133664%_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _%in133652133660%_
                                                   '((module-import
                                                      out
                                                      key
                                                      phi)))
                                            '#!void))
                                         (_%K133655133671%_
                                          (lambda (_%phi133667%_
                                                   _%key133668%_
                                                   _%out133669%_)
                                            (##structure
                                             gx#module-export::t
                                             _%current-ctx133568%_
                                             _%key133668%_
                                             _%phi133667%_
                                             _%key133668%_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _%in133652133660%_
                                         'gx#module-import::t)
                                        (let* ((_%e133656133674%_
                                                (##unchecked-structure-ref
                                                 _%in133652133660%_
                                                 '1
                                                 '#f
                                                 '#f))
                                               (_%out133677%_
                                                _%e133656133674%_)
                                               (_%e133657133679%_
                                                (##unchecked-structure-ref
                                                 _%in133652133660%_
                                                 '2
                                                 '#f
                                                 '#f))
                                               (_%key133682%_
                                                _%e133657133679%_)
                                               (_%e133658133684%_
                                                (##unchecked-structure-ref
                                                 _%in133652133660%_
                                                 '3
                                                 '#f
                                                 '#f))
                                               (_%phi133687%_
                                                _%e133658133684%_))
                                          (_%K133655133671%_
                                           _%phi133687%_
                                           _%key133682%_
                                           _%out133677%_))
                                        (_%E133654133664%_)))))
                               (_%fold-e133571%_
                                (lambda (_%in133573%_ _%r133574%_)
                                  (let* ((_%in133575133589%_ _%in133573%_)
                                         (_%else133578133597%_
                                          (lambda () _%r133574%_)))
                                    (let ((_%K133584133633%_
                                           (lambda (_%phi133629%_
                                                    _%key133630%_
                                                    _%out133631%_)
                                             (if (and (fx= _%phi133629%_
                                                           _%current-phi133569%_)
                                                      (eq? _%src133565%_
                                                           (##unchecked-structure-ref
                                                            _%out133631%_
                                                            '1
                                                            '#f
                                                            '#f)))
                                                 (cons (_%import->export133570%_
                                                        _%in133573%_)
                                                       _%r133574%_)
                                                 _%r133574%_)))
                                          (_%K133580133608%_
                                           (lambda (_%imports133601%_
                                                    _%phi133602%_
                                                    _%ctx133603%_)
                                             (if (and (fx= _%phi133602%_
                                                           _%current-phi133569%_)
                                                      (eq? _%src133565%_
                                                           _%ctx133603%_))
                                                 (__foldl1
                                                  (lambda (_%in133605%_
                                                           _%r133606%_)
                                                    (cons (_%import->export133570%_
                                                           _%in133605%_)
                                                          _%r133606%_))
                                                  _%r133574%_
                                                  _%imports133601%_)
                                                 _%r133574%_))))
                                      (let ((_%try-match133577133626%_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _%in133575133589%_
                                                    'gx#import-set::t)
                                                   (let* ((_%e133581133611%_
                                                           (##unchecked-structure-ref
                                                            _%in133575133589%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                          (_%e133582133616%_
                                                           (##unchecked-structure-ref
                                                            _%in133575133589%_
                                                            '2
                                                            '#f
                                                            '#f))
                                                          (_%e133583133621%_
                                                           (##unchecked-structure-ref
                                                            _%in133575133589%_
                                                            '3
                                                            '#f
                                                            '#f)))
                                                     (let ((_%ctx133614%_
                                                            _%e133581133611%_)
                                                           (_%phi133619%_
                                                            _%e133582133616%_)
                                                           (_%imports133624%_
                                                            _%e133583133621%_))
                                                       (_%K133580133608%_
                                                        _%imports133624%_
                                                        _%phi133619%_
                                                        _%ctx133614%_)))
                                                   (_%else133578133597%_)))))
                                        (if (##structure-direct-instance-of?
                                             _%in133575133589%_
                                             'gx#module-import::t)
                                            (let* ((_%e133585133636%_
                                                    (##unchecked-structure-ref
                                                     _%in133575133589%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                   (_%e133586133641%_
                                                    (##unchecked-structure-ref
                                                     _%in133575133589%_
                                                     '2
                                                     '#f
                                                     '#f))
                                                   (_%e133587133646%_
                                                    (##unchecked-structure-ref
                                                     _%in133575133589%_
                                                     '3
                                                     '#f
                                                     '#f)))
                                              (let ((_%out133639%_
                                                     _%e133585133636%_)
                                                    (_%key133644%_
                                                     _%e133586133641%_)
                                                    (_%phi133649%_
                                                     _%e133587133646%_))
                                                (_%K133584133633%_
                                                 _%phi133649%_
                                                 _%key133644%_
                                                 _%out133639%_)))
                                            (_%try-match133577133626%_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _%src133565%_
                              _%current-phi133569%_
                              (__foldl1
                               _%fold-e133571%_
                               '()
                               (##unchecked-structure-ref
                                _%current-ctx133568%_
                                '8
                                '#f
                                '#f)))
                             _%r133566%_))))
                  (_%export!133536%_
                   (lambda (_%rbody133552%_)
                     (letrec* ((_%current-ctx133554%_
                                (gx#current-expander-context))
                               (_%fold-e133555%_
                                (lambda (_%out133559%_ _%r133560%_)
                                  (if (##structure-direct-instance-of?
                                       _%out133559%_
                                       'gx#module-export::t)
                                      (cons _%out133559%_ _%r133560%_)
                                      (if (##structure-direct-instance-of?
                                           _%out133559%_
                                           'gx#export-set::t)
                                          (__foldl1
                                           cons
                                           _%r133560%_
                                           (##unchecked-structure-ref
                                            _%out133559%_
                                            '3
                                            '#f
                                            '#f))
                                          _%r133560%_)))))
                       (let ((_%body133557%_ (reverse _%rbody133552%_)))
                         (##unchecked-structure-set!
                          _%current-ctx133554%_
                          (__foldl1
                           _%fold-e133555%_
                           (##unchecked-structure-ref
                            _%current-ctx133554%_
                            '9
                            '#f
                            '#f)
                           _%body133557%_)
                          '9
                          '#f
                          '#f)
                         _%body133557%_))))
                  (_%expanded-export?133537%_
                   (lambda (_%e133547%_)
                     (let ((_%$e133549%_
                            (##structure-direct-instance-of?
                             _%e133547%_
                             'gx#module-export::t)))
                       (if _%$e133549%_
                           _%$e133549%_
                           (##structure-direct-instance-of?
                            _%e133547%_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _%internal-expand?133531%_)
              (let ((_%rbody133543%_
                     (gx#core-expand-import/export
                      _%stx133530%_
                      _%expanded-export?133537%_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _%expand1133534%_)))
                (if _%internal-expand?133531%_
                    (reverse _%rbody133543%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons
                      '%#export
                      (_%export!133536%_ _%rbody133543%_))
                     (gx#stx-source _%stx133530%_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _%stx133530%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _%stx133530%_))))))
    (define gx#core-expand-export%__0
      (lambda (_%stx134029%_)
        (let ((_%internal-expand?134031%_ '#f))
          (gx#core-expand-export%__%
           _%stx134029%_
           _%internal-expand?134031%_))))
    (define gx#core-expand-export%
      (lambda _g137110_
        (let ((_g137111_ (##length _g137110_)))
          (cond ((##fx= _g137111_ 1)
                 (apply gx#core-expand-export%__0 _g137110_))
                ((##fx= _g137111_ 2)
                 (apply gx#core-expand-export%__% _g137110_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g137110_))))))
    (define gx#core-expand-export-source
      (lambda (_%hd133527%_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _%hd133527%_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_%stx133497%_)
        (let* ((_%e133498133505%_ _%stx133497%_)
               (_%E133500133509%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e133498133505%_)))
               (_%E133499133523%_
                (lambda ()
                  (if (gx#stx-pair? _%e133498133505%_)
                      (let ((_%e133501133513%_
                             (gx#syntax-e _%e133498133505%_)))
                        (let ((_%hd133502133516%_ (##car _%e133501133513%_))
                              (_%tl133503133518%_ (##cdr _%e133501133513%_)))
                          (let ((_%body133521%_ _%tl133503133518%_))
                            (if (gx#identifier-list? _%body133521%_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _%body133521%_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _%body133521%_))
                                   (gx#stx-source _%stx133497%_)))
                                (_%E133500133509%_)))))
                      (_%E133500133509%_)))))
          (_%E133499133523%_))))
    (define gx#core-bind-feature!__%
      (lambda (_%id133463%_ _%private?133464%_ _%phi133465%_ _%ctx133466%_)
        (gx#core-bind-syntax!__%
         _%id133463%_
         ((if _%private?133464%_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _%id133463%_))
         _%private?133464%_
         _%phi133465%_
         _%ctx133466%_)))
    (define gx#core-bind-feature!__0
      (lambda (_%id133471%_)
        (let* ((_%private?133473%_ '#f)
               (_%phi133475%_ (gx#current-expander-phi))
               (_%ctx133477%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id133471%_
           _%private?133473%_
           _%phi133475%_
           _%ctx133477%_))))
    (define gx#core-bind-feature!__1
      (lambda (_%id133479%_ _%private?133480%_)
        (let* ((_%phi133482%_ (gx#current-expander-phi))
               (_%ctx133484%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id133479%_
           _%private?133480%_
           _%phi133482%_
           _%ctx133484%_))))
    (define gx#core-bind-feature!__2
      (lambda (_%id133486%_ _%private?133487%_ _%phi133488%_)
        (let ((_%ctx133490%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id133486%_
           _%private?133487%_
           _%phi133488%_
           _%ctx133490%_))))
    (define gx#core-bind-feature!
      (lambda _g137112_
        (let ((_g137113_ (##length _g137112_)))
          (cond ((##fx= _g137113_ 1)
                 (apply gx#core-bind-feature!__0 _g137112_))
                ((##fx= _g137113_ 2)
                 (apply gx#core-bind-feature!__1 _g137112_))
                ((##fx= _g137113_ 3)
                 (apply gx#core-bind-feature!__2 _g137112_))
                ((##fx= _g137113_ 4)
                 (apply gx#core-bind-feature!__% _g137112_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g137112_))))))))
