(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1734357962)
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
      (lambda _%$args130051%_
        (apply make-instance gx#module-import::t _%$args130051%_)))
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
      (lambda _%$args130048%_
        (apply make-instance gx#module-export::t _%$args130048%_)))
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
      (lambda _%$args130045%_
        (apply make-instance gx#import-set::t _%$args130045%_)))
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
      (lambda _%$args130042%_
        (apply make-instance gx#export-set::t _%$args130042%_)))
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
      (lambda _%$args130039%_
        (apply make-instance gx#import-expander::t _%$args130039%_)))
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
      (lambda _%$args130036%_
        (apply make-instance gx#export-expander::t _%$args130036%_)))
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
      (lambda _%$args130033%_
        (apply make-instance gx#import-export-expander::t _%$args130033%_)))
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
      (lambda (_%path130030%_ _%fun130031%_)
        (call-with-input-file
         (cons 'path: (cons _%path130030%_ gx#source-file-settings))
         _%fun130031%_)))
    (define gx#module-context:::init!
      (lambda (_%self126482130011%_
               _%id130013%_
               _%super130014%_
               _%ns130015%_
               _%path130016%_)
        (let* ((_%self130018%_ _%self126482130011%_)
               (_%self130020%_ _%self130018%_))
          (if (##fx< '11 (##structure-length _%self130020%_))
              (begin
                (##unchecked-structure-set!
                 _%self130020%_
                 _%id130013%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self130020%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self130020%_
                 _%super130014%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self130020%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self130020%_ '#f '5 '#f '#f)
                (##unchecked-structure-set!
                 _%self130020%_
                 _%ns130015%_
                 '6
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self130020%_
                 _%path130016%_
                 '7
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self130020%_ '() '8 '#f '#f)
                (##unchecked-structure-set! _%self130020%_ '() '9 '#f '#f)
                (##unchecked-structure-set! _%self130020%_ '#f '10 '#f '#f)
                (##unchecked-structure-set! _%self130020%_ '#f '11 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self130020%_
                     '11
                     (##vector-length _%self130020%_))))))
    (__bind-method!__%
     gx#module-context::t
     ':init!
     gx#module-context:::init!
     '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_%self126483129842%_ _%ctx129844%_ _%root129845%_)
        (let* ((_%self129847%_ _%self126483129842%_)
               (_%self129849%_ _%self129847%_)
               (_%super129865%_
                (let ((_%$e129859%_ _%root129845%_))
                  (if _%$e129859%_
                      _%$e129859%_
                      (let ((_%$e129862%_ (gx#core-context-root__0)))
                        (if _%$e129862%_
                            _%$e129862%_
                            (let ((__obj130095
                                   (##structure gx#root-context::t '#f '#f)))
                              (let ((__constructor130096
                                     (direct-method-ref
                                      gx#root-context::t
                                      __obj130095
                                      ':init!)))
                                (if __constructor130096
                                    (__constructor130096 __obj130095)
                                    (error '"missing constructor method implementation"
                                           'class:
                                           gx#root-context::t
                                           'method:
                                           ':init!)))
                              __obj130095)))))))
          (if _%ctx129844%_
              (let ((_%id129868%_
                     (##structure-ref
                      _%ctx129844%_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_%path129869%_
                     (##structure-ref
                      _%ctx129844%_
                      '7
                      gx#module-context::t
                      '#f))
                    (_%in129870%_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _%ctx129844%_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_%e129871%_
                     (__make-promise
                      (lambda () (gx#eval-module _%ctx129844%_)))))
                (if (##fx< '8 (##structure-length _%self129849%_))
                    (begin
                      (##unchecked-structure-set!
                       _%self129849%_
                       _%id129868%_
                       '1
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self129849%_
                       (make-hash-table-eq 'size: (##length _%in129870%_))
                       '2
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self129849%_
                       _%super129865%_
                       '3
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self129849%_
                       '#f
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self129849%_
                       '#f
                       '5
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self129849%_
                       _%path129869%_
                       '6
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self129849%_
                       _%in129870%_
                       '7
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self129849%_
                       _%e129871%_
                       '8
                       '#f
                       '#f)
                      '#!void)
                    (error '"struct-instance-init!: too many arguments for struct"
                           _%self129849%_
                           '8
                           (##vector-length _%self129849%_)))
                (##for-each
                 (lambda (_%g129872129874%_)
                   (gx#core-bind-weak-import!__%
                    _%g129872129874%_
                    _%self129849%_))
                 _%in129870%_))
              (if (##fx< '8 (##structure-length _%self129849%_))
                  (begin
                    (##unchecked-structure-set! _%self129849%_ '#f '1 '#f '#f)
                    (##unchecked-structure-set!
                     _%self129849%_
                     (make-hash-table-eq)
                     '2
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self129849%_
                     _%super129865%_
                     '3
                     '#f
                     '#f)
                    (##unchecked-structure-set! _%self129849%_ '#f '4 '#f '#f)
                    (##unchecked-structure-set! _%self129849%_ '#f '5 '#f '#f)
                    (##unchecked-structure-set! _%self129849%_ '#f '6 '#f '#f)
                    (##unchecked-structure-set! _%self129849%_ '() '7 '#f '#f)
                    (##unchecked-structure-set! _%self129849%_ '#f '8 '#f '#f)
                    '#!void)
                  (error '"struct-instance-init!: too many arguments for struct"
                         _%self129849%_
                         '8
                         (##vector-length _%self129849%_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_%self126483129880%_ _%ctx129881%_)
        (let ((_%root129883%_ '#f))
          (gx#prelude-context:::init!__%
           _%self126483129880%_
           _%ctx129881%_
           _%root129883%_))))
    (define gx#prelude-context:::init!
      (lambda _g130102_
        (let ((_g130101_ (##length _g130102_)))
          (cond ((##fx= _g130101_ 2)
                 (apply gx#prelude-context:::init!__0 _g130102_))
                ((##fx= _g130101_ 3)
                 (apply gx#prelude-context:::init!__% _g130102_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g130102_))))))
    (__bind-method!__%
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_%self129716%_ _%e129717%_)
        (if (##fx< '3 (##structure-length _%self129716%_))
            (begin
              (##unchecked-structure-set!
               _%self129716%_
               _%e129717%_
               '1
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self129716%_
               (gx#current-expander-context)
               '2
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self129716%_
               (##fx- (gx#current-expander-phi) '1)
               '3
               '#f
               '#f)
              '#!void)
            (error '"struct-instance-init!: too many arguments for struct"
                   _%self129716%_
                   '3
                   (##vector-length _%self129716%_)))))
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
      (lambda (_%g129342129345%_ _%g129343129347%_)
        (gx#core-apply-user-expander__%
         _%g129342129345%_
         _%g129343129347%_
         'apply-import-expander)))
    (__bind-method!__%
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_%g129213129216%_ _%g129214129218%_)
        (gx#core-apply-user-expander__%
         _%g129213129216%_
         _%g129214129218%_
         'apply-export-expander)))
    (__bind-method!__%
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_%ctx129084%_)
        (let* ((_%path129086%_
                (##structure-ref _%ctx129084%_ '7 gx#module-context::t '#f))
               (_%path129088%_
                (if (pair? _%path129086%_)
                    (##last _%path129086%_)
                    _%path129086%_)))
          (if (string? _%path129088%_) _%path129088%_ '#f))))
    (define gx#import-module__%
      (lambda (_%path129060%_ _%reload?129061%_ _%eval?129062%_)
        (let ((_%ctx129064%_
               ((gx#current-expander-module-import)
                _%path129060%_
                _%reload?129061%_)))
          (if (and _%ctx129064%_ _%eval?129062%_)
              (gx#eval-module _%ctx129064%_)
              '#!void)
          _%ctx129064%_)))
    (define gx#import-module__0
      (lambda (_%path129069%_)
        (let* ((_%reload?129071%_ '#f) (_%eval?129073%_ '#f))
          (gx#import-module__%
           _%path129069%_
           _%reload?129071%_
           _%eval?129073%_))))
    (define gx#import-module__1
      (lambda (_%path129075%_ _%reload?129076%_)
        (let ((_%eval?129078%_ '#f))
          (gx#import-module__%
           _%path129075%_
           _%reload?129076%_
           _%eval?129078%_))))
    (define gx#import-module
      (lambda _g130104_
        (let ((_g130103_ (##length _g130104_)))
          (cond ((##fx= _g130103_ 1) (apply gx#import-module__0 _g130104_))
                ((##fx= _g130103_ 2) (apply gx#import-module__1 _g130104_))
                ((##fx= _g130103_ 3) (apply gx#import-module__% _g130104_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g130104_))))))
    (define gx#eval-module
      (lambda (_%mod129057%_)
        ((gx#current-expander-module-eval) _%mod129057%_)))
    (define gx#core-eval-module
      (lambda (_%obj129037%_)
        (letrec ((_%force-e129039%_
                  (lambda (_%getf129053%_ _%e129054%_)
                    (__call-with-parameters
                     (lambda () (force (_%getf129053%_ _%e129054%_)))
                     gx#current-expander-context
                     _%e129054%_
                     gx#current-expander-phi
                     '0))))
          (let _%recur129041%_ ((_%e129043%_ _%obj129037%_))
            (if (##structure-instance-of? _%e129043%_ 'gx#module-context::t)
                (let ()
                  (let ((_%$e129046%_
                         (gx#core-context-prelude__% _%e129043%_)))
                    (if _%$e129046%_ (_%recur129041%_ _%$e129046%_) '#!void))
                  (_%force-e129039%_ gx#module-context-e _%e129043%_))
                (if (##structure-instance-of?
                     _%e129043%_
                     'gx#prelude-context::t)
                    (_%force-e129039%_ gx#prelude-context-e _%e129043%_)
                    (if (gx#stx-string? _%e129043%_)
                        (_%recur129041%_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _%e129043%_)))
                        (if (gx#core-library-module-path? _%e129043%_)
                            (_%recur129041%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%e129043%_)))
                            (error '"cannot eval module" _%obj129037%_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_%ctx129017%_)
        (let _%lp129019%_ ((_%e129021%_ _%ctx129017%_))
          (if (or (##structure-instance-of? _%e129021%_ 'gx#module-context::t)
                  (##structure-instance-of? _%e129021%_ 'gx#local-context::t))
              (_%lp129019%_ (##unchecked-structure-ref _%e129021%_ '3 '#f '#f))
              (if (##structure-instance-of? _%e129021%_ 'gx#prelude-context::t)
                  _%e129021%_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_%ctx129033%_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _%ctx129033%_))))
    (define gx#core-context-prelude
      (lambda _g130106_
        (let ((_g130105_ (##length _g130106_)))
          (cond ((##fx= _g130105_ 0)
                 (apply gx#core-context-prelude__0 _g130106_))
                ((##fx= _g130105_ 1)
                 (apply gx#core-context-prelude__% _g130106_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g130106_))))))
    (define gx#core-module->prelude-context
      (lambda (_%ctx129008%_)
        (let ((_%$e129010%_ (__hash-get gx#__module-registry _%ctx129008%_)))
          (if _%$e129010%_
              _%$e129010%_
              (let ((_%pre129014%_
                     (let ((__obj130097
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
                        __obj130097
                        _%ctx129008%_)
                       __obj130097)))
                (__hash-put! gx#__module-registry _%ctx129008%_ _%pre129014%_)
                _%pre129014%_)))))
    (define gx#core-import-module__%
      (lambda (_%rpath128880%_ _%reload?128881%_)
        (letrec ((_%import-source128883%_
                  (lambda (_%path128972%_)
                    (if (member _%path128972%_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _%path128972%_)
                        '#!void)
                    (__call-with-parameters
                     (lambda ()
                       (let ((_g130107_ (gx#core-read-module _%path128972%_)))
                         (begin
                           (let ((_g130108_
                                  (if (##values? _g130107_)
                                      (##values-length _g130107_)
                                      1)))
                             (if (not (##fx= _g130108_ 4))
                                 (error "Context expects 4 values" _g130108_)))
                           (let ((_%pre128975%_ (##values-ref _g130107_ 0))
                                 (_%id128976%_ (##values-ref _g130107_ 1))
                                 (_%ns128977%_ (##values-ref _g130107_ 2))
                                 (_%body128978%_ (##values-ref _g130107_ 3)))
                             (let* ((_%prelude128988%_
                                     (if (##structure-instance-of?
                                          _%pre128975%_
                                          'gx#prelude-context::t)
                                         _%pre128975%_
                                         (if (##structure-instance-of?
                                              _%pre128975%_
                                              'gx#module-context::t)
                                             (gx#core-module->prelude-context
                                              _%pre128975%_)
                                             (if (string? _%pre128975%_)
                                                 (gx#core-module->prelude-context
                                                  (gx#core-import-module__0
                                                   _%pre128975%_))
                                                 (if (not _%pre128975%_)
                                                     (let ((_%$e128984%_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _%$e128984%_
                                                           _%$e128984%_
                                                           (let ((__obj130098
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
                     (gx#prelude-context:::init!__0 __obj130098 '#f)
                     __obj130098)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error '"cannot import module; unknown prelude"
                                                            _%rpath128880%_
                                                            _%pre128975%_))))))
                                    (_%ctx128990%_
                                     (let ((__obj130099
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
                                        __obj130099
                                        _%id128976%_
                                        _%prelude128988%_
                                        _%ns128977%_
                                        _%path128972%_)
                                       __obj130099))
                                    (_%body128992%_
                                     (gx#core-expand-module-begin
                                      _%body128978%_
                                      _%ctx128990%_))
                                    (_%body128994%_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _%body128992%_)
                                      _%path128972%_
                                      _%ctx128990%_
                                      '())))
                               (##unchecked-structure-set!
                                _%ctx128990%_
                                (__make-promise
                                 (lambda () (gx#eval-syntax* _%body128994%_)))
                                '10
                                '#f
                                '#f)
                               (##unchecked-structure-set!
                                _%ctx128990%_
                                _%body128994%_
                                '11
                                '#f
                                '#f)
                               (__hash-put!
                                gx#__module-registry
                                _%path128972%_
                                _%ctx128990%_)
                               (__hash-put!
                                gx#__module-registry
                                _%id128976%_
                                _%ctx128990%_)
                               _%ctx128990%_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _%path128972%_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_%import-submodule128884%_
                  (lambda (_%rpath128900%_)
                    (let* ((_%rpath128901128908%_ _%rpath128900%_)
                           (_%E128903128912%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%rpath128901128908%_
                                     '([origin . refs]))
                              '#!void))
                           (_%K128904128960%_
                            (lambda (_%refs128915%_ _%origin128916%_)
                              (let ((_%ctx128918%_
                                     (if _%origin128916%_
                                         (gx#core-import-module__%
                                          _%origin128916%_
                                          _%reload?128881%_)
                                         (gx#current-expander-context))))
                                (let _%lp128920%_ ((_%rest128922%_
                                                    _%refs128915%_)
                                                   (_%ctx128923%_
                                                    _%ctx128918%_))
                                  (let* ((_%rest128924128932%_ _%rest128922%_)
                                         (_%else128926128940%_
                                          (lambda () _%ctx128923%_))
                                         (_%K128928128948%_
                                          (lambda (_%rest128943%_ _%id128944%_)
                                            (let ((_%bind128946%_
                                                   (gx#resolve-identifier__%
                                                    _%id128944%_
                                                    '0
                                                    _%ctx128923%_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _%bind128946%_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _%bind128946%_
                                                         '4
                                                         '#f
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_%lp128920%_
                                                   _%rest128943%_
                                                   (##unchecked-structure-ref
                                                    _%bind128946%_
                                                    '4
                                                    '#f
                                                    '#f))
                                                  (error '"cannot import submodule; not bound as a module"
                                                         _%rpath128900%_
                                                         _%id128944%_
                                                         _%bind128946%_))))))
                                    (if (pair? _%rest128924128932%_)
                                        (let ((_%hd128929128951%_
                                               (##car _%rest128924128932%_))
                                              (_%tl128930128953%_
                                               (##cdr _%rest128924128932%_)))
                                          (let* ((_%id128956%_
                                                  _%hd128929128951%_)
                                                 (_%rest128958%_
                                                  _%tl128930128953%_))
                                            (_%K128928128948%_
                                             _%rest128958%_
                                             _%id128956%_)))
                                        (_%else128926128940%_))))))))
                      (if (pair? _%rpath128901128908%_)
                          (let ((_%hd128905128963%_
                                 (##car _%rpath128901128908%_))
                                (_%tl128906128965%_
                                 (##cdr _%rpath128901128908%_)))
                            (let* ((_%origin128968%_ _%hd128905128963%_)
                                   (_%refs128970%_ _%tl128906128965%_))
                              (_%K128904128960%_
                               _%refs128970%_
                               _%origin128968%_)))
                          (_%E128903128912%_))))))
          (let ((_%$e128886%_
                 (if (not _%reload?128881%_)
                     (__hash-get gx#__module-registry _%rpath128880%_)
                     '#f)))
            (if _%$e128886%_
                _%$e128886%_
                (if (list? _%rpath128880%_)
                    (_%import-submodule128884%_ _%rpath128880%_)
                    (if (gx#core-library-module-path? _%rpath128880%_)
                        (let ((_%ctx128891%_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _%rpath128880%_)
                                _%reload?128881%_)))
                          (__hash-put!
                           gx#__module-registry
                           _%rpath128880%_
                           _%ctx128891%_)
                          _%ctx128891%_)
                        (let* ((_%npath128894%_
                                (path-normalize _%rpath128880%_))
                               (_%$e128896%_
                                (if (not _%reload?128881%_)
                                    (__hash-get
                                     gx#__module-registry
                                     _%npath128894%_)
                                    '#f)))
                          (if _%$e128896%_
                              _%$e128896%_
                              (_%import-source128883%_
                               _%npath128894%_))))))))))
    (define gx#core-import-module__0
      (lambda (_%rpath129001%_)
        (let ((_%reload?129003%_ '#f))
          (gx#core-import-module__% _%rpath129001%_ _%reload?129003%_))))
    (define gx#core-import-module
      (lambda _g130110_
        (let ((_g130109_ (##length _g130110_)))
          (cond ((##fx= _g130109_ 1)
                 (apply gx#core-import-module__0 _g130110_))
                ((##fx= _g130109_ 2)
                 (apply gx#core-import-module__% _g130110_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g130110_))))))
    (define gx#core-read-module
      (lambda (_%path128869%_)
        (__with-catch
         (lambda (_%exn128871%_)
           (if (and (datum-parsing-exception? _%exn128871%_)
                    (eq? (datum-parsing-exception-filepos _%exn128871%_) '0))
               (gx#core-read-module/lang _%path128869%_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _%path128869%_
                (__call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_%g128873128875%_)
                      (display-exception__% _%exn128871%_ _%g128873128875%_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _%path128869%_)))))
    (define gx#core-read-module/sexp
      (lambda (_%path128721%_)
        (let _%lp128723%_ ((_%body128725%_
                            (read-syntax-from-file _%path128721%_))
                           (_%pre128726%_ '#f)
                           (_%ns128727%_ '#f)
                           (_%pkg128728%_ '#f))
          (let* ((_%e128729128753%_ _%body128725%_)
                 (_%E128745128779%_
                  (lambda ()
                    (let ((_g130111_
                           (if _%pkg128728%_
                               (values _%pre128726%_
                                       _%ns128727%_
                                       _%pkg128728%_)
                               (gx#core-read-module-package
                                _%path128721%_
                                _%pre128726%_
                                _%ns128727%_))))
                      (begin
                        (let ((_g130112_
                               (if (##values? _g130111_)
                                   (##values-length _g130111_)
                                   1)))
                          (if (not (##fx= _g130112_ 3))
                              (error "Context expects 3 values" _g130112_)))
                        (let ((_%pre128757%_ (##values-ref _g130111_ 0))
                              (_%ns128758%_ (##values-ref _g130111_ 1))
                              (_%pkg128759%_ (##values-ref _g130111_ 2)))
                          (let* ((_%prelude128765%_
                                  (if (gx#core-bound-module-prelude?
                                       _%pre128757%_)
                                      (gx#syntax-local-e__0 _%pre128757%_)
                                      (if (gx#core-library-module-path?
                                           _%pre128757%_)
                                          (gx#core-resolve-library-module-path
                                           _%pre128757%_)
                                          (if (gx#stx-string? _%pre128757%_)
                                              (gx#core-resolve-module-path__%
                                               _%pre128757%_
                                               _%path128721%_)
                                              (gx#stx-e _%pre128757%_)))))
                                 (_%path-id128767%_
                                  (gx#core-module-path->namespace
                                   _%path128721%_))
                                 (_%pkg-id128769%_
                                  (if _%pkg128759%_
                                      (##string-append
                                       _%pkg128759%_
                                       '"/"
                                       _%path-id128767%_)
                                      _%path-id128767%_))
                                 (_%module-id128771%_
                                  (##string->symbol _%pkg-id128769%_))
                                 (_%module-ns128776%_
                                  (if (eq? _%ns128758%_ '#!void)
                                      '#f
                                      (let ((_%$e128773%_ _%ns128758%_))
                                        (if _%$e128773%_
                                            _%$e128773%_
                                            _%pkg-id128769%_)))))
                            (values _%prelude128765%_
                                    _%module-id128771%_
                                    _%module-ns128776%_
                                    _%body128725%_)))))))
                 (_%E128738128811%_
                  (lambda ()
                    (if (gx#stx-pair? _%e128729128753%_)
                        (let ((_%e128746128783%_
                               (gx#syntax-e _%e128729128753%_)))
                          (let ((_%hd128747128786%_ (##car _%e128746128783%_))
                                (_%tl128748128788%_ (##cdr _%e128746128783%_)))
                            (if (eq? (gx#stx-e _%hd128747128786%_) 'package:)
                                (if (gx#stx-pair? _%tl128748128788%_)
                                    (let ((_%e128749128791%_
                                           (gx#syntax-e _%tl128748128788%_)))
                                      (let ((_%hd128750128794%_
                                             (##car _%e128749128791%_))
                                            (_%tl128751128796%_
                                             (##cdr _%e128749128791%_)))
                                        (let* ((_%pkg128799%_
                                                _%hd128750128794%_)
                                               (_%rest128801%_
                                                _%tl128751128796%_)
                                               (_%pkg128809%_
                                                (if (gx#identifier?
                                                     _%pkg128799%_)
                                                    (symbol->string
                                                     (gx#stx-e _%pkg128799%_))
                                                    (if (or (gx#stx-string?
                                                             _%pkg128799%_)
                                                            (gx#stx-false?
                                                             _%pkg128799%_))
                                                        (gx#stx-e
                                                         _%pkg128799%_)
                                                        (gx#raise-syntax-error
                                                         'import
                                                         '"Bad syntax; Illegal package name"
                                                         _%pkg128799%_)))))
                                          (_%lp128723%_
                                           _%rest128801%_
                                           _%pre128726%_
                                           _%ns128727%_
                                           _%pkg128809%_))))
                                    (_%E128745128779%_))
                                (_%E128745128779%_))))
                        (_%E128745128779%_))))
                 (_%E128731128841%_
                  (lambda ()
                    (if (gx#stx-pair? _%e128729128753%_)
                        (let ((_%e128739128815%_
                               (gx#syntax-e _%e128729128753%_)))
                          (let ((_%hd128740128818%_ (##car _%e128739128815%_))
                                (_%tl128741128820%_ (##cdr _%e128739128815%_)))
                            (if (eq? (gx#stx-e _%hd128740128818%_) 'namespace:)
                                (if (gx#stx-pair? _%tl128741128820%_)
                                    (let ((_%e128742128823%_
                                           (gx#syntax-e _%tl128741128820%_)))
                                      (let ((_%hd128743128826%_
                                             (##car _%e128742128823%_))
                                            (_%tl128744128828%_
                                             (##cdr _%e128742128823%_)))
                                        (let* ((_%ns128831%_
                                                _%hd128743128826%_)
                                               (_%rest128833%_
                                                _%tl128744128828%_)
                                               (_%ns128839%_
                                                (if (gx#identifier?
                                                     _%ns128831%_)
                                                    (symbol->string
                                                     (gx#stx-e _%ns128831%_))
                                                    (if (gx#stx-string?
                                                         _%ns128831%_)
                                                        (gx#stx-e _%ns128831%_)
                                                        (if (gx#stx-false?
                                                             _%ns128831%_)
                                                            '#!void
                                                            (gx#raise-syntax-error
                                                             'import
                                                             '"Bad syntax; illegal namespace"
                                                             _%ns128831%_))))))
                                          (_%lp128723%_
                                           _%rest128833%_
                                           _%pre128726%_
                                           _%ns128839%_
                                           _%pkg128728%_))))
                                    (_%E128738128811%_))
                                (_%E128738128811%_))))
                        (_%E128738128811%_))))
                 (_%E128730128865%_
                  (lambda ()
                    (if (gx#stx-pair? _%e128729128753%_)
                        (let ((_%e128732128845%_
                               (gx#syntax-e _%e128729128753%_)))
                          (let ((_%hd128733128848%_ (##car _%e128732128845%_))
                                (_%tl128734128850%_ (##cdr _%e128732128845%_)))
                            (if (eq? (gx#stx-e _%hd128733128848%_) 'prelude:)
                                (if (gx#stx-pair? _%tl128734128850%_)
                                    (let ((_%e128735128853%_
                                           (gx#syntax-e _%tl128734128850%_)))
                                      (let ((_%hd128736128856%_
                                             (##car _%e128735128853%_))
                                            (_%tl128737128858%_
                                             (##cdr _%e128735128853%_)))
                                        (let* ((_%prelude128861%_
                                                _%hd128736128856%_)
                                               (_%rest128863%_
                                                _%tl128737128858%_))
                                          (_%lp128723%_
                                           _%rest128863%_
                                           _%prelude128861%_
                                           _%ns128727%_
                                           _%pkg128728%_))))
                                    (_%E128731128841%_))
                                (_%E128731128841%_))))
                        (_%E128731128841%_)))))
            (_%E128730128865%_)))))
    (define gx#core-read-module/lang
      (lambda (_%path128543%_)
        (letrec ((_%default-read-module-body128545%_
                  (lambda (_%inp128713%_)
                    (let _%lp128715%_ ((_%body128717%_ '()))
                      (let ((_%next128719%_ (read-syntax__% _%inp128713%_)))
                        (if (eof-object? _%next128719%_)
                            (reverse _%body128717%_)
                            (_%lp128715%_
                             (cons _%next128719%_ _%body128717%_)))))))
                 (_%read-body128546%_
                  (lambda (_%inp128631%_
                           _%pre128632%_
                           _%ns128633%_
                           _%pkg128634%_
                           _%args128635%_)
                    (let ((_g130113_
                           (if _%pkg128634%_
                               (values _%pre128632%_
                                       _%ns128633%_
                                       _%pkg128634%_)
                               (gx#core-read-module-package
                                _%path128543%_
                                _%pre128632%_
                                _%ns128633%_))))
                      (begin
                        (let ((_g130114_
                               (if (##values? _g130113_)
                                   (##values-length _g130113_)
                                   1)))
                          (if (not (##fx= _g130114_ 3))
                              (error "Context expects 3 values" _g130114_)))
                        (let ((_%pre128637%_ (##values-ref _g130113_ 0))
                              (_%ns128638%_ (##values-ref _g130113_ 1))
                              (_%pkg128639%_ (##values-ref _g130113_ 2)))
                          (let* ((_%prelude128641%_
                                  (gx#import-module__0 _%pre128637%_))
                                 (_%read-module-body128696%_
                                  (let ((_%$e128687%_
                                         (__find (lambda (_%e128642128644%_)
                                                   (let* ((_%g128646128656%_
                                                           _%e128642128644%_)
                                                          (_%else128648128664%_
                                                           (lambda () '#f))
                                                          (_%K128650128668%_
                                                           (lambda () '#t)))
                                                     (if (##structure-direct-instance-of?
                                                          _%g128646128656%_
                                                          'gx#module-export::t)
                                                         (let* ((_%e128651128671%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##unchecked-structure-ref
                          _%g128646128656%_
                          '1
                          '#f
                          '#f))
                        (_%e128652128674%_
                         (##unchecked-structure-ref
                          _%g128646128656%_
                          '2
                          '#f
                          '#f))
                        (_%e128653128677%_
                         (##unchecked-structure-ref
                          _%g128646128656%_
                          '3
                          '#f
                          '#f)))
                   (if (##eq? _%e128653128677%_ '1)
                       (let ((_%e128654128680%_
                              (##unchecked-structure-ref
                               _%g128646128656%_
                               '4
                               '#f
                               '#f)))
                         (if ((lambda (_%g128682128684%_)
                                (eq? _%g128682128684%_ 'read-module-body))
                              _%e128654128680%_)
                             (_%K128650128668%_)
                             (_%else128648128664%_)))
                       (_%else128648128664%_)))
                 (_%else128648128664%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (##unchecked-structure-ref
                                                  _%prelude128641%_
                                                  '9
                                                  '#f
                                                  '#f))))
                                    (if _%$e128687%_
                                        ((lambda (_%xport128690%_)
                                           (let ((_%proc128693%_
                                                  (__with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _%xport128690%_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _%proc128693%_)
                                                 _%proc128693%_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _%path128543%_
                                                  _%pre128637%_
                                                  _%proc128693%_))))
                                         _%$e128687%_)
                                        _%default-read-module-body128545%_)))
                                 (_%path-id128698%_
                                  (gx#core-module-path->namespace
                                   _%path128543%_))
                                 (_%pkg-id128700%_
                                  (if _%pkg128639%_
                                      (##string-append
                                       _%pkg128639%_
                                       '"/"
                                       _%path-id128698%_)
                                      _%path-id128698%_))
                                 (_%module-id128702%_
                                  (##string->symbol _%pkg-id128700%_))
                                 (_%module-ns128707%_
                                  (let ((_%$e128704%_ _%ns128638%_))
                                    (if _%$e128704%_
                                        _%$e128704%_
                                        _%pkg-id128700%_)))
                                 (_%body128710%_
                                  (__call-with-parameters
                                   (lambda ()
                                     (_%read-module-body128696%_
                                      _%inp128631%_))
                                   gx#current-module-reader-path
                                   _%path128543%_
                                   gx#current-module-reader-args
                                   _%args128635%_)))
                            (values _%prelude128641%_
                                    _%module-id128702%_
                                    _%module-ns128707%_
                                    _%body128710%_)))))))
                 (_%string-e128547%_
                  (lambda (_%obj128625%_ _%what128626%_)
                    (if (string? _%obj128625%_)
                        _%obj128625%_
                        (if (symbol? _%obj128625%_)
                            (##symbol->string _%obj128625%_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _%what128626%_)
                             _%path128543%_
                             _%obj128625%_)))))
                 (_%read-lang-args128548%_
                  (lambda (_%inp128580%_ _%args128581%_)
                    (let* ((_%args128582128590%_ _%args128581%_)
                           (_%else128584128598%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _%path128543%_)))
                           (_%K128586128613%_
                            (lambda (_%args128601%_ _%prelude128602%_)
                              (let* ((_%pkg128604%_
                                      (pgetq__0 'package: _%args128601%_))
                                     (_%pkg128606%_
                                      (if _%pkg128604%_
                                          (_%string-e128547%_
                                           _%pkg128604%_
                                           '"package")
                                          '#f))
                                     (_%ns128608%_
                                      (pgetq__0 'namespace: _%args128601%_))
                                     (_%ns128610%_
                                      (if _%ns128608%_
                                          (_%string-e128547%_
                                           _%ns128608%_
                                           '"namespace")
                                          '#f)))
                                (_%read-body128546%_
                                 _%inp128580%_
                                 _%prelude128602%_
                                 _%ns128610%_
                                 _%pkg128606%_
                                 _%args128601%_)))))
                      (if (pair? _%args128582128590%_)
                          (let ((_%hd128587128616%_
                                 (##car _%args128582128590%_))
                                (_%tl128588128618%_
                                 (##cdr _%args128582128590%_)))
                            (let* ((_%prelude128621%_ _%hd128587128616%_)
                                   (_%args128623%_ _%tl128588128618%_))
                              (_%K128586128613%_
                               _%args128623%_
                               _%prelude128621%_)))
                          (_%else128584128598%_)))))
                 (_%read-lang128549%_
                  (lambda (_%inp128554%_)
                    (let* ((_%head128556%_ (read-line _%inp128554%_))
                           (_%$e128558%_
                            (string-index__0 _%head128556%_ '#\space)))
                      (if _%$e128558%_
                          ((lambda (_%ix128561%_)
                             (let ((_%lang128563%_
                                    (substring
                                     _%head128556%_
                                     '0
                                     _%ix128561%_)))
                               (if (equal? _%lang128563%_ '"#lang")
                                   (let* ((_%rest128565%_
                                           (substring
                                            _%head128556%_
                                            (##fx+ _%ix128561%_ '1)
                                            (string-length _%head128556%_)))
                                          (_%args128576%_
                                           (__with-catch
                                            (lambda (_%g128566128568%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _%path128543%_
                                               _%g128566128568%_))
                                            (lambda ()
                                              (call-with-input-string
                                               _%rest128565%_
                                               (lambda (_%g128571128573%_)
                                                 (read-all
                                                  _%g128571128573%_
                                                  read)))))))
                                     (_%read-lang-args128548%_
                                      _%inp128554%_
                                      _%args128576%_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _%path128543%_))))
                           _%$e128558%_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _%path128543%_)))))
                 (_%read-e128550%_
                  (lambda (_%inp128552%_)
                    (if (eq? (peek-char _%inp128552%_) '#\#)
                        (_%read-lang128549%_ _%inp128552%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _%path128543%_)))))
          (gx#call-with-input-source-file _%path128543%_ _%read-e128550%_))))
    (define gx#core-read-module-package
      (lambda (_%path128491%_ _%pre128492%_ _%ns128493%_)
        (letrec ((_%string-e128495%_
                  (lambda (_%e128538%_)
                    (if (symbol? _%e128538%_)
                        (##symbol->string _%e128538%_)
                        (if (string? _%e128538%_)
                            _%e128538%_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%e128538%_))))))
          (let _%lp128497%_ ((_%dir128499%_ (path-directory _%path128491%_))
                             (_%pkg-path128500%_ '()))
            (let ((_%gerbil.pkg128502%_
                   (path-expand '"gerbil.pkg" _%dir128499%_)))
              (if (##file-exists? _%gerbil.pkg128502%_)
                  (let ((_%plist128504%_
                         (gx#core-library-package-plist__% _%dir128499%_ '#t)))
                    (if (null? _%plist128504%_)
                        (let ((_%pkg128507%_
                               (if (null? _%pkg-path128500%_)
                                   '#f
                                   (string-join _%pkg-path128500%_ '"/"))))
                          (values _%pre128492%_ _%ns128493%_ _%pkg128507%_))
                        (if (list? _%plist128504%_)
                            (let* ((_%root128510%_
                                    (pgetq__0 'package: _%plist128504%_))
                                   (_%pkg128514%_
                                    (let ((_%pkg-path128512%_
                                           (if _%root128510%_
                                               (cons (_%string-e128495%_
                                                      _%root128510%_)
                                                     _%pkg-path128500%_)
                                               _%pkg-path128500%_)))
                                      (if (null? _%pkg-path128512%_)
                                          '#f
                                          (string-join
                                           _%pkg-path128512%_
                                           '"/"))))
                                   (_%ns128521%_
                                    (let ((_%ns128519%_
                                           (let ((_%$e128516%_ _%ns128493%_))
                                             (if _%$e128516%_
                                                 _%$e128516%_
                                                 (pgetq__0
                                                  'namespace:
                                                  _%plist128504%_)))))
                                      (if _%ns128519%_
                                          (_%string-e128495%_ _%ns128519%_)
                                          '#f)))
                                   (_%pre128526%_
                                    (let ((_%$e128523%_ _%pre128492%_))
                                      (if _%$e128523%_
                                          _%$e128523%_
                                          (pgetq__0
                                           'prelude:
                                           _%plist128504%_)))))
                              (values _%pre128526%_
                                      _%ns128521%_
                                      _%pkg128514%_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%plist128504%_))))
                  (let ((_%dir*128530%_
                         (path-strip-trailing-directory-separator
                          _%dir128499%_)))
                    (if (or (__string-empty? _%dir*128530%_)
                            (equal? _%dir128499%_ _%dir*128530%_))
                        (values _%pre128492%_ _%ns128493%_ '#f)
                        (let ((_%xpath128535%_
                               (path-strip-directory _%dir*128530%_))
                              (_%xdir128536%_ (path-directory _%dir*128530%_)))
                          (_%lp128497%_
                           _%xdir128536%_
                           (cons _%xpath128535%_ _%pkg-path128500%_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_%path128489%_)
        (path-strip-extension (path-strip-directory _%path128489%_))))
    (define gx#core-module-path->id
      (lambda (_%path128487%_)
        (##string->symbol (gx#core-module-path->namespace _%path128487%_))))
    (define gx#core-resolve-module-path__%
      (lambda (_%stx-path128466%_ _%rel128467%_)
        (let* ((_%path128469%_ (gx#stx-e _%stx-path128466%_))
               (_%path128471%_
                (if (__string-empty? (path-extension _%path128469%_))
                    (##string-append _%path128469%_ '".ss")
                    _%path128469%_)))
          (gx#core-resolve-path__%
           _%path128471%_
           (let ((_%$e128474%_ (gx#stx-source _%stx-path128466%_)))
             (if _%$e128474%_ _%$e128474%_ _%rel128467%_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_%stx-path128480%_)
        (let ((_%rel128482%_ '#f))
          (gx#core-resolve-module-path__% _%stx-path128480%_ _%rel128482%_))))
    (define gx#core-resolve-module-path
      (lambda _g130116_
        (let ((_g130115_ (##length _g130116_)))
          (cond ((##fx= _g130115_ 1)
                 (apply gx#core-resolve-module-path__0 _g130116_))
                ((##fx= _g130115_ 2)
                 (apply gx#core-resolve-module-path__% _g130116_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g130116_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_%libpath128351%_)
        (let* ((_%spath128353%_ (symbol->string (gx#stx-e _%libpath128351%_)))
               (_%spath128355%_
                (substring
                 _%spath128353%_
                 '1
                 (##string-length _%spath128353%_)))
               (_%ext128357%_ (path-extension _%spath128355%_))
               (_%ssi128359%_
                (if (__string-empty? _%ext128357%_)
                    (##string-append _%spath128355%_ '".ssi")
                    (##string-append
                     (path-strip-extension _%spath128355%_)
                     '".ssi")))
               (_%srcs128363%_
                (if (__string-empty? _%ext128357%_)
                    (##map (lambda (_%ext128361%_)
                             (string-append _%spath128355%_ _%ext128361%_))
                           '(".ss" ".sld" ".scm"))
                    (cons _%spath128355%_ '()))))
          (let _%lp128366%_ ((_%rest128368%_ (load-path)))
            (let* ((_%rest128369128378%_ _%rest128368%_)
                   (_%E128372128382%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rest128369128378%_
                             '([dir . rest])
                             '([]))
                      '#!void)))
              (let ((_%K128374128453%_
                     (lambda (_%rest128393%_ _%dir128394%_)
                       (letrec ((_%resolve128396%_
                                 (lambda (_%ssi128409%_ _%srcs128410%_)
                                   (let ((_%compiled-path128412%_
                                          (path-expand
                                           _%ssi128409%_
                                           _%dir128394%_)))
                                     (if (##file-exists?
                                          _%compiled-path128412%_)
                                         (path-normalize
                                          _%compiled-path128412%_)
                                         (let _%lpr128414%_ ((_%rest-src128416%_
                                                              _%srcs128410%_))
                                           (let* ((_%rest-src128417128425%_
                                                   _%rest-src128416%_)
                                                  (_%else128419128433%_
                                                   (lambda ()
                                                     (_%lp128366%_
                                                      _%rest128393%_)))
                                                  (_%K128421128441%_
                                                   (lambda (_%rest-src128436%_
                                                            _%src128437%_)
                                                     (let ((_%src-path128439%_
                                                            (path-expand
                                                             _%src128437%_
                                                             _%dir128394%_)))
                                                       (if (##file-exists?
                                                            _%src-path128439%_)
                                                           (path-normalize
                                                            _%src-path128439%_)
                                                           (_%lpr128414%_
                                                            _%rest-src128436%_))))))
                                             (if (pair? _%rest-src128417128425%_)
                                                 (let ((_%hd128422128444%_
                                                        (##car _%rest-src128417128425%_))
                                                       (_%tl128423128446%_
                                                        (##cdr _%rest-src128417128425%_)))
                                                   (let* ((_%src128449%_
                                                           _%hd128422128444%_)
                                                          (_%rest-src128451%_
                                                           _%tl128423128446%_))
                                                     (_%K128421128441%_
                                                      _%rest-src128451%_
                                                      _%src128449%_)))
                                                 (_%else128419128433%_)))))))))
                         (let ((_%$e128398%_
                                (gx#core-library-package-path-prefix
                                 _%dir128394%_)))
                           (if _%$e128398%_
                               ((lambda (_%prefix128401%_)
                                  (if (string-prefix?
                                       _%prefix128401%_
                                       _%spath128355%_)
                                      (let ((_%ssi128405%_
                                             (substring
                                              _%ssi128359%_
                                              (string-length _%prefix128401%_)
                                              (##string-length _%ssi128359%_)))
                                            (_%srcs128406%_
                                             (##map (lambda (_%src128403%_)
                                                      (substring
                                                       _%src128403%_
                                                       (string-length
                                                        _%prefix128401%_)
                                                       (string-length
                                                        _%src128403%_)))
                                                    _%srcs128363%_)))
                                        (_%resolve128396%_
                                         _%ssi128405%_
                                         _%srcs128406%_))
                                      (_%lp128366%_ _%rest128393%_)))
                                _%$e128398%_)
                               (_%resolve128396%_
                                _%ssi128359%_
                                _%srcs128363%_))))))
                    (_%K128373128387%_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"cannot find library module"
                        _%libpath128351%_))))
                (let ((_%try-match128371128390%_
                       (lambda ()
                         (if (null? _%rest128369128378%_)
                             (_%K128373128387%_)
                             (_%E128372128382%_)))))
                  (if (pair? _%rest128369128378%_)
                      (let ((_%tl128376128458%_ (##cdr _%rest128369128378%_))
                            (_%hd128375128456%_ (##car _%rest128369128378%_)))
                        (let ((_%dir128461%_ _%hd128375128456%_)
                              (_%rest128463%_ _%tl128376128458%_))
                          (_%K128374128453%_ _%rest128463%_ _%dir128461%_)))
                      (_%try-match128371128390%_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_%modpath128319%_)
        (letrec ((_%resolve128321%_
                  (lambda (_%path128342%_ _%base128343%_)
                    (let ((_%$e128345%_
                           (string-rindex__0 _%base128343%_ '#\/)))
                      (if _%$e128345%_
                          ((lambda (_%idx128348%_)
                             (gx#core-resolve-library-module-path
                              (##string->symbol
                               (string-append
                                '":"
                                (substring _%base128343%_ '0 _%idx128348%_)
                                '"/"
                                _%path128342%_))))
                           _%$e128345%_)
                          (gx#core-resolve-library-module-path
                           (##string->symbol
                            (string-append '":" _%path128342%_))))))))
          (let ((_%spath128323%_ (symbol->string (gx#stx-e _%modpath128319%_)))
                (_%mod128324%_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _%mod128324%_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"cannot resolve relative module path; not in module context"
                 _%modpath128319%_))
            (let ((_%mpath128326%_
                   (symbol->string
                    (##structure-ref
                     _%mod128324%_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _%lp128328%_ ((_%spath128330%_ _%spath128323%_)
                                 (_%mpath128331%_ _%mpath128326%_))
                (if (string-prefix? '"../" _%spath128330%_)
                    (let ((_%$e128334%_
                           (string-rindex__0 _%mpath128331%_ '#\/)))
                      (if _%$e128334%_
                          ((lambda (_%idx128337%_)
                             (_%lp128328%_
                              (substring
                               _%spath128330%_
                               '3
                               (string-length _%spath128330%_))
                              (substring _%mpath128331%_ '0 _%idx128337%_)))
                           _%$e128334%_)
                          (gx#raise-syntax-error
                           '#f
                           '"cannot resolve relative module path; illegal traversal"
                           _%modpath128319%_)))
                    (if (string-prefix? '"./" _%spath128330%_)
                        (_%lp128328%_
                         (substring
                          _%spath128330%_
                          '2
                          (string-length _%spath128330%_))
                         _%mpath128331%_)
                        (_%resolve128321%_
                         _%spath128330%_
                         _%mpath128331%_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_%dir128311%_)
        (let ((_%$e128313%_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _%dir128311%_))))
          (if _%$e128313%_
              ((lambda (_%pkg128316%_)
                 (##string-append (symbol->string _%pkg128316%_) '"/"))
               _%$e128313%_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_%dir128281%_ _%exists?128282%_)
        (let ((_%$e128284%_ (__hash-get gx#__module-pkg-cache _%dir128281%_)))
          (if _%$e128284%_
              _%$e128284%_
              (let* ((_%gerbil.pkg128288%_
                      (path-expand '"gerbil.pkg" _%dir128281%_))
                     (_%plist128298%_
                      (if (or _%exists?128282%_
                              (##file-exists? _%gerbil.pkg128288%_))
                          (let ((_%e128293%_
                                 (gx#call-with-input-source-file
                                  _%gerbil.pkg128288%_
                                  read)))
                            (if (eof-object? _%e128293%_)
                                '()
                                (if (list? _%e128293%_)
                                    _%e128293%_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _%gerbil.pkg128288%_
                                     _%e128293%_))))
                          '())))
                (__hash-put!
                 gx#__module-pkg-cache
                 _%dir128281%_
                 _%plist128298%_)
                _%plist128298%_)))))
    (define gx#core-library-package-plist__0
      (lambda (_%dir128304%_)
        (let ((_%exists?128306%_ '#f))
          (gx#core-library-package-plist__% _%dir128304%_ _%exists?128306%_))))
    (define gx#core-library-package-plist
      (lambda _g130118_
        (let ((_g130117_ (##length _g130118_)))
          (cond ((##fx= _g130117_ 1)
                 (apply gx#core-library-package-plist__0 _g130118_))
                ((##fx= _g130117_ 2)
                 (apply gx#core-library-package-plist__% _g130118_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g130118_))))))
    (define gx#core-library-module-path?
      (lambda (_%stx128278%_)
        (gx#core-special-module-path? _%stx128278%_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_%stx128276%_)
        (gx#core-special-module-path? _%stx128276%_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_%stx128271%_ _%char128272%_)
        (if (gx#identifier? _%stx128271%_)
            (if (interned-symbol? (gx#stx-e _%stx128271%_))
                (let ((_%str128274%_
                       (symbol->string (gx#stx-e _%stx128271%_))))
                  (if (##fx> (##string-length _%str128274%_) '1)
                      (eq? (string-ref _%str128274%_ '0) _%char128272%_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_%stx128265%_)
        (gx#core-bound-identifier?__%
         _%stx128265%_
         (lambda (_%g128266128268%_)
           (gx#expander-binding?__% _%g128266128268%_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_%stx128259%_)
        (gx#core-bound-identifier?__%
         _%stx128259%_
         (lambda (_%g128260128262%_)
           (gx#expander-binding?__% _%g128260128262%_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_%stx128246%_)
        (letrec ((_%module-prelude?128248%_
                  (lambda (_%e128254%_)
                    (let ((_%$e128256%_
                           (##structure-instance-of?
                            _%e128254%_
                            'gx#module-context::t)))
                      (if _%$e128256%_
                          _%$e128256%_
                          (##structure-instance-of?
                           _%e128254%_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _%stx128246%_
           (lambda (_%g128249128251%_)
             (gx#expander-binding?__%
              _%g128249128251%_
              _%module-prelude?128248%_))))))
    (define gx#core-bind-import!__%
      (lambda (_%in128176%_ _%ctx128177%_ _%force-weak?128178%_)
        (let* ((_%in128179128188%_ _%in128176%_)
               (_%E128181128192%_
                (lambda ()
                  (error '"No clause matching"
                         _%in128179128188%_
                         '((module-import source key phi weak?)))
                  '#!void))
               (_%K128182128205%_
                (lambda (_%weak?128195%_
                         _%phi128196%_
                         _%key128197%_
                         _%source128198%_)
                  (gx#core-bind!__%
                   _%key128197%_
                   (let ((_%e128200%_
                          (gx#core-resolve-module-export _%source128198%_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref _%e128200%_ '1 '#f '#f)
                      _%key128197%_
                      _%phi128196%_
                      _%e128200%_
                      (##unchecked-structure-ref _%source128198%_ '1 '#f '#f)
                      (let ((_%$e128202%_ _%force-weak?128178%_))
                        (if _%$e128202%_ _%$e128202%_ _%weak?128195%_))))
                   gx#core-context-rebind?
                   _%phi128196%_
                   _%ctx128177%_))))
          (if (##structure-direct-instance-of?
               _%in128179128188%_
               'gx#module-import::t)
              (let* ((_%e128183128208%_
                      (##unchecked-structure-ref
                       _%in128179128188%_
                       '1
                       '#f
                       '#f))
                     (_%source128211%_ _%e128183128208%_)
                     (_%e128184128213%_
                      (##unchecked-structure-ref
                       _%in128179128188%_
                       '2
                       '#f
                       '#f))
                     (_%key128216%_ _%e128184128213%_)
                     (_%e128185128218%_
                      (##unchecked-structure-ref
                       _%in128179128188%_
                       '3
                       '#f
                       '#f))
                     (_%phi128221%_ _%e128185128218%_)
                     (_%e128186128223%_
                      (##unchecked-structure-ref
                       _%in128179128188%_
                       '4
                       '#f
                       '#f))
                     (_%weak?128226%_ _%e128186128223%_))
                (_%K128182128205%_
                 _%weak?128226%_
                 _%phi128221%_
                 _%key128216%_
                 _%source128211%_))
              (_%E128181128192%_)))))
    (define gx#core-bind-import!__0
      (lambda (_%in128231%_)
        (let* ((_%ctx128233%_ (gx#current-expander-context))
               (_%force-weak?128235%_ '#f))
          (gx#core-bind-import!__%
           _%in128231%_
           _%ctx128233%_
           _%force-weak?128235%_))))
    (define gx#core-bind-import!__1
      (lambda (_%in128237%_ _%ctx128238%_)
        (let ((_%force-weak?128240%_ '#f))
          (gx#core-bind-import!__%
           _%in128237%_
           _%ctx128238%_
           _%force-weak?128240%_))))
    (define gx#core-bind-import!
      (lambda _g130120_
        (let ((_g130119_ (##length _g130120_)))
          (cond ((##fx= _g130119_ 1) (apply gx#core-bind-import!__0 _g130120_))
                ((##fx= _g130119_ 2) (apply gx#core-bind-import!__1 _g130120_))
                ((##fx= _g130119_ 3) (apply gx#core-bind-import!__% _g130120_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g130120_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_%in128162%_ _%ctx128163%_)
        (gx#core-bind-import!__% _%in128162%_ _%ctx128163%_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_%in128168%_)
        (let ((_%ctx128170%_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _%in128168%_ _%ctx128170%_))))
    (define gx#core-bind-weak-import!
      (lambda _g130122_
        (let ((_g130121_ (##length _g130122_)))
          (cond ((##fx= _g130121_ 1)
                 (apply gx#core-bind-weak-import!__0 _g130122_))
                ((##fx= _g130121_ 2)
                 (apply gx#core-bind-weak-import!__% _g130122_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g130122_))))))
    (define gx#core-resolve-module-export
      (lambda (_%out128053%_)
        (letrec ((_%subst128055%_
                  (lambda (_%key128101%_)
                    (let* ((_%key128102128110%_ _%key128101%_)
                           (_%else128104128118%_ (lambda () _%key128101%_))
                           (_%K128106128149%_
                            (lambda (_%mark128121%_ _%id128122%_)
                              (let* ((_%mark128123128129%_ _%mark128121%_)
                                     (_%E128125128133%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark128123128129%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K128126128141%_
                                      (lambda (_%subst128136%_)
                                        (let ((_%$e128138%_
                                               (if _%subst128136%_
                                                   (hash-get
                                                    _%subst128136%_
                                                    _%id128122%_)
                                                   '#f)))
                                          (if _%$e128138%_
                                              _%$e128138%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _%key128101%_))))))
                                (if (##structure-instance-of?
                                     _%mark128123128129%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e128127128144%_
                                            (##unchecked-structure-ref
                                             _%mark128123128129%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst128147%_ _%e128127128144%_))
                                      (_%K128126128141%_ _%subst128147%_))
                                    (_%E128125128133%_))))))
                      (if (pair? _%key128102128110%_)
                          (let ((_%hd128107128152%_
                                 (##car _%key128102128110%_))
                                (_%tl128108128154%_
                                 (##cdr _%key128102128110%_)))
                            (let* ((_%id128157%_ _%hd128107128152%_)
                                   (_%mark128159%_ _%tl128108128154%_))
                              (_%K128106128149%_ _%mark128159%_ _%id128157%_)))
                          (_%else128104128118%_))))))
          (let* ((_%out128056128066%_ _%out128053%_)
                 (_%E128058128070%_
                  (lambda ()
                    (error '"No clause matching"
                           _%out128056128066%_
                           '((module-export ctx key phi _ _)))
                    '#!void))
                 (_%K128059128077%_
                  (lambda (_%phi128073%_ _%key128074%_ _%ctx128075%_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _%ctx128075%_ _%phi128073%_)
                     (_%subst128055%_ _%key128074%_)))))
            (if (##structure-direct-instance-of?
                 _%out128056128066%_
                 'gx#module-export::t)
                (let* ((_%e128060128080%_
                        (##unchecked-structure-ref
                         _%out128056128066%_
                         '1
                         '#f
                         '#f))
                       (_%ctx128083%_ _%e128060128080%_)
                       (_%e128061128085%_
                        (##unchecked-structure-ref
                         _%out128056128066%_
                         '2
                         '#f
                         '#f))
                       (_%key128088%_ _%e128061128085%_)
                       (_%e128062128090%_
                        (##unchecked-structure-ref
                         _%out128056128066%_
                         '3
                         '#f
                         '#f))
                       (_%phi128093%_ _%e128062128090%_)
                       (_%e128063128095%_
                        (##unchecked-structure-ref
                         _%out128056128066%_
                         '4
                         '#f
                         '#f))
                       (_%e128064128098%_
                        (##unchecked-structure-ref
                         _%out128056128066%_
                         '5
                         '#f
                         '#f)))
                  (_%K128059128077%_
                   _%phi128093%_
                   _%key128088%_
                   _%ctx128083%_))
                (_%E128058128070%_))))))
    (define gx#core-module-export->import__%
      (lambda (_%out127978%_ _%rename127979%_ _%dphi127980%_)
        (let* ((_%out127981127991%_ _%out127978%_)
               (_%E127983127995%_
                (lambda ()
                  (error '"No clause matching"
                         _%out127981127991%_
                         '((module-export ctx key phi name weak?)))
                  '#!void))
               (_%K127984128007%_
                (lambda (_%weak?127998%_
                         _%name127999%_
                         _%phi128000%_
                         _%key128001%_
                         _%ctx128002%_)
                  (##structure
                   gx#module-import::t
                   _%out127978%_
                   (let ((_%$e128004%_ _%rename127979%_))
                     (if _%$e128004%_ _%$e128004%_ _%name127999%_))
                   (fx+ _%phi128000%_ _%dphi127980%_)
                   _%weak?127998%_))))
          (if (##structure-direct-instance-of?
               _%out127981127991%_
               'gx#module-export::t)
              (let* ((_%e127985128010%_
                      (##unchecked-structure-ref
                       _%out127981127991%_
                       '1
                       '#f
                       '#f))
                     (_%ctx128013%_ _%e127985128010%_)
                     (_%e127986128015%_
                      (##unchecked-structure-ref
                       _%out127981127991%_
                       '2
                       '#f
                       '#f))
                     (_%key128018%_ _%e127986128015%_)
                     (_%e127987128020%_
                      (##unchecked-structure-ref
                       _%out127981127991%_
                       '3
                       '#f
                       '#f))
                     (_%phi128023%_ _%e127987128020%_)
                     (_%e127988128025%_
                      (##unchecked-structure-ref
                       _%out127981127991%_
                       '4
                       '#f
                       '#f))
                     (_%name128028%_ _%e127988128025%_)
                     (_%e127989128030%_
                      (##unchecked-structure-ref
                       _%out127981127991%_
                       '5
                       '#f
                       '#f))
                     (_%weak?128033%_ _%e127989128030%_))
                (_%K127984128007%_
                 _%weak?128033%_
                 _%name128028%_
                 _%phi128023%_
                 _%key128018%_
                 _%ctx128013%_))
              (_%E127983127995%_)))))
    (define gx#core-module-export->import__0
      (lambda (_%out128038%_)
        (let* ((_%rename128040%_ '#f) (_%dphi128042%_ '0))
          (gx#core-module-export->import__%
           _%out128038%_
           _%rename128040%_
           _%dphi128042%_))))
    (define gx#core-module-export->import__1
      (lambda (_%out128044%_ _%rename128045%_)
        (let ((_%dphi128047%_ '0))
          (gx#core-module-export->import__%
           _%out128044%_
           _%rename128045%_
           _%dphi128047%_))))
    (define gx#core-module-export->import
      (lambda _g130124_
        (let ((_g130123_ (##length _g130124_)))
          (cond ((##fx= _g130123_ 1)
                 (apply gx#core-module-export->import__0 _g130124_))
                ((##fx= _g130123_ 2)
                 (apply gx#core-module-export->import__1 _g130124_))
                ((##fx= _g130123_ 3)
                 (apply gx#core-module-export->import__% _g130124_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g130124_))))))
    (define gx#core-expand-module%
      (lambda (_%stx127877%_)
        (letrec ((_%make-context127879%_
                  (lambda (_%id127956%_)
                    (let* ((_%super127958%_ (gx#current-expander-context))
                           (_%bind-id127960%_ (gx#stx-e _%id127956%_))
                           (_%mod-id127962%_
                            (if (##structure-instance-of?
                                 _%super127958%_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##unchecked-structure-ref
                                  _%super127958%_
                                  '1
                                  '#f
                                  '#f)
                                 '"~"
                                 _%bind-id127960%_)
                                _%bind-id127960%_))
                           (_%ns127964%_ (symbol->string _%mod-id127962%_))
                           (_%path127974%_
                            (if (##structure-instance-of?
                                 _%super127958%_
                                 'gx#module-context::t)
                                (let ((_%path127966%_
                                       (##unchecked-structure-ref
                                        _%super127958%_
                                        '7
                                        '#f
                                        '#f)))
                                  (if (or (pair? _%path127966%_)
                                          (null? _%path127966%_))
                                      (cons _%bind-id127960%_ _%path127966%_)
                                      (if (not _%path127966%_)
                                          _%bind-id127960%_
                                          (cons _%bind-id127960%_
                                                (cons _%path127966%_ '())))))
                                _%bind-id127960%_))
                           (__obj130100
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
                       __obj130100
                       _%mod-id127962%_
                       _%super127958%_
                       _%ns127964%_
                       _%path127974%_)
                      __obj130100)))
                 (_%valid-module-id?127880%_
                  (lambda (_%id127931%_)
                    (let* ((_%str127933%_ (symbol->string _%id127931%_))
                           (_%len127935%_ (##string-length _%str127933%_)))
                      (if (##fx>= _%len127935%_ '1)
                          (let _%loop127938%_ ((_%index127940%_
                                                (##fx- (##string-length
                                                        _%str127933%_)
                                                       '1)))
                            (if (##fx>= _%index127940%_ '0)
                                (let ((_%c127942%_
                                       (string-ref
                                        _%str127933%_
                                        _%index127940%_)))
                                  (if (or (and (##char>=? _%c127942%_ '#\a)
                                               (##char<=? _%c127942%_ '#\z))
                                          (and (##char>=? _%c127942%_ '#\A)
                                               (##char<=? _%c127942%_ '#\Z))
                                          (and (##char>=? _%c127942%_ '#\0)
                                               (##char<=? _%c127942%_ '#\9))
                                          (##char=? _%c127942%_ '#\_)
                                          (##char=? _%c127942%_ '#\-))
                                      (_%loop127938%_
                                       (##fx- _%index127940%_ '1))
                                      '#f))
                                '#t))
                          '#f)))))
          (let* ((_%e127881127891%_ _%stx127877%_)
                 (_%E127883127895%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e127881127891%_)))
                 (_%E127882127927%_
                  (lambda ()
                    (if (gx#stx-pair? _%e127881127891%_)
                        (let ((_%e127884127899%_
                               (gx#syntax-e _%e127881127891%_)))
                          (let ((_%hd127885127902%_ (##car _%e127884127899%_))
                                (_%tl127886127904%_ (##cdr _%e127884127899%_)))
                            (if (gx#stx-pair? _%tl127886127904%_)
                                (let ((_%e127887127907%_
                                       (gx#syntax-e _%tl127886127904%_)))
                                  (let ((_%hd127888127910%_
                                         (##car _%e127887127907%_))
                                        (_%tl127889127912%_
                                         (##cdr _%e127887127907%_)))
                                    (let* ((_%id127915%_ _%hd127888127910%_)
                                           (_%body127917%_ _%tl127889127912%_))
                                      (if (and (gx#identifier? _%id127915%_)
                                               (gx#stx-list? _%body127917%_))
                                          (if (_%valid-module-id?127880%_
                                               (gx#stx-e
                                                (gx#datum->syntax__0 '#f 'id)))
                                              (let* ((_%ctx127919%_
                                                      (_%make-context127879%_
                                                       _%id127915%_))
                                                     (_%body127921%_
                                                      (gx#core-expand-module-begin
                                                       _%body127917%_
                                                       _%ctx127919%_))
                                                     (_%body127923%_
                                                      (gx#core-quote-syntax__1
                                                       (gx#core-cons
                                                        '%#begin
                                                        _%body127921%_)
                                                       (gx#stx-source
                                                        _%stx127877%_))))
                                                (##unchecked-structure-set!
                                                 _%ctx127919%_
                                                 (__make-promise
                                                  (lambda ()
                                                    (gx#eval-syntax*
                                                     _%body127923%_)))
                                                 '10
                                                 '#f
                                                 '#f)
                                                (##unchecked-structure-set!
                                                 _%ctx127919%_
                                                 _%body127923%_
                                                 '11
                                                 '#f
                                                 '#f)
                                                (gx#core-bind-syntax!__0
                                                 _%id127915%_
                                                 _%ctx127919%_)
                                                (gx#core-quote-syntax__1
                                                 (gx#core-list
                                                  '%#module
                                                  (gx#core-quote-syntax__0
                                                   _%id127915%_)
                                                  _%body127923%_)
                                                 (gx#stx-source
                                                  _%stx127877%_)))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"invalid module id; allowed characters are A-Z,a-z,0-9,_,-"
                                               _%stx127877%_
                                               (gx#datum->syntax__0 '#f 'id)))
                                          (_%E127883127895%_)))))
                                (_%E127883127895%_))))
                        (_%E127883127895%_)))))
            (_%E127882127927%_)))))
    (define gx#core-expand-module-begin
      (lambda (_%body127843%_ _%ctx127844%_)
        (__call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_%stx127847%_
                   (gx#core-expand-head (cons '%%begin-module _%body127843%_)))
                  (_%e127848127855%_ _%stx127847%_)
                  (_%E127850127859%_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _%stx127847%_)))
                  (_%E127849127873%_
                   (lambda ()
                     (if (gx#stx-pair? _%e127848127855%_)
                         (let ((_%e127851127863%_
                                (gx#syntax-e _%e127848127855%_)))
                           (let ((_%hd127852127866%_ (##car _%e127851127863%_))
                                 (_%tl127853127868%_
                                  (##cdr _%e127851127863%_)))
                             (if (and (gx#identifier? _%hd127852127866%_)
                                      (gx#core-identifier=?
                                       _%hd127852127866%_
                                       '%#begin-module))
                                 (let ((_%body127871%_ _%tl127853127868%_))
                                   (if (gx#sealed-syntax? _%stx127847%_)
                                       _%body127871%_
                                       (gx#core-expand-module-body
                                        _%body127871%_)))
                                 (_%E127850127859%_))))
                         (_%E127850127859%_)))))
             (_%E127849127873%_)))
         gx#current-expander-context
         _%ctx127844%_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_%body127639%_)
        (letrec ((_%expand-special127641%_
                  (lambda (_%hd127770%_ _%K127771%_ _%rest127772%_ _%r127773%_)
                    (let* ((_%e127774127791%_ _%hd127770%_)
                           (_%E127786127795%_
                            (lambda ()
                              (_%K127771%_
                               _%rest127772%_
                               (cons (gx#core-expand-top _%hd127770%_)
                                     _%r127773%_))))
                           (_%E127776127807%_
                            (lambda ()
                              (if (gx#stx-pair? _%e127774127791%_)
                                  (let ((_%e127787127799%_
                                         (gx#syntax-e _%e127774127791%_)))
                                    (let ((_%hd127788127802%_
                                           (##car _%e127787127799%_))
                                          (_%tl127789127804%_
                                           (##cdr _%e127787127799%_)))
                                      (if (and (gx#identifier?
                                                _%hd127788127802%_)
                                               (gx#core-identifier=?
                                                _%hd127788127802%_
                                                '%#export))
                                          (_%K127771%_
                                           _%rest127772%_
                                           (cons _%hd127770%_ _%r127773%_))
                                          (_%E127786127795%_))))
                                  (_%E127786127795%_))))
                           (_%E127775127839%_
                            (lambda ()
                              (if (gx#stx-pair? _%e127774127791%_)
                                  (let ((_%e127777127811%_
                                         (gx#syntax-e _%e127774127791%_)))
                                    (let ((_%hd127778127814%_
                                           (##car _%e127777127811%_))
                                          (_%tl127779127816%_
                                           (##cdr _%e127777127811%_)))
                                      (if (and (gx#identifier?
                                                _%hd127778127814%_)
                                               (gx#core-identifier=?
                                                _%hd127778127814%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl127779127816%_)
                                              (let ((_%e127780127819%_
                                                     (gx#syntax-e
                                                      _%tl127779127816%_)))
                                                (let ((_%hd127781127822%_
                                                       (##car _%e127780127819%_))
                                                      (_%tl127782127824%_
                                                       (##cdr _%e127780127819%_)))
                                                  (let ((_%hd-bind127827%_
                                                         _%hd127781127822%_))
                                                    (if (gx#stx-pair?
                                                         _%tl127782127824%_)
                                                        (let ((_%e127783127829%_
                                                               (gx#syntax-e
                                                                _%tl127782127824%_)))
                                                          (let ((_%hd127784127832%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e127783127829%_))
                        (_%tl127785127834%_ (##cdr _%e127783127829%_)))
                    (let ((_%expr127837%_ _%hd127784127832%_))
                      (if (gx#stx-null? _%tl127785127834%_)
                          (if (gx#core-bind-values? _%hd-bind127827%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind127827%_)
                                (_%K127771%_
                                 _%rest127772%_
                                 (cons _%hd127770%_ _%r127773%_)))
                              (_%E127776127807%_))
                          (_%E127776127807%_)))))
                (_%E127776127807%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E127776127807%_))
                                          (_%E127776127807%_))))
                                  (_%E127776127807%_)))))
                      (_%E127775127839%_))))
                 (_%expand-body127642%_
                  (lambda (_%rbody127644%_)
                    (let _%lp127646%_ ((_%rest127648%_ _%rbody127644%_)
                                       (_%body127649%_ '()))
                      (let* ((_%rest127650127658%_ _%rest127648%_)
                             (_%else127652127666%_ (lambda () _%body127649%_))
                             (_%K127654127758%_
                              (lambda (_%rest127669%_ _%hd127670%_)
                                (let* ((_%e127671127692%_ _%hd127670%_)
                                       (_%E127687127696%_
                                        (lambda ()
                                          (_%lp127646%_
                                           _%rest127669%_
                                           (cons (gx#core-expand-expression
                                                  _%hd127670%_)
                                                 _%body127649%_))))
                                       (_%E127683127710%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e127671127692%_)
                                              (let ((_%e127688127700%_
                                                     (gx#syntax-e
                                                      _%e127671127692%_)))
                                                (let ((_%hd127689127703%_
                                                       (##car _%e127688127700%_))
                                                      (_%tl127690127705%_
                                                       (##cdr _%e127688127700%_)))
                                                  (let ((_%form127708%_
                                                         _%hd127689127703%_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _%form127708%_
                                                         gx#special-form-binding?)
                                                        (_%lp127646%_
                                                         _%rest127669%_
                                                         (cons _%hd127670%_
                                                               _%body127649%_))
                                                        (_%E127687127696%_)))))
                                              (_%E127687127696%_))))
                                       (_%E127673127722%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e127671127692%_)
                                              (let ((_%e127684127714%_
                                                     (gx#syntax-e
                                                      _%e127671127692%_)))
                                                (let ((_%hd127685127717%_
                                                       (##car _%e127684127714%_))
                                                      (_%tl127686127719%_
                                                       (##cdr _%e127684127714%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd127685127717%_)
                                                           (gx#core-identifier=?
                                                            _%hd127685127717%_
                                                            '%#export))
                                                      (_%lp127646%_
                                                       _%rest127669%_
                                                       (cons (gx#core-expand-export%__0
                                                              _%hd127670%_)
                                                             _%body127649%_))
                                                      (_%E127683127710%_))))
                                              (_%E127683127710%_))))
                                       (_%E127672127754%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e127671127692%_)
                                              (let ((_%e127674127726%_
                                                     (gx#syntax-e
                                                      _%e127671127692%_)))
                                                (let ((_%hd127675127729%_
                                                       (##car _%e127674127726%_))
                                                      (_%tl127676127731%_
                                                       (##cdr _%e127674127726%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd127675127729%_)
                                                           (gx#core-identifier=?
                                                            _%hd127675127729%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl127676127731%_)
                                                          (let ((_%e127677127734%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl127676127731%_)))
                    (let ((_%hd127678127737%_ (##car _%e127677127734%_))
                          (_%tl127679127739%_ (##cdr _%e127677127734%_)))
                      (let ((_%hd-bind127742%_ _%hd127678127737%_))
                        (if (gx#stx-pair? _%tl127679127739%_)
                            (let ((_%e127680127744%_
                                   (gx#syntax-e _%tl127679127739%_)))
                              (let ((_%hd127681127747%_
                                     (##car _%e127680127744%_))
                                    (_%tl127682127749%_
                                     (##cdr _%e127680127744%_)))
                                (let ((_%expr127752%_ _%hd127681127747%_))
                                  (if (gx#stx-null? _%tl127682127749%_)
                                      (_%lp127646%_
                                       _%rest127669%_
                                       (cons (gx#core-quote-syntax__1
                                              (gx#core-list
                                               '%#define-values
                                               (gx#core-quote-bind-values
                                                _%hd-bind127742%_)
                                               (gx#core-expand-expression
                                                _%expr127752%_))
                                              (gx#stx-source _%hd127670%_))
                                             _%body127649%_))
                                      (_%E127673127722%_)))))
                            (_%E127673127722%_)))))
                  (_%E127673127722%_))
              (_%E127673127722%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E127673127722%_)))))
                                  (_%E127672127754%_)))))
                        (if (pair? _%rest127650127658%_)
                            (let ((_%hd127655127761%_
                                   (##car _%rest127650127658%_))
                                  (_%tl127656127763%_
                                   (##cdr _%rest127650127658%_)))
                              (let* ((_%hd127766%_ _%hd127655127761%_)
                                     (_%rest127768%_ _%tl127656127763%_))
                                (_%K127654127758%_
                                 _%rest127768%_
                                 _%hd127766%_)))
                            (_%else127652127666%_)))))))
          (_%expand-body127642%_
           (gx#core-expand-block__%
            (cons '%#begin-module _%body127639%_)
            _%expand-special127641%_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_%stx127480%_
               _%expanded?127481%_
               _%method127482%_
               _%current-phi127483%_
               _%expand1127484%_)
        (letrec ((_%K127486%_
                  (lambda (_%rest127606%_ _%r127607%_)
                    (let* ((_%e127608127615%_ _%rest127606%_)
                           (_%E127610127619%_ (lambda () _%r127607%_))
                           (_%E127609127635%_
                            (lambda ()
                              (if (gx#stx-pair? _%e127608127615%_)
                                  (let ((_%e127611127623%_
                                         (gx#syntax-e _%e127608127615%_)))
                                    (let ((_%hd127612127626%_
                                           (##car _%e127611127623%_))
                                          (_%tl127613127628%_
                                           (##cdr _%e127611127623%_)))
                                      (let* ((_%hd127631%_ _%hd127612127626%_)
                                             (_%rest127633%_
                                              _%tl127613127628%_))
                                        (_%step127487%_
                                         _%hd127631%_
                                         _%rest127633%_
                                         _%r127607%_))))
                                  (_%E127610127619%_)))))
                      (_%E127609127635%_))))
                 (_%step127487%_
                  (lambda (_%hd127520%_ _%rest127521%_ _%r127522%_)
                    (let* ((_%e127523127541%_ _%hd127520%_)
                           (_%E127536127545%_
                            (lambda ()
                              (if (_%expanded?127481%_ (gx#stx-e _%hd127520%_))
                                  (_%K127486%_
                                   _%rest127521%_
                                   (cons (gx#stx-e _%hd127520%_) _%r127522%_))
                                  (_%expand1127484%_
                                   _%hd127520%_
                                   _%K127486%_
                                   _%rest127521%_
                                   _%r127522%_))))
                           (_%E127532127561%_
                            (lambda ()
                              (if (gx#stx-pair? _%e127523127541%_)
                                  (let ((_%e127537127549%_
                                         (gx#syntax-e _%e127523127541%_)))
                                    (let ((_%hd127538127552%_
                                           (##car _%e127537127549%_))
                                          (_%tl127539127554%_
                                           (##cdr _%e127537127549%_)))
                                      (let* ((_%macro127557%_
                                              _%hd127538127552%_)
                                             (_%body127559%_
                                              _%tl127539127554%_))
                                        (if (gx#core-bound-identifier?__%
                                             _%macro127557%_
                                             gx#syntax-binding?)
                                            (_%K127486%_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _%macro127557%_)
                                                    _%hd127520%_
                                                    _%method127482%_)
                                                   _%rest127521%_)
                                             _%r127522%_)
                                            (_%E127536127545%_)))))
                                  (_%E127536127545%_))))
                           (_%E127525127575%_
                            (lambda ()
                              (if (gx#stx-pair? _%e127523127541%_)
                                  (let ((_%e127533127565%_
                                         (gx#syntax-e _%e127523127541%_)))
                                    (let ((_%hd127534127568%_
                                           (##car _%e127533127565%_))
                                          (_%tl127535127570%_
                                           (##cdr _%e127533127565%_)))
                                      (if (eq? (gx#stx-e _%hd127534127568%_)
                                               'begin:)
                                          (let ((_%body127573%_
                                                 _%tl127535127570%_))
                                            (_%K127486%_
                                             (gx#stx-foldr
                                              cons
                                              _%rest127521%_
                                              _%body127573%_)
                                             _%r127522%_))
                                          (_%E127532127561%_))))
                                  (_%E127532127561%_))))
                           (_%E127524127602%_
                            (lambda ()
                              (if (gx#stx-pair? _%e127523127541%_)
                                  (let ((_%e127526127579%_
                                         (gx#syntax-e _%e127523127541%_)))
                                    (let ((_%hd127527127582%_
                                           (##car _%e127526127579%_))
                                          (_%tl127528127584%_
                                           (##cdr _%e127526127579%_)))
                                      (if (eq? (gx#stx-e _%hd127527127582%_)
                                               'phi:)
                                          (if (gx#stx-pair? _%tl127528127584%_)
                                              (let ((_%e127529127587%_
                                                     (gx#syntax-e
                                                      _%tl127528127584%_)))
                                                (let ((_%hd127530127590%_
                                                       (##car _%e127529127587%_))
                                                      (_%tl127531127592%_
                                                       (##cdr _%e127529127587%_)))
                                                  (let* ((_%dphi127595%_
                                                          _%hd127530127590%_)
                                                         (_%body127597%_
                                                          _%tl127531127592%_))
                                                    (if (gx#stx-fixnum?
                                                         _%dphi127595%_)
                                                        (let ((_%rbody127600%_
                                                               (__call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%K127486%_ _%body127597%_ '()))
                        _%current-phi127483%_
                        (fx+ (gx#stx-e _%dphi127595%_)
                             (_%current-phi127483%_)))))
                  (_%K127486%_
                   _%rest127521%_
                   (__foldr1 cons _%r127522%_ _%rbody127600%_)))
                (_%E127525127575%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E127525127575%_))
                                          (_%E127525127575%_))))
                                  (_%E127525127575%_)))))
                      (_%E127524127602%_)))))
          (let* ((_%e127488127495%_ _%stx127480%_)
                 (_%E127490127499%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e127488127495%_)))
                 (_%E127489127516%_
                  (lambda ()
                    (if (gx#stx-pair? _%e127488127495%_)
                        (let ((_%e127491127503%_
                               (gx#syntax-e _%e127488127495%_)))
                          (let ((_%hd127492127506%_ (##car _%e127491127503%_))
                                (_%tl127493127508%_ (##cdr _%e127491127503%_)))
                            (let ((_%body127511%_ _%tl127493127508%_))
                              (if (_%current-phi127483%_)
                                  (_%K127486%_ _%body127511%_ '())
                                  (__call-with-parameters
                                   (lambda () (_%K127486%_ _%body127511%_ '()))
                                   _%current-phi127483%_
                                   (gx#current-expander-phi))))))
                        (_%E127490127499%_)))))
            (_%E127489127516%_)))))
    (define gx#core-expand-import%__%
      (lambda (_%stx127134%_ _%internal-expand?127135%_)
        (letrec ((_%expand1127137%_
                  (lambda (_%hd127452%_ _%K127453%_ _%rest127454%_ _%r127455%_)
                    (if (gx#core-bound-module? _%hd127452%_)
                        (_%import1127138%_
                         (gx#syntax-local-e__0 _%hd127452%_)
                         _%K127453%_
                         _%rest127454%_
                         _%r127455%_)
                        (if (gx#core-library-module-path? _%hd127452%_)
                            (_%import1127138%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%hd127452%_))
                             _%K127453%_
                             _%rest127454%_
                             _%r127455%_)
                            (if (gx#core-library-relative-module-path?
                                 _%hd127452%_)
                                (_%import1127138%_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _%hd127452%_))
                                 _%K127453%_
                                 _%rest127454%_
                                 _%r127455%_)
                                (let ((_%e127461%_ (gx#stx-e _%hd127452%_)))
                                  (if (pair? _%e127461%_)
                                      (let ((_%$e127464%_
                                             (gx#stx-e (##car _%e127461%_))))
                                        (if (eq? 'spec: _%$e127464%_)
                                            (_%import-spec127141%_
                                             _%hd127452%_
                                             _%K127453%_
                                             _%rest127454%_
                                             _%r127455%_)
                                            (if (eq? 'in: _%$e127464%_)
                                                (_%import-submodule127139%_
                                                 _%hd127452%_
                                                 _%K127453%_
                                                 _%rest127454%_
                                                 _%r127455%_)
                                                (if (eq? 'runtime:
                                                         _%$e127464%_)
                                                    (_%import-runtime127140%_
                                                     _%hd127452%_
                                                     _%K127453%_
                                                     _%rest127454%_
                                                     _%r127455%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _%stx127134%_
                                                     _%hd127452%_)))))
                                      (if (string? _%e127461%_)
                                          (_%import1127138%_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _%hd127452%_
                                             (gx#stx-source _%stx127134%_)))
                                           _%K127453%_
                                           _%rest127454%_
                                           _%r127455%_)
                                          (if (##structure-instance-of?
                                               _%e127461%_
                                               'gx#module-context::t)
                                              (_%K127453%_
                                               _%rest127454%_
                                               (cons _%e127461%_ _%r127455%_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _%stx127134%_
                                               _%hd127452%_))))))))))
                 (_%import1127138%_
                  (lambda (_%ctx127441%_
                           _%K127442%_
                           _%rest127443%_
                           _%r127444%_)
                    (let ((_%dphi127446%_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_%K127442%_
                       _%rest127443%_
                       (cons (##structure
                              gx#import-set::t
                              _%ctx127441%_
                              _%dphi127446%_
                              (map (lambda (_%g127447127449%_)
                                     (gx#core-module-export->import__%
                                      _%g127447127449%_
                                      '#f
                                      _%dphi127446%_))
                                   (##unchecked-structure-ref
                                    _%ctx127441%_
                                    '9
                                    '#f
                                    '#f)))
                             _%r127444%_)))))
                 (_%import-submodule127139%_
                  (lambda (_%hd127408%_ _%K127409%_ _%rest127410%_ _%r127411%_)
                    (let* ((_%e127412127419%_ _%hd127408%_)
                           (_%E127414127423%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e127412127419%_)))
                           (_%E127413127437%_
                            (lambda ()
                              (if (gx#stx-pair? _%e127412127419%_)
                                  (let ((_%e127415127427%_
                                         (gx#syntax-e _%e127412127419%_)))
                                    (let ((_%hd127416127430%_
                                           (##car _%e127415127427%_))
                                          (_%tl127417127432%_
                                           (##cdr _%e127415127427%_)))
                                      (let ((_%spath127435%_
                                             _%tl127417127432%_))
                                        (_%import1127138%_
                                         (_%import-spec-source127142%_
                                          _%spath127435%_)
                                         _%K127409%_
                                         _%rest127410%_
                                         _%r127411%_))))
                                  (_%E127414127423%_)))))
                      (_%E127413127437%_))))
                 (_%import-runtime127140%_
                  (lambda (_%hd127375%_ _%K127376%_ _%rest127377%_ _%r127378%_)
                    (let* ((_%e127379127386%_ _%hd127375%_)
                           (_%E127381127390%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e127379127386%_)))
                           (_%E127380127404%_
                            (lambda ()
                              (if (gx#stx-pair? _%e127379127386%_)
                                  (let ((_%e127382127394%_
                                         (gx#syntax-e _%e127379127386%_)))
                                    (let ((_%hd127383127397%_
                                           (##car _%e127382127394%_))
                                          (_%tl127384127399%_
                                           (##cdr _%e127382127394%_)))
                                      (let ((_%spath127402%_
                                             _%tl127384127399%_))
                                        (_%K127376%_
                                         _%rest127377%_
                                         (cons (_%import-spec-source127142%_
                                                _%spath127402%_)
                                               _%r127378%_)))))
                                  (_%E127381127390%_)))))
                      (_%E127380127404%_))))
                 (_%import-spec127141%_
                  (lambda (_%hd127213%_ _%K127214%_ _%rest127215%_ _%r127216%_)
                    (let* ((_%e127217127234%_ _%hd127213%_)
                           (_%E127226127238%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e127217127234%_)))
                           (_%E127219127349%_
                            (lambda ()
                              (if (gx#stx-pair? _%e127217127234%_)
                                  (let ((_%e127227127242%_
                                         (gx#syntax-e _%e127217127234%_)))
                                    (let ((_%hd127228127245%_
                                           (##car _%e127227127242%_))
                                          (_%tl127229127247%_
                                           (##cdr _%e127227127242%_)))
                                      (if (gx#stx-pair? _%tl127229127247%_)
                                          (let ((_%e127230127250%_
                                                 (gx#syntax-e
                                                  _%tl127229127247%_)))
                                            (let ((_%hd127231127253%_
                                                   (##car _%e127230127250%_))
                                                  (_%tl127232127255%_
                                                   (##cdr _%e127230127250%_)))
                                              (let* ((_%path127258%_
                                                      _%hd127231127253%_)
                                                     (_%specs127260%_
                                                      _%tl127232127255%_))
                                                (let ((_%src-ctx127262%_
                                                       (_%import-spec-source127142%_
                                                        _%path127258%_))
                                                      (_%exports127263%_
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
                                                      (_%specs127264%_
                                                       (gx#syntax->list
                                                        _%specs127260%_)))
                                                  (for-each
                                                   (lambda (_%out127266%_)
                                                     (__hash-put!
                                                      _%exports127263%_
                                                      (cons (##unchecked-structure-ref
                                                             _%out127266%_
                                                             '3
                                                             '#f
                                                             '#f)
                                                            (##unchecked-structure-ref
                                                             _%out127266%_
                                                             '4
                                                             '#f
                                                             '#f))
                                                      _%out127266%_))
                                                   (##unchecked-structure-ref
                                                    _%src-ctx127262%_
                                                    '9
                                                    '#f
                                                    '#f))
                                                  (_%K127214%_
                                                   _%rest127215%_
                                                   (__foldl1
                                                    (lambda (_%spec127268%_
                                                             _%r127269%_)
                                                      (let* ((_%e127270127286%_
                                                              _%spec127268%_)
                                                             (_%E127272127290%_
                                                              (lambda ()
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid syntax-case clause"
                         _%e127270127286%_)))
                     (_%E127271127345%_
                      (lambda ()
                        (if (gx#stx-pair? _%e127270127286%_)
                            (let ((_%e127273127294%_
                                   (gx#syntax-e _%e127270127286%_)))
                              (let ((_%hd127274127297%_
                                     (##car _%e127273127294%_))
                                    (_%tl127275127299%_
                                     (##cdr _%e127273127294%_)))
                                (let ((_%phi127302%_ _%hd127274127297%_))
                                  (if (gx#stx-pair? _%tl127275127299%_)
                                      (let ((_%e127276127304%_
                                             (gx#syntax-e _%tl127275127299%_)))
                                        (let ((_%hd127277127307%_
                                               (##car _%e127276127304%_))
                                              (_%tl127278127309%_
                                               (##cdr _%e127276127304%_)))
                                          (let ((_%name127312%_
                                                 _%hd127277127307%_))
                                            (if (gx#stx-pair?
                                                 _%tl127278127309%_)
                                                (let ((_%e127279127314%_
                                                       (gx#syntax-e
                                                        _%tl127278127309%_)))
                                                  (let ((_%hd127280127317%_
                                                         (##car _%e127279127314%_))
                                                        (_%tl127281127319%_
                                                         (##cdr _%e127279127314%_)))
                                                    (let ((_%src-phi127322%_
                                                           _%hd127280127317%_))
                                                      (if (gx#stx-pair?
                                                           _%tl127281127319%_)
                                                          (let ((_%e127282127324%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl127281127319%_)))
                    (let ((_%hd127283127327%_ (##car _%e127282127324%_))
                          (_%tl127284127329%_ (##cdr _%e127282127324%_)))
                      (let ((_%src-name127332%_ _%hd127283127327%_))
                        (if (gx#stx-null? _%tl127284127329%_)
                            (if (and (gx#stx-fixnum? _%src-phi127322%_)
                                     (gx#identifier? _%src-name127332%_)
                                     (gx#stx-fixnum? _%phi127302%_)
                                     (gx#identifier? _%name127312%_))
                                (let ((_%src-phi127334%_
                                       (gx#stx-e _%src-phi127322%_))
                                      (_%src-name127335%_
                                       (gx#core-identifier-key
                                        _%src-name127332%_))
                                      (_%phi127336%_ (gx#stx-e _%phi127302%_))
                                      (_%name127337%_
                                       (gx#core-identifier-key
                                        _%name127312%_)))
                                  (let ((_%$e127339%_
                                         (__hash-get
                                          _%exports127263%_
                                          (cons _%src-phi127334%_
                                                _%src-name127335%_))))
                                    (if _%$e127339%_
                                        ((lambda (_%out127342%_)
                                           (cons (gx#core-module-export->import__%
                                                  _%out127342%_
                                                  _%name127337%_
                                                  (fx- _%phi127336%_
                                                       _%src-phi127334%_))
                                                 _%r127269%_))
                                         _%$e127339%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; no matching export"
                                         _%stx127134%_
                                         _%hd127213%_))))
                                (_%E127272127290%_))
                            (_%E127272127290%_)))))
                  (_%E127272127290%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E127272127290%_)))))
                                      (_%E127272127290%_)))))
                            (_%E127272127290%_)))))
                (_%E127271127345%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r127216%_
                                                    _%specs127264%_))))))
                                          (_%E127226127238%_))))
                                  (_%E127226127238%_))))
                           (_%E127218127371%_
                            (lambda ()
                              (if (gx#stx-pair? _%e127217127234%_)
                                  (let ((_%e127220127353%_
                                         (gx#syntax-e _%e127217127234%_)))
                                    (let ((_%hd127221127356%_
                                           (##car _%e127220127353%_))
                                          (_%tl127222127358%_
                                           (##cdr _%e127220127353%_)))
                                      (if (gx#stx-pair? _%tl127222127358%_)
                                          (let ((_%e127223127361%_
                                                 (gx#syntax-e
                                                  _%tl127222127358%_)))
                                            (let ((_%hd127224127364%_
                                                   (##car _%e127223127361%_))
                                                  (_%tl127225127366%_
                                                   (##cdr _%e127223127361%_)))
                                              (let ((_%path127369%_
                                                     _%hd127224127364%_))
                                                (if (gx#stx-null?
                                                     _%tl127225127366%_)
                                                    (_%K127214%_
                                                     _%rest127215%_
                                                     (cons (_%import-spec-source127142%_
                                                            _%path127369%_)
                                                           _%r127216%_))
                                                    (_%E127219127349%_)))))
                                          (_%E127219127349%_))))
                                  (_%E127219127349%_)))))
                      (_%E127218127371%_))))
                 (_%import-spec-source127142%_
                  (lambda (_%spath127211%_)
                    (gx#core-import-nested-module
                     _%spath127211%_
                     _%stx127134%_)))
                 (_%import!127143%_
                  (lambda (_%rbody127156%_)
                    (letrec* ((_%current-ctx127158%_
                               (gx#current-expander-context))
                              (_%deps127159%_ (make-hash-table-eq))
                              (_%bind!127160%_
                               (lambda (_%hd127209%_)
                                 (gx#core-bind-import!__1
                                  _%hd127209%_
                                  _%current-ctx127158%_))))
                      (let _%lp127162%_ ((_%rest127164%_ _%rbody127156%_)
                                         (_%body127165%_ '()))
                        (let* ((_%rest127166127174%_ _%rest127164%_)
                               (_%else127168127185%_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _%current-ctx127158%_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _%current-ctx127158%_
                                       (__foldl1
                                        cons
                                        (##unchecked-structure-ref
                                         _%current-ctx127158%_
                                         '8
                                         '#f
                                         '#f)
                                        _%body127165%_)
                                       '8
                                       '#f
                                       '#f)
                                      '#!void)
                                  (__hash-for-each
                                   (lambda (_%ctx127182%_ _%_127183%_)
                                     (gx#eval-module _%ctx127182%_))
                                   _%deps127159%_)
                                  _%body127165%_))
                               (_%K127170127197%_
                                (lambda (_%rest127188%_ _%hd127189%_)
                                  (if (##structure-direct-instance-of?
                                       _%hd127189%_
                                       'gx#module-import::t)
                                      (let ()
                                        (_%bind!127160%_ _%hd127189%_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _%hd127189%_
                                                   '3
                                                   '#f
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _%hd127189%_
                                                            '1
                                                            '#f
                                                            '#f)
                                                           '3
                                                           '#f
                                                           '#f)))
                                            (__hash-put!
                                             _%deps127159%_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _%hd127189%_
                                               '1
                                               '#f
                                               '#f)
                                              '1
                                              '#f
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _%hd127189%_
                                           'gx#import-set::t)
                                          (let ()
                                            (for-each
                                             _%bind!127160%_
                                             (##unchecked-structure-ref
                                              _%hd127189%_
                                              '3
                                              '#f
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _%hd127189%_
                                                  '2
                                                  '#f
                                                  '#f))
                                                (__hash-put!
                                                 _%deps127159%_
                                                 (##unchecked-structure-ref
                                                  _%hd127189%_
                                                  '1
                                                  '#f
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_%$e127193%_
                                                 (##structure-instance-of?
                                                  _%hd127189%_
                                                  'gx#module-context::t)))
                                            (if _%$e127193%_
                                                _%$e127193%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _%stx127134%_
                                                 _%hd127189%_)))))
                                  (_%lp127162%_
                                   _%rest127188%_
                                   (cons _%hd127189%_ _%body127165%_)))))
                          (if (pair? _%rest127166127174%_)
                              (let ((_%hd127171127200%_
                                     (##car _%rest127166127174%_))
                                    (_%tl127172127202%_
                                     (##cdr _%rest127166127174%_)))
                                (let* ((_%hd127205%_ _%hd127171127200%_)
                                       (_%rest127207%_ _%tl127172127202%_))
                                  (_%K127170127197%_
                                   _%rest127207%_
                                   _%hd127205%_)))
                              (_%else127168127185%_)))))))
                 (_%expanded-import?127144%_
                  (lambda (_%e127148%_)
                    (let ((_%$e127150%_
                           (##structure-direct-instance-of?
                            _%e127148%_
                            'gx#import-set::t)))
                      (if _%$e127150%_
                          _%$e127150%_
                          (let ((_%$e127153%_
                                 (##structure-direct-instance-of?
                                  _%e127148%_
                                  'gx#module-import::t)))
                            (if _%$e127153%_
                                _%$e127153%_
                                (##structure-instance-of?
                                 _%e127148%_
                                 'gx#module-context::t))))))))
          (let ((_%rbody127146%_
                 (gx#core-expand-import/export
                  _%stx127134%_
                  _%expanded-import?127144%_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _%expand1127137%_)))
            (if _%internal-expand?127135%_
                (reverse _%rbody127146%_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_%import!127143%_ _%rbody127146%_))
                 (gx#stx-source _%stx127134%_)))))))
    (define gx#core-expand-import%__0
      (lambda (_%stx127473%_)
        (let ((_%internal-expand?127475%_ '#f))
          (gx#core-expand-import%__%
           _%stx127473%_
           _%internal-expand?127475%_))))
    (define gx#core-expand-import%
      (lambda _g130126_
        (let ((_g130125_ (##length _g130126_)))
          (cond ((##fx= _g130125_ 1)
                 (apply gx#core-expand-import%__0 _g130126_))
                ((##fx= _g130125_ 2)
                 (apply gx#core-expand-import%__% _g130126_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g130126_))))))
    (define gx#core-import-nested-module
      (lambda (_%spath127061%_ _%where127062%_)
        (let* ((_%e127063127070%_ _%spath127061%_)
               (_%E127065127074%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127063127070%_)))
               (_%E127064127129%_
                (lambda ()
                  (if (gx#stx-pair? _%e127063127070%_)
                      (let ((_%e127066127078%_
                             (gx#syntax-e _%e127063127070%_)))
                        (let ((_%hd127067127081%_ (##car _%e127066127078%_))
                              (_%tl127068127083%_ (##cdr _%e127066127078%_)))
                          (let* ((_%origin127086%_ _%hd127067127081%_)
                                 (_%sub127088%_ _%tl127068127083%_)
                                 (_%origin-ctx127090%_
                                  (if (gx#stx-false? _%origin127086%_)
                                      (gx#current-expander-context)
                                      (gx#import-module__0 _%origin127086%_))))
                            (let _%lp127092%_ ((_%rest127094%_ _%sub127088%_)
                                               (_%ctx127095%_
                                                _%origin-ctx127090%_))
                              (let* ((_%e127096127103%_ _%rest127094%_)
                                     (_%E127098127107%_
                                      (lambda () _%ctx127095%_))
                                     (_%E127097127125%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e127096127103%_)
                                            (let ((_%e127099127111%_
                                                   (gx#syntax-e
                                                    _%e127096127103%_)))
                                              (let ((_%hd127100127114%_
                                                     (##car _%e127099127111%_))
                                                    (_%tl127101127116%_
                                                     (##cdr _%e127099127111%_)))
                                                (let* ((_%id127119%_
                                                        _%hd127100127114%_)
                                                       (_%rest127121%_
                                                        _%tl127101127116%_)
                                                       (_%bind127123%_
                                                        (gx#resolve-identifier__%
                                                         _%id127119%_
                                                         '0
                                                         _%ctx127095%_)))
                                                  (if (and (##structure-direct-instance-of?
                                                            _%bind127123%_
                                                            'gx#syntax-binding::t)
                                                           (##structure-instance-of?
                                                            (##unchecked-structure-ref
                                                             _%bind127123%_
                                                             '4
                                                             '#f
                                                             '#f)
                                                            'gx#module-context::t))
                                                      '#!void
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; not bound as module"
                                                       _%where127062%_
                                                       _%spath127061%_
                                                       _%id127119%_))
                                                  (_%lp127092%_
                                                   _%rest127121%_
                                                   (##unchecked-structure-ref
                                                    _%bind127123%_
                                                    '4
                                                    '#f
                                                    '#f)))))
                                            (_%E127098127107%_)))))
                                (_%E127097127125%_))))))
                      (_%E127065127074%_)))))
          (_%E127064127129%_))))
    (define gx#core-expand-import-source
      (lambda (_%hd127059%_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _%hd127059%_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_%stx126553%_ _%internal-expand?126554%_)
        (letrec* ((_%make-export__130054130055%_
                   (lambda (_%bind127007%_
                            _%phi127008%_
                            _%ctx127009%_
                            _%name127010%_)
                     (let* ((_%key127012%_
                             (##unchecked-structure-ref
                              _%bind127007%_
                              '2
                              '#f
                              '#f))
                            (_%export-key127014%_
                             (if _%name127010%_
                                 (gx#core-identifier-key _%name127010%_)
                                 _%key127012%_)))
                       (##structure
                        gx#module-export::t
                        _%ctx127009%_
                        _%key127012%_
                        _%phi127008%_
                        _%export-key127014%_
                        (let ((_%$e127017%_
                               (##structure-instance-of?
                                _%bind127007%_
                                'gx#extern-binding::t)))
                          (if _%$e127017%_
                              _%$e127017%_
                              (##structure-direct-instance-of?
                               _%bind127007%_
                               'gx#import-binding::t)))))))
                  (_%make-export__0__130056130059%_
                   (lambda (_%bind127023%_)
                     (let* ((_%phi127025%_ (gx#current-export-expander-phi))
                            (_%ctx127027%_ (gx#current-expander-context))
                            (_%name127029%_ '#f))
                       (_%make-export__130054130055%_
                        _%bind127023%_
                        _%phi127025%_
                        _%ctx127027%_
                        _%name127029%_))))
                  (_%make-export__1__130057130060%_
                   (lambda (_%bind127031%_ _%phi127032%_)
                     (let* ((_%ctx127034%_ (gx#current-expander-context))
                            (_%name127036%_ '#f))
                       (_%make-export__130054130055%_
                        _%bind127031%_
                        _%phi127032%_
                        _%ctx127034%_
                        _%name127036%_))))
                  (_%make-export__2__130058130061%_
                   (lambda (_%bind127038%_ _%phi127039%_ _%ctx127040%_)
                     (let ((_%name127042%_ '#f))
                       (_%make-export__130054130055%_
                        _%bind127038%_
                        _%phi127039%_
                        _%ctx127040%_
                        _%name127042%_))))
                  (_%make-export126556%_
                   (lambda _g130128_
                     (let ((_g130127_ (##length _g130128_)))
                       (cond ((##fx= _g130127_ 1)
                              (apply _%make-export__0__130056130059%_
                                     _g130128_))
                             ((##fx= _g130127_ 2)
                              (apply _%make-export__1__130057130060%_
                                     _g130128_))
                             ((##fx= _g130127_ 3)
                              (apply _%make-export__2__130058130061%_
                                     _g130128_))
                             ((##fx= _g130127_ 4)
                              (apply _%make-export__130054130055%_ _g130128_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g130128_))))))
                  (_%expand1126557%_
                   (lambda (_%hd126712%_
                            _%K126713%_
                            _%rest126714%_
                            _%r126715%_)
                     (let* ((_%e126716126748%_ _%hd126712%_)
                            (_%E126743126752%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _%stx126553%_
                                _%hd126712%_)))
                            (_%E126733126836%_
                             (lambda ()
                               (if (gx#stx-pair? _%e126716126748%_)
                                   (let ((_%e126744126756%_
                                          (gx#syntax-e _%e126716126748%_)))
                                     (let ((_%hd126745126759%_
                                            (##car _%e126744126756%_))
                                           (_%tl126746126761%_
                                            (##cdr _%e126744126756%_)))
                                       (if (eq? (gx#stx-e _%hd126745126759%_)
                                                'import:)
                                           (let ((_%in126764%_
                                                  _%tl126746126761%_))
                                             (if (gx#stx-list? _%in126764%_)
                                                 (let _%lp126766%_ ((_%in-rest126768%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%in126764%_)
                            (_%r126769%_ _%r126715%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%e126770126777%_
                                                           _%in-rest126768%_)
                                                          (_%E126772126781%_
                                                           (lambda ()
                                                             (_%K126713%_
                                                              _%rest126714%_
                                                              _%r126769%_)))
                                                          (_%E126771126832%_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%e126770126777%_)
                         (let ((_%e126773126785%_
                                (gx#syntax-e _%e126770126777%_)))
                           (let ((_%hd126774126788%_ (##car _%e126773126785%_))
                                 (_%tl126775126790%_
                                  (##cdr _%e126773126785%_)))
                             (let* ((_%hd126793%_ _%hd126774126788%_)
                                    (_%in-rest126795%_ _%tl126775126790%_)
                                    (_%src126830%_
                                     (if (gx#core-bound-module? _%hd126793%_)
                                         (gx#syntax-local-e__0 _%hd126793%_)
                                         (if (gx#core-library-module-path?
                                              _%hd126793%_)
                                             (gx#import-module__0
                                              (gx#core-resolve-library-module-path
                                               _%hd126793%_))
                                             (if (gx#core-library-relative-module-path?
                                                  _%hd126793%_)
                                                 (gx#import-module__0
                                                  (gx#core-resolve-library-relative-module-path
                                                   _%hd126793%_))
                                                 (if (gx#stx-string?
                                                      _%hd126793%_)
                                                     (gx#import-module__0
                                                      (gx#core-resolve-module-path__%
                                                       _%hd126793%_
                                                       (gx#stx-source
                                                        _%stx126553%_)))
                                                     (let* ((_%e126801126808%_
                                                             _%hd126793%_)
                                                            (_%E126803126812%_
                                                             (lambda ()
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; illegal re-export"
                                                                _%stx126553%_
                                                                _%hd126793%_)))
                                                            (_%E126802126826%_
                                                             (lambda ()
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%e126801126808%_)
                           (let ((_%e126804126816%_
                                  (gx#syntax-e _%e126801126808%_)))
                             (let ((_%hd126805126819%_
                                    (##car _%e126804126816%_))
                                   (_%tl126806126821%_
                                    (##cdr _%e126804126816%_)))
                               (if (eq? (gx#stx-e _%hd126805126819%_) 'in:)
                                   (let ((_%spath126824%_ _%tl126806126821%_))
                                     (gx#core-import-nested-module
                                      _%spath126824%_
                                      _%stx126553%_))
                                   (_%E126803126812%_))))
                           (_%E126803126812%_)))))
               (_%E126802126826%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (_%lp126766%_
                                _%in-rest126795%_
                                (_%export-imports126558%_
                                 _%src126830%_
                                 _%r126769%_)))))
                         (_%E126772126781%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E126771126832%_)))
                                                 (_%E126743126752%_)))
                                           (_%E126743126752%_))))
                                   (_%E126743126752%_))))
                            (_%E126720126876%_
                             (lambda ()
                               (if (gx#stx-pair? _%e126716126748%_)
                                   (let ((_%e126734126840%_
                                          (gx#syntax-e _%e126716126748%_)))
                                     (let ((_%hd126735126843%_
                                            (##car _%e126734126840%_))
                                           (_%tl126736126845%_
                                            (##cdr _%e126734126840%_)))
                                       (if (eq? (gx#stx-e _%hd126735126843%_)
                                                'rename:)
                                           (if (gx#stx-pair?
                                                _%tl126736126845%_)
                                               (let ((_%e126737126848%_
                                                      (gx#syntax-e
                                                       _%tl126736126845%_)))
                                                 (let ((_%hd126738126851%_
                                                        (##car _%e126737126848%_))
                                                       (_%tl126739126853%_
                                                        (##cdr _%e126737126848%_)))
                                                   (let ((_%id126856%_
                                                          _%hd126738126851%_))
                                                     (if (gx#stx-pair?
                                                          _%tl126739126853%_)
                                                         (let ((_%e126740126858%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl126739126853%_)))
                   (let ((_%hd126741126861%_ (##car _%e126740126858%_))
                         (_%tl126742126863%_ (##cdr _%e126740126858%_)))
                     (let ((_%name126866%_ _%hd126741126861%_))
                       (if (gx#stx-null? _%tl126742126863%_)
                           (let* ((_%phi126868%_
                                   (gx#current-export-expander-phi))
                                  (_%$e126870%_
                                   (gx#core-resolve-identifier__1
                                    _%id126856%_
                                    _%phi126868%_)))
                             (if _%$e126870%_
                                 ((lambda (_%bind126873%_)
                                    (_%K126713%_
                                     _%rest126714%_
                                     (cons (_%make-export__130054130055%_
                                            _%bind126873%_
                                            _%phi126868%_
                                            (gx#current-expander-context)
                                            _%name126866%_)
                                           _%r126715%_)))
                                  _%$e126870%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Reference to unbound identifier"
                                  _%stx126553%_
                                  _%hd126712%_
                                  _%id126856%_)))
                           (_%E126733126836%_)))))
                 (_%E126733126836%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E126733126836%_))
                                           (_%E126733126836%_))))
                                   (_%E126733126836%_))))
                            (_%E126719126926%_
                             (lambda ()
                               (if (gx#stx-pair? _%e126716126748%_)
                                   (let ((_%e126721126880%_
                                          (gx#syntax-e _%e126716126748%_)))
                                     (let ((_%hd126722126883%_
                                            (##car _%e126721126880%_))
                                           (_%tl126723126885%_
                                            (##cdr _%e126721126880%_)))
                                       (if (eq? (gx#stx-e _%hd126722126883%_)
                                                'spec:)
                                           (if (gx#stx-pair?
                                                _%tl126723126885%_)
                                               (let ((_%e126724126888%_
                                                      (gx#syntax-e
                                                       _%tl126723126885%_)))
                                                 (let ((_%hd126725126891%_
                                                        (##car _%e126724126888%_))
                                                       (_%tl126726126893%_
                                                        (##cdr _%e126724126888%_)))
                                                   (let ((_%phi126896%_
                                                          _%hd126725126891%_))
                                                     (if (gx#stx-pair?
                                                          _%tl126726126893%_)
                                                         (let ((_%e126727126898%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl126726126893%_)))
                   (let ((_%hd126728126901%_ (##car _%e126727126898%_))
                         (_%tl126729126903%_ (##cdr _%e126727126898%_)))
                     (let ((_%id126906%_ _%hd126728126901%_))
                       (if (gx#stx-pair? _%tl126729126903%_)
                           (let ((_%e126730126908%_
                                  (gx#syntax-e _%tl126729126903%_)))
                             (let ((_%hd126731126911%_
                                    (##car _%e126730126908%_))
                                   (_%tl126732126913%_
                                    (##cdr _%e126730126908%_)))
                               (let ((_%name126916%_ _%hd126731126911%_))
                                 (if (gx#stx-null? _%tl126732126913%_)
                                     (if (and (gx#stx-fixnum? _%phi126896%_)
                                              (gx#identifier? _%id126906%_)
                                              (gx#identifier? _%name126916%_))
                                         (let* ((_%phi126918%_
                                                 (gx#stx-e _%phi126896%_))
                                                (_%$e126920%_
                                                 (gx#core-resolve-identifier__1
                                                  _%id126906%_
                                                  _%phi126918%_)))
                                           (if _%$e126920%_
                                               ((lambda (_%bind126923%_)
                                                  (_%K126713%_
                                                   _%rest126714%_
                                                   (cons (_%make-export__130054130055%_
                                                          _%bind126923%_
                                                          _%phi126918%_
                                                          (gx#current-expander-context)
                                                          _%name126916%_)
                                                         _%r126715%_)))
                                                _%$e126920%_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _%stx126553%_
                                                _%hd126712%_
                                                _%id126906%_)))
                                         (_%E126720126876%_))
                                     (_%E126720126876%_)))))
                           (_%E126720126876%_)))))
                 (_%E126720126876%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E126720126876%_))
                                           (_%E126720126876%_))))
                                   (_%E126720126876%_))))
                            (_%E126718126938%_
                             (lambda ()
                               (let ((_%id126930%_ _%e126716126748%_))
                                 (if (gx#identifier? _%id126930%_)
                                     (let ((_%$e126932%_
                                            (gx#core-resolve-identifier__1
                                             _%id126930%_
                                             (gx#current-export-expander-phi))))
                                       (if _%$e126932%_
                                           ((lambda (_%bind126935%_)
                                              (_%K126713%_
                                               _%rest126714%_
                                               (cons (_%make-export__0__130056130059%_
                                                      _%bind126935%_)
                                                     _%r126715%_)))
                                            _%$e126932%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _%stx126553%_
                                            _%hd126712%_)))
                                     (_%E126719126926%_)))))
                            (_%E126717127002%_
                             (lambda ()
                               (if (eq? (gx#stx-e _%e126716126748%_) '#t)
                                   (let* ((_%current-ctx126942%_
                                           (gx#current-expander-context))
                                          (_%current-phi126944%_
                                           (gx#current-export-expander-phi))
                                          (_%phi-ctx126946%_
                                           (gx#core-context-shift
                                            _%current-ctx126942%_
                                            _%current-phi126944%_))
                                          (_%phi-bind126948%_
                                           (hash->list
                                            (##unchecked-structure-ref
                                             _%phi-ctx126946%_
                                             '2
                                             '#f
                                             '#f))))
                                     (let _%lp126951%_ ((_%bind-rest126953%_
                                                         _%phi-bind126948%_)
                                                        (_%set126954%_ '()))
                                       (let* ((_%bind-rest126955126965%_
                                               _%bind-rest126953%_)
                                              (_%else126957126973%_
                                               (lambda ()
                                                 (_%K126713%_
                                                  _%rest126714%_
                                                  (cons (##structure
                                                         gx#export-set::t
                                                         '#f
                                                         _%current-phi126944%_
                                                         _%set126954%_)
                                                        _%r126715%_))))
                                              (_%K126959126983%_
                                               (lambda (_%bind-rest126976%_
                                                        _%bind126977%_
                                                        _%key126978%_)
                                                 (if (or (##structure-direct-instance-of?
                                                          _%bind126977%_
                                                          'gx#import-binding::t)
                                                         (gx#private-feature-binding?
                                                          _%bind126977%_))
                                                     (_%lp126951%_
                                                      _%bind-rest126976%_
                                                      _%set126954%_)
                                                     (_%lp126951%_
                                                      _%bind-rest126976%_
                                                      (cons (_%make-export__2__130058130061%_
                                                             _%bind126977%_
                                                             _%current-phi126944%_
                                                             _%current-ctx126942%_)
                                                            _%set126954%_))))))
                                         (if (pair? _%bind-rest126955126965%_)
                                             (let ((_%hd126960126986%_
                                                    (##car _%bind-rest126955126965%_))
                                                   (_%tl126961126988%_
                                                    (##cdr _%bind-rest126955126965%_)))
                                               (if (pair? _%hd126960126986%_)
                                                   (let ((_%hd126962126991%_
                                                          (##car _%hd126960126986%_))
                                                         (_%tl126963126993%_
                                                          (##cdr _%hd126960126986%_)))
                                                     (let* ((_%key126996%_
                                                             _%hd126962126991%_)
                                                            (_%bind126998%_
                                                             _%tl126963126993%_)
                                                            (_%bind-rest127000%_
                                                             _%tl126961126988%_))
                                                       (_%K126959126983%_
                                                        _%bind-rest127000%_
                                                        _%bind126998%_
                                                        _%key126996%_)))
                                                   (_%else126957126973%_)))
                                             (_%else126957126973%_)))))
                                   (_%E126718126938%_)))))
                       (_%E126717127002%_))))
                  (_%export-imports126558%_
                   (lambda (_%src126588%_ _%r126589%_)
                     (letrec* ((_%current-ctx126591%_
                                (gx#current-expander-context))
                               (_%current-phi126592%_
                                (gx#current-export-expander-phi))
                               (_%import->export126593%_
                                (lambda (_%in126674%_)
                                  (let* ((_%in126675126683%_ _%in126674%_)
                                         (_%E126677126687%_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _%in126675126683%_
                                                   '((module-import
                                                      out
                                                      key
                                                      phi)))
                                            '#!void))
                                         (_%K126678126694%_
                                          (lambda (_%phi126690%_
                                                   _%key126691%_
                                                   _%out126692%_)
                                            (##structure
                                             gx#module-export::t
                                             _%current-ctx126591%_
                                             _%key126691%_
                                             _%phi126690%_
                                             _%key126691%_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _%in126675126683%_
                                         'gx#module-import::t)
                                        (let* ((_%e126679126697%_
                                                (##unchecked-structure-ref
                                                 _%in126675126683%_
                                                 '1
                                                 '#f
                                                 '#f))
                                               (_%out126700%_
                                                _%e126679126697%_)
                                               (_%e126680126702%_
                                                (##unchecked-structure-ref
                                                 _%in126675126683%_
                                                 '2
                                                 '#f
                                                 '#f))
                                               (_%key126705%_
                                                _%e126680126702%_)
                                               (_%e126681126707%_
                                                (##unchecked-structure-ref
                                                 _%in126675126683%_
                                                 '3
                                                 '#f
                                                 '#f))
                                               (_%phi126710%_
                                                _%e126681126707%_))
                                          (_%K126678126694%_
                                           _%phi126710%_
                                           _%key126705%_
                                           _%out126700%_))
                                        (_%E126677126687%_)))))
                               (_%fold-e126594%_
                                (lambda (_%in126596%_ _%r126597%_)
                                  (let* ((_%in126598126612%_ _%in126596%_)
                                         (_%else126601126620%_
                                          (lambda () _%r126597%_)))
                                    (let ((_%K126607126656%_
                                           (lambda (_%phi126652%_
                                                    _%key126653%_
                                                    _%out126654%_)
                                             (if (and (fx= _%phi126652%_
                                                           _%current-phi126592%_)
                                                      (eq? _%src126588%_
                                                           (##unchecked-structure-ref
                                                            _%out126654%_
                                                            '1
                                                            '#f
                                                            '#f)))
                                                 (cons (_%import->export126593%_
                                                        _%in126596%_)
                                                       _%r126597%_)
                                                 _%r126597%_)))
                                          (_%K126603126631%_
                                           (lambda (_%imports126624%_
                                                    _%phi126625%_
                                                    _%ctx126626%_)
                                             (if (and (fx= _%phi126625%_
                                                           _%current-phi126592%_)
                                                      (eq? _%src126588%_
                                                           _%ctx126626%_))
                                                 (__foldl1
                                                  (lambda (_%in126628%_
                                                           _%r126629%_)
                                                    (cons (_%import->export126593%_
                                                           _%in126628%_)
                                                          _%r126629%_))
                                                  _%r126597%_
                                                  _%imports126624%_)
                                                 _%r126597%_))))
                                      (let ((_%try-match126600126649%_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _%in126598126612%_
                                                    'gx#import-set::t)
                                                   (let* ((_%e126604126634%_
                                                           (##unchecked-structure-ref
                                                            _%in126598126612%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                          (_%e126605126639%_
                                                           (##unchecked-structure-ref
                                                            _%in126598126612%_
                                                            '2
                                                            '#f
                                                            '#f))
                                                          (_%e126606126644%_
                                                           (##unchecked-structure-ref
                                                            _%in126598126612%_
                                                            '3
                                                            '#f
                                                            '#f)))
                                                     (let ((_%ctx126637%_
                                                            _%e126604126634%_)
                                                           (_%phi126642%_
                                                            _%e126605126639%_)
                                                           (_%imports126647%_
                                                            _%e126606126644%_))
                                                       (_%K126603126631%_
                                                        _%imports126647%_
                                                        _%phi126642%_
                                                        _%ctx126637%_)))
                                                   (_%else126601126620%_)))))
                                        (if (##structure-direct-instance-of?
                                             _%in126598126612%_
                                             'gx#module-import::t)
                                            (let* ((_%e126608126659%_
                                                    (##unchecked-structure-ref
                                                     _%in126598126612%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                   (_%e126609126664%_
                                                    (##unchecked-structure-ref
                                                     _%in126598126612%_
                                                     '2
                                                     '#f
                                                     '#f))
                                                   (_%e126610126669%_
                                                    (##unchecked-structure-ref
                                                     _%in126598126612%_
                                                     '3
                                                     '#f
                                                     '#f)))
                                              (let ((_%out126662%_
                                                     _%e126608126659%_)
                                                    (_%key126667%_
                                                     _%e126609126664%_)
                                                    (_%phi126672%_
                                                     _%e126610126669%_))
                                                (_%K126607126656%_
                                                 _%phi126672%_
                                                 _%key126667%_
                                                 _%out126662%_)))
                                            (_%try-match126600126649%_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _%src126588%_
                              _%current-phi126592%_
                              (__foldl1
                               _%fold-e126594%_
                               '()
                               (##unchecked-structure-ref
                                _%current-ctx126591%_
                                '8
                                '#f
                                '#f)))
                             _%r126589%_))))
                  (_%export!126559%_
                   (lambda (_%rbody126575%_)
                     (letrec* ((_%current-ctx126577%_
                                (gx#current-expander-context))
                               (_%fold-e126578%_
                                (lambda (_%out126582%_ _%r126583%_)
                                  (if (##structure-direct-instance-of?
                                       _%out126582%_
                                       'gx#module-export::t)
                                      (cons _%out126582%_ _%r126583%_)
                                      (if (##structure-direct-instance-of?
                                           _%out126582%_
                                           'gx#export-set::t)
                                          (__foldl1
                                           cons
                                           _%r126583%_
                                           (##unchecked-structure-ref
                                            _%out126582%_
                                            '3
                                            '#f
                                            '#f))
                                          _%r126583%_)))))
                       (let ((_%body126580%_ (reverse _%rbody126575%_)))
                         (##unchecked-structure-set!
                          _%current-ctx126577%_
                          (__foldl1
                           _%fold-e126578%_
                           (##unchecked-structure-ref
                            _%current-ctx126577%_
                            '9
                            '#f
                            '#f)
                           _%body126580%_)
                          '9
                          '#f
                          '#f)
                         _%body126580%_))))
                  (_%expanded-export?126560%_
                   (lambda (_%e126570%_)
                     (let ((_%$e126572%_
                            (##structure-direct-instance-of?
                             _%e126570%_
                             'gx#module-export::t)))
                       (if _%$e126572%_
                           _%$e126572%_
                           (##structure-direct-instance-of?
                            _%e126570%_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _%internal-expand?126554%_)
              (let ((_%rbody126566%_
                     (gx#core-expand-import/export
                      _%stx126553%_
                      _%expanded-export?126560%_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _%expand1126557%_)))
                (if _%internal-expand?126554%_
                    (reverse _%rbody126566%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons
                      '%#export
                      (_%export!126559%_ _%rbody126566%_))
                     (gx#stx-source _%stx126553%_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _%stx126553%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _%stx126553%_))))))
    (define gx#core-expand-export%__0
      (lambda (_%stx127052%_)
        (let ((_%internal-expand?127054%_ '#f))
          (gx#core-expand-export%__%
           _%stx127052%_
           _%internal-expand?127054%_))))
    (define gx#core-expand-export%
      (lambda _g130130_
        (let ((_g130129_ (##length _g130130_)))
          (cond ((##fx= _g130129_ 1)
                 (apply gx#core-expand-export%__0 _g130130_))
                ((##fx= _g130129_ 2)
                 (apply gx#core-expand-export%__% _g130130_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g130130_))))))
    (define gx#core-expand-export-source
      (lambda (_%hd126550%_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _%hd126550%_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_%stx126520%_)
        (let* ((_%e126521126528%_ _%stx126520%_)
               (_%E126523126532%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126521126528%_)))
               (_%E126522126546%_
                (lambda ()
                  (if (gx#stx-pair? _%e126521126528%_)
                      (let ((_%e126524126536%_
                             (gx#syntax-e _%e126521126528%_)))
                        (let ((_%hd126525126539%_ (##car _%e126524126536%_))
                              (_%tl126526126541%_ (##cdr _%e126524126536%_)))
                          (let ((_%body126544%_ _%tl126526126541%_))
                            (if (gx#identifier-list? _%body126544%_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _%body126544%_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _%body126544%_))
                                   (gx#stx-source _%stx126520%_)))
                                (_%E126523126532%_)))))
                      (_%E126523126532%_)))))
          (_%E126522126546%_))))
    (define gx#core-bind-feature!__%
      (lambda (_%id126486%_ _%private?126487%_ _%phi126488%_ _%ctx126489%_)
        (gx#core-bind-syntax!__%
         _%id126486%_
         ((if _%private?126487%_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _%id126486%_))
         _%private?126487%_
         _%phi126488%_
         _%ctx126489%_)))
    (define gx#core-bind-feature!__0
      (lambda (_%id126494%_)
        (let* ((_%private?126496%_ '#f)
               (_%phi126498%_ (gx#current-expander-phi))
               (_%ctx126500%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id126494%_
           _%private?126496%_
           _%phi126498%_
           _%ctx126500%_))))
    (define gx#core-bind-feature!__1
      (lambda (_%id126502%_ _%private?126503%_)
        (let* ((_%phi126505%_ (gx#current-expander-phi))
               (_%ctx126507%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id126502%_
           _%private?126503%_
           _%phi126505%_
           _%ctx126507%_))))
    (define gx#core-bind-feature!__2
      (lambda (_%id126509%_ _%private?126510%_ _%phi126511%_)
        (let ((_%ctx126513%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id126509%_
           _%private?126510%_
           _%phi126511%_
           _%ctx126513%_))))
    (define gx#core-bind-feature!
      (lambda _g130132_
        (let ((_g130131_ (##length _g130132_)))
          (cond ((##fx= _g130131_ 1)
                 (apply gx#core-bind-feature!__0 _g130132_))
                ((##fx= _g130131_ 2)
                 (apply gx#core-bind-feature!__1 _g130132_))
                ((##fx= _g130131_ 3)
                 (apply gx#core-bind-feature!__2 _g130132_))
                ((##fx= _g130131_ 4)
                 (apply gx#core-bind-feature!__% _g130132_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g130132_))))))))
