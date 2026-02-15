(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1771178565)
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
      (lambda _%$args185907%_
        (apply make-instance gx#module-import::t _%$args185907%_)))
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
      (lambda _%$args185904%_
        (apply make-instance gx#module-export::t _%$args185904%_)))
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
      (lambda _%$args185901%_
        (apply make-instance gx#import-set::t _%$args185901%_)))
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
      (lambda _%$args185898%_
        (apply make-instance gx#export-set::t _%$args185898%_)))
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
      (lambda _%$args185895%_
        (apply make-instance gx#import-expander::t _%$args185895%_)))
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
      (lambda _%$args185892%_
        (apply make-instance gx#export-expander::t _%$args185892%_)))
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
      (lambda _%$args185889%_
        (apply make-instance gx#import-export-expander::t _%$args185889%_)))
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
      (lambda (_%path185886%_ _%fun185887%_)
        (call-with-input-file
         (cons 'path: (cons _%path185886%_ gx#source-file-settings))
         _%fun185887%_)))
    (define gx#module-context:::init!
      (lambda (_%self185869%_
               _%id185870%_
               _%super185871%_
               _%ns185872%_
               _%path185873%_)
        (let ((_%self185876%_ _%self185869%_))
          (if (##fx< '11 (##structure-length _%self185876%_))
              (begin
                (##unchecked-structure-set!
                 _%self185876%_
                 _%id185870%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self185876%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self185876%_
                 _%super185871%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self185876%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self185876%_ '#f '5 '#f '#f)
                (##unchecked-structure-set!
                 _%self185876%_
                 _%ns185872%_
                 '6
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self185876%_
                 _%path185873%_
                 '7
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self185876%_ '() '8 '#f '#f)
                (##unchecked-structure-set! _%self185876%_ '() '9 '#f '#f)
                (##unchecked-structure-set! _%self185876%_ '#f '10 '#f '#f)
                (##unchecked-structure-set! _%self185876%_ '#f '11 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self185876%_
                     '11
                     (##structure-length _%self185876%_))))))
    (__bind-method!__%
     gx#module-context::t
     ':init!
     gx#module-context:::init!
     '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_%self185702%_ _%ctx185703%_ _%root185704%_)
        (let* ((_%self185707%_ _%self185702%_)
               (_%super185723%_
                (let ((_%$e185717%_ _%root185704%_))
                  (if _%$e185717%_
                      _%$e185717%_
                      (let ((_%$e185720%_ (gx#core-context-root__0)))
                        (if _%$e185720%_
                            _%$e185720%_
                            (let ((__obj185951
                                   (##structure gx#root-context::t '#f '#f)))
                              (let ((__constructor185952
                                     (direct-method-ref
                                      gx#root-context::t
                                      __obj185951
                                      ':init!)))
                                (if __constructor185952
                                    (__constructor185952 __obj185951)
                                    (error '"missing constructor method implementation"
                                           'class:
                                           gx#root-context::t
                                           'method:
                                           ':init!)))
                              __obj185951)))))))
          (if _%ctx185703%_
              (let ((_%id185726%_
                     (##structure-ref
                      _%ctx185703%_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_%path185727%_
                     (##structure-ref
                      _%ctx185703%_
                      '7
                      gx#module-context::t
                      '#f))
                    (_%in185728%_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _%ctx185703%_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_%e185729%_
                     (__make-atomic-promise
                      (lambda () (gx#eval-module _%ctx185703%_)))))
                (if (##fx< '8 (##structure-length _%self185707%_))
                    (begin
                      (##unchecked-structure-set!
                       _%self185707%_
                       _%id185726%_
                       '1
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self185707%_
                       (make-hash-table-eq 'size: (##length _%in185728%_))
                       '2
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self185707%_
                       _%super185723%_
                       '3
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self185707%_
                       '#f
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self185707%_
                       '#f
                       '5
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self185707%_
                       _%path185727%_
                       '6
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self185707%_
                       _%in185728%_
                       '7
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self185707%_
                       _%e185729%_
                       '8
                       '#f
                       '#f)
                      '#!void)
                    (error '"struct-instance-init!: too many arguments for struct"
                           _%self185707%_
                           '8
                           (##structure-length _%self185707%_)))
                (##for-each
                 (lambda (_%g185730185732%_)
                   (gx#core-bind-weak-import!__%
                    _%g185730185732%_
                    _%self185707%_))
                 _%in185728%_))
              (if (##fx< '8 (##structure-length _%self185707%_))
                  (begin
                    (##unchecked-structure-set! _%self185707%_ '#f '1 '#f '#f)
                    (##unchecked-structure-set!
                     _%self185707%_
                     (make-hash-table-eq)
                     '2
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self185707%_
                     _%super185723%_
                     '3
                     '#f
                     '#f)
                    (##unchecked-structure-set! _%self185707%_ '#f '4 '#f '#f)
                    (##unchecked-structure-set! _%self185707%_ '#f '5 '#f '#f)
                    (##unchecked-structure-set! _%self185707%_ '#f '6 '#f '#f)
                    (##unchecked-structure-set! _%self185707%_ '() '7 '#f '#f)
                    (##unchecked-structure-set! _%self185707%_ '#f '8 '#f '#f)
                    '#!void)
                  (error '"struct-instance-init!: too many arguments for struct"
                         _%self185707%_
                         '8
                         (##structure-length _%self185707%_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_%self185738%_ _%ctx185739%_)
        (let ((_%root185741%_ '#f))
          (gx#prelude-context:::init!__%
           _%self185738%_
           _%ctx185739%_
           _%root185741%_))))
    (define gx#prelude-context:::init!
      (lambda _g185958_
        (let ((_g185959_ (##length _g185958_)))
          (cond ((##fx= _g185959_ 2)
                 (apply gx#prelude-context:::init!__0 _g185958_))
                ((##fx= _g185959_ 3)
                 (apply gx#prelude-context:::init!__% _g185958_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g185958_))))))
    (__bind-method!__%
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_%self185576%_ _%e185577%_)
        (if (##fx< '3 (##structure-length _%self185576%_))
            (begin
              (##unchecked-structure-set!
               _%self185576%_
               _%e185577%_
               '1
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self185576%_
               (gx#current-expander-context)
               '2
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self185576%_
               (##fx- (gx#current-expander-phi) '1)
               '3
               '#f
               '#f)
              '#!void)
            (error '"struct-instance-init!: too many arguments for struct"
                   _%self185576%_
                   '3
                   (##structure-length _%self185576%_)))))
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
      (lambda (_%g185202185205%_ _%g185203185207%_)
        (gx#core-apply-user-expander__%
         _%g185202185205%_
         _%g185203185207%_
         'apply-import-expander)))
    (__bind-method!__%
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_%g185073185076%_ _%g185074185078%_)
        (gx#core-apply-user-expander__%
         _%g185073185076%_
         _%g185074185078%_
         'apply-export-expander)))
    (__bind-method!__%
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_%ctx184944%_)
        (let* ((_%path184946%_
                (##structure-ref _%ctx184944%_ '7 gx#module-context::t '#f))
               (_%path184948%_
                (if (pair? _%path184946%_)
                    (##last _%path184946%_)
                    _%path184946%_)))
          (if (string? _%path184948%_) _%path184948%_ '#f))))
    (define gx#import-module__%
      (lambda (_%path184920%_ _%reload?184921%_ _%eval?184922%_)
        (let ((_%ctx184924%_
               ((gx#current-expander-module-import)
                _%path184920%_
                _%reload?184921%_)))
          (if (and _%ctx184924%_ _%eval?184922%_)
              (gx#eval-module _%ctx184924%_)
              '#!void)
          _%ctx184924%_)))
    (define gx#import-module__0
      (lambda (_%path184929%_)
        (let* ((_%reload?184931%_ '#f) (_%eval?184933%_ '#f))
          (gx#import-module__%
           _%path184929%_
           _%reload?184931%_
           _%eval?184933%_))))
    (define gx#import-module__1
      (lambda (_%path184935%_ _%reload?184936%_)
        (let ((_%eval?184938%_ '#f))
          (gx#import-module__%
           _%path184935%_
           _%reload?184936%_
           _%eval?184938%_))))
    (define gx#import-module
      (lambda _g185960_
        (let ((_g185961_ (##length _g185960_)))
          (cond ((##fx= _g185961_ 1) (apply gx#import-module__0 _g185960_))
                ((##fx= _g185961_ 2) (apply gx#import-module__1 _g185960_))
                ((##fx= _g185961_ 3) (apply gx#import-module__% _g185960_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g185960_))))))
    (define gx#eval-module
      (lambda (_%mod184917%_)
        ((gx#current-expander-module-eval) _%mod184917%_)))
    (define gx#core-eval-module
      (lambda (_%obj184896%_)
        (letrec ((_%force-e184898%_
                  (lambda (_%getf184912%_ _%e184913%_)
                    (call-with-parameters__1
                     (lambda ()
                       (call-with-parameters__1
                        (lambda () (force (_%getf184912%_ _%e184913%_)))
                        gx#current-expander-phi
                        '0))
                     gx#current-expander-context
                     _%e184913%_))))
          (let _%recur184900%_ ((_%e184902%_ _%obj184896%_))
            (if (##structure-instance-of? _%e184902%_ 'gx#module-context::t)
                (let ()
                  (let ((_%$e184905%_
                         (gx#core-context-prelude__% _%e184902%_)))
                    (if _%$e184905%_ (_%recur184900%_ _%$e184905%_) '#!void))
                  (_%force-e184898%_ gx#module-context-e _%e184902%_))
                (if (##structure-instance-of?
                     _%e184902%_
                     'gx#prelude-context::t)
                    (_%force-e184898%_ gx#prelude-context-e _%e184902%_)
                    (if (gx#stx-string? _%e184902%_)
                        (_%recur184900%_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _%e184902%_)))
                        (if (gx#core-library-module-path? _%e184902%_)
                            (_%recur184900%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%e184902%_)))
                            (error '"cannot eval module" _%obj184896%_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_%ctx184876%_)
        (let _%lp184878%_ ((_%e184880%_ _%ctx184876%_))
          (if (or (##structure-instance-of? _%e184880%_ 'gx#module-context::t)
                  (##structure-instance-of? _%e184880%_ 'gx#local-context::t))
              (_%lp184878%_ (##unchecked-structure-ref _%e184880%_ '3 '#f '#f))
              (if (##structure-instance-of? _%e184880%_ 'gx#prelude-context::t)
                  _%e184880%_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_%ctx184892%_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _%ctx184892%_))))
    (define gx#core-context-prelude
      (lambda _g185962_
        (let ((_g185963_ (##length _g185962_)))
          (cond ((##fx= _g185963_ 0)
                 (apply gx#core-context-prelude__0 _g185962_))
                ((##fx= _g185963_ 1)
                 (apply gx#core-context-prelude__% _g185962_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g185962_))))))
    (define gx#core-module->prelude-context
      (lambda (_%ctx184867%_)
        (let ((_%$e184869%_ (__hash-get gx#__module-registry _%ctx184867%_)))
          (if _%$e184869%_
              _%$e184869%_
              (let ((_%pre184873%_
                     (let ((__obj185953
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
                        __obj185953
                        _%ctx184867%_)
                       __obj185953)))
                (__hash-put! gx#__module-registry _%ctx184867%_ _%pre184873%_)
                _%pre184873%_)))))
    (define gx#core-import-module__%
      (lambda (_%rpath184735%_ _%reload?184736%_)
        (letrec ((_%import-source184738%_
                  (lambda (_%path184826%_)
                    (if (member _%path184826%_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _%path184826%_)
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
                                      (let ((_g185964_
                                             (gx#core-read-module
                                              _%path184826%_)))
                                        (begin
                                          (let ((_g185965_
                                                 (if (##values? _g185964_)
                                                     (##values-length
                                                      _g185964_)
                                                     1)))
                                            (if (not (##fx= _g185965_ 4))
                                                (error "Context expects 4 values"
                                                       _g185965_)))
                                          (let ((_%pre184834%_
                                                 (##values-ref _g185964_ 0))
                                                (_%id184835%_
                                                 (##values-ref _g185964_ 1))
                                                (_%ns184836%_
                                                 (##values-ref _g185964_ 2))
                                                (_%body184837%_
                                                 (##values-ref _g185964_ 3)))
                                            (let* ((_%prelude184847%_
                                                    (if (##structure-instance-of?
                                                         _%pre184834%_
                                                         'gx#prelude-context::t)
                                                        _%pre184834%_
                                                        (if (##structure-instance-of?
                                                             _%pre184834%_
                                                             'gx#module-context::t)
                                                            (gx#core-module->prelude-context
                                                             _%pre184834%_)
                                                            (if (string? _%pre184834%_)
                                                                (gx#core-module->prelude-context
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#core-import-module__0 _%pre184834%_))
                        (if (not _%pre184834%_)
                            (let ((_%$e184843%_
                                   (gx#current-expander-module-prelude)))
                              (if _%$e184843%_
                                  _%$e184843%_
                                  (let ((__obj185954
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
                                     __obj185954
                                     '#f)
                                    __obj185954)))
                            (error '"cannot import module; unknown prelude"
                                   _%rpath184735%_
                                   _%pre184834%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%ctx184849%_
                                                    (let ((__obj185955
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
                                                       __obj185955
                                                       _%id184835%_
                                                       _%prelude184847%_
                                                       _%ns184836%_
                                                       _%path184826%_)
                                                      __obj185955))
                                                   (_%body184851%_
                                                    (gx#core-expand-module-begin
                                                     _%body184837%_
                                                     _%ctx184849%_))
                                                   (_%body184853%_
                                                    (gx#core-quote-syntax__%
                                                     (gx#core-cons
                                                      '%#begin
                                                      _%body184851%_)
                                                     _%path184826%_
                                                     _%ctx184849%_
                                                     '())))
                                              (##unchecked-structure-set!
                                               _%ctx184849%_
                                               (__make-atomic-promise
                                                (lambda ()
                                                  (gx#eval-syntax*
                                                   _%body184853%_)))
                                               '10
                                               '#f
                                               '#f)
                                              (##unchecked-structure-set!
                                               _%ctx184849%_
                                               _%body184853%_
                                               '11
                                               '#f
                                               '#f)
                                              (__hash-put!
                                               gx#__module-registry
                                               _%path184826%_
                                               _%ctx184849%_)
                                              (__hash-put!
                                               gx#__module-registry
                                               _%id184835%_
                                               _%ctx184849%_)
                                              _%ctx184849%_)))))
                                    gx#current-export-expander-phi
                                    '#f))
                                 gx#current-import-expander-phi
                                 '#f))
                              gx#current-expander-path
                              (cons _%path184826%_
                                    (gx#current-expander-path))))
                           gx#current-expander-phi
                           '0))
                        gx#current-expander-marks
                        '()))
                     gx#current-expander-context
                     (gx#core-context-root__0))))
                 (_%import-submodule184739%_
                  (lambda (_%rpath184755%_)
                    (let* ((_%rpath184756184763%_ _%rpath184755%_)
                           (_%E184758184766%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%rpath184756184763%_
                                     '([origin . refs]))
                              '#!void))
                           (_%K184759184814%_
                            (lambda (_%refs184769%_ _%origin184770%_)
                              (let ((_%ctx184772%_
                                     (if _%origin184770%_
                                         (gx#core-import-module__%
                                          _%origin184770%_
                                          _%reload?184736%_)
                                         (gx#current-expander-context))))
                                (let _%lp184774%_ ((_%rest184776%_
                                                    _%refs184769%_)
                                                   (_%ctx184777%_
                                                    _%ctx184772%_))
                                  (let* ((_%rest184778184786%_ _%rest184776%_)
                                         (_%else184780184794%_
                                          (lambda () _%ctx184777%_))
                                         (_%K184782184802%_
                                          (lambda (_%rest184797%_ _%id184798%_)
                                            (let ((_%bind184800%_
                                                   (gx#resolve-identifier__%
                                                    _%id184798%_
                                                    '0
                                                    _%ctx184777%_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _%bind184800%_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _%bind184800%_
                                                         '5
                                                         '#f
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_%lp184774%_
                                                   _%rest184797%_
                                                   (##unchecked-structure-ref
                                                    _%bind184800%_
                                                    '5
                                                    '#f
                                                    '#f))
                                                  (error '"cannot import submodule; not bound as a module"
                                                         _%rpath184755%_
                                                         _%id184798%_
                                                         _%bind184800%_))))))
                                    (if (pair? _%rest184778184786%_)
                                        (let ((_%hd184783184805%_
                                               (##car _%rest184778184786%_))
                                              (_%tl184784184807%_
                                               (##cdr _%rest184778184786%_)))
                                          (let* ((_%id184810%_
                                                  _%hd184783184805%_)
                                                 (_%rest184812%_
                                                  _%tl184784184807%_))
                                            (_%K184782184802%_
                                             _%rest184812%_
                                             _%id184810%_)))
                                        (_%else184780184794%_))))))))
                      (if (pair? _%rpath184756184763%_)
                          (let ((_%hd184760184817%_
                                 (##car _%rpath184756184763%_))
                                (_%tl184761184819%_
                                 (##cdr _%rpath184756184763%_)))
                            (let* ((_%origin184822%_ _%hd184760184817%_)
                                   (_%refs184824%_ _%tl184761184819%_))
                              (_%K184759184814%_
                               _%refs184824%_
                               _%origin184822%_)))
                          (_%E184758184766%_))))))
          (let ((_%$e184741%_
                 (if (not _%reload?184736%_)
                     (__hash-get gx#__module-registry _%rpath184735%_)
                     '#f)))
            (if _%$e184741%_
                _%$e184741%_
                (if (list? _%rpath184735%_)
                    (_%import-submodule184739%_ _%rpath184735%_)
                    (if (gx#core-library-module-path? _%rpath184735%_)
                        (let ((_%ctx184746%_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _%rpath184735%_)
                                _%reload?184736%_)))
                          (__hash-put!
                           gx#__module-registry
                           _%rpath184735%_
                           _%ctx184746%_)
                          _%ctx184746%_)
                        (let* ((_%npath184749%_
                                (path-normalize _%rpath184735%_))
                               (_%$e184751%_
                                (if (not _%reload?184736%_)
                                    (__hash-get
                                     gx#__module-registry
                                     _%npath184749%_)
                                    '#f)))
                          (if _%$e184751%_
                              _%$e184751%_
                              (_%import-source184738%_
                               _%npath184749%_))))))))))
    (define gx#core-import-module__0
      (lambda (_%rpath184860%_)
        (let ((_%reload?184862%_ '#f))
          (gx#core-import-module__% _%rpath184860%_ _%reload?184862%_))))
    (define gx#core-import-module
      (lambda _g185966_
        (let ((_g185967_ (##length _g185966_)))
          (cond ((##fx= _g185967_ 1)
                 (apply gx#core-import-module__0 _g185966_))
                ((##fx= _g185967_ 2)
                 (apply gx#core-import-module__% _g185966_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g185966_))))))
    (define gx#core-read-module
      (lambda (_%path184717%_)
        (__with-catch
         (lambda (_%exn184719%_)
           (if (datum-parsing-exception? _%exn184719%_)
               (let ((_%pos184721%_
                      (datum-parsing-exception-filepos _%exn184719%_)))
                 (if (= _%pos184721%_ '0)
                     (gx#core-read-module/lang _%path184717%_)
                     (gx#raise-syntax-error
                      'read-module
                      '"error reading module"
                      _%path184717%_
                      (call-with-parameters__1
                       (lambda ()
                         (call-with-output-string
                          '""
                          (lambda (_%g184723184725%_)
                            (display-exception__%
                             _%exn184719%_
                             _%g184723184725%_))))
                       dump-stack-trace?
                       '#f)
                      (cons 'line:
                            (cons (##filepos-line _%pos184721%_)
                                  (cons 'col:
                                        (cons (##filepos-col _%pos184721%_)
                                              '())))))))
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _%path184717%_
                (call-with-parameters__1
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_%g184728184730%_)
                      (display-exception__% _%exn184719%_ _%g184728184730%_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _%path184717%_)))))
    (define gx#core-read-module/sexp
      (lambda (_%path184569%_)
        (let _%lp184571%_ ((_%body184573%_
                            (read-syntax-from-file _%path184569%_))
                           (_%pre184574%_ '#f)
                           (_%ns184575%_ '#f)
                           (_%pkg184576%_ '#f))
          (let* ((_%e184577184601%_ _%body184573%_)
                 (_%E184593184627%_
                  (lambda ()
                    (let ((_g185968_
                           (if _%pkg184576%_
                               (values _%pre184574%_
                                       _%ns184575%_
                                       _%pkg184576%_)
                               (gx#core-read-module-package
                                _%path184569%_
                                _%pre184574%_
                                _%ns184575%_))))
                      (begin
                        (let ((_g185969_
                               (if (##values? _g185968_)
                                   (##values-length _g185968_)
                                   1)))
                          (if (not (##fx= _g185969_ 3))
                              (error "Context expects 3 values" _g185969_)))
                        (let ((_%pre184605%_ (##values-ref _g185968_ 0))
                              (_%ns184606%_ (##values-ref _g185968_ 1))
                              (_%pkg184607%_ (##values-ref _g185968_ 2)))
                          (let* ((_%prelude184613%_
                                  (if (gx#core-bound-module-prelude?
                                       _%pre184605%_)
                                      (gx#syntax-local-e__0 _%pre184605%_)
                                      (if (gx#core-library-module-path?
                                           _%pre184605%_)
                                          (gx#core-resolve-library-module-path
                                           _%pre184605%_)
                                          (if (gx#stx-string? _%pre184605%_)
                                              (gx#core-resolve-module-path__%
                                               _%pre184605%_
                                               _%path184569%_)
                                              (gx#stx-e _%pre184605%_)))))
                                 (_%path-id184615%_
                                  (gx#core-module-path->namespace
                                   _%path184569%_))
                                 (_%pkg-id184617%_
                                  (if _%pkg184607%_
                                      (##string-append
                                       _%pkg184607%_
                                       '"/"
                                       _%path-id184615%_)
                                      _%path-id184615%_))
                                 (_%module-id184619%_
                                  (##string->symbol _%pkg-id184617%_))
                                 (_%module-ns184624%_
                                  (if (eq? _%ns184606%_ '#!void)
                                      '#f
                                      (let ((_%$e184621%_ _%ns184606%_))
                                        (if _%$e184621%_
                                            _%$e184621%_
                                            _%pkg-id184617%_)))))
                            (values _%prelude184613%_
                                    _%module-id184619%_
                                    _%module-ns184624%_
                                    _%body184573%_)))))))
                 (_%E184586184659%_
                  (lambda ()
                    (if (gx#stx-pair? _%e184577184601%_)
                        (let ((_%e184594184631%_
                               (gx#syntax-e _%e184577184601%_)))
                          (let ((_%hd184595184634%_ (##car _%e184594184631%_))
                                (_%tl184596184636%_ (##cdr _%e184594184631%_)))
                            (if (eq? (gx#stx-e _%hd184595184634%_) 'package:)
                                (if (gx#stx-pair? _%tl184596184636%_)
                                    (let ((_%e184597184639%_
                                           (gx#syntax-e _%tl184596184636%_)))
                                      (let ((_%hd184598184642%_
                                             (##car _%e184597184639%_))
                                            (_%tl184599184644%_
                                             (##cdr _%e184597184639%_)))
                                        (let* ((_%pkg184647%_
                                                _%hd184598184642%_)
                                               (_%rest184649%_
                                                _%tl184599184644%_)
                                               (_%pkg184657%_
                                                (if (gx#identifier?
                                                     _%pkg184647%_)
                                                    (symbol->string
                                                     (gx#stx-e _%pkg184647%_))
                                                    (if (or (gx#stx-string?
                                                             _%pkg184647%_)
                                                            (gx#stx-false?
                                                             _%pkg184647%_))
                                                        (gx#stx-e
                                                         _%pkg184647%_)
                                                        (gx#raise-syntax-error
                                                         'import
                                                         '"Bad syntax; Illegal package name"
                                                         _%pkg184647%_)))))
                                          (_%lp184571%_
                                           _%rest184649%_
                                           _%pre184574%_
                                           _%ns184575%_
                                           _%pkg184657%_))))
                                    (_%E184593184627%_))
                                (_%E184593184627%_))))
                        (_%E184593184627%_))))
                 (_%E184579184689%_
                  (lambda ()
                    (if (gx#stx-pair? _%e184577184601%_)
                        (let ((_%e184587184663%_
                               (gx#syntax-e _%e184577184601%_)))
                          (let ((_%hd184588184666%_ (##car _%e184587184663%_))
                                (_%tl184589184668%_ (##cdr _%e184587184663%_)))
                            (if (eq? (gx#stx-e _%hd184588184666%_) 'namespace:)
                                (if (gx#stx-pair? _%tl184589184668%_)
                                    (let ((_%e184590184671%_
                                           (gx#syntax-e _%tl184589184668%_)))
                                      (let ((_%hd184591184674%_
                                             (##car _%e184590184671%_))
                                            (_%tl184592184676%_
                                             (##cdr _%e184590184671%_)))
                                        (let* ((_%ns184679%_
                                                _%hd184591184674%_)
                                               (_%rest184681%_
                                                _%tl184592184676%_)
                                               (_%ns184687%_
                                                (if (gx#identifier?
                                                     _%ns184679%_)
                                                    (symbol->string
                                                     (gx#stx-e _%ns184679%_))
                                                    (if (gx#stx-string?
                                                         _%ns184679%_)
                                                        (gx#stx-e _%ns184679%_)
                                                        (if (gx#stx-false?
                                                             _%ns184679%_)
                                                            '#!void
                                                            (gx#raise-syntax-error
                                                             'import
                                                             '"Bad syntax; illegal namespace"
                                                             _%ns184679%_))))))
                                          (_%lp184571%_
                                           _%rest184681%_
                                           _%pre184574%_
                                           _%ns184687%_
                                           _%pkg184576%_))))
                                    (_%E184586184659%_))
                                (_%E184586184659%_))))
                        (_%E184586184659%_))))
                 (_%E184578184713%_
                  (lambda ()
                    (if (gx#stx-pair? _%e184577184601%_)
                        (let ((_%e184580184693%_
                               (gx#syntax-e _%e184577184601%_)))
                          (let ((_%hd184581184696%_ (##car _%e184580184693%_))
                                (_%tl184582184698%_ (##cdr _%e184580184693%_)))
                            (if (eq? (gx#stx-e _%hd184581184696%_) 'prelude:)
                                (if (gx#stx-pair? _%tl184582184698%_)
                                    (let ((_%e184583184701%_
                                           (gx#syntax-e _%tl184582184698%_)))
                                      (let ((_%hd184584184704%_
                                             (##car _%e184583184701%_))
                                            (_%tl184585184706%_
                                             (##cdr _%e184583184701%_)))
                                        (let* ((_%prelude184709%_
                                                _%hd184584184704%_)
                                               (_%rest184711%_
                                                _%tl184585184706%_))
                                          (_%lp184571%_
                                           _%rest184711%_
                                           _%prelude184709%_
                                           _%ns184575%_
                                           _%pkg184576%_))))
                                    (_%E184579184689%_))
                                (_%E184579184689%_))))
                        (_%E184579184689%_)))))
            (_%E184578184713%_)))))
    (define gx#core-read-module/lang
      (lambda (_%path184390%_)
        (letrec ((_%default-read-module-body184392%_
                  (lambda (_%inp184561%_)
                    (let _%lp184563%_ ((_%body184565%_ '()))
                      (let ((_%next184567%_ (read-syntax__% _%inp184561%_)))
                        (if (eof-object? _%next184567%_)
                            (reverse _%body184565%_)
                            (_%lp184563%_
                             (cons _%next184567%_ _%body184565%_)))))))
                 (_%read-body184393%_
                  (lambda (_%inp184478%_
                           _%pre184479%_
                           _%ns184480%_
                           _%pkg184481%_
                           _%args184482%_)
                    (let ((_g185970_
                           (if _%pkg184481%_
                               (values _%pre184479%_
                                       _%ns184480%_
                                       _%pkg184481%_)
                               (gx#core-read-module-package
                                _%path184390%_
                                _%pre184479%_
                                _%ns184480%_))))
                      (begin
                        (let ((_g185971_
                               (if (##values? _g185970_)
                                   (##values-length _g185970_)
                                   1)))
                          (if (not (##fx= _g185971_ 3))
                              (error "Context expects 3 values" _g185971_)))
                        (let ((_%pre184484%_ (##values-ref _g185970_ 0))
                              (_%ns184485%_ (##values-ref _g185970_ 1))
                              (_%pkg184486%_ (##values-ref _g185970_ 2)))
                          (let* ((_%prelude184488%_
                                  (gx#import-module__0 _%pre184484%_))
                                 (_%read-module-body184543%_
                                  (let ((_%$e184534%_
                                         (__find (lambda (_%e184489184491%_)
                                                   (let* ((_%e184489184493184503%_
                                                           _%e184489184491%_)
                                                          (_%else184495184511%_
                                                           (lambda () '#f))
                                                          (_%K184497184515%_
                                                           (lambda () '#t)))
                                                     (if (##structure-direct-instance-of?
                                                          _%e184489184493184503%_
                                                          'gx#module-export::t)
                                                         (let* ((_%e184498184518%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##unchecked-structure-ref
                          _%e184489184493184503%_
                          '1
                          '#f
                          '#f))
                        (_%e184499184521%_
                         (##unchecked-structure-ref
                          _%e184489184493184503%_
                          '2
                          '#f
                          '#f))
                        (_%e184500184524%_
                         (##unchecked-structure-ref
                          _%e184489184493184503%_
                          '3
                          '#f
                          '#f)))
                   (if (##eq? _%e184500184524%_ '1)
                       (let ((_%e184501184527%_
                              (##unchecked-structure-ref
                               _%e184489184493184503%_
                               '4
                               '#f
                               '#f)))
                         (if ((lambda (_%g184529184531%_)
                                (eq? _%g184529184531%_ 'read-module-body))
                              _%e184501184527%_)
                             (_%K184497184515%_)
                             (_%else184495184511%_)))
                       (_%else184495184511%_)))
                 (_%else184495184511%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (##unchecked-structure-ref
                                                  _%prelude184488%_
                                                  '9
                                                  '#f
                                                  '#f))))
                                    (if _%$e184534%_
                                        ((lambda (_%xport184537%_)
                                           (let ((_%proc184540%_
                                                  (__with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _%xport184537%_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _%proc184540%_)
                                                 _%proc184540%_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _%path184390%_
                                                  _%pre184484%_
                                                  _%proc184540%_))))
                                         _%$e184534%_)
                                        _%default-read-module-body184392%_)))
                                 (_%path-id184545%_
                                  (gx#core-module-path->namespace
                                   _%path184390%_))
                                 (_%pkg-id184547%_
                                  (if _%pkg184486%_
                                      (##string-append
                                       _%pkg184486%_
                                       '"/"
                                       _%path-id184545%_)
                                      _%path-id184545%_))
                                 (_%module-id184549%_
                                  (##string->symbol _%pkg-id184547%_))
                                 (_%module-ns184554%_
                                  (let ((_%$e184551%_ _%ns184485%_))
                                    (if _%$e184551%_
                                        _%$e184551%_
                                        _%pkg-id184547%_)))
                                 (_%body184558%_
                                  (call-with-parameters__1
                                   (lambda ()
                                     (call-with-parameters__1
                                      (lambda ()
                                        (_%read-module-body184543%_
                                         _%inp184478%_))
                                      gx#current-module-reader-args
                                      _%args184482%_))
                                   gx#current-module-reader-path
                                   _%path184390%_)))
                            (values _%prelude184488%_
                                    _%module-id184549%_
                                    _%module-ns184554%_
                                    _%body184558%_)))))))
                 (_%string-e184394%_
                  (lambda (_%obj184472%_ _%what184473%_)
                    (if (string? _%obj184472%_)
                        _%obj184472%_
                        (if (symbol? _%obj184472%_)
                            (##symbol->string _%obj184472%_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _%what184473%_)
                             _%path184390%_
                             _%obj184472%_)))))
                 (_%read-lang-args184395%_
                  (lambda (_%inp184427%_ _%args184428%_)
                    (let* ((_%args184429184437%_ _%args184428%_)
                           (_%else184431184445%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _%path184390%_)))
                           (_%K184433184460%_
                            (lambda (_%args184448%_ _%prelude184449%_)
                              (let* ((_%pkg184451%_
                                      (pgetq__0 'package: _%args184448%_))
                                     (_%pkg184453%_
                                      (if _%pkg184451%_
                                          (_%string-e184394%_
                                           _%pkg184451%_
                                           '"package")
                                          '#f))
                                     (_%ns184455%_
                                      (pgetq__0 'namespace: _%args184448%_))
                                     (_%ns184457%_
                                      (if _%ns184455%_
                                          (_%string-e184394%_
                                           _%ns184455%_
                                           '"namespace")
                                          '#f)))
                                (_%read-body184393%_
                                 _%inp184427%_
                                 _%prelude184449%_
                                 _%ns184457%_
                                 _%pkg184453%_
                                 _%args184448%_)))))
                      (if (pair? _%args184429184437%_)
                          (let ((_%hd184434184463%_
                                 (##car _%args184429184437%_))
                                (_%tl184435184465%_
                                 (##cdr _%args184429184437%_)))
                            (let* ((_%prelude184468%_ _%hd184434184463%_)
                                   (_%args184470%_ _%tl184435184465%_))
                              (_%K184433184460%_
                               _%args184470%_
                               _%prelude184468%_)))
                          (_%else184431184445%_)))))
                 (_%read-lang184396%_
                  (lambda (_%inp184401%_)
                    (let* ((_%head184403%_ (read-line _%inp184401%_))
                           (_%$e184405%_
                            (string-index__0 _%head184403%_ '#\space)))
                      (if _%$e184405%_
                          ((lambda (_%ix184408%_)
                             (let ((_%lang184410%_
                                    (substring
                                     _%head184403%_
                                     '0
                                     _%ix184408%_)))
                               (if (equal? _%lang184410%_ '"#lang")
                                   (let* ((_%rest184412%_
                                           (substring
                                            _%head184403%_
                                            (##fx+ _%ix184408%_ '1)
                                            (string-length _%head184403%_)))
                                          (_%args184423%_
                                           (__with-catch
                                            (lambda (_%g184413184415%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _%path184390%_
                                               _%g184413184415%_))
                                            (lambda ()
                                              (call-with-input-string
                                               _%rest184412%_
                                               (lambda (_%g184418184420%_)
                                                 (read-all
                                                  _%g184418184420%_
                                                  read)))))))
                                     (_%read-lang-args184395%_
                                      _%inp184401%_
                                      _%args184423%_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _%path184390%_))))
                           _%$e184405%_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _%path184390%_)))))
                 (_%read-e184397%_
                  (lambda (_%inp184399%_)
                    (if (eq? (peek-char _%inp184399%_) '#\#)
                        (_%read-lang184396%_ _%inp184399%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _%path184390%_)))))
          (gx#call-with-input-source-file _%path184390%_ _%read-e184397%_))))
    (define gx#core-read-module-package
      (lambda (_%path184338%_ _%pre184339%_ _%ns184340%_)
        (letrec ((_%string-e184342%_
                  (lambda (_%e184385%_)
                    (if (symbol? _%e184385%_)
                        (##symbol->string _%e184385%_)
                        (if (string? _%e184385%_)
                            _%e184385%_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%e184385%_))))))
          (let _%lp184344%_ ((_%dir184346%_ (path-directory _%path184338%_))
                             (_%pkg-path184347%_ '()))
            (let ((_%gerbil.pkg184349%_
                   (path-expand '"gerbil.pkg" _%dir184346%_)))
              (if (##file-exists? _%gerbil.pkg184349%_)
                  (let ((_%plist184351%_
                         (gx#core-library-package-plist__% _%dir184346%_ '#t)))
                    (if (null? _%plist184351%_)
                        (let ((_%pkg184354%_
                               (if (null? _%pkg-path184347%_)
                                   '#f
                                   (string-join _%pkg-path184347%_ '"/"))))
                          (values _%pre184339%_ _%ns184340%_ _%pkg184354%_))
                        (if (list? _%plist184351%_)
                            (let* ((_%root184357%_
                                    (pgetq__0 'package: _%plist184351%_))
                                   (_%pkg184361%_
                                    (let ((_%pkg-path184359%_
                                           (if _%root184357%_
                                               (cons (_%string-e184342%_
                                                      _%root184357%_)
                                                     _%pkg-path184347%_)
                                               _%pkg-path184347%_)))
                                      (if (null? _%pkg-path184359%_)
                                          '#f
                                          (string-join
                                           _%pkg-path184359%_
                                           '"/"))))
                                   (_%ns184368%_
                                    (let ((_%ns184366%_
                                           (let ((_%$e184363%_ _%ns184340%_))
                                             (if _%$e184363%_
                                                 _%$e184363%_
                                                 (pgetq__0
                                                  'namespace:
                                                  _%plist184351%_)))))
                                      (if _%ns184366%_
                                          (_%string-e184342%_ _%ns184366%_)
                                          '#f)))
                                   (_%pre184373%_
                                    (let ((_%$e184370%_ _%pre184339%_))
                                      (if _%$e184370%_
                                          _%$e184370%_
                                          (pgetq__0
                                           'prelude:
                                           _%plist184351%_)))))
                              (values _%pre184373%_
                                      _%ns184368%_
                                      _%pkg184361%_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%plist184351%_))))
                  (let ((_%dir*184377%_
                         (path-strip-trailing-directory-separator
                          _%dir184346%_)))
                    (if (or (__string-empty? _%dir*184377%_)
                            (equal? _%dir184346%_ _%dir*184377%_))
                        (values _%pre184339%_ _%ns184340%_ '#f)
                        (let ((_%xpath184382%_
                               (path-strip-directory _%dir*184377%_))
                              (_%xdir184383%_ (path-directory _%dir*184377%_)))
                          (_%lp184344%_
                           _%xdir184383%_
                           (cons _%xpath184382%_ _%pkg-path184347%_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_%path184336%_)
        (path-strip-extension (path-strip-directory _%path184336%_))))
    (define gx#core-module-path->id
      (lambda (_%path184334%_)
        (##string->symbol (gx#core-module-path->namespace _%path184334%_))))
    (define gx#core-resolve-module-path__%
      (lambda (_%stx-path184313%_ _%rel184314%_)
        (let* ((_%path184316%_ (gx#stx-e _%stx-path184313%_))
               (_%path184318%_
                (if (__string-empty? (path-extension _%path184316%_))
                    (##string-append _%path184316%_ '".ss")
                    _%path184316%_)))
          (gx#core-resolve-path__%
           _%path184318%_
           (let ((_%$e184321%_ (gx#stx-source _%stx-path184313%_)))
             (if _%$e184321%_ _%$e184321%_ _%rel184314%_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_%stx-path184327%_)
        (let ((_%rel184329%_ '#f))
          (gx#core-resolve-module-path__% _%stx-path184327%_ _%rel184329%_))))
    (define gx#core-resolve-module-path
      (lambda _g185972_
        (let ((_g185973_ (##length _g185972_)))
          (cond ((##fx= _g185973_ 1)
                 (apply gx#core-resolve-module-path__0 _g185972_))
                ((##fx= _g185973_ 2)
                 (apply gx#core-resolve-module-path__% _g185972_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g185972_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_%libpath184198%_)
        (let* ((_%spath184200%_ (symbol->string (gx#stx-e _%libpath184198%_)))
               (_%spath184202%_
                (substring
                 _%spath184200%_
                 '1
                 (##string-length _%spath184200%_)))
               (_%ext184204%_ (path-extension _%spath184202%_))
               (_%ssi184206%_
                (if (__string-empty? _%ext184204%_)
                    (##string-append _%spath184202%_ '".ssi")
                    (##string-append
                     (path-strip-extension _%spath184202%_)
                     '".ssi")))
               (_%srcs184210%_
                (if (__string-empty? _%ext184204%_)
                    (##map (lambda (_%ext184208%_)
                             (string-append _%spath184202%_ _%ext184208%_))
                           '(".ss" ".sld" ".scm"))
                    (cons _%spath184202%_ '()))))
          (let _%lp184213%_ ((_%rest184215%_ (load-path)))
            (let* ((_%rest184216184225%_ _%rest184215%_)
                   (_%E184219184229%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rest184216184225%_
                             '([dir . rest])
                             '([]))
                      '#!void)))
              (let ((_%K184221184300%_
                     (lambda (_%rest184240%_ _%dir184241%_)
                       (letrec ((_%resolve184243%_
                                 (lambda (_%ssi184256%_ _%srcs184257%_)
                                   (let ((_%compiled-path184259%_
                                          (path-expand
                                           _%ssi184256%_
                                           _%dir184241%_)))
                                     (if (##file-exists?
                                          _%compiled-path184259%_)
                                         (path-normalize
                                          _%compiled-path184259%_)
                                         (let _%lpr184261%_ ((_%rest-src184263%_
                                                              _%srcs184257%_))
                                           (let* ((_%rest-src184264184272%_
                                                   _%rest-src184263%_)
                                                  (_%else184266184280%_
                                                   (lambda ()
                                                     (_%lp184213%_
                                                      _%rest184240%_)))
                                                  (_%K184268184288%_
                                                   (lambda (_%rest-src184283%_
                                                            _%src184284%_)
                                                     (let ((_%src-path184286%_
                                                            (path-expand
                                                             _%src184284%_
                                                             _%dir184241%_)))
                                                       (if (##file-exists?
                                                            _%src-path184286%_)
                                                           (path-normalize
                                                            _%src-path184286%_)
                                                           (_%lpr184261%_
                                                            _%rest-src184283%_))))))
                                             (if (pair? _%rest-src184264184272%_)
                                                 (let ((_%hd184269184291%_
                                                        (##car _%rest-src184264184272%_))
                                                       (_%tl184270184293%_
                                                        (##cdr _%rest-src184264184272%_)))
                                                   (let* ((_%src184296%_
                                                           _%hd184269184291%_)
                                                          (_%rest-src184298%_
                                                           _%tl184270184293%_))
                                                     (_%K184268184288%_
                                                      _%rest-src184298%_
                                                      _%src184296%_)))
                                                 (_%else184266184280%_)))))))))
                         (let ((_%$e184245%_
                                (gx#core-library-package-path-prefix
                                 _%dir184241%_)))
                           (if _%$e184245%_
                               ((lambda (_%prefix184248%_)
                                  (if (string-prefix?
                                       _%prefix184248%_
                                       _%spath184202%_)
                                      (let ((_%ssi184252%_
                                             (substring
                                              _%ssi184206%_
                                              (string-length _%prefix184248%_)
                                              (##string-length _%ssi184206%_)))
                                            (_%srcs184253%_
                                             (##map (lambda (_%src184250%_)
                                                      (substring
                                                       _%src184250%_
                                                       (string-length
                                                        _%prefix184248%_)
                                                       (string-length
                                                        _%src184250%_)))
                                                    _%srcs184210%_)))
                                        (_%resolve184243%_
                                         _%ssi184252%_
                                         _%srcs184253%_))
                                      (_%lp184213%_ _%rest184240%_)))
                                _%$e184245%_)
                               (_%resolve184243%_
                                _%ssi184206%_
                                _%srcs184210%_))))))
                    (_%K184220184234%_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"cannot find library module"
                        _%libpath184198%_))))
                (let ((_%try-match184218184237%_
                       (lambda ()
                         (if (null? _%rest184216184225%_)
                             (_%K184220184234%_)
                             (_%E184219184229%_)))))
                  (if (pair? _%rest184216184225%_)
                      (let ((_%tl184223184305%_ (##cdr _%rest184216184225%_))
                            (_%hd184222184303%_ (##car _%rest184216184225%_)))
                        (let ((_%dir184308%_ _%hd184222184303%_)
                              (_%rest184310%_ _%tl184223184305%_))
                          (_%K184221184300%_ _%rest184310%_ _%dir184308%_)))
                      (_%try-match184218184237%_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_%modpath184166%_)
        (letrec ((_%resolve184168%_
                  (lambda (_%path184189%_ _%base184190%_)
                    (let ((_%$e184192%_
                           (string-rindex__0 _%base184190%_ '#\/)))
                      (if _%$e184192%_
                          ((lambda (_%idx184195%_)
                             (gx#core-resolve-library-module-path
                              (##string->symbol
                               (string-append
                                '":"
                                (substring _%base184190%_ '0 _%idx184195%_)
                                '"/"
                                _%path184189%_))))
                           _%$e184192%_)
                          (gx#core-resolve-library-module-path
                           (##string->symbol
                            (string-append '":" _%path184189%_))))))))
          (let ((_%spath184170%_ (symbol->string (gx#stx-e _%modpath184166%_)))
                (_%mod184171%_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _%mod184171%_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"cannot resolve relative module path; not in module context"
                 _%modpath184166%_))
            (let ((_%mpath184173%_
                   (symbol->string
                    (##structure-ref
                     _%mod184171%_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _%lp184175%_ ((_%spath184177%_ _%spath184170%_)
                                 (_%mpath184178%_ _%mpath184173%_))
                (if (string-prefix? '"../" _%spath184177%_)
                    (let ((_%$e184181%_
                           (string-rindex__0 _%mpath184178%_ '#\/)))
                      (if _%$e184181%_
                          ((lambda (_%idx184184%_)
                             (_%lp184175%_
                              (substring
                               _%spath184177%_
                               '3
                               (string-length _%spath184177%_))
                              (substring _%mpath184178%_ '0 _%idx184184%_)))
                           _%$e184181%_)
                          (gx#raise-syntax-error
                           '#f
                           '"cannot resolve relative module path; illegal traversal"
                           _%modpath184166%_)))
                    (if (string-prefix? '"./" _%spath184177%_)
                        (_%lp184175%_
                         (substring
                          _%spath184177%_
                          '2
                          (string-length _%spath184177%_))
                         _%mpath184178%_)
                        (_%resolve184168%_
                         _%spath184177%_
                         _%mpath184178%_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_%dir184158%_)
        (let ((_%$e184160%_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _%dir184158%_))))
          (if _%$e184160%_
              ((lambda (_%pkg184163%_)
                 (##string-append (symbol->string _%pkg184163%_) '"/"))
               _%$e184160%_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_%dir184128%_ _%exists?184129%_)
        (let ((_%$e184131%_ (__hash-get gx#__module-pkg-cache _%dir184128%_)))
          (if _%$e184131%_
              _%$e184131%_
              (let* ((_%gerbil.pkg184135%_
                      (path-expand '"gerbil.pkg" _%dir184128%_))
                     (_%plist184145%_
                      (if (or _%exists?184129%_
                              (##file-exists? _%gerbil.pkg184135%_))
                          (let ((_%e184140%_
                                 (gx#call-with-input-source-file
                                  _%gerbil.pkg184135%_
                                  read)))
                            (if (eof-object? _%e184140%_)
                                '()
                                (if (list? _%e184140%_)
                                    _%e184140%_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _%gerbil.pkg184135%_
                                     _%e184140%_))))
                          '())))
                (__hash-put!
                 gx#__module-pkg-cache
                 _%dir184128%_
                 _%plist184145%_)
                _%plist184145%_)))))
    (define gx#core-library-package-plist__0
      (lambda (_%dir184151%_)
        (let ((_%exists?184153%_ '#f))
          (gx#core-library-package-plist__% _%dir184151%_ _%exists?184153%_))))
    (define gx#core-library-package-plist
      (lambda _g185974_
        (let ((_g185975_ (##length _g185974_)))
          (cond ((##fx= _g185975_ 1)
                 (apply gx#core-library-package-plist__0 _g185974_))
                ((##fx= _g185975_ 2)
                 (apply gx#core-library-package-plist__% _g185974_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g185974_))))))
    (define gx#core-library-module-path?
      (lambda (_%stx184125%_)
        (gx#core-special-module-path? _%stx184125%_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_%stx184123%_)
        (gx#core-special-module-path? _%stx184123%_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_%stx184118%_ _%char184119%_)
        (if (gx#identifier? _%stx184118%_)
            (if (interned-symbol? (gx#stx-e _%stx184118%_))
                (let ((_%str184121%_
                       (symbol->string (gx#stx-e _%stx184118%_))))
                  (if (##fx> (##string-length _%str184121%_) '1)
                      (eq? (string-ref _%str184121%_ '0) _%char184119%_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_%stx184112%_)
        (gx#core-bound-identifier?__%
         _%stx184112%_
         (lambda (_%g184113184115%_)
           (gx#expander-binding?__% _%g184113184115%_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_%stx184106%_)
        (gx#core-bound-identifier?__%
         _%stx184106%_
         (lambda (_%g184107184109%_)
           (gx#expander-binding?__% _%g184107184109%_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_%stx184093%_)
        (letrec ((_%module-prelude?184095%_
                  (lambda (_%e184101%_)
                    (let ((_%$e184103%_
                           (##structure-instance-of?
                            _%e184101%_
                            'gx#module-context::t)))
                      (if _%$e184103%_
                          _%$e184103%_
                          (##structure-instance-of?
                           _%e184101%_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _%stx184093%_
           (lambda (_%g184096184098%_)
             (gx#expander-binding?__%
              _%g184096184098%_
              _%module-prelude?184095%_))))))
    (define gx#core-bind-import!__%
      (lambda (_%in184024%_ _%ctx184025%_ _%force-weak?184026%_)
        (let* ((_%in184027184036%_ _%in184024%_)
               (_%E184029184039%_
                (lambda ()
                  (error '"No clause matching"
                         _%in184027184036%_
                         '((module-import source key phi weak?)))
                  '#!void))
               (_%K184030184052%_
                (lambda (_%weak?184042%_
                         _%phi184043%_
                         _%key184044%_
                         _%source184045%_)
                  (gx#core-bind!__%
                   _%key184044%_
                   (let* ((_%e184047%_
                           (gx#core-resolve-module-export _%source184045%_))
                          (__obj185956
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
                      __obj185956
                      (##unchecked-structure-ref _%e184047%_ '1 '#f '#f)
                      _%key184044%_
                      _%phi184043%_
                      _%e184047%_
                      (##unchecked-structure-ref _%source184045%_ '1 '#f '#f)
                      (let ((_%$e184049%_ _%force-weak?184026%_))
                        (if _%$e184049%_ _%$e184049%_ _%weak?184042%_)))
                     __obj185956)
                   gx#core-context-rebind?
                   _%phi184043%_
                   _%ctx184025%_))))
          (if (##structure-direct-instance-of?
               _%in184027184036%_
               'gx#module-import::t)
              (let* ((_%e184031184055%_
                      (##unchecked-structure-ref
                       _%in184027184036%_
                       '1
                       '#f
                       '#f))
                     (_%source184058%_ _%e184031184055%_)
                     (_%e184032184060%_
                      (##unchecked-structure-ref
                       _%in184027184036%_
                       '2
                       '#f
                       '#f))
                     (_%key184063%_ _%e184032184060%_)
                     (_%e184033184065%_
                      (##unchecked-structure-ref
                       _%in184027184036%_
                       '3
                       '#f
                       '#f))
                     (_%phi184068%_ _%e184033184065%_)
                     (_%e184034184070%_
                      (##unchecked-structure-ref
                       _%in184027184036%_
                       '4
                       '#f
                       '#f))
                     (_%weak?184073%_ _%e184034184070%_))
                (_%K184030184052%_
                 _%weak?184073%_
                 _%phi184068%_
                 _%key184063%_
                 _%source184058%_))
              (_%E184029184039%_)))))
    (define gx#core-bind-import!__0
      (lambda (_%in184078%_)
        (let* ((_%ctx184080%_ (gx#current-expander-context))
               (_%force-weak?184082%_ '#f))
          (gx#core-bind-import!__%
           _%in184078%_
           _%ctx184080%_
           _%force-weak?184082%_))))
    (define gx#core-bind-import!__1
      (lambda (_%in184084%_ _%ctx184085%_)
        (let ((_%force-weak?184087%_ '#f))
          (gx#core-bind-import!__%
           _%in184084%_
           _%ctx184085%_
           _%force-weak?184087%_))))
    (define gx#core-bind-import!
      (lambda _g185976_
        (let ((_g185977_ (##length _g185976_)))
          (cond ((##fx= _g185977_ 1) (apply gx#core-bind-import!__0 _g185976_))
                ((##fx= _g185977_ 2) (apply gx#core-bind-import!__1 _g185976_))
                ((##fx= _g185977_ 3) (apply gx#core-bind-import!__% _g185976_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g185976_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_%in184010%_ _%ctx184011%_)
        (gx#core-bind-import!__% _%in184010%_ _%ctx184011%_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_%in184016%_)
        (let ((_%ctx184018%_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _%in184016%_ _%ctx184018%_))))
    (define gx#core-bind-weak-import!
      (lambda _g185978_
        (let ((_g185979_ (##length _g185978_)))
          (cond ((##fx= _g185979_ 1)
                 (apply gx#core-bind-weak-import!__0 _g185978_))
                ((##fx= _g185979_ 2)
                 (apply gx#core-bind-weak-import!__% _g185978_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g185978_))))))
    (define gx#core-resolve-module-export
      (lambda (_%out183903%_)
        (letrec ((_%subst183905%_
                  (lambda (_%key183950%_)
                    (let* ((_%key183951183959%_ _%key183950%_)
                           (_%else183953183967%_ (lambda () _%key183950%_))
                           (_%K183955183997%_
                            (lambda (_%mark183970%_ _%id183971%_)
                              (let* ((_%mark183972183978%_ _%mark183970%_)
                                     (_%E183974183981%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark183972183978%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K183975183989%_
                                      (lambda (_%subst183984%_)
                                        (let ((_%$e183986%_
                                               (if _%subst183984%_
                                                   (hash-get
                                                    _%subst183984%_
                                                    _%id183971%_)
                                                   '#f)))
                                          (if _%$e183986%_
                                              _%$e183986%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _%key183950%_))))))
                                (if (##structure-instance-of?
                                     _%mark183972183978%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e183976183992%_
                                            (##unchecked-structure-ref
                                             _%mark183972183978%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst183995%_ _%e183976183992%_))
                                      (_%K183975183989%_ _%subst183995%_))
                                    (_%E183974183981%_))))))
                      (if (pair? _%key183951183959%_)
                          (let ((_%hd183956184000%_
                                 (##car _%key183951183959%_))
                                (_%tl183957184002%_
                                 (##cdr _%key183951183959%_)))
                            (let* ((_%id184005%_ _%hd183956184000%_)
                                   (_%mark184007%_ _%tl183957184002%_))
                              (_%K183955183997%_ _%mark184007%_ _%id184005%_)))
                          (_%else183953183967%_))))))
          (let* ((_%out183906183916%_ _%out183903%_)
                 (_%E183908183919%_
                  (lambda ()
                    (error '"No clause matching"
                           _%out183906183916%_
                           '((module-export ctx key phi _ _)))
                    '#!void))
                 (_%K183909183926%_
                  (lambda (_%phi183922%_ _%key183923%_ _%ctx183924%_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _%ctx183924%_ _%phi183922%_)
                     (_%subst183905%_ _%key183923%_)))))
            (if (##structure-direct-instance-of?
                 _%out183906183916%_
                 'gx#module-export::t)
                (let* ((_%e183910183929%_
                        (##unchecked-structure-ref
                         _%out183906183916%_
                         '1
                         '#f
                         '#f))
                       (_%ctx183932%_ _%e183910183929%_)
                       (_%e183911183934%_
                        (##unchecked-structure-ref
                         _%out183906183916%_
                         '2
                         '#f
                         '#f))
                       (_%key183937%_ _%e183911183934%_)
                       (_%e183912183939%_
                        (##unchecked-structure-ref
                         _%out183906183916%_
                         '3
                         '#f
                         '#f))
                       (_%phi183942%_ _%e183912183939%_)
                       (_%e183913183944%_
                        (##unchecked-structure-ref
                         _%out183906183916%_
                         '4
                         '#f
                         '#f))
                       (_%e183914183947%_
                        (##unchecked-structure-ref
                         _%out183906183916%_
                         '5
                         '#f
                         '#f)))
                  (_%K183909183926%_
                   _%phi183942%_
                   _%key183937%_
                   _%ctx183932%_))
                (_%E183908183919%_))))))
    (define gx#core-module-export->import__%
      (lambda (_%out183829%_ _%rename183830%_ _%dphi183831%_)
        (let* ((_%out183832183842%_ _%out183829%_)
               (_%E183834183845%_
                (lambda ()
                  (error '"No clause matching"
                         _%out183832183842%_
                         '((module-export ctx key phi name weak?)))
                  '#!void))
               (_%K183835183857%_
                (lambda (_%weak?183848%_
                         _%name183849%_
                         _%phi183850%_
                         _%key183851%_
                         _%ctx183852%_)
                  (##structure
                   gx#module-import::t
                   _%out183829%_
                   (let ((_%$e183854%_ _%rename183830%_))
                     (if _%$e183854%_ _%$e183854%_ _%name183849%_))
                   (fx+ _%phi183850%_ _%dphi183831%_)
                   _%weak?183848%_))))
          (if (##structure-direct-instance-of?
               _%out183832183842%_
               'gx#module-export::t)
              (let* ((_%e183836183860%_
                      (##unchecked-structure-ref
                       _%out183832183842%_
                       '1
                       '#f
                       '#f))
                     (_%ctx183863%_ _%e183836183860%_)
                     (_%e183837183865%_
                      (##unchecked-structure-ref
                       _%out183832183842%_
                       '2
                       '#f
                       '#f))
                     (_%key183868%_ _%e183837183865%_)
                     (_%e183838183870%_
                      (##unchecked-structure-ref
                       _%out183832183842%_
                       '3
                       '#f
                       '#f))
                     (_%phi183873%_ _%e183838183870%_)
                     (_%e183839183875%_
                      (##unchecked-structure-ref
                       _%out183832183842%_
                       '4
                       '#f
                       '#f))
                     (_%name183878%_ _%e183839183875%_)
                     (_%e183840183880%_
                      (##unchecked-structure-ref
                       _%out183832183842%_
                       '5
                       '#f
                       '#f))
                     (_%weak?183883%_ _%e183840183880%_))
                (_%K183835183857%_
                 _%weak?183883%_
                 _%name183878%_
                 _%phi183873%_
                 _%key183868%_
                 _%ctx183863%_))
              (_%E183834183845%_)))))
    (define gx#core-module-export->import__0
      (lambda (_%out183888%_)
        (let* ((_%rename183890%_ '#f) (_%dphi183892%_ '0))
          (gx#core-module-export->import__%
           _%out183888%_
           _%rename183890%_
           _%dphi183892%_))))
    (define gx#core-module-export->import__1
      (lambda (_%out183894%_ _%rename183895%_)
        (let ((_%dphi183897%_ '0))
          (gx#core-module-export->import__%
           _%out183894%_
           _%rename183895%_
           _%dphi183897%_))))
    (define gx#core-module-export->import
      (lambda _g185980_
        (let ((_g185981_ (##length _g185980_)))
          (cond ((##fx= _g185981_ 1)
                 (apply gx#core-module-export->import__0 _g185980_))
                ((##fx= _g185981_ 2)
                 (apply gx#core-module-export->import__1 _g185980_))
                ((##fx= _g185981_ 3)
                 (apply gx#core-module-export->import__% _g185980_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g185980_))))))
    (define gx#core-expand-module%
      (lambda (_%stx183728%_)
        (letrec ((_%make-context183730%_
                  (lambda (_%id183807%_)
                    (let* ((_%super183809%_ (gx#current-expander-context))
                           (_%bind-id183811%_ (gx#stx-e _%id183807%_))
                           (_%mod-id183813%_
                            (if (##structure-instance-of?
                                 _%super183809%_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##unchecked-structure-ref
                                  _%super183809%_
                                  '1
                                  '#f
                                  '#f)
                                 '"~"
                                 _%bind-id183811%_)
                                _%bind-id183811%_))
                           (_%ns183815%_ (symbol->string _%mod-id183813%_))
                           (_%path183825%_
                            (if (##structure-instance-of?
                                 _%super183809%_
                                 'gx#module-context::t)
                                (let ((_%path183817%_
                                       (##unchecked-structure-ref
                                        _%super183809%_
                                        '7
                                        '#f
                                        '#f)))
                                  (if (or (pair? _%path183817%_)
                                          (null? _%path183817%_))
                                      (cons _%bind-id183811%_ _%path183817%_)
                                      (if (not _%path183817%_)
                                          _%bind-id183811%_
                                          (cons _%bind-id183811%_
                                                (cons _%path183817%_ '())))))
                                _%bind-id183811%_))
                           (__obj185957
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
                       __obj185957
                       _%mod-id183813%_
                       _%super183809%_
                       _%ns183815%_
                       _%path183825%_)
                      __obj185957)))
                 (_%valid-module-id?183731%_
                  (lambda (_%id183782%_)
                    (let* ((_%str183784%_ (symbol->string _%id183782%_))
                           (_%len183786%_ (##string-length _%str183784%_)))
                      (if (##fx>= _%len183786%_ '1)
                          (let _%loop183789%_ ((_%index183791%_
                                                (##fx- (##string-length
                                                        _%str183784%_)
                                                       '1)))
                            (if (##fx>= _%index183791%_ '0)
                                (let ((_%c183793%_
                                       (string-ref
                                        _%str183784%_
                                        _%index183791%_)))
                                  (if (or (and (##char>=? _%c183793%_ '#\a)
                                               (##char<=? _%c183793%_ '#\z))
                                          (and (##char>=? _%c183793%_ '#\A)
                                               (##char<=? _%c183793%_ '#\Z))
                                          (and (##char>=? _%c183793%_ '#\0)
                                               (##char<=? _%c183793%_ '#\9))
                                          (##char=? _%c183793%_ '#\_)
                                          (##char=? _%c183793%_ '#\-))
                                      (_%loop183789%_
                                       (##fx- _%index183791%_ '1))
                                      '#f))
                                '#t))
                          '#f)))))
          (let* ((_%e183732183742%_ _%stx183728%_)
                 (_%E183734183746%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e183732183742%_)))
                 (_%E183733183778%_
                  (lambda ()
                    (if (gx#stx-pair? _%e183732183742%_)
                        (let ((_%e183735183750%_
                               (gx#syntax-e _%e183732183742%_)))
                          (let ((_%hd183736183753%_ (##car _%e183735183750%_))
                                (_%tl183737183755%_ (##cdr _%e183735183750%_)))
                            (if (gx#stx-pair? _%tl183737183755%_)
                                (let ((_%e183738183758%_
                                       (gx#syntax-e _%tl183737183755%_)))
                                  (let ((_%hd183739183761%_
                                         (##car _%e183738183758%_))
                                        (_%tl183740183763%_
                                         (##cdr _%e183738183758%_)))
                                    (let* ((_%id183766%_ _%hd183739183761%_)
                                           (_%body183768%_ _%tl183740183763%_))
                                      (if (and (gx#identifier? _%id183766%_)
                                               (gx#stx-list? _%body183768%_))
                                          (if (_%valid-module-id?183731%_
                                               (gx#stx-e
                                                (gx#datum->syntax__0 '#f 'id)))
                                              (let* ((_%ctx183770%_
                                                      (_%make-context183730%_
                                                       _%id183766%_))
                                                     (_%body183772%_
                                                      (gx#core-expand-module-begin
                                                       _%body183768%_
                                                       _%ctx183770%_))
                                                     (_%body183774%_
                                                      (gx#core-quote-syntax__1
                                                       (gx#core-cons
                                                        '%#begin
                                                        _%body183772%_)
                                                       (gx#stx-source
                                                        _%stx183728%_))))
                                                (##unchecked-structure-set!
                                                 _%ctx183770%_
                                                 (__make-atomic-promise
                                                  (lambda ()
                                                    (gx#eval-syntax*
                                                     _%body183774%_)))
                                                 '10
                                                 '#f
                                                 '#f)
                                                (##unchecked-structure-set!
                                                 _%ctx183770%_
                                                 _%body183774%_
                                                 '11
                                                 '#f
                                                 '#f)
                                                (gx#core-bind-syntax!__0
                                                 _%id183766%_
                                                 _%ctx183770%_)
                                                (gx#core-quote-syntax__1
                                                 (gx#core-list
                                                  '%#module
                                                  (gx#core-quote-syntax__0
                                                   _%id183766%_)
                                                  _%body183774%_)
                                                 (gx#stx-source
                                                  _%stx183728%_)))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"invalid module id; allowed characters are A-Z,a-z,0-9,_,-"
                                               _%stx183728%_
                                               (gx#datum->syntax__0 '#f 'id)))
                                          (_%E183734183746%_)))))
                                (_%E183734183746%_))))
                        (_%E183734183746%_)))))
            (_%E183733183778%_)))))
    (define gx#core-expand-module-begin
      (lambda (_%body183693%_ _%ctx183694%_)
        (call-with-parameters__1
         (lambda ()
           (call-with-parameters__1
            (lambda ()
              (gx#core-bind-feature!__1 'gerbil-module '#t)
              (let* ((_%stx183698%_
                      (gx#core-expand-head
                       (cons '%%begin-module _%body183693%_)))
                     (_%e183699183706%_ _%stx183698%_)
                     (_%E183701183710%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module body expansion"
                         _%stx183698%_)))
                     (_%E183700183724%_
                      (lambda ()
                        (if (gx#stx-pair? _%e183699183706%_)
                            (let ((_%e183702183714%_
                                   (gx#syntax-e _%e183699183706%_)))
                              (let ((_%hd183703183717%_
                                     (##car _%e183702183714%_))
                                    (_%tl183704183719%_
                                     (##cdr _%e183702183714%_)))
                                (if (and (gx#identifier? _%hd183703183717%_)
                                         (gx#core-identifier=?
                                          _%hd183703183717%_
                                          '%#begin-module))
                                    (let ((_%body183722%_ _%tl183704183719%_))
                                      (if (gx#sealed-syntax? _%stx183698%_)
                                          _%body183722%_
                                          (gx#core-expand-module-body
                                           _%body183722%_)))
                                    (_%E183701183710%_))))
                            (_%E183701183710%_)))))
                (_%E183700183724%_)))
            gx#current-expander-phi
            '0))
         gx#current-expander-context
         _%ctx183694%_)))
    (define gx#core-expand-module-body
      (lambda (_%body183489%_)
        (letrec ((_%expand-special183491%_
                  (lambda (_%hd183620%_ _%K183621%_ _%rest183622%_ _%r183623%_)
                    (let* ((_%e183624183641%_ _%hd183620%_)
                           (_%E183636183645%_
                            (lambda ()
                              (_%K183621%_
                               _%rest183622%_
                               (cons (gx#core-expand-top _%hd183620%_)
                                     _%r183623%_))))
                           (_%E183626183657%_
                            (lambda ()
                              (if (gx#stx-pair? _%e183624183641%_)
                                  (let ((_%e183637183649%_
                                         (gx#syntax-e _%e183624183641%_)))
                                    (let ((_%hd183638183652%_
                                           (##car _%e183637183649%_))
                                          (_%tl183639183654%_
                                           (##cdr _%e183637183649%_)))
                                      (if (and (gx#identifier?
                                                _%hd183638183652%_)
                                               (gx#core-identifier=?
                                                _%hd183638183652%_
                                                '%#export))
                                          (_%K183621%_
                                           _%rest183622%_
                                           (cons _%hd183620%_ _%r183623%_))
                                          (_%E183636183645%_))))
                                  (_%E183636183645%_))))
                           (_%E183625183689%_
                            (lambda ()
                              (if (gx#stx-pair? _%e183624183641%_)
                                  (let ((_%e183627183661%_
                                         (gx#syntax-e _%e183624183641%_)))
                                    (let ((_%hd183628183664%_
                                           (##car _%e183627183661%_))
                                          (_%tl183629183666%_
                                           (##cdr _%e183627183661%_)))
                                      (if (and (gx#identifier?
                                                _%hd183628183664%_)
                                               (gx#core-identifier=?
                                                _%hd183628183664%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl183629183666%_)
                                              (let ((_%e183630183669%_
                                                     (gx#syntax-e
                                                      _%tl183629183666%_)))
                                                (let ((_%hd183631183672%_
                                                       (##car _%e183630183669%_))
                                                      (_%tl183632183674%_
                                                       (##cdr _%e183630183669%_)))
                                                  (let ((_%hd-bind183677%_
                                                         _%hd183631183672%_))
                                                    (if (gx#stx-pair?
                                                         _%tl183632183674%_)
                                                        (let ((_%e183633183679%_
                                                               (gx#syntax-e
                                                                _%tl183632183674%_)))
                                                          (let ((_%hd183634183682%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e183633183679%_))
                        (_%tl183635183684%_ (##cdr _%e183633183679%_)))
                    (let ((_%expr183687%_ _%hd183634183682%_))
                      (if (gx#stx-null? _%tl183635183684%_)
                          (if (gx#core-bind-values? _%hd-bind183677%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind183677%_)
                                (_%K183621%_
                                 _%rest183622%_
                                 (cons _%hd183620%_ _%r183623%_)))
                              (_%E183626183657%_))
                          (_%E183626183657%_)))))
                (_%E183626183657%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E183626183657%_))
                                          (_%E183626183657%_))))
                                  (_%E183626183657%_)))))
                      (_%E183625183689%_))))
                 (_%expand-body183492%_
                  (lambda (_%rbody183494%_)
                    (let _%lp183496%_ ((_%rest183498%_ _%rbody183494%_)
                                       (_%body183499%_ '()))
                      (let* ((_%rest183500183508%_ _%rest183498%_)
                             (_%else183502183516%_ (lambda () _%body183499%_))
                             (_%K183504183608%_
                              (lambda (_%rest183519%_ _%hd183520%_)
                                (let* ((_%e183521183542%_ _%hd183520%_)
                                       (_%E183537183546%_
                                        (lambda ()
                                          (_%lp183496%_
                                           _%rest183519%_
                                           (cons (gx#core-expand-expression
                                                  _%hd183520%_)
                                                 _%body183499%_))))
                                       (_%E183533183560%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e183521183542%_)
                                              (let ((_%e183538183550%_
                                                     (gx#syntax-e
                                                      _%e183521183542%_)))
                                                (let ((_%hd183539183553%_
                                                       (##car _%e183538183550%_))
                                                      (_%tl183540183555%_
                                                       (##cdr _%e183538183550%_)))
                                                  (let ((_%form183558%_
                                                         _%hd183539183553%_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _%form183558%_
                                                         gx#special-form-binding?)
                                                        (_%lp183496%_
                                                         _%rest183519%_
                                                         (cons _%hd183520%_
                                                               _%body183499%_))
                                                        (_%E183537183546%_)))))
                                              (_%E183537183546%_))))
                                       (_%E183523183572%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e183521183542%_)
                                              (let ((_%e183534183564%_
                                                     (gx#syntax-e
                                                      _%e183521183542%_)))
                                                (let ((_%hd183535183567%_
                                                       (##car _%e183534183564%_))
                                                      (_%tl183536183569%_
                                                       (##cdr _%e183534183564%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd183535183567%_)
                                                           (gx#core-identifier=?
                                                            _%hd183535183567%_
                                                            '%#export))
                                                      (_%lp183496%_
                                                       _%rest183519%_
                                                       (cons (gx#core-expand-export%__0
                                                              _%hd183520%_)
                                                             _%body183499%_))
                                                      (_%E183533183560%_))))
                                              (_%E183533183560%_))))
                                       (_%E183522183604%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e183521183542%_)
                                              (let ((_%e183524183576%_
                                                     (gx#syntax-e
                                                      _%e183521183542%_)))
                                                (let ((_%hd183525183579%_
                                                       (##car _%e183524183576%_))
                                                      (_%tl183526183581%_
                                                       (##cdr _%e183524183576%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd183525183579%_)
                                                           (gx#core-identifier=?
                                                            _%hd183525183579%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl183526183581%_)
                                                          (let ((_%e183527183584%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl183526183581%_)))
                    (let ((_%hd183528183587%_ (##car _%e183527183584%_))
                          (_%tl183529183589%_ (##cdr _%e183527183584%_)))
                      (let ((_%hd-bind183592%_ _%hd183528183587%_))
                        (if (gx#stx-pair? _%tl183529183589%_)
                            (let ((_%e183530183594%_
                                   (gx#syntax-e _%tl183529183589%_)))
                              (let ((_%hd183531183597%_
                                     (##car _%e183530183594%_))
                                    (_%tl183532183599%_
                                     (##cdr _%e183530183594%_)))
                                (let ((_%expr183602%_ _%hd183531183597%_))
                                  (if (gx#stx-null? _%tl183532183599%_)
                                      (_%lp183496%_
                                       _%rest183519%_
                                       (cons (gx#core-quote-syntax__1
                                              (gx#core-list
                                               '%#define-values
                                               (gx#core-quote-bind-values
                                                _%hd-bind183592%_)
                                               (gx#core-expand-expression
                                                _%expr183602%_))
                                              (gx#stx-source _%hd183520%_))
                                             _%body183499%_))
                                      (_%E183523183572%_)))))
                            (_%E183523183572%_)))))
                  (_%E183523183572%_))
              (_%E183523183572%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E183523183572%_)))))
                                  (_%E183522183604%_)))))
                        (if (pair? _%rest183500183508%_)
                            (let ((_%hd183505183611%_
                                   (##car _%rest183500183508%_))
                                  (_%tl183506183613%_
                                   (##cdr _%rest183500183508%_)))
                              (let* ((_%hd183616%_ _%hd183505183611%_)
                                     (_%rest183618%_ _%tl183506183613%_))
                                (_%K183504183608%_
                                 _%rest183618%_
                                 _%hd183616%_)))
                            (_%else183502183516%_)))))))
          (_%expand-body183492%_
           (gx#core-expand-block__%
            (cons '%#begin-module _%body183489%_)
            _%expand-special183491%_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_%stx183330%_
               _%expanded?183331%_
               _%method183332%_
               _%current-phi183333%_
               _%expand1183334%_)
        (letrec ((_%K183336%_
                  (lambda (_%rest183456%_ _%r183457%_)
                    (let* ((_%e183458183465%_ _%rest183456%_)
                           (_%E183460183469%_ (lambda () _%r183457%_))
                           (_%E183459183485%_
                            (lambda ()
                              (if (gx#stx-pair? _%e183458183465%_)
                                  (let ((_%e183461183473%_
                                         (gx#syntax-e _%e183458183465%_)))
                                    (let ((_%hd183462183476%_
                                           (##car _%e183461183473%_))
                                          (_%tl183463183478%_
                                           (##cdr _%e183461183473%_)))
                                      (let* ((_%hd183481%_ _%hd183462183476%_)
                                             (_%rest183483%_
                                              _%tl183463183478%_))
                                        (_%step183337%_
                                         _%hd183481%_
                                         _%rest183483%_
                                         _%r183457%_))))
                                  (_%E183460183469%_)))))
                      (_%E183459183485%_))))
                 (_%step183337%_
                  (lambda (_%hd183370%_ _%rest183371%_ _%r183372%_)
                    (let* ((_%e183373183391%_ _%hd183370%_)
                           (_%E183386183395%_
                            (lambda ()
                              (if (_%expanded?183331%_ (gx#stx-e _%hd183370%_))
                                  (_%K183336%_
                                   _%rest183371%_
                                   (cons (gx#stx-e _%hd183370%_) _%r183372%_))
                                  (_%expand1183334%_
                                   _%hd183370%_
                                   _%K183336%_
                                   _%rest183371%_
                                   _%r183372%_))))
                           (_%E183382183411%_
                            (lambda ()
                              (if (gx#stx-pair? _%e183373183391%_)
                                  (let ((_%e183387183399%_
                                         (gx#syntax-e _%e183373183391%_)))
                                    (let ((_%hd183388183402%_
                                           (##car _%e183387183399%_))
                                          (_%tl183389183404%_
                                           (##cdr _%e183387183399%_)))
                                      (let* ((_%macro183407%_
                                              _%hd183388183402%_)
                                             (_%body183409%_
                                              _%tl183389183404%_))
                                        (if (gx#core-bound-identifier?__%
                                             _%macro183407%_
                                             gx#syntax-binding?)
                                            (_%K183336%_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _%macro183407%_)
                                                    _%hd183370%_
                                                    _%method183332%_)
                                                   _%rest183371%_)
                                             _%r183372%_)
                                            (_%E183386183395%_)))))
                                  (_%E183386183395%_))))
                           (_%E183375183425%_
                            (lambda ()
                              (if (gx#stx-pair? _%e183373183391%_)
                                  (let ((_%e183383183415%_
                                         (gx#syntax-e _%e183373183391%_)))
                                    (let ((_%hd183384183418%_
                                           (##car _%e183383183415%_))
                                          (_%tl183385183420%_
                                           (##cdr _%e183383183415%_)))
                                      (if (eq? (gx#stx-e _%hd183384183418%_)
                                               'begin:)
                                          (let ((_%body183423%_
                                                 _%tl183385183420%_))
                                            (_%K183336%_
                                             (gx#stx-foldr
                                              cons
                                              _%rest183371%_
                                              _%body183423%_)
                                             _%r183372%_))
                                          (_%E183382183411%_))))
                                  (_%E183382183411%_))))
                           (_%E183374183452%_
                            (lambda ()
                              (if (gx#stx-pair? _%e183373183391%_)
                                  (let ((_%e183376183429%_
                                         (gx#syntax-e _%e183373183391%_)))
                                    (let ((_%hd183377183432%_
                                           (##car _%e183376183429%_))
                                          (_%tl183378183434%_
                                           (##cdr _%e183376183429%_)))
                                      (if (eq? (gx#stx-e _%hd183377183432%_)
                                               'phi:)
                                          (if (gx#stx-pair? _%tl183378183434%_)
                                              (let ((_%e183379183437%_
                                                     (gx#syntax-e
                                                      _%tl183378183434%_)))
                                                (let ((_%hd183380183440%_
                                                       (##car _%e183379183437%_))
                                                      (_%tl183381183442%_
                                                       (##cdr _%e183379183437%_)))
                                                  (let* ((_%dphi183445%_
                                                          _%hd183380183440%_)
                                                         (_%body183447%_
                                                          _%tl183381183442%_))
                                                    (if (gx#stx-fixnum?
                                                         _%dphi183445%_)
                                                        (let ((_%rbody183450%_
                                                               (call-with-parameters__1
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%K183336%_ _%body183447%_ '()))
                        _%current-phi183333%_
                        (fx+ (gx#stx-e _%dphi183445%_)
                             (_%current-phi183333%_)))))
                  (_%K183336%_
                   _%rest183371%_
                   (foldr__0 cons _%r183372%_ _%rbody183450%_)))
                (_%E183375183425%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E183375183425%_))
                                          (_%E183375183425%_))))
                                  (_%E183375183425%_)))))
                      (_%E183374183452%_)))))
          (let* ((_%e183338183345%_ _%stx183330%_)
                 (_%E183340183349%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e183338183345%_)))
                 (_%E183339183366%_
                  (lambda ()
                    (if (gx#stx-pair? _%e183338183345%_)
                        (let ((_%e183341183353%_
                               (gx#syntax-e _%e183338183345%_)))
                          (let ((_%hd183342183356%_ (##car _%e183341183353%_))
                                (_%tl183343183358%_ (##cdr _%e183341183353%_)))
                            (let ((_%body183361%_ _%tl183343183358%_))
                              (if (_%current-phi183333%_)
                                  (_%K183336%_ _%body183361%_ '())
                                  (call-with-parameters__1
                                   (lambda () (_%K183336%_ _%body183361%_ '()))
                                   _%current-phi183333%_
                                   (gx#current-expander-phi))))))
                        (_%E183340183349%_)))))
            (_%E183339183366%_)))))
    (define gx#core-expand-import%__%
      (lambda (_%stx182984%_ _%internal-expand?182985%_)
        (letrec ((_%expand1182987%_
                  (lambda (_%hd183302%_ _%K183303%_ _%rest183304%_ _%r183305%_)
                    (if (gx#core-bound-module? _%hd183302%_)
                        (_%import1182988%_
                         (gx#syntax-local-e__0 _%hd183302%_)
                         _%K183303%_
                         _%rest183304%_
                         _%r183305%_)
                        (if (gx#core-library-module-path? _%hd183302%_)
                            (_%import1182988%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%hd183302%_))
                             _%K183303%_
                             _%rest183304%_
                             _%r183305%_)
                            (if (gx#core-library-relative-module-path?
                                 _%hd183302%_)
                                (_%import1182988%_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _%hd183302%_))
                                 _%K183303%_
                                 _%rest183304%_
                                 _%r183305%_)
                                (let ((_%e183311%_ (gx#stx-e _%hd183302%_)))
                                  (if (pair? _%e183311%_)
                                      (let ((_%$e183314%_
                                             (gx#stx-e (##car _%e183311%_))))
                                        (if (eq? 'spec: _%$e183314%_)
                                            (_%import-spec182991%_
                                             _%hd183302%_
                                             _%K183303%_
                                             _%rest183304%_
                                             _%r183305%_)
                                            (if (eq? 'in: _%$e183314%_)
                                                (_%import-submodule182989%_
                                                 _%hd183302%_
                                                 _%K183303%_
                                                 _%rest183304%_
                                                 _%r183305%_)
                                                (if (eq? 'runtime:
                                                         _%$e183314%_)
                                                    (_%import-runtime182990%_
                                                     _%hd183302%_
                                                     _%K183303%_
                                                     _%rest183304%_
                                                     _%r183305%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _%stx182984%_
                                                     _%hd183302%_)))))
                                      (if (string? _%e183311%_)
                                          (_%import1182988%_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _%hd183302%_
                                             (gx#stx-source _%stx182984%_)))
                                           _%K183303%_
                                           _%rest183304%_
                                           _%r183305%_)
                                          (if (##structure-instance-of?
                                               _%e183311%_
                                               'gx#module-context::t)
                                              (_%K183303%_
                                               _%rest183304%_
                                               (cons _%e183311%_ _%r183305%_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _%stx182984%_
                                               _%hd183302%_))))))))))
                 (_%import1182988%_
                  (lambda (_%ctx183291%_
                           _%K183292%_
                           _%rest183293%_
                           _%r183294%_)
                    (let ((_%dphi183296%_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_%K183292%_
                       _%rest183293%_
                       (cons (##structure
                              gx#import-set::t
                              _%ctx183291%_
                              _%dphi183296%_
                              (map (lambda (_%g183297183299%_)
                                     (gx#core-module-export->import__%
                                      _%g183297183299%_
                                      '#f
                                      _%dphi183296%_))
                                   (##unchecked-structure-ref
                                    _%ctx183291%_
                                    '9
                                    '#f
                                    '#f)))
                             _%r183294%_)))))
                 (_%import-submodule182989%_
                  (lambda (_%hd183258%_ _%K183259%_ _%rest183260%_ _%r183261%_)
                    (let* ((_%e183262183269%_ _%hd183258%_)
                           (_%E183264183273%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e183262183269%_)))
                           (_%E183263183287%_
                            (lambda ()
                              (if (gx#stx-pair? _%e183262183269%_)
                                  (let ((_%e183265183277%_
                                         (gx#syntax-e _%e183262183269%_)))
                                    (let ((_%hd183266183280%_
                                           (##car _%e183265183277%_))
                                          (_%tl183267183282%_
                                           (##cdr _%e183265183277%_)))
                                      (let ((_%spath183285%_
                                             _%tl183267183282%_))
                                        (_%import1182988%_
                                         (_%import-spec-source182992%_
                                          _%spath183285%_)
                                         _%K183259%_
                                         _%rest183260%_
                                         _%r183261%_))))
                                  (_%E183264183273%_)))))
                      (_%E183263183287%_))))
                 (_%import-runtime182990%_
                  (lambda (_%hd183225%_ _%K183226%_ _%rest183227%_ _%r183228%_)
                    (let* ((_%e183229183236%_ _%hd183225%_)
                           (_%E183231183240%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e183229183236%_)))
                           (_%E183230183254%_
                            (lambda ()
                              (if (gx#stx-pair? _%e183229183236%_)
                                  (let ((_%e183232183244%_
                                         (gx#syntax-e _%e183229183236%_)))
                                    (let ((_%hd183233183247%_
                                           (##car _%e183232183244%_))
                                          (_%tl183234183249%_
                                           (##cdr _%e183232183244%_)))
                                      (let ((_%spath183252%_
                                             _%tl183234183249%_))
                                        (_%K183226%_
                                         _%rest183227%_
                                         (cons (_%import-spec-source182992%_
                                                _%spath183252%_)
                                               _%r183228%_)))))
                                  (_%E183231183240%_)))))
                      (_%E183230183254%_))))
                 (_%import-spec182991%_
                  (lambda (_%hd183063%_ _%K183064%_ _%rest183065%_ _%r183066%_)
                    (let* ((_%e183067183084%_ _%hd183063%_)
                           (_%E183076183088%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e183067183084%_)))
                           (_%E183069183199%_
                            (lambda ()
                              (if (gx#stx-pair? _%e183067183084%_)
                                  (let ((_%e183077183092%_
                                         (gx#syntax-e _%e183067183084%_)))
                                    (let ((_%hd183078183095%_
                                           (##car _%e183077183092%_))
                                          (_%tl183079183097%_
                                           (##cdr _%e183077183092%_)))
                                      (if (gx#stx-pair? _%tl183079183097%_)
                                          (let ((_%e183080183100%_
                                                 (gx#syntax-e
                                                  _%tl183079183097%_)))
                                            (let ((_%hd183081183103%_
                                                   (##car _%e183080183100%_))
                                                  (_%tl183082183105%_
                                                   (##cdr _%e183080183100%_)))
                                              (let* ((_%path183108%_
                                                      _%hd183081183103%_)
                                                     (_%specs183110%_
                                                      _%tl183082183105%_))
                                                (let ((_%src-ctx183112%_
                                                       (_%import-spec-source182992%_
                                                        _%path183108%_))
                                                      (_%exports183113%_
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
                                                      (_%specs183114%_
                                                       (gx#syntax->list
                                                        _%specs183110%_)))
                                                  (for-each
                                                   (lambda (_%out183116%_)
                                                     (__hash-put!
                                                      _%exports183113%_
                                                      (cons (##unchecked-structure-ref
                                                             _%out183116%_
                                                             '3
                                                             '#f
                                                             '#f)
                                                            (##unchecked-structure-ref
                                                             _%out183116%_
                                                             '4
                                                             '#f
                                                             '#f))
                                                      _%out183116%_))
                                                   (##unchecked-structure-ref
                                                    _%src-ctx183112%_
                                                    '9
                                                    '#f
                                                    '#f))
                                                  (_%K183064%_
                                                   _%rest183065%_
                                                   (foldl__0
                                                    (lambda (_%spec183118%_
                                                             _%r183119%_)
                                                      (let* ((_%e183120183136%_
                                                              _%spec183118%_)
                                                             (_%E183122183140%_
                                                              (lambda ()
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid syntax-case clause"
                         _%e183120183136%_)))
                     (_%E183121183195%_
                      (lambda ()
                        (if (gx#stx-pair? _%e183120183136%_)
                            (let ((_%e183123183144%_
                                   (gx#syntax-e _%e183120183136%_)))
                              (let ((_%hd183124183147%_
                                     (##car _%e183123183144%_))
                                    (_%tl183125183149%_
                                     (##cdr _%e183123183144%_)))
                                (let ((_%phi183152%_ _%hd183124183147%_))
                                  (if (gx#stx-pair? _%tl183125183149%_)
                                      (let ((_%e183126183154%_
                                             (gx#syntax-e _%tl183125183149%_)))
                                        (let ((_%hd183127183157%_
                                               (##car _%e183126183154%_))
                                              (_%tl183128183159%_
                                               (##cdr _%e183126183154%_)))
                                          (let ((_%name183162%_
                                                 _%hd183127183157%_))
                                            (if (gx#stx-pair?
                                                 _%tl183128183159%_)
                                                (let ((_%e183129183164%_
                                                       (gx#syntax-e
                                                        _%tl183128183159%_)))
                                                  (let ((_%hd183130183167%_
                                                         (##car _%e183129183164%_))
                                                        (_%tl183131183169%_
                                                         (##cdr _%e183129183164%_)))
                                                    (let ((_%src-phi183172%_
                                                           _%hd183130183167%_))
                                                      (if (gx#stx-pair?
                                                           _%tl183131183169%_)
                                                          (let ((_%e183132183174%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl183131183169%_)))
                    (let ((_%hd183133183177%_ (##car _%e183132183174%_))
                          (_%tl183134183179%_ (##cdr _%e183132183174%_)))
                      (let ((_%src-name183182%_ _%hd183133183177%_))
                        (if (gx#stx-null? _%tl183134183179%_)
                            (if (and (gx#stx-fixnum? _%src-phi183172%_)
                                     (gx#identifier? _%src-name183182%_)
                                     (gx#stx-fixnum? _%phi183152%_)
                                     (gx#identifier? _%name183162%_))
                                (let ((_%src-phi183184%_
                                       (gx#stx-e _%src-phi183172%_))
                                      (_%src-name183185%_
                                       (gx#core-identifier-key
                                        _%src-name183182%_))
                                      (_%phi183186%_ (gx#stx-e _%phi183152%_))
                                      (_%name183187%_
                                       (gx#core-identifier-key
                                        _%name183162%_)))
                                  (let ((_%$e183189%_
                                         (__hash-get
                                          _%exports183113%_
                                          (cons _%src-phi183184%_
                                                _%src-name183185%_))))
                                    (if _%$e183189%_
                                        ((lambda (_%out183192%_)
                                           (cons (gx#core-module-export->import__%
                                                  _%out183192%_
                                                  _%name183187%_
                                                  (fx- _%phi183186%_
                                                       _%src-phi183184%_))
                                                 _%r183119%_))
                                         _%$e183189%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; no matching export"
                                         _%stx182984%_
                                         _%hd183063%_))))
                                (_%E183122183140%_))
                            (_%E183122183140%_)))))
                  (_%E183122183140%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E183122183140%_)))))
                                      (_%E183122183140%_)))))
                            (_%E183122183140%_)))))
                (_%E183121183195%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r183066%_
                                                    _%specs183114%_))))))
                                          (_%E183076183088%_))))
                                  (_%E183076183088%_))))
                           (_%E183068183221%_
                            (lambda ()
                              (if (gx#stx-pair? _%e183067183084%_)
                                  (let ((_%e183070183203%_
                                         (gx#syntax-e _%e183067183084%_)))
                                    (let ((_%hd183071183206%_
                                           (##car _%e183070183203%_))
                                          (_%tl183072183208%_
                                           (##cdr _%e183070183203%_)))
                                      (if (gx#stx-pair? _%tl183072183208%_)
                                          (let ((_%e183073183211%_
                                                 (gx#syntax-e
                                                  _%tl183072183208%_)))
                                            (let ((_%hd183074183214%_
                                                   (##car _%e183073183211%_))
                                                  (_%tl183075183216%_
                                                   (##cdr _%e183073183211%_)))
                                              (let ((_%path183219%_
                                                     _%hd183074183214%_))
                                                (if (gx#stx-null?
                                                     _%tl183075183216%_)
                                                    (_%K183064%_
                                                     _%rest183065%_
                                                     (cons (_%import-spec-source182992%_
                                                            _%path183219%_)
                                                           _%r183066%_))
                                                    (_%E183069183199%_)))))
                                          (_%E183069183199%_))))
                                  (_%E183069183199%_)))))
                      (_%E183068183221%_))))
                 (_%import-spec-source182992%_
                  (lambda (_%spath183061%_)
                    (gx#core-import-nested-module
                     _%spath183061%_
                     _%stx182984%_)))
                 (_%import!182993%_
                  (lambda (_%rbody183006%_)
                    (letrec* ((_%current-ctx183008%_
                               (gx#current-expander-context))
                              (_%deps183009%_ (make-hash-table-eq))
                              (_%bind!183010%_
                               (lambda (_%hd183059%_)
                                 (gx#core-bind-import!__1
                                  _%hd183059%_
                                  _%current-ctx183008%_))))
                      (let _%lp183012%_ ((_%rest183014%_ _%rbody183006%_)
                                         (_%body183015%_ '()))
                        (let* ((_%rest183016183024%_ _%rest183014%_)
                               (_%else183018183035%_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _%current-ctx183008%_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _%current-ctx183008%_
                                       (foldl__0
                                        cons
                                        (##unchecked-structure-ref
                                         _%current-ctx183008%_
                                         '8
                                         '#f
                                         '#f)
                                        _%body183015%_)
                                       '8
                                       '#f
                                       '#f)
                                      '#!void)
                                  (__hash-for-each
                                   (lambda (_%ctx183032%_ _%_183033%_)
                                     (gx#eval-module _%ctx183032%_))
                                   _%deps183009%_)
                                  _%body183015%_))
                               (_%K183020183047%_
                                (lambda (_%rest183038%_ _%hd183039%_)
                                  (if (##structure-direct-instance-of?
                                       _%hd183039%_
                                       'gx#module-import::t)
                                      (let ()
                                        (_%bind!183010%_ _%hd183039%_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _%hd183039%_
                                                   '3
                                                   '#f
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _%hd183039%_
                                                            '1
                                                            '#f
                                                            '#f)
                                                           '3
                                                           '#f
                                                           '#f)))
                                            (__hash-put!
                                             _%deps183009%_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _%hd183039%_
                                               '1
                                               '#f
                                               '#f)
                                              '1
                                              '#f
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _%hd183039%_
                                           'gx#import-set::t)
                                          (let ()
                                            (for-each
                                             _%bind!183010%_
                                             (##unchecked-structure-ref
                                              _%hd183039%_
                                              '3
                                              '#f
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _%hd183039%_
                                                  '2
                                                  '#f
                                                  '#f))
                                                (__hash-put!
                                                 _%deps183009%_
                                                 (##unchecked-structure-ref
                                                  _%hd183039%_
                                                  '1
                                                  '#f
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_%$e183043%_
                                                 (##structure-instance-of?
                                                  _%hd183039%_
                                                  'gx#module-context::t)))
                                            (if _%$e183043%_
                                                _%$e183043%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _%stx182984%_
                                                 _%hd183039%_)))))
                                  (_%lp183012%_
                                   _%rest183038%_
                                   (cons _%hd183039%_ _%body183015%_)))))
                          (if (pair? _%rest183016183024%_)
                              (let ((_%hd183021183050%_
                                     (##car _%rest183016183024%_))
                                    (_%tl183022183052%_
                                     (##cdr _%rest183016183024%_)))
                                (let* ((_%hd183055%_ _%hd183021183050%_)
                                       (_%rest183057%_ _%tl183022183052%_))
                                  (_%K183020183047%_
                                   _%rest183057%_
                                   _%hd183055%_)))
                              (_%else183018183035%_)))))))
                 (_%expanded-import?182994%_
                  (lambda (_%e182998%_)
                    (let ((_%$e183000%_
                           (##structure-direct-instance-of?
                            _%e182998%_
                            'gx#import-set::t)))
                      (if _%$e183000%_
                          _%$e183000%_
                          (let ((_%$e183003%_
                                 (##structure-direct-instance-of?
                                  _%e182998%_
                                  'gx#module-import::t)))
                            (if _%$e183003%_
                                _%$e183003%_
                                (##structure-instance-of?
                                 _%e182998%_
                                 'gx#module-context::t))))))))
          (let ((_%rbody182996%_
                 (gx#core-expand-import/export
                  _%stx182984%_
                  _%expanded-import?182994%_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _%expand1182987%_)))
            (if _%internal-expand?182985%_
                (reverse _%rbody182996%_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_%import!182993%_ _%rbody182996%_))
                 (gx#stx-source _%stx182984%_)))))))
    (define gx#core-expand-import%__0
      (lambda (_%stx183323%_)
        (let ((_%internal-expand?183325%_ '#f))
          (gx#core-expand-import%__%
           _%stx183323%_
           _%internal-expand?183325%_))))
    (define gx#core-expand-import%
      (lambda _g185982_
        (let ((_g185983_ (##length _g185982_)))
          (cond ((##fx= _g185983_ 1)
                 (apply gx#core-expand-import%__0 _g185982_))
                ((##fx= _g185983_ 2)
                 (apply gx#core-expand-import%__% _g185982_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g185982_))))))
    (define gx#core-import-nested-module
      (lambda (_%spath182911%_ _%where182912%_)
        (let* ((_%e182913182920%_ _%spath182911%_)
               (_%E182915182924%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e182913182920%_)))
               (_%E182914182979%_
                (lambda ()
                  (if (gx#stx-pair? _%e182913182920%_)
                      (let ((_%e182916182928%_
                             (gx#syntax-e _%e182913182920%_)))
                        (let ((_%hd182917182931%_ (##car _%e182916182928%_))
                              (_%tl182918182933%_ (##cdr _%e182916182928%_)))
                          (let* ((_%origin182936%_ _%hd182917182931%_)
                                 (_%sub182938%_ _%tl182918182933%_)
                                 (_%origin-ctx182940%_
                                  (if (gx#stx-false? _%origin182936%_)
                                      (gx#current-expander-context)
                                      (gx#import-module__0 _%origin182936%_))))
                            (let _%lp182942%_ ((_%rest182944%_ _%sub182938%_)
                                               (_%ctx182945%_
                                                _%origin-ctx182940%_))
                              (let* ((_%e182946182953%_ _%rest182944%_)
                                     (_%E182948182957%_
                                      (lambda () _%ctx182945%_))
                                     (_%E182947182975%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e182946182953%_)
                                            (let ((_%e182949182961%_
                                                   (gx#syntax-e
                                                    _%e182946182953%_)))
                                              (let ((_%hd182950182964%_
                                                     (##car _%e182949182961%_))
                                                    (_%tl182951182966%_
                                                     (##cdr _%e182949182961%_)))
                                                (let* ((_%id182969%_
                                                        _%hd182950182964%_)
                                                       (_%rest182971%_
                                                        _%tl182951182966%_)
                                                       (_%bind182973%_
                                                        (gx#resolve-identifier__%
                                                         _%id182969%_
                                                         '0
                                                         _%ctx182945%_)))
                                                  (if (and (##structure-direct-instance-of?
                                                            _%bind182973%_
                                                            'gx#syntax-binding::t)
                                                           (##structure-instance-of?
                                                            (##unchecked-structure-ref
                                                             _%bind182973%_
                                                             '5
                                                             '#f
                                                             '#f)
                                                            'gx#module-context::t))
                                                      '#!void
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; not bound as module"
                                                       _%where182912%_
                                                       _%spath182911%_
                                                       _%id182969%_))
                                                  (_%lp182942%_
                                                   _%rest182971%_
                                                   (##unchecked-structure-ref
                                                    _%bind182973%_
                                                    '5
                                                    '#f
                                                    '#f)))))
                                            (_%E182948182957%_)))))
                                (_%E182947182975%_))))))
                      (_%E182915182924%_)))))
          (_%E182914182979%_))))
    (define gx#core-expand-import-source
      (lambda (_%hd182909%_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _%hd182909%_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_%stx182404%_ _%internal-expand?182405%_)
        (letrec* ((_%make-export__185910185911%_
                   (lambda (_%bind182857%_
                            _%phi182858%_
                            _%ctx182859%_
                            _%name182860%_)
                     (let* ((_%key182862%_
                             (##unchecked-structure-ref
                              _%bind182857%_
                              '2
                              '#f
                              '#f))
                            (_%export-key182864%_
                             (if _%name182860%_
                                 (gx#core-identifier-key _%name182860%_)
                                 _%key182862%_)))
                       (##structure
                        gx#module-export::t
                        _%ctx182859%_
                        _%key182862%_
                        _%phi182858%_
                        _%export-key182864%_
                        (let ((_%$e182867%_
                               (##structure-instance-of?
                                _%bind182857%_
                                'gx#extern-binding::t)))
                          (if _%$e182867%_
                              _%$e182867%_
                              (##structure-direct-instance-of?
                               _%bind182857%_
                               'gx#import-binding::t)))))))
                  (_%make-export__0__185912185915%_
                   (lambda (_%bind182873%_)
                     (let* ((_%phi182875%_ (gx#current-export-expander-phi))
                            (_%ctx182877%_ (gx#current-expander-context))
                            (_%name182879%_ '#f))
                       (_%make-export__185910185911%_
                        _%bind182873%_
                        _%phi182875%_
                        _%ctx182877%_
                        _%name182879%_))))
                  (_%make-export__1__185913185916%_
                   (lambda (_%bind182881%_ _%phi182882%_)
                     (let* ((_%ctx182884%_ (gx#current-expander-context))
                            (_%name182886%_ '#f))
                       (_%make-export__185910185911%_
                        _%bind182881%_
                        _%phi182882%_
                        _%ctx182884%_
                        _%name182886%_))))
                  (_%make-export__2__185914185917%_
                   (lambda (_%bind182888%_ _%phi182889%_ _%ctx182890%_)
                     (let ((_%name182892%_ '#f))
                       (_%make-export__185910185911%_
                        _%bind182888%_
                        _%phi182889%_
                        _%ctx182890%_
                        _%name182892%_))))
                  (_%make-export182407%_
                   (lambda _g185984_
                     (let ((_g185985_ (##length _g185984_)))
                       (cond ((##fx= _g185985_ 1)
                              (apply _%make-export__0__185912185915%_
                                     _g185984_))
                             ((##fx= _g185985_ 2)
                              (apply _%make-export__1__185913185916%_
                                     _g185984_))
                             ((##fx= _g185985_ 3)
                              (apply _%make-export__2__185914185917%_
                                     _g185984_))
                             ((##fx= _g185985_ 4)
                              (apply _%make-export__185910185911%_ _g185984_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g185984_))))))
                  (_%expand1182408%_
                   (lambda (_%hd182562%_
                            _%K182563%_
                            _%rest182564%_
                            _%r182565%_)
                     (let* ((_%e182566182598%_ _%hd182562%_)
                            (_%E182593182602%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _%stx182404%_
                                _%hd182562%_)))
                            (_%E182583182686%_
                             (lambda ()
                               (if (gx#stx-pair? _%e182566182598%_)
                                   (let ((_%e182594182606%_
                                          (gx#syntax-e _%e182566182598%_)))
                                     (let ((_%hd182595182609%_
                                            (##car _%e182594182606%_))
                                           (_%tl182596182611%_
                                            (##cdr _%e182594182606%_)))
                                       (if (eq? (gx#stx-e _%hd182595182609%_)
                                                'import:)
                                           (let ((_%in182614%_
                                                  _%tl182596182611%_))
                                             (if (gx#stx-list? _%in182614%_)
                                                 (let _%lp182616%_ ((_%in-rest182618%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%in182614%_)
                            (_%r182619%_ _%r182565%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%e182620182627%_
                                                           _%in-rest182618%_)
                                                          (_%E182622182631%_
                                                           (lambda ()
                                                             (_%K182563%_
                                                              _%rest182564%_
                                                              _%r182619%_)))
                                                          (_%E182621182682%_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%e182620182627%_)
                         (let ((_%e182623182635%_
                                (gx#syntax-e _%e182620182627%_)))
                           (let ((_%hd182624182638%_ (##car _%e182623182635%_))
                                 (_%tl182625182640%_
                                  (##cdr _%e182623182635%_)))
                             (let* ((_%hd182643%_ _%hd182624182638%_)
                                    (_%in-rest182645%_ _%tl182625182640%_)
                                    (_%src182680%_
                                     (if (gx#core-bound-module? _%hd182643%_)
                                         (gx#syntax-local-e__0 _%hd182643%_)
                                         (if (gx#core-library-module-path?
                                              _%hd182643%_)
                                             (gx#import-module__0
                                              (gx#core-resolve-library-module-path
                                               _%hd182643%_))
                                             (if (gx#core-library-relative-module-path?
                                                  _%hd182643%_)
                                                 (gx#import-module__0
                                                  (gx#core-resolve-library-relative-module-path
                                                   _%hd182643%_))
                                                 (if (gx#stx-string?
                                                      _%hd182643%_)
                                                     (gx#import-module__0
                                                      (gx#core-resolve-module-path__%
                                                       _%hd182643%_
                                                       (gx#stx-source
                                                        _%stx182404%_)))
                                                     (let* ((_%e182651182658%_
                                                             _%hd182643%_)
                                                            (_%E182653182662%_
                                                             (lambda ()
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; illegal re-export"
                                                                _%stx182404%_
                                                                _%hd182643%_)))
                                                            (_%E182652182676%_
                                                             (lambda ()
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%e182651182658%_)
                           (let ((_%e182654182666%_
                                  (gx#syntax-e _%e182651182658%_)))
                             (let ((_%hd182655182669%_
                                    (##car _%e182654182666%_))
                                   (_%tl182656182671%_
                                    (##cdr _%e182654182666%_)))
                               (if (eq? (gx#stx-e _%hd182655182669%_) 'in:)
                                   (let ((_%spath182674%_ _%tl182656182671%_))
                                     (gx#core-import-nested-module
                                      _%spath182674%_
                                      _%stx182404%_))
                                   (_%E182653182662%_))))
                           (_%E182653182662%_)))))
               (_%E182652182676%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (_%lp182616%_
                                _%in-rest182645%_
                                (_%export-imports182409%_
                                 _%src182680%_
                                 _%r182619%_)))))
                         (_%E182622182631%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E182621182682%_)))
                                                 (_%E182593182602%_)))
                                           (_%E182593182602%_))))
                                   (_%E182593182602%_))))
                            (_%E182570182726%_
                             (lambda ()
                               (if (gx#stx-pair? _%e182566182598%_)
                                   (let ((_%e182584182690%_
                                          (gx#syntax-e _%e182566182598%_)))
                                     (let ((_%hd182585182693%_
                                            (##car _%e182584182690%_))
                                           (_%tl182586182695%_
                                            (##cdr _%e182584182690%_)))
                                       (if (eq? (gx#stx-e _%hd182585182693%_)
                                                'rename:)
                                           (if (gx#stx-pair?
                                                _%tl182586182695%_)
                                               (let ((_%e182587182698%_
                                                      (gx#syntax-e
                                                       _%tl182586182695%_)))
                                                 (let ((_%hd182588182701%_
                                                        (##car _%e182587182698%_))
                                                       (_%tl182589182703%_
                                                        (##cdr _%e182587182698%_)))
                                                   (let ((_%id182706%_
                                                          _%hd182588182701%_))
                                                     (if (gx#stx-pair?
                                                          _%tl182589182703%_)
                                                         (let ((_%e182590182708%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl182589182703%_)))
                   (let ((_%hd182591182711%_ (##car _%e182590182708%_))
                         (_%tl182592182713%_ (##cdr _%e182590182708%_)))
                     (let ((_%name182716%_ _%hd182591182711%_))
                       (if (gx#stx-null? _%tl182592182713%_)
                           (let* ((_%phi182718%_
                                   (gx#current-export-expander-phi))
                                  (_%$e182720%_
                                   (gx#core-resolve-identifier__1
                                    _%id182706%_
                                    _%phi182718%_)))
                             (if _%$e182720%_
                                 ((lambda (_%bind182723%_)
                                    (_%K182563%_
                                     _%rest182564%_
                                     (cons (_%make-export__185910185911%_
                                            _%bind182723%_
                                            _%phi182718%_
                                            (gx#current-expander-context)
                                            _%name182716%_)
                                           _%r182565%_)))
                                  _%$e182720%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Reference to unbound identifier"
                                  _%stx182404%_
                                  _%hd182562%_
                                  _%id182706%_)))
                           (_%E182583182686%_)))))
                 (_%E182583182686%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E182583182686%_))
                                           (_%E182583182686%_))))
                                   (_%E182583182686%_))))
                            (_%E182569182776%_
                             (lambda ()
                               (if (gx#stx-pair? _%e182566182598%_)
                                   (let ((_%e182571182730%_
                                          (gx#syntax-e _%e182566182598%_)))
                                     (let ((_%hd182572182733%_
                                            (##car _%e182571182730%_))
                                           (_%tl182573182735%_
                                            (##cdr _%e182571182730%_)))
                                       (if (eq? (gx#stx-e _%hd182572182733%_)
                                                'spec:)
                                           (if (gx#stx-pair?
                                                _%tl182573182735%_)
                                               (let ((_%e182574182738%_
                                                      (gx#syntax-e
                                                       _%tl182573182735%_)))
                                                 (let ((_%hd182575182741%_
                                                        (##car _%e182574182738%_))
                                                       (_%tl182576182743%_
                                                        (##cdr _%e182574182738%_)))
                                                   (let ((_%phi182746%_
                                                          _%hd182575182741%_))
                                                     (if (gx#stx-pair?
                                                          _%tl182576182743%_)
                                                         (let ((_%e182577182748%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl182576182743%_)))
                   (let ((_%hd182578182751%_ (##car _%e182577182748%_))
                         (_%tl182579182753%_ (##cdr _%e182577182748%_)))
                     (let ((_%id182756%_ _%hd182578182751%_))
                       (if (gx#stx-pair? _%tl182579182753%_)
                           (let ((_%e182580182758%_
                                  (gx#syntax-e _%tl182579182753%_)))
                             (let ((_%hd182581182761%_
                                    (##car _%e182580182758%_))
                                   (_%tl182582182763%_
                                    (##cdr _%e182580182758%_)))
                               (let ((_%name182766%_ _%hd182581182761%_))
                                 (if (gx#stx-null? _%tl182582182763%_)
                                     (if (and (gx#stx-fixnum? _%phi182746%_)
                                              (gx#identifier? _%id182756%_)
                                              (gx#identifier? _%name182766%_))
                                         (let* ((_%phi182768%_
                                                 (gx#stx-e _%phi182746%_))
                                                (_%$e182770%_
                                                 (gx#core-resolve-identifier__1
                                                  _%id182756%_
                                                  _%phi182768%_)))
                                           (if _%$e182770%_
                                               ((lambda (_%bind182773%_)
                                                  (_%K182563%_
                                                   _%rest182564%_
                                                   (cons (_%make-export__185910185911%_
                                                          _%bind182773%_
                                                          _%phi182768%_
                                                          (gx#current-expander-context)
                                                          _%name182766%_)
                                                         _%r182565%_)))
                                                _%$e182770%_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _%stx182404%_
                                                _%hd182562%_
                                                _%id182756%_)))
                                         (_%E182570182726%_))
                                     (_%E182570182726%_)))))
                           (_%E182570182726%_)))))
                 (_%E182570182726%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E182570182726%_))
                                           (_%E182570182726%_))))
                                   (_%E182570182726%_))))
                            (_%E182568182788%_
                             (lambda ()
                               (let ((_%id182780%_ _%e182566182598%_))
                                 (if (gx#identifier? _%id182780%_)
                                     (let ((_%$e182782%_
                                            (gx#core-resolve-identifier__1
                                             _%id182780%_
                                             (gx#current-export-expander-phi))))
                                       (if _%$e182782%_
                                           ((lambda (_%bind182785%_)
                                              (_%K182563%_
                                               _%rest182564%_
                                               (cons (_%make-export__0__185912185915%_
                                                      _%bind182785%_)
                                                     _%r182565%_)))
                                            _%$e182782%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _%stx182404%_
                                            _%hd182562%_)))
                                     (_%E182569182776%_)))))
                            (_%E182567182852%_
                             (lambda ()
                               (if (eq? (gx#stx-e _%e182566182598%_) '#t)
                                   (let* ((_%current-ctx182792%_
                                           (gx#current-expander-context))
                                          (_%current-phi182794%_
                                           (gx#current-export-expander-phi))
                                          (_%phi-ctx182796%_
                                           (gx#core-context-shift
                                            _%current-ctx182792%_
                                            _%current-phi182794%_))
                                          (_%phi-bind182798%_
                                           (hash->list
                                            (##unchecked-structure-ref
                                             _%phi-ctx182796%_
                                             '2
                                             '#f
                                             '#f))))
                                     (let _%lp182801%_ ((_%bind-rest182803%_
                                                         _%phi-bind182798%_)
                                                        (_%set182804%_ '()))
                                       (let* ((_%bind-rest182805182815%_
                                               _%bind-rest182803%_)
                                              (_%else182807182823%_
                                               (lambda ()
                                                 (_%K182563%_
                                                  _%rest182564%_
                                                  (cons (##structure
                                                         gx#export-set::t
                                                         '#f
                                                         _%current-phi182794%_
                                                         _%set182804%_)
                                                        _%r182565%_))))
                                              (_%K182809182833%_
                                               (lambda (_%bind-rest182826%_
                                                        _%bind182827%_
                                                        _%key182828%_)
                                                 (if (or (##structure-direct-instance-of?
                                                          _%bind182827%_
                                                          'gx#import-binding::t)
                                                         (gx#private-feature-binding?
                                                          _%bind182827%_))
                                                     (_%lp182801%_
                                                      _%bind-rest182826%_
                                                      _%set182804%_)
                                                     (_%lp182801%_
                                                      _%bind-rest182826%_
                                                      (cons (_%make-export__2__185914185917%_
                                                             _%bind182827%_
                                                             _%current-phi182794%_
                                                             _%current-ctx182792%_)
                                                            _%set182804%_))))))
                                         (if (pair? _%bind-rest182805182815%_)
                                             (let ((_%hd182810182836%_
                                                    (##car _%bind-rest182805182815%_))
                                                   (_%tl182811182838%_
                                                    (##cdr _%bind-rest182805182815%_)))
                                               (if (pair? _%hd182810182836%_)
                                                   (let ((_%hd182812182841%_
                                                          (##car _%hd182810182836%_))
                                                         (_%tl182813182843%_
                                                          (##cdr _%hd182810182836%_)))
                                                     (let* ((_%key182846%_
                                                             _%hd182812182841%_)
                                                            (_%bind182848%_
                                                             _%tl182813182843%_)
                                                            (_%bind-rest182850%_
                                                             _%tl182811182838%_))
                                                       (_%K182809182833%_
                                                        _%bind-rest182850%_
                                                        _%bind182848%_
                                                        _%key182846%_)))
                                                   (_%else182807182823%_)))
                                             (_%else182807182823%_)))))
                                   (_%E182568182788%_)))))
                       (_%E182567182852%_))))
                  (_%export-imports182409%_
                   (lambda (_%src182439%_ _%r182440%_)
                     (letrec* ((_%current-ctx182442%_
                                (gx#current-expander-context))
                               (_%current-phi182443%_
                                (gx#current-export-expander-phi))
                               (_%import->export182444%_
                                (lambda (_%in182525%_)
                                  (let* ((_%in182526182534%_ _%in182525%_)
                                         (_%E182528182537%_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _%in182526182534%_
                                                   '((module-import
                                                      out
                                                      key
                                                      phi)))
                                            '#!void))
                                         (_%K182529182544%_
                                          (lambda (_%phi182540%_
                                                   _%key182541%_
                                                   _%out182542%_)
                                            (##structure
                                             gx#module-export::t
                                             _%current-ctx182442%_
                                             _%key182541%_
                                             _%phi182540%_
                                             _%key182541%_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _%in182526182534%_
                                         'gx#module-import::t)
                                        (let* ((_%e182530182547%_
                                                (##unchecked-structure-ref
                                                 _%in182526182534%_
                                                 '1
                                                 '#f
                                                 '#f))
                                               (_%out182550%_
                                                _%e182530182547%_)
                                               (_%e182531182552%_
                                                (##unchecked-structure-ref
                                                 _%in182526182534%_
                                                 '2
                                                 '#f
                                                 '#f))
                                               (_%key182555%_
                                                _%e182531182552%_)
                                               (_%e182532182557%_
                                                (##unchecked-structure-ref
                                                 _%in182526182534%_
                                                 '3
                                                 '#f
                                                 '#f))
                                               (_%phi182560%_
                                                _%e182532182557%_))
                                          (_%K182529182544%_
                                           _%phi182560%_
                                           _%key182555%_
                                           _%out182550%_))
                                        (_%E182528182537%_)))))
                               (_%fold-e182445%_
                                (lambda (_%in182447%_ _%r182448%_)
                                  (let* ((_%in182449182463%_ _%in182447%_)
                                         (_%else182452182471%_
                                          (lambda () _%r182448%_)))
                                    (let ((_%K182458182507%_
                                           (lambda (_%phi182503%_
                                                    _%key182504%_
                                                    _%out182505%_)
                                             (if (and (fx= _%phi182503%_
                                                           _%current-phi182443%_)
                                                      (eq? _%src182439%_
                                                           (##unchecked-structure-ref
                                                            _%out182505%_
                                                            '1
                                                            '#f
                                                            '#f)))
                                                 (cons (_%import->export182444%_
                                                        _%in182447%_)
                                                       _%r182448%_)
                                                 _%r182448%_)))
                                          (_%K182454182482%_
                                           (lambda (_%imports182475%_
                                                    _%phi182476%_
                                                    _%ctx182477%_)
                                             (if (and (fx= _%phi182476%_
                                                           _%current-phi182443%_)
                                                      (eq? _%src182439%_
                                                           _%ctx182477%_))
                                                 (foldl__0
                                                  (lambda (_%in182479%_
                                                           _%r182480%_)
                                                    (cons (_%import->export182444%_
                                                           _%in182479%_)
                                                          _%r182480%_))
                                                  _%r182448%_
                                                  _%imports182475%_)
                                                 _%r182448%_))))
                                      (let ((_%try-match182451182500%_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _%in182449182463%_
                                                    'gx#import-set::t)
                                                   (let* ((_%e182455182485%_
                                                           (##unchecked-structure-ref
                                                            _%in182449182463%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                          (_%e182456182490%_
                                                           (##unchecked-structure-ref
                                                            _%in182449182463%_
                                                            '2
                                                            '#f
                                                            '#f))
                                                          (_%e182457182495%_
                                                           (##unchecked-structure-ref
                                                            _%in182449182463%_
                                                            '3
                                                            '#f
                                                            '#f)))
                                                     (let ((_%ctx182488%_
                                                            _%e182455182485%_)
                                                           (_%phi182493%_
                                                            _%e182456182490%_)
                                                           (_%imports182498%_
                                                            _%e182457182495%_))
                                                       (_%K182454182482%_
                                                        _%imports182498%_
                                                        _%phi182493%_
                                                        _%ctx182488%_)))
                                                   (_%else182452182471%_)))))
                                        (if (##structure-direct-instance-of?
                                             _%in182449182463%_
                                             'gx#module-import::t)
                                            (let* ((_%e182459182510%_
                                                    (##unchecked-structure-ref
                                                     _%in182449182463%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                   (_%e182460182515%_
                                                    (##unchecked-structure-ref
                                                     _%in182449182463%_
                                                     '2
                                                     '#f
                                                     '#f))
                                                   (_%e182461182520%_
                                                    (##unchecked-structure-ref
                                                     _%in182449182463%_
                                                     '3
                                                     '#f
                                                     '#f)))
                                              (let ((_%out182513%_
                                                     _%e182459182510%_)
                                                    (_%key182518%_
                                                     _%e182460182515%_)
                                                    (_%phi182523%_
                                                     _%e182461182520%_))
                                                (_%K182458182507%_
                                                 _%phi182523%_
                                                 _%key182518%_
                                                 _%out182513%_)))
                                            (_%try-match182451182500%_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _%src182439%_
                              _%current-phi182443%_
                              (foldl__0
                               _%fold-e182445%_
                               '()
                               (##unchecked-structure-ref
                                _%current-ctx182442%_
                                '8
                                '#f
                                '#f)))
                             _%r182440%_))))
                  (_%export!182410%_
                   (lambda (_%rbody182426%_)
                     (letrec* ((_%current-ctx182428%_
                                (gx#current-expander-context))
                               (_%fold-e182429%_
                                (lambda (_%out182433%_ _%r182434%_)
                                  (if (##structure-direct-instance-of?
                                       _%out182433%_
                                       'gx#module-export::t)
                                      (cons _%out182433%_ _%r182434%_)
                                      (if (##structure-direct-instance-of?
                                           _%out182433%_
                                           'gx#export-set::t)
                                          (foldl__0
                                           cons
                                           _%r182434%_
                                           (##unchecked-structure-ref
                                            _%out182433%_
                                            '3
                                            '#f
                                            '#f))
                                          _%r182434%_)))))
                       (let ((_%body182431%_ (reverse _%rbody182426%_)))
                         (##unchecked-structure-set!
                          _%current-ctx182428%_
                          (foldl__0
                           _%fold-e182429%_
                           (##unchecked-structure-ref
                            _%current-ctx182428%_
                            '9
                            '#f
                            '#f)
                           _%body182431%_)
                          '9
                          '#f
                          '#f)
                         _%body182431%_))))
                  (_%expanded-export?182411%_
                   (lambda (_%e182421%_)
                     (let ((_%$e182423%_
                            (##structure-direct-instance-of?
                             _%e182421%_
                             'gx#module-export::t)))
                       (if _%$e182423%_
                           _%$e182423%_
                           (##structure-direct-instance-of?
                            _%e182421%_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _%internal-expand?182405%_)
              (let ((_%rbody182417%_
                     (gx#core-expand-import/export
                      _%stx182404%_
                      _%expanded-export?182411%_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _%expand1182408%_)))
                (if _%internal-expand?182405%_
                    (reverse _%rbody182417%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons
                      '%#export
                      (_%export!182410%_ _%rbody182417%_))
                     (gx#stx-source _%stx182404%_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _%stx182404%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _%stx182404%_))))))
    (define gx#core-expand-export%__0
      (lambda (_%stx182902%_)
        (let ((_%internal-expand?182904%_ '#f))
          (gx#core-expand-export%__%
           _%stx182902%_
           _%internal-expand?182904%_))))
    (define gx#core-expand-export%
      (lambda _g185986_
        (let ((_g185987_ (##length _g185986_)))
          (cond ((##fx= _g185987_ 1)
                 (apply gx#core-expand-export%__0 _g185986_))
                ((##fx= _g185987_ 2)
                 (apply gx#core-expand-export%__% _g185986_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g185986_))))))
    (define gx#core-expand-export-source
      (lambda (_%hd182401%_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _%hd182401%_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_%stx182371%_)
        (let* ((_%e182372182379%_ _%stx182371%_)
               (_%E182374182383%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e182372182379%_)))
               (_%E182373182397%_
                (lambda ()
                  (if (gx#stx-pair? _%e182372182379%_)
                      (let ((_%e182375182387%_
                             (gx#syntax-e _%e182372182379%_)))
                        (let ((_%hd182376182390%_ (##car _%e182375182387%_))
                              (_%tl182377182392%_ (##cdr _%e182375182387%_)))
                          (let ((_%body182395%_ _%tl182377182392%_))
                            (if (gx#identifier-list? _%body182395%_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _%body182395%_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _%body182395%_))
                                   (gx#stx-source _%stx182371%_)))
                                (_%E182374182383%_)))))
                      (_%E182374182383%_)))))
          (_%E182373182397%_))))
    (define gx#core-bind-feature!__%
      (lambda (_%id182337%_ _%private?182338%_ _%phi182339%_ _%ctx182340%_)
        (gx#core-bind-syntax!__%
         _%id182337%_
         ((if _%private?182338%_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _%id182337%_))
         _%private?182338%_
         _%phi182339%_
         _%ctx182340%_)))
    (define gx#core-bind-feature!__0
      (lambda (_%id182345%_)
        (let* ((_%private?182347%_ '#f)
               (_%phi182349%_ (gx#current-expander-phi))
               (_%ctx182351%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id182345%_
           _%private?182347%_
           _%phi182349%_
           _%ctx182351%_))))
    (define gx#core-bind-feature!__1
      (lambda (_%id182353%_ _%private?182354%_)
        (let* ((_%phi182356%_ (gx#current-expander-phi))
               (_%ctx182358%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id182353%_
           _%private?182354%_
           _%phi182356%_
           _%ctx182358%_))))
    (define gx#core-bind-feature!__2
      (lambda (_%id182360%_ _%private?182361%_ _%phi182362%_)
        (let ((_%ctx182364%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id182360%_
           _%private?182361%_
           _%phi182362%_
           _%ctx182364%_))))
    (define gx#core-bind-feature!
      (lambda _g185988_
        (let ((_g185989_ (##length _g185988_)))
          (cond ((##fx= _g185989_ 1)
                 (apply gx#core-bind-feature!__0 _g185988_))
                ((##fx= _g185989_ 2)
                 (apply gx#core-bind-feature!__1 _g185988_))
                ((##fx= _g185989_ 3)
                 (apply gx#core-bind-feature!__2 _g185988_))
                ((##fx= _g185989_ 4)
                 (apply gx#core-bind-feature!__% _g185988_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g185988_))))))))
