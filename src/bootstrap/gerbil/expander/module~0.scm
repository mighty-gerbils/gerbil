(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1770744576)
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
      (lambda _%$args183526%_
        (apply make-instance gx#module-import::t _%$args183526%_)))
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
      (lambda _%$args183523%_
        (apply make-instance gx#module-export::t _%$args183523%_)))
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
      (lambda _%$args183520%_
        (apply make-instance gx#import-set::t _%$args183520%_)))
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
      (lambda _%$args183517%_
        (apply make-instance gx#export-set::t _%$args183517%_)))
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
      (lambda _%$args183514%_
        (apply make-instance gx#import-expander::t _%$args183514%_)))
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
      (lambda _%$args183511%_
        (apply make-instance gx#export-expander::t _%$args183511%_)))
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
      (lambda _%$args183508%_
        (apply make-instance gx#import-export-expander::t _%$args183508%_)))
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
      (lambda (_%path183505%_ _%fun183506%_)
        (call-with-input-file
         (cons 'path: (cons _%path183505%_ gx#source-file-settings))
         _%fun183506%_)))
    (define gx#module-context:::init!
      (lambda (_%self183488%_
               _%id183489%_
               _%super183490%_
               _%ns183491%_
               _%path183492%_)
        (let ((_%self183495%_ _%self183488%_))
          (if (##fx< '11 (##structure-length _%self183495%_))
              (begin
                (##unchecked-structure-set!
                 _%self183495%_
                 _%id183489%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self183495%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self183495%_
                 _%super183490%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self183495%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self183495%_ '#f '5 '#f '#f)
                (##unchecked-structure-set!
                 _%self183495%_
                 _%ns183491%_
                 '6
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self183495%_
                 _%path183492%_
                 '7
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self183495%_ '() '8 '#f '#f)
                (##unchecked-structure-set! _%self183495%_ '() '9 '#f '#f)
                (##unchecked-structure-set! _%self183495%_ '#f '10 '#f '#f)
                (##unchecked-structure-set! _%self183495%_ '#f '11 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self183495%_
                     '11
                     (##structure-length _%self183495%_))))))
    (__bind-method!__%
     gx#module-context::t
     ':init!
     gx#module-context:::init!
     '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_%self183321%_ _%ctx183322%_ _%root183323%_)
        (let* ((_%self183326%_ _%self183321%_)
               (_%super183342%_
                (let ((_%$e183336%_ _%root183323%_))
                  (if _%$e183336%_
                      _%$e183336%_
                      (let ((_%$e183339%_ (gx#core-context-root__0)))
                        (if _%$e183339%_
                            _%$e183339%_
                            (let ((__obj183570
                                   (##structure gx#root-context::t '#f '#f)))
                              (let ((__constructor183571
                                     (direct-method-ref
                                      gx#root-context::t
                                      __obj183570
                                      ':init!)))
                                (if __constructor183571
                                    (__constructor183571 __obj183570)
                                    (error '"missing constructor method implementation"
                                           'class:
                                           gx#root-context::t
                                           'method:
                                           ':init!)))
                              __obj183570)))))))
          (if _%ctx183322%_
              (let ((_%id183345%_
                     (##structure-ref
                      _%ctx183322%_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_%path183346%_
                     (##structure-ref
                      _%ctx183322%_
                      '7
                      gx#module-context::t
                      '#f))
                    (_%in183347%_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _%ctx183322%_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_%e183348%_
                     (__make-atomic-promise
                      (lambda () (gx#eval-module _%ctx183322%_)))))
                (if (##fx< '8 (##structure-length _%self183326%_))
                    (begin
                      (##unchecked-structure-set!
                       _%self183326%_
                       _%id183345%_
                       '1
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self183326%_
                       (make-hash-table-eq 'size: (##length _%in183347%_))
                       '2
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self183326%_
                       _%super183342%_
                       '3
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self183326%_
                       '#f
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self183326%_
                       '#f
                       '5
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self183326%_
                       _%path183346%_
                       '6
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self183326%_
                       _%in183347%_
                       '7
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self183326%_
                       _%e183348%_
                       '8
                       '#f
                       '#f)
                      '#!void)
                    (error '"struct-instance-init!: too many arguments for struct"
                           _%self183326%_
                           '8
                           (##structure-length _%self183326%_)))
                (##for-each
                 (lambda (_%g183349183351%_)
                   (gx#core-bind-weak-import!__%
                    _%g183349183351%_
                    _%self183326%_))
                 _%in183347%_))
              (if (##fx< '8 (##structure-length _%self183326%_))
                  (begin
                    (##unchecked-structure-set! _%self183326%_ '#f '1 '#f '#f)
                    (##unchecked-structure-set!
                     _%self183326%_
                     (make-hash-table-eq)
                     '2
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self183326%_
                     _%super183342%_
                     '3
                     '#f
                     '#f)
                    (##unchecked-structure-set! _%self183326%_ '#f '4 '#f '#f)
                    (##unchecked-structure-set! _%self183326%_ '#f '5 '#f '#f)
                    (##unchecked-structure-set! _%self183326%_ '#f '6 '#f '#f)
                    (##unchecked-structure-set! _%self183326%_ '() '7 '#f '#f)
                    (##unchecked-structure-set! _%self183326%_ '#f '8 '#f '#f)
                    '#!void)
                  (error '"struct-instance-init!: too many arguments for struct"
                         _%self183326%_
                         '8
                         (##structure-length _%self183326%_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_%self183357%_ _%ctx183358%_)
        (let ((_%root183360%_ '#f))
          (gx#prelude-context:::init!__%
           _%self183357%_
           _%ctx183358%_
           _%root183360%_))))
    (define gx#prelude-context:::init!
      (lambda _g183577_
        (let ((_g183578_ (##length _g183577_)))
          (cond ((##fx= _g183578_ 2)
                 (apply gx#prelude-context:::init!__0 _g183577_))
                ((##fx= _g183578_ 3)
                 (apply gx#prelude-context:::init!__% _g183577_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g183577_))))))
    (__bind-method!__%
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_%self183195%_ _%e183196%_)
        (if (##fx< '3 (##structure-length _%self183195%_))
            (begin
              (##unchecked-structure-set!
               _%self183195%_
               _%e183196%_
               '1
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self183195%_
               (gx#current-expander-context)
               '2
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self183195%_
               (##fx- (gx#current-expander-phi) '1)
               '3
               '#f
               '#f)
              '#!void)
            (error '"struct-instance-init!: too many arguments for struct"
                   _%self183195%_
                   '3
                   (##structure-length _%self183195%_)))))
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
      (lambda (_%g182821182824%_ _%g182822182826%_)
        (gx#core-apply-user-expander__%
         _%g182821182824%_
         _%g182822182826%_
         'apply-import-expander)))
    (__bind-method!__%
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_%g182692182695%_ _%g182693182697%_)
        (gx#core-apply-user-expander__%
         _%g182692182695%_
         _%g182693182697%_
         'apply-export-expander)))
    (__bind-method!__%
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_%ctx182563%_)
        (let* ((_%path182565%_
                (##structure-ref _%ctx182563%_ '7 gx#module-context::t '#f))
               (_%path182567%_
                (if (pair? _%path182565%_)
                    (##last _%path182565%_)
                    _%path182565%_)))
          (if (string? _%path182567%_) _%path182567%_ '#f))))
    (define gx#import-module__%
      (lambda (_%path182539%_ _%reload?182540%_ _%eval?182541%_)
        (let ((_%ctx182543%_
               ((gx#current-expander-module-import)
                _%path182539%_
                _%reload?182540%_)))
          (if (and _%ctx182543%_ _%eval?182541%_)
              (gx#eval-module _%ctx182543%_)
              '#!void)
          _%ctx182543%_)))
    (define gx#import-module__0
      (lambda (_%path182548%_)
        (let* ((_%reload?182550%_ '#f) (_%eval?182552%_ '#f))
          (gx#import-module__%
           _%path182548%_
           _%reload?182550%_
           _%eval?182552%_))))
    (define gx#import-module__1
      (lambda (_%path182554%_ _%reload?182555%_)
        (let ((_%eval?182557%_ '#f))
          (gx#import-module__%
           _%path182554%_
           _%reload?182555%_
           _%eval?182557%_))))
    (define gx#import-module
      (lambda _g183579_
        (let ((_g183580_ (##length _g183579_)))
          (cond ((##fx= _g183580_ 1) (apply gx#import-module__0 _g183579_))
                ((##fx= _g183580_ 2) (apply gx#import-module__1 _g183579_))
                ((##fx= _g183580_ 3) (apply gx#import-module__% _g183579_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g183579_))))))
    (define gx#eval-module
      (lambda (_%mod182536%_)
        ((gx#current-expander-module-eval) _%mod182536%_)))
    (define gx#core-eval-module
      (lambda (_%obj182515%_)
        (letrec ((_%force-e182517%_
                  (lambda (_%getf182531%_ _%e182532%_)
                    (call-with-parameters__1
                     (lambda ()
                       (call-with-parameters__1
                        (lambda () (force (_%getf182531%_ _%e182532%_)))
                        gx#current-expander-phi
                        '0))
                     gx#current-expander-context
                     _%e182532%_))))
          (let _%recur182519%_ ((_%e182521%_ _%obj182515%_))
            (if (##structure-instance-of? _%e182521%_ 'gx#module-context::t)
                (let ()
                  (let ((_%$e182524%_
                         (gx#core-context-prelude__% _%e182521%_)))
                    (if _%$e182524%_ (_%recur182519%_ _%$e182524%_) '#!void))
                  (_%force-e182517%_ gx#module-context-e _%e182521%_))
                (if (##structure-instance-of?
                     _%e182521%_
                     'gx#prelude-context::t)
                    (_%force-e182517%_ gx#prelude-context-e _%e182521%_)
                    (if (gx#stx-string? _%e182521%_)
                        (_%recur182519%_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _%e182521%_)))
                        (if (gx#core-library-module-path? _%e182521%_)
                            (_%recur182519%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%e182521%_)))
                            (error '"cannot eval module" _%obj182515%_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_%ctx182495%_)
        (let _%lp182497%_ ((_%e182499%_ _%ctx182495%_))
          (if (or (##structure-instance-of? _%e182499%_ 'gx#module-context::t)
                  (##structure-instance-of? _%e182499%_ 'gx#local-context::t))
              (_%lp182497%_ (##unchecked-structure-ref _%e182499%_ '3 '#f '#f))
              (if (##structure-instance-of? _%e182499%_ 'gx#prelude-context::t)
                  _%e182499%_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_%ctx182511%_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _%ctx182511%_))))
    (define gx#core-context-prelude
      (lambda _g183581_
        (let ((_g183582_ (##length _g183581_)))
          (cond ((##fx= _g183582_ 0)
                 (apply gx#core-context-prelude__0 _g183581_))
                ((##fx= _g183582_ 1)
                 (apply gx#core-context-prelude__% _g183581_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g183581_))))))
    (define gx#core-module->prelude-context
      (lambda (_%ctx182486%_)
        (let ((_%$e182488%_ (__hash-get gx#__module-registry _%ctx182486%_)))
          (if _%$e182488%_
              _%$e182488%_
              (let ((_%pre182492%_
                     (let ((__obj183572
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
                        __obj183572
                        _%ctx182486%_)
                       __obj183572)))
                (__hash-put! gx#__module-registry _%ctx182486%_ _%pre182492%_)
                _%pre182492%_)))))
    (define gx#core-import-module__%
      (lambda (_%rpath182354%_ _%reload?182355%_)
        (letrec ((_%import-source182357%_
                  (lambda (_%path182445%_)
                    (if (member _%path182445%_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _%path182445%_)
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
                                      (let ((_g183583_
                                             (gx#core-read-module
                                              _%path182445%_)))
                                        (begin
                                          (let ((_g183584_
                                                 (if (##values? _g183583_)
                                                     (##values-length
                                                      _g183583_)
                                                     1)))
                                            (if (not (##fx= _g183584_ 4))
                                                (error "Context expects 4 values"
                                                       _g183584_)))
                                          (let ((_%pre182453%_
                                                 (##values-ref _g183583_ 0))
                                                (_%id182454%_
                                                 (##values-ref _g183583_ 1))
                                                (_%ns182455%_
                                                 (##values-ref _g183583_ 2))
                                                (_%body182456%_
                                                 (##values-ref _g183583_ 3)))
                                            (let* ((_%prelude182466%_
                                                    (if (##structure-instance-of?
                                                         _%pre182453%_
                                                         'gx#prelude-context::t)
                                                        _%pre182453%_
                                                        (if (##structure-instance-of?
                                                             _%pre182453%_
                                                             'gx#module-context::t)
                                                            (gx#core-module->prelude-context
                                                             _%pre182453%_)
                                                            (if (string? _%pre182453%_)
                                                                (gx#core-module->prelude-context
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#core-import-module__0 _%pre182453%_))
                        (if (not _%pre182453%_)
                            (let ((_%$e182462%_
                                   (gx#current-expander-module-prelude)))
                              (if _%$e182462%_
                                  _%$e182462%_
                                  (let ((__obj183573
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
                                     __obj183573
                                     '#f)
                                    __obj183573)))
                            (error '"cannot import module; unknown prelude"
                                   _%rpath182354%_
                                   _%pre182453%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%ctx182468%_
                                                    (let ((__obj183574
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
                                                       __obj183574
                                                       _%id182454%_
                                                       _%prelude182466%_
                                                       _%ns182455%_
                                                       _%path182445%_)
                                                      __obj183574))
                                                   (_%body182470%_
                                                    (gx#core-expand-module-begin
                                                     _%body182456%_
                                                     _%ctx182468%_))
                                                   (_%body182472%_
                                                    (gx#core-quote-syntax__%
                                                     (gx#core-cons
                                                      '%#begin
                                                      _%body182470%_)
                                                     _%path182445%_
                                                     _%ctx182468%_
                                                     '())))
                                              (##unchecked-structure-set!
                                               _%ctx182468%_
                                               (__make-atomic-promise
                                                (lambda ()
                                                  (gx#eval-syntax*
                                                   _%body182472%_)))
                                               '10
                                               '#f
                                               '#f)
                                              (##unchecked-structure-set!
                                               _%ctx182468%_
                                               _%body182472%_
                                               '11
                                               '#f
                                               '#f)
                                              (__hash-put!
                                               gx#__module-registry
                                               _%path182445%_
                                               _%ctx182468%_)
                                              (__hash-put!
                                               gx#__module-registry
                                               _%id182454%_
                                               _%ctx182468%_)
                                              _%ctx182468%_)))))
                                    gx#current-export-expander-phi
                                    '#f))
                                 gx#current-import-expander-phi
                                 '#f))
                              gx#current-expander-path
                              (cons _%path182445%_
                                    (gx#current-expander-path))))
                           gx#current-expander-phi
                           '0))
                        gx#current-expander-marks
                        '()))
                     gx#current-expander-context
                     (gx#core-context-root__0))))
                 (_%import-submodule182358%_
                  (lambda (_%rpath182374%_)
                    (let* ((_%rpath182375182382%_ _%rpath182374%_)
                           (_%E182377182385%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%rpath182375182382%_
                                     '([origin . refs]))
                              '#!void))
                           (_%K182378182433%_
                            (lambda (_%refs182388%_ _%origin182389%_)
                              (let ((_%ctx182391%_
                                     (if _%origin182389%_
                                         (gx#core-import-module__%
                                          _%origin182389%_
                                          _%reload?182355%_)
                                         (gx#current-expander-context))))
                                (let _%lp182393%_ ((_%rest182395%_
                                                    _%refs182388%_)
                                                   (_%ctx182396%_
                                                    _%ctx182391%_))
                                  (let* ((_%rest182397182405%_ _%rest182395%_)
                                         (_%else182399182413%_
                                          (lambda () _%ctx182396%_))
                                         (_%K182401182421%_
                                          (lambda (_%rest182416%_ _%id182417%_)
                                            (let ((_%bind182419%_
                                                   (gx#resolve-identifier__%
                                                    _%id182417%_
                                                    '0
                                                    _%ctx182396%_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _%bind182419%_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _%bind182419%_
                                                         '5
                                                         '#f
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_%lp182393%_
                                                   _%rest182416%_
                                                   (##unchecked-structure-ref
                                                    _%bind182419%_
                                                    '5
                                                    '#f
                                                    '#f))
                                                  (error '"cannot import submodule; not bound as a module"
                                                         _%rpath182374%_
                                                         _%id182417%_
                                                         _%bind182419%_))))))
                                    (if (pair? _%rest182397182405%_)
                                        (let ((_%hd182402182424%_
                                               (##car _%rest182397182405%_))
                                              (_%tl182403182426%_
                                               (##cdr _%rest182397182405%_)))
                                          (let* ((_%id182429%_
                                                  _%hd182402182424%_)
                                                 (_%rest182431%_
                                                  _%tl182403182426%_))
                                            (_%K182401182421%_
                                             _%rest182431%_
                                             _%id182429%_)))
                                        (_%else182399182413%_))))))))
                      (if (pair? _%rpath182375182382%_)
                          (let ((_%hd182379182436%_
                                 (##car _%rpath182375182382%_))
                                (_%tl182380182438%_
                                 (##cdr _%rpath182375182382%_)))
                            (let* ((_%origin182441%_ _%hd182379182436%_)
                                   (_%refs182443%_ _%tl182380182438%_))
                              (_%K182378182433%_
                               _%refs182443%_
                               _%origin182441%_)))
                          (_%E182377182385%_))))))
          (let ((_%$e182360%_
                 (if (not _%reload?182355%_)
                     (__hash-get gx#__module-registry _%rpath182354%_)
                     '#f)))
            (if _%$e182360%_
                _%$e182360%_
                (if (list? _%rpath182354%_)
                    (_%import-submodule182358%_ _%rpath182354%_)
                    (if (gx#core-library-module-path? _%rpath182354%_)
                        (let ((_%ctx182365%_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _%rpath182354%_)
                                _%reload?182355%_)))
                          (__hash-put!
                           gx#__module-registry
                           _%rpath182354%_
                           _%ctx182365%_)
                          _%ctx182365%_)
                        (let* ((_%npath182368%_
                                (path-normalize _%rpath182354%_))
                               (_%$e182370%_
                                (if (not _%reload?182355%_)
                                    (__hash-get
                                     gx#__module-registry
                                     _%npath182368%_)
                                    '#f)))
                          (if _%$e182370%_
                              _%$e182370%_
                              (_%import-source182357%_
                               _%npath182368%_))))))))))
    (define gx#core-import-module__0
      (lambda (_%rpath182479%_)
        (let ((_%reload?182481%_ '#f))
          (gx#core-import-module__% _%rpath182479%_ _%reload?182481%_))))
    (define gx#core-import-module
      (lambda _g183585_
        (let ((_g183586_ (##length _g183585_)))
          (cond ((##fx= _g183586_ 1)
                 (apply gx#core-import-module__0 _g183585_))
                ((##fx= _g183586_ 2)
                 (apply gx#core-import-module__% _g183585_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g183585_))))))
    (define gx#core-read-module
      (lambda (_%path182343%_)
        (__with-catch
         (lambda (_%exn182345%_)
           (if (and (datum-parsing-exception? _%exn182345%_)
                    (eq? (datum-parsing-exception-filepos _%exn182345%_) '0))
               (gx#core-read-module/lang _%path182343%_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _%path182343%_
                (call-with-parameters__1
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_%g182347182349%_)
                      (display-exception__% _%exn182345%_ _%g182347182349%_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _%path182343%_)))))
    (define gx#core-read-module/sexp
      (lambda (_%path182195%_)
        (let _%lp182197%_ ((_%body182199%_
                            (read-syntax-from-file _%path182195%_))
                           (_%pre182200%_ '#f)
                           (_%ns182201%_ '#f)
                           (_%pkg182202%_ '#f))
          (let* ((_%e182203182227%_ _%body182199%_)
                 (_%E182219182253%_
                  (lambda ()
                    (let ((_g183587_
                           (if _%pkg182202%_
                               (values _%pre182200%_
                                       _%ns182201%_
                                       _%pkg182202%_)
                               (gx#core-read-module-package
                                _%path182195%_
                                _%pre182200%_
                                _%ns182201%_))))
                      (begin
                        (let ((_g183588_
                               (if (##values? _g183587_)
                                   (##values-length _g183587_)
                                   1)))
                          (if (not (##fx= _g183588_ 3))
                              (error "Context expects 3 values" _g183588_)))
                        (let ((_%pre182231%_ (##values-ref _g183587_ 0))
                              (_%ns182232%_ (##values-ref _g183587_ 1))
                              (_%pkg182233%_ (##values-ref _g183587_ 2)))
                          (let* ((_%prelude182239%_
                                  (if (gx#core-bound-module-prelude?
                                       _%pre182231%_)
                                      (gx#syntax-local-e__0 _%pre182231%_)
                                      (if (gx#core-library-module-path?
                                           _%pre182231%_)
                                          (gx#core-resolve-library-module-path
                                           _%pre182231%_)
                                          (if (gx#stx-string? _%pre182231%_)
                                              (gx#core-resolve-module-path__%
                                               _%pre182231%_
                                               _%path182195%_)
                                              (gx#stx-e _%pre182231%_)))))
                                 (_%path-id182241%_
                                  (gx#core-module-path->namespace
                                   _%path182195%_))
                                 (_%pkg-id182243%_
                                  (if _%pkg182233%_
                                      (##string-append
                                       _%pkg182233%_
                                       '"/"
                                       _%path-id182241%_)
                                      _%path-id182241%_))
                                 (_%module-id182245%_
                                  (##string->symbol _%pkg-id182243%_))
                                 (_%module-ns182250%_
                                  (if (eq? _%ns182232%_ '#!void)
                                      '#f
                                      (let ((_%$e182247%_ _%ns182232%_))
                                        (if _%$e182247%_
                                            _%$e182247%_
                                            _%pkg-id182243%_)))))
                            (values _%prelude182239%_
                                    _%module-id182245%_
                                    _%module-ns182250%_
                                    _%body182199%_)))))))
                 (_%E182212182285%_
                  (lambda ()
                    (if (gx#stx-pair? _%e182203182227%_)
                        (let ((_%e182220182257%_
                               (gx#syntax-e _%e182203182227%_)))
                          (let ((_%hd182221182260%_ (##car _%e182220182257%_))
                                (_%tl182222182262%_ (##cdr _%e182220182257%_)))
                            (if (eq? (gx#stx-e _%hd182221182260%_) 'package:)
                                (if (gx#stx-pair? _%tl182222182262%_)
                                    (let ((_%e182223182265%_
                                           (gx#syntax-e _%tl182222182262%_)))
                                      (let ((_%hd182224182268%_
                                             (##car _%e182223182265%_))
                                            (_%tl182225182270%_
                                             (##cdr _%e182223182265%_)))
                                        (let* ((_%pkg182273%_
                                                _%hd182224182268%_)
                                               (_%rest182275%_
                                                _%tl182225182270%_)
                                               (_%pkg182283%_
                                                (if (gx#identifier?
                                                     _%pkg182273%_)
                                                    (symbol->string
                                                     (gx#stx-e _%pkg182273%_))
                                                    (if (or (gx#stx-string?
                                                             _%pkg182273%_)
                                                            (gx#stx-false?
                                                             _%pkg182273%_))
                                                        (gx#stx-e
                                                         _%pkg182273%_)
                                                        (gx#raise-syntax-error
                                                         'import
                                                         '"Bad syntax; Illegal package name"
                                                         _%pkg182273%_)))))
                                          (_%lp182197%_
                                           _%rest182275%_
                                           _%pre182200%_
                                           _%ns182201%_
                                           _%pkg182283%_))))
                                    (_%E182219182253%_))
                                (_%E182219182253%_))))
                        (_%E182219182253%_))))
                 (_%E182205182315%_
                  (lambda ()
                    (if (gx#stx-pair? _%e182203182227%_)
                        (let ((_%e182213182289%_
                               (gx#syntax-e _%e182203182227%_)))
                          (let ((_%hd182214182292%_ (##car _%e182213182289%_))
                                (_%tl182215182294%_ (##cdr _%e182213182289%_)))
                            (if (eq? (gx#stx-e _%hd182214182292%_) 'namespace:)
                                (if (gx#stx-pair? _%tl182215182294%_)
                                    (let ((_%e182216182297%_
                                           (gx#syntax-e _%tl182215182294%_)))
                                      (let ((_%hd182217182300%_
                                             (##car _%e182216182297%_))
                                            (_%tl182218182302%_
                                             (##cdr _%e182216182297%_)))
                                        (let* ((_%ns182305%_
                                                _%hd182217182300%_)
                                               (_%rest182307%_
                                                _%tl182218182302%_)
                                               (_%ns182313%_
                                                (if (gx#identifier?
                                                     _%ns182305%_)
                                                    (symbol->string
                                                     (gx#stx-e _%ns182305%_))
                                                    (if (gx#stx-string?
                                                         _%ns182305%_)
                                                        (gx#stx-e _%ns182305%_)
                                                        (if (gx#stx-false?
                                                             _%ns182305%_)
                                                            '#!void
                                                            (gx#raise-syntax-error
                                                             'import
                                                             '"Bad syntax; illegal namespace"
                                                             _%ns182305%_))))))
                                          (_%lp182197%_
                                           _%rest182307%_
                                           _%pre182200%_
                                           _%ns182313%_
                                           _%pkg182202%_))))
                                    (_%E182212182285%_))
                                (_%E182212182285%_))))
                        (_%E182212182285%_))))
                 (_%E182204182339%_
                  (lambda ()
                    (if (gx#stx-pair? _%e182203182227%_)
                        (let ((_%e182206182319%_
                               (gx#syntax-e _%e182203182227%_)))
                          (let ((_%hd182207182322%_ (##car _%e182206182319%_))
                                (_%tl182208182324%_ (##cdr _%e182206182319%_)))
                            (if (eq? (gx#stx-e _%hd182207182322%_) 'prelude:)
                                (if (gx#stx-pair? _%tl182208182324%_)
                                    (let ((_%e182209182327%_
                                           (gx#syntax-e _%tl182208182324%_)))
                                      (let ((_%hd182210182330%_
                                             (##car _%e182209182327%_))
                                            (_%tl182211182332%_
                                             (##cdr _%e182209182327%_)))
                                        (let* ((_%prelude182335%_
                                                _%hd182210182330%_)
                                               (_%rest182337%_
                                                _%tl182211182332%_))
                                          (_%lp182197%_
                                           _%rest182337%_
                                           _%prelude182335%_
                                           _%ns182201%_
                                           _%pkg182202%_))))
                                    (_%E182205182315%_))
                                (_%E182205182315%_))))
                        (_%E182205182315%_)))))
            (_%E182204182339%_)))))
    (define gx#core-read-module/lang
      (lambda (_%path182016%_)
        (letrec ((_%default-read-module-body182018%_
                  (lambda (_%inp182187%_)
                    (let _%lp182189%_ ((_%body182191%_ '()))
                      (let ((_%next182193%_ (read-syntax__% _%inp182187%_)))
                        (if (eof-object? _%next182193%_)
                            (reverse _%body182191%_)
                            (_%lp182189%_
                             (cons _%next182193%_ _%body182191%_)))))))
                 (_%read-body182019%_
                  (lambda (_%inp182104%_
                           _%pre182105%_
                           _%ns182106%_
                           _%pkg182107%_
                           _%args182108%_)
                    (let ((_g183589_
                           (if _%pkg182107%_
                               (values _%pre182105%_
                                       _%ns182106%_
                                       _%pkg182107%_)
                               (gx#core-read-module-package
                                _%path182016%_
                                _%pre182105%_
                                _%ns182106%_))))
                      (begin
                        (let ((_g183590_
                               (if (##values? _g183589_)
                                   (##values-length _g183589_)
                                   1)))
                          (if (not (##fx= _g183590_ 3))
                              (error "Context expects 3 values" _g183590_)))
                        (let ((_%pre182110%_ (##values-ref _g183589_ 0))
                              (_%ns182111%_ (##values-ref _g183589_ 1))
                              (_%pkg182112%_ (##values-ref _g183589_ 2)))
                          (let* ((_%prelude182114%_
                                  (gx#import-module__0 _%pre182110%_))
                                 (_%read-module-body182169%_
                                  (let ((_%$e182160%_
                                         (__find (lambda (_%e182115182117%_)
                                                   (let* ((_%e182115182119182129%_
                                                           _%e182115182117%_)
                                                          (_%else182121182137%_
                                                           (lambda () '#f))
                                                          (_%K182123182141%_
                                                           (lambda () '#t)))
                                                     (if (##structure-direct-instance-of?
                                                          _%e182115182119182129%_
                                                          'gx#module-export::t)
                                                         (let* ((_%e182124182144%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##unchecked-structure-ref
                          _%e182115182119182129%_
                          '1
                          '#f
                          '#f))
                        (_%e182125182147%_
                         (##unchecked-structure-ref
                          _%e182115182119182129%_
                          '2
                          '#f
                          '#f))
                        (_%e182126182150%_
                         (##unchecked-structure-ref
                          _%e182115182119182129%_
                          '3
                          '#f
                          '#f)))
                   (if (##eq? _%e182126182150%_ '1)
                       (let ((_%e182127182153%_
                              (##unchecked-structure-ref
                               _%e182115182119182129%_
                               '4
                               '#f
                               '#f)))
                         (if ((lambda (_%g182155182157%_)
                                (eq? _%g182155182157%_ 'read-module-body))
                              _%e182127182153%_)
                             (_%K182123182141%_)
                             (_%else182121182137%_)))
                       (_%else182121182137%_)))
                 (_%else182121182137%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (##unchecked-structure-ref
                                                  _%prelude182114%_
                                                  '9
                                                  '#f
                                                  '#f))))
                                    (if _%$e182160%_
                                        ((lambda (_%xport182163%_)
                                           (let ((_%proc182166%_
                                                  (__with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _%xport182163%_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _%proc182166%_)
                                                 _%proc182166%_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _%path182016%_
                                                  _%pre182110%_
                                                  _%proc182166%_))))
                                         _%$e182160%_)
                                        _%default-read-module-body182018%_)))
                                 (_%path-id182171%_
                                  (gx#core-module-path->namespace
                                   _%path182016%_))
                                 (_%pkg-id182173%_
                                  (if _%pkg182112%_
                                      (##string-append
                                       _%pkg182112%_
                                       '"/"
                                       _%path-id182171%_)
                                      _%path-id182171%_))
                                 (_%module-id182175%_
                                  (##string->symbol _%pkg-id182173%_))
                                 (_%module-ns182180%_
                                  (let ((_%$e182177%_ _%ns182111%_))
                                    (if _%$e182177%_
                                        _%$e182177%_
                                        _%pkg-id182173%_)))
                                 (_%body182184%_
                                  (call-with-parameters__1
                                   (lambda ()
                                     (call-with-parameters__1
                                      (lambda ()
                                        (_%read-module-body182169%_
                                         _%inp182104%_))
                                      gx#current-module-reader-args
                                      _%args182108%_))
                                   gx#current-module-reader-path
                                   _%path182016%_)))
                            (values _%prelude182114%_
                                    _%module-id182175%_
                                    _%module-ns182180%_
                                    _%body182184%_)))))))
                 (_%string-e182020%_
                  (lambda (_%obj182098%_ _%what182099%_)
                    (if (string? _%obj182098%_)
                        _%obj182098%_
                        (if (symbol? _%obj182098%_)
                            (##symbol->string _%obj182098%_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _%what182099%_)
                             _%path182016%_
                             _%obj182098%_)))))
                 (_%read-lang-args182021%_
                  (lambda (_%inp182053%_ _%args182054%_)
                    (let* ((_%args182055182063%_ _%args182054%_)
                           (_%else182057182071%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _%path182016%_)))
                           (_%K182059182086%_
                            (lambda (_%args182074%_ _%prelude182075%_)
                              (let* ((_%pkg182077%_
                                      (pgetq__0 'package: _%args182074%_))
                                     (_%pkg182079%_
                                      (if _%pkg182077%_
                                          (_%string-e182020%_
                                           _%pkg182077%_
                                           '"package")
                                          '#f))
                                     (_%ns182081%_
                                      (pgetq__0 'namespace: _%args182074%_))
                                     (_%ns182083%_
                                      (if _%ns182081%_
                                          (_%string-e182020%_
                                           _%ns182081%_
                                           '"namespace")
                                          '#f)))
                                (_%read-body182019%_
                                 _%inp182053%_
                                 _%prelude182075%_
                                 _%ns182083%_
                                 _%pkg182079%_
                                 _%args182074%_)))))
                      (if (pair? _%args182055182063%_)
                          (let ((_%hd182060182089%_
                                 (##car _%args182055182063%_))
                                (_%tl182061182091%_
                                 (##cdr _%args182055182063%_)))
                            (let* ((_%prelude182094%_ _%hd182060182089%_)
                                   (_%args182096%_ _%tl182061182091%_))
                              (_%K182059182086%_
                               _%args182096%_
                               _%prelude182094%_)))
                          (_%else182057182071%_)))))
                 (_%read-lang182022%_
                  (lambda (_%inp182027%_)
                    (let* ((_%head182029%_ (read-line _%inp182027%_))
                           (_%$e182031%_
                            (string-index__0 _%head182029%_ '#\space)))
                      (if _%$e182031%_
                          ((lambda (_%ix182034%_)
                             (let ((_%lang182036%_
                                    (substring
                                     _%head182029%_
                                     '0
                                     _%ix182034%_)))
                               (if (equal? _%lang182036%_ '"#lang")
                                   (let* ((_%rest182038%_
                                           (substring
                                            _%head182029%_
                                            (##fx+ _%ix182034%_ '1)
                                            (string-length _%head182029%_)))
                                          (_%args182049%_
                                           (__with-catch
                                            (lambda (_%g182039182041%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _%path182016%_
                                               _%g182039182041%_))
                                            (lambda ()
                                              (call-with-input-string
                                               _%rest182038%_
                                               (lambda (_%g182044182046%_)
                                                 (read-all
                                                  _%g182044182046%_
                                                  read)))))))
                                     (_%read-lang-args182021%_
                                      _%inp182027%_
                                      _%args182049%_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _%path182016%_))))
                           _%$e182031%_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _%path182016%_)))))
                 (_%read-e182023%_
                  (lambda (_%inp182025%_)
                    (if (eq? (peek-char _%inp182025%_) '#\#)
                        (_%read-lang182022%_ _%inp182025%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _%path182016%_)))))
          (gx#call-with-input-source-file _%path182016%_ _%read-e182023%_))))
    (define gx#core-read-module-package
      (lambda (_%path181964%_ _%pre181965%_ _%ns181966%_)
        (letrec ((_%string-e181968%_
                  (lambda (_%e182011%_)
                    (if (symbol? _%e182011%_)
                        (##symbol->string _%e182011%_)
                        (if (string? _%e182011%_)
                            _%e182011%_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%e182011%_))))))
          (let _%lp181970%_ ((_%dir181972%_ (path-directory _%path181964%_))
                             (_%pkg-path181973%_ '()))
            (let ((_%gerbil.pkg181975%_
                   (path-expand '"gerbil.pkg" _%dir181972%_)))
              (if (##file-exists? _%gerbil.pkg181975%_)
                  (let ((_%plist181977%_
                         (gx#core-library-package-plist__% _%dir181972%_ '#t)))
                    (if (null? _%plist181977%_)
                        (let ((_%pkg181980%_
                               (if (null? _%pkg-path181973%_)
                                   '#f
                                   (string-join _%pkg-path181973%_ '"/"))))
                          (values _%pre181965%_ _%ns181966%_ _%pkg181980%_))
                        (if (list? _%plist181977%_)
                            (let* ((_%root181983%_
                                    (pgetq__0 'package: _%plist181977%_))
                                   (_%pkg181987%_
                                    (let ((_%pkg-path181985%_
                                           (if _%root181983%_
                                               (cons (_%string-e181968%_
                                                      _%root181983%_)
                                                     _%pkg-path181973%_)
                                               _%pkg-path181973%_)))
                                      (if (null? _%pkg-path181985%_)
                                          '#f
                                          (string-join
                                           _%pkg-path181985%_
                                           '"/"))))
                                   (_%ns181994%_
                                    (let ((_%ns181992%_
                                           (let ((_%$e181989%_ _%ns181966%_))
                                             (if _%$e181989%_
                                                 _%$e181989%_
                                                 (pgetq__0
                                                  'namespace:
                                                  _%plist181977%_)))))
                                      (if _%ns181992%_
                                          (_%string-e181968%_ _%ns181992%_)
                                          '#f)))
                                   (_%pre181999%_
                                    (let ((_%$e181996%_ _%pre181965%_))
                                      (if _%$e181996%_
                                          _%$e181996%_
                                          (pgetq__0
                                           'prelude:
                                           _%plist181977%_)))))
                              (values _%pre181999%_
                                      _%ns181994%_
                                      _%pkg181987%_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%plist181977%_))))
                  (let ((_%dir*182003%_
                         (path-strip-trailing-directory-separator
                          _%dir181972%_)))
                    (if (or (__string-empty? _%dir*182003%_)
                            (equal? _%dir181972%_ _%dir*182003%_))
                        (values _%pre181965%_ _%ns181966%_ '#f)
                        (let ((_%xpath182008%_
                               (path-strip-directory _%dir*182003%_))
                              (_%xdir182009%_ (path-directory _%dir*182003%_)))
                          (_%lp181970%_
                           _%xdir182009%_
                           (cons _%xpath182008%_ _%pkg-path181973%_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_%path181962%_)
        (path-strip-extension (path-strip-directory _%path181962%_))))
    (define gx#core-module-path->id
      (lambda (_%path181960%_)
        (##string->symbol (gx#core-module-path->namespace _%path181960%_))))
    (define gx#core-resolve-module-path__%
      (lambda (_%stx-path181939%_ _%rel181940%_)
        (let* ((_%path181942%_ (gx#stx-e _%stx-path181939%_))
               (_%path181944%_
                (if (__string-empty? (path-extension _%path181942%_))
                    (##string-append _%path181942%_ '".ss")
                    _%path181942%_)))
          (gx#core-resolve-path__%
           _%path181944%_
           (let ((_%$e181947%_ (gx#stx-source _%stx-path181939%_)))
             (if _%$e181947%_ _%$e181947%_ _%rel181940%_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_%stx-path181953%_)
        (let ((_%rel181955%_ '#f))
          (gx#core-resolve-module-path__% _%stx-path181953%_ _%rel181955%_))))
    (define gx#core-resolve-module-path
      (lambda _g183591_
        (let ((_g183592_ (##length _g183591_)))
          (cond ((##fx= _g183592_ 1)
                 (apply gx#core-resolve-module-path__0 _g183591_))
                ((##fx= _g183592_ 2)
                 (apply gx#core-resolve-module-path__% _g183591_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g183591_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_%libpath181824%_)
        (let* ((_%spath181826%_ (symbol->string (gx#stx-e _%libpath181824%_)))
               (_%spath181828%_
                (substring
                 _%spath181826%_
                 '1
                 (##string-length _%spath181826%_)))
               (_%ext181830%_ (path-extension _%spath181828%_))
               (_%ssi181832%_
                (if (__string-empty? _%ext181830%_)
                    (##string-append _%spath181828%_ '".ssi")
                    (##string-append
                     (path-strip-extension _%spath181828%_)
                     '".ssi")))
               (_%srcs181836%_
                (if (__string-empty? _%ext181830%_)
                    (##map (lambda (_%ext181834%_)
                             (string-append _%spath181828%_ _%ext181834%_))
                           '(".ss" ".sld" ".scm"))
                    (cons _%spath181828%_ '()))))
          (let _%lp181839%_ ((_%rest181841%_ (load-path)))
            (let* ((_%rest181842181851%_ _%rest181841%_)
                   (_%E181845181855%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rest181842181851%_
                             '([dir . rest])
                             '([]))
                      '#!void)))
              (let ((_%K181847181926%_
                     (lambda (_%rest181866%_ _%dir181867%_)
                       (letrec ((_%resolve181869%_
                                 (lambda (_%ssi181882%_ _%srcs181883%_)
                                   (let ((_%compiled-path181885%_
                                          (path-expand
                                           _%ssi181882%_
                                           _%dir181867%_)))
                                     (if (##file-exists?
                                          _%compiled-path181885%_)
                                         (path-normalize
                                          _%compiled-path181885%_)
                                         (let _%lpr181887%_ ((_%rest-src181889%_
                                                              _%srcs181883%_))
                                           (let* ((_%rest-src181890181898%_
                                                   _%rest-src181889%_)
                                                  (_%else181892181906%_
                                                   (lambda ()
                                                     (_%lp181839%_
                                                      _%rest181866%_)))
                                                  (_%K181894181914%_
                                                   (lambda (_%rest-src181909%_
                                                            _%src181910%_)
                                                     (let ((_%src-path181912%_
                                                            (path-expand
                                                             _%src181910%_
                                                             _%dir181867%_)))
                                                       (if (##file-exists?
                                                            _%src-path181912%_)
                                                           (path-normalize
                                                            _%src-path181912%_)
                                                           (_%lpr181887%_
                                                            _%rest-src181909%_))))))
                                             (if (pair? _%rest-src181890181898%_)
                                                 (let ((_%hd181895181917%_
                                                        (##car _%rest-src181890181898%_))
                                                       (_%tl181896181919%_
                                                        (##cdr _%rest-src181890181898%_)))
                                                   (let* ((_%src181922%_
                                                           _%hd181895181917%_)
                                                          (_%rest-src181924%_
                                                           _%tl181896181919%_))
                                                     (_%K181894181914%_
                                                      _%rest-src181924%_
                                                      _%src181922%_)))
                                                 (_%else181892181906%_)))))))))
                         (let ((_%$e181871%_
                                (gx#core-library-package-path-prefix
                                 _%dir181867%_)))
                           (if _%$e181871%_
                               ((lambda (_%prefix181874%_)
                                  (if (string-prefix?
                                       _%prefix181874%_
                                       _%spath181828%_)
                                      (let ((_%ssi181878%_
                                             (substring
                                              _%ssi181832%_
                                              (string-length _%prefix181874%_)
                                              (##string-length _%ssi181832%_)))
                                            (_%srcs181879%_
                                             (##map (lambda (_%src181876%_)
                                                      (substring
                                                       _%src181876%_
                                                       (string-length
                                                        _%prefix181874%_)
                                                       (string-length
                                                        _%src181876%_)))
                                                    _%srcs181836%_)))
                                        (_%resolve181869%_
                                         _%ssi181878%_
                                         _%srcs181879%_))
                                      (_%lp181839%_ _%rest181866%_)))
                                _%$e181871%_)
                               (_%resolve181869%_
                                _%ssi181832%_
                                _%srcs181836%_))))))
                    (_%K181846181860%_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"cannot find library module"
                        _%libpath181824%_))))
                (let ((_%try-match181844181863%_
                       (lambda ()
                         (if (null? _%rest181842181851%_)
                             (_%K181846181860%_)
                             (_%E181845181855%_)))))
                  (if (pair? _%rest181842181851%_)
                      (let ((_%tl181849181931%_ (##cdr _%rest181842181851%_))
                            (_%hd181848181929%_ (##car _%rest181842181851%_)))
                        (let ((_%dir181934%_ _%hd181848181929%_)
                              (_%rest181936%_ _%tl181849181931%_))
                          (_%K181847181926%_ _%rest181936%_ _%dir181934%_)))
                      (_%try-match181844181863%_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_%modpath181792%_)
        (letrec ((_%resolve181794%_
                  (lambda (_%path181815%_ _%base181816%_)
                    (let ((_%$e181818%_
                           (string-rindex__0 _%base181816%_ '#\/)))
                      (if _%$e181818%_
                          ((lambda (_%idx181821%_)
                             (gx#core-resolve-library-module-path
                              (##string->symbol
                               (string-append
                                '":"
                                (substring _%base181816%_ '0 _%idx181821%_)
                                '"/"
                                _%path181815%_))))
                           _%$e181818%_)
                          (gx#core-resolve-library-module-path
                           (##string->symbol
                            (string-append '":" _%path181815%_))))))))
          (let ((_%spath181796%_ (symbol->string (gx#stx-e _%modpath181792%_)))
                (_%mod181797%_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _%mod181797%_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"cannot resolve relative module path; not in module context"
                 _%modpath181792%_))
            (let ((_%mpath181799%_
                   (symbol->string
                    (##structure-ref
                     _%mod181797%_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _%lp181801%_ ((_%spath181803%_ _%spath181796%_)
                                 (_%mpath181804%_ _%mpath181799%_))
                (if (string-prefix? '"../" _%spath181803%_)
                    (let ((_%$e181807%_
                           (string-rindex__0 _%mpath181804%_ '#\/)))
                      (if _%$e181807%_
                          ((lambda (_%idx181810%_)
                             (_%lp181801%_
                              (substring
                               _%spath181803%_
                               '3
                               (string-length _%spath181803%_))
                              (substring _%mpath181804%_ '0 _%idx181810%_)))
                           _%$e181807%_)
                          (gx#raise-syntax-error
                           '#f
                           '"cannot resolve relative module path; illegal traversal"
                           _%modpath181792%_)))
                    (if (string-prefix? '"./" _%spath181803%_)
                        (_%lp181801%_
                         (substring
                          _%spath181803%_
                          '2
                          (string-length _%spath181803%_))
                         _%mpath181804%_)
                        (_%resolve181794%_
                         _%spath181803%_
                         _%mpath181804%_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_%dir181784%_)
        (let ((_%$e181786%_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _%dir181784%_))))
          (if _%$e181786%_
              ((lambda (_%pkg181789%_)
                 (##string-append (symbol->string _%pkg181789%_) '"/"))
               _%$e181786%_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_%dir181754%_ _%exists?181755%_)
        (let ((_%$e181757%_ (__hash-get gx#__module-pkg-cache _%dir181754%_)))
          (if _%$e181757%_
              _%$e181757%_
              (let* ((_%gerbil.pkg181761%_
                      (path-expand '"gerbil.pkg" _%dir181754%_))
                     (_%plist181771%_
                      (if (or _%exists?181755%_
                              (##file-exists? _%gerbil.pkg181761%_))
                          (let ((_%e181766%_
                                 (gx#call-with-input-source-file
                                  _%gerbil.pkg181761%_
                                  read)))
                            (if (eof-object? _%e181766%_)
                                '()
                                (if (list? _%e181766%_)
                                    _%e181766%_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _%gerbil.pkg181761%_
                                     _%e181766%_))))
                          '())))
                (__hash-put!
                 gx#__module-pkg-cache
                 _%dir181754%_
                 _%plist181771%_)
                _%plist181771%_)))))
    (define gx#core-library-package-plist__0
      (lambda (_%dir181777%_)
        (let ((_%exists?181779%_ '#f))
          (gx#core-library-package-plist__% _%dir181777%_ _%exists?181779%_))))
    (define gx#core-library-package-plist
      (lambda _g183593_
        (let ((_g183594_ (##length _g183593_)))
          (cond ((##fx= _g183594_ 1)
                 (apply gx#core-library-package-plist__0 _g183593_))
                ((##fx= _g183594_ 2)
                 (apply gx#core-library-package-plist__% _g183593_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g183593_))))))
    (define gx#core-library-module-path?
      (lambda (_%stx181751%_)
        (gx#core-special-module-path? _%stx181751%_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_%stx181749%_)
        (gx#core-special-module-path? _%stx181749%_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_%stx181744%_ _%char181745%_)
        (if (gx#identifier? _%stx181744%_)
            (if (interned-symbol? (gx#stx-e _%stx181744%_))
                (let ((_%str181747%_
                       (symbol->string (gx#stx-e _%stx181744%_))))
                  (if (##fx> (##string-length _%str181747%_) '1)
                      (eq? (string-ref _%str181747%_ '0) _%char181745%_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_%stx181738%_)
        (gx#core-bound-identifier?__%
         _%stx181738%_
         (lambda (_%g181739181741%_)
           (gx#expander-binding?__% _%g181739181741%_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_%stx181732%_)
        (gx#core-bound-identifier?__%
         _%stx181732%_
         (lambda (_%g181733181735%_)
           (gx#expander-binding?__% _%g181733181735%_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_%stx181719%_)
        (letrec ((_%module-prelude?181721%_
                  (lambda (_%e181727%_)
                    (let ((_%$e181729%_
                           (##structure-instance-of?
                            _%e181727%_
                            'gx#module-context::t)))
                      (if _%$e181729%_
                          _%$e181729%_
                          (##structure-instance-of?
                           _%e181727%_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _%stx181719%_
           (lambda (_%g181722181724%_)
             (gx#expander-binding?__%
              _%g181722181724%_
              _%module-prelude?181721%_))))))
    (define gx#core-bind-import!__%
      (lambda (_%in181650%_ _%ctx181651%_ _%force-weak?181652%_)
        (let* ((_%in181653181662%_ _%in181650%_)
               (_%E181655181665%_
                (lambda ()
                  (error '"No clause matching"
                         _%in181653181662%_
                         '((module-import source key phi weak?)))
                  '#!void))
               (_%K181656181678%_
                (lambda (_%weak?181668%_
                         _%phi181669%_
                         _%key181670%_
                         _%source181671%_)
                  (gx#core-bind!__%
                   _%key181670%_
                   (let* ((_%e181673%_
                           (gx#core-resolve-module-export _%source181671%_))
                          (__obj183575
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
                      __obj183575
                      (##unchecked-structure-ref _%e181673%_ '1 '#f '#f)
                      _%key181670%_
                      _%phi181669%_
                      _%e181673%_
                      (##unchecked-structure-ref _%source181671%_ '1 '#f '#f)
                      (let ((_%$e181675%_ _%force-weak?181652%_))
                        (if _%$e181675%_ _%$e181675%_ _%weak?181668%_)))
                     __obj183575)
                   gx#core-context-rebind?
                   _%phi181669%_
                   _%ctx181651%_))))
          (if (##structure-direct-instance-of?
               _%in181653181662%_
               'gx#module-import::t)
              (let* ((_%e181657181681%_
                      (##unchecked-structure-ref
                       _%in181653181662%_
                       '1
                       '#f
                       '#f))
                     (_%source181684%_ _%e181657181681%_)
                     (_%e181658181686%_
                      (##unchecked-structure-ref
                       _%in181653181662%_
                       '2
                       '#f
                       '#f))
                     (_%key181689%_ _%e181658181686%_)
                     (_%e181659181691%_
                      (##unchecked-structure-ref
                       _%in181653181662%_
                       '3
                       '#f
                       '#f))
                     (_%phi181694%_ _%e181659181691%_)
                     (_%e181660181696%_
                      (##unchecked-structure-ref
                       _%in181653181662%_
                       '4
                       '#f
                       '#f))
                     (_%weak?181699%_ _%e181660181696%_))
                (_%K181656181678%_
                 _%weak?181699%_
                 _%phi181694%_
                 _%key181689%_
                 _%source181684%_))
              (_%E181655181665%_)))))
    (define gx#core-bind-import!__0
      (lambda (_%in181704%_)
        (let* ((_%ctx181706%_ (gx#current-expander-context))
               (_%force-weak?181708%_ '#f))
          (gx#core-bind-import!__%
           _%in181704%_
           _%ctx181706%_
           _%force-weak?181708%_))))
    (define gx#core-bind-import!__1
      (lambda (_%in181710%_ _%ctx181711%_)
        (let ((_%force-weak?181713%_ '#f))
          (gx#core-bind-import!__%
           _%in181710%_
           _%ctx181711%_
           _%force-weak?181713%_))))
    (define gx#core-bind-import!
      (lambda _g183595_
        (let ((_g183596_ (##length _g183595_)))
          (cond ((##fx= _g183596_ 1) (apply gx#core-bind-import!__0 _g183595_))
                ((##fx= _g183596_ 2) (apply gx#core-bind-import!__1 _g183595_))
                ((##fx= _g183596_ 3) (apply gx#core-bind-import!__% _g183595_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g183595_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_%in181636%_ _%ctx181637%_)
        (gx#core-bind-import!__% _%in181636%_ _%ctx181637%_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_%in181642%_)
        (let ((_%ctx181644%_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _%in181642%_ _%ctx181644%_))))
    (define gx#core-bind-weak-import!
      (lambda _g183597_
        (let ((_g183598_ (##length _g183597_)))
          (cond ((##fx= _g183598_ 1)
                 (apply gx#core-bind-weak-import!__0 _g183597_))
                ((##fx= _g183598_ 2)
                 (apply gx#core-bind-weak-import!__% _g183597_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g183597_))))))
    (define gx#core-resolve-module-export
      (lambda (_%out181529%_)
        (letrec ((_%subst181531%_
                  (lambda (_%key181576%_)
                    (let* ((_%key181577181585%_ _%key181576%_)
                           (_%else181579181593%_ (lambda () _%key181576%_))
                           (_%K181581181623%_
                            (lambda (_%mark181596%_ _%id181597%_)
                              (let* ((_%mark181598181604%_ _%mark181596%_)
                                     (_%E181600181607%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark181598181604%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K181601181615%_
                                      (lambda (_%subst181610%_)
                                        (let ((_%$e181612%_
                                               (if _%subst181610%_
                                                   (hash-get
                                                    _%subst181610%_
                                                    _%id181597%_)
                                                   '#f)))
                                          (if _%$e181612%_
                                              _%$e181612%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _%key181576%_))))))
                                (if (##structure-instance-of?
                                     _%mark181598181604%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e181602181618%_
                                            (##unchecked-structure-ref
                                             _%mark181598181604%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst181621%_ _%e181602181618%_))
                                      (_%K181601181615%_ _%subst181621%_))
                                    (_%E181600181607%_))))))
                      (if (pair? _%key181577181585%_)
                          (let ((_%hd181582181626%_
                                 (##car _%key181577181585%_))
                                (_%tl181583181628%_
                                 (##cdr _%key181577181585%_)))
                            (let* ((_%id181631%_ _%hd181582181626%_)
                                   (_%mark181633%_ _%tl181583181628%_))
                              (_%K181581181623%_ _%mark181633%_ _%id181631%_)))
                          (_%else181579181593%_))))))
          (let* ((_%out181532181542%_ _%out181529%_)
                 (_%E181534181545%_
                  (lambda ()
                    (error '"No clause matching"
                           _%out181532181542%_
                           '((module-export ctx key phi _ _)))
                    '#!void))
                 (_%K181535181552%_
                  (lambda (_%phi181548%_ _%key181549%_ _%ctx181550%_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _%ctx181550%_ _%phi181548%_)
                     (_%subst181531%_ _%key181549%_)))))
            (if (##structure-direct-instance-of?
                 _%out181532181542%_
                 'gx#module-export::t)
                (let* ((_%e181536181555%_
                        (##unchecked-structure-ref
                         _%out181532181542%_
                         '1
                         '#f
                         '#f))
                       (_%ctx181558%_ _%e181536181555%_)
                       (_%e181537181560%_
                        (##unchecked-structure-ref
                         _%out181532181542%_
                         '2
                         '#f
                         '#f))
                       (_%key181563%_ _%e181537181560%_)
                       (_%e181538181565%_
                        (##unchecked-structure-ref
                         _%out181532181542%_
                         '3
                         '#f
                         '#f))
                       (_%phi181568%_ _%e181538181565%_)
                       (_%e181539181570%_
                        (##unchecked-structure-ref
                         _%out181532181542%_
                         '4
                         '#f
                         '#f))
                       (_%e181540181573%_
                        (##unchecked-structure-ref
                         _%out181532181542%_
                         '5
                         '#f
                         '#f)))
                  (_%K181535181552%_
                   _%phi181568%_
                   _%key181563%_
                   _%ctx181558%_))
                (_%E181534181545%_))))))
    (define gx#core-module-export->import__%
      (lambda (_%out181455%_ _%rename181456%_ _%dphi181457%_)
        (let* ((_%out181458181468%_ _%out181455%_)
               (_%E181460181471%_
                (lambda ()
                  (error '"No clause matching"
                         _%out181458181468%_
                         '((module-export ctx key phi name weak?)))
                  '#!void))
               (_%K181461181483%_
                (lambda (_%weak?181474%_
                         _%name181475%_
                         _%phi181476%_
                         _%key181477%_
                         _%ctx181478%_)
                  (##structure
                   gx#module-import::t
                   _%out181455%_
                   (let ((_%$e181480%_ _%rename181456%_))
                     (if _%$e181480%_ _%$e181480%_ _%name181475%_))
                   (fx+ _%phi181476%_ _%dphi181457%_)
                   _%weak?181474%_))))
          (if (##structure-direct-instance-of?
               _%out181458181468%_
               'gx#module-export::t)
              (let* ((_%e181462181486%_
                      (##unchecked-structure-ref
                       _%out181458181468%_
                       '1
                       '#f
                       '#f))
                     (_%ctx181489%_ _%e181462181486%_)
                     (_%e181463181491%_
                      (##unchecked-structure-ref
                       _%out181458181468%_
                       '2
                       '#f
                       '#f))
                     (_%key181494%_ _%e181463181491%_)
                     (_%e181464181496%_
                      (##unchecked-structure-ref
                       _%out181458181468%_
                       '3
                       '#f
                       '#f))
                     (_%phi181499%_ _%e181464181496%_)
                     (_%e181465181501%_
                      (##unchecked-structure-ref
                       _%out181458181468%_
                       '4
                       '#f
                       '#f))
                     (_%name181504%_ _%e181465181501%_)
                     (_%e181466181506%_
                      (##unchecked-structure-ref
                       _%out181458181468%_
                       '5
                       '#f
                       '#f))
                     (_%weak?181509%_ _%e181466181506%_))
                (_%K181461181483%_
                 _%weak?181509%_
                 _%name181504%_
                 _%phi181499%_
                 _%key181494%_
                 _%ctx181489%_))
              (_%E181460181471%_)))))
    (define gx#core-module-export->import__0
      (lambda (_%out181514%_)
        (let* ((_%rename181516%_ '#f) (_%dphi181518%_ '0))
          (gx#core-module-export->import__%
           _%out181514%_
           _%rename181516%_
           _%dphi181518%_))))
    (define gx#core-module-export->import__1
      (lambda (_%out181520%_ _%rename181521%_)
        (let ((_%dphi181523%_ '0))
          (gx#core-module-export->import__%
           _%out181520%_
           _%rename181521%_
           _%dphi181523%_))))
    (define gx#core-module-export->import
      (lambda _g183599_
        (let ((_g183600_ (##length _g183599_)))
          (cond ((##fx= _g183600_ 1)
                 (apply gx#core-module-export->import__0 _g183599_))
                ((##fx= _g183600_ 2)
                 (apply gx#core-module-export->import__1 _g183599_))
                ((##fx= _g183600_ 3)
                 (apply gx#core-module-export->import__% _g183599_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g183599_))))))
    (define gx#core-expand-module%
      (lambda (_%stx181354%_)
        (letrec ((_%make-context181356%_
                  (lambda (_%id181433%_)
                    (let* ((_%super181435%_ (gx#current-expander-context))
                           (_%bind-id181437%_ (gx#stx-e _%id181433%_))
                           (_%mod-id181439%_
                            (if (##structure-instance-of?
                                 _%super181435%_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##unchecked-structure-ref
                                  _%super181435%_
                                  '1
                                  '#f
                                  '#f)
                                 '"~"
                                 _%bind-id181437%_)
                                _%bind-id181437%_))
                           (_%ns181441%_ (symbol->string _%mod-id181439%_))
                           (_%path181451%_
                            (if (##structure-instance-of?
                                 _%super181435%_
                                 'gx#module-context::t)
                                (let ((_%path181443%_
                                       (##unchecked-structure-ref
                                        _%super181435%_
                                        '7
                                        '#f
                                        '#f)))
                                  (if (or (pair? _%path181443%_)
                                          (null? _%path181443%_))
                                      (cons _%bind-id181437%_ _%path181443%_)
                                      (if (not _%path181443%_)
                                          _%bind-id181437%_
                                          (cons _%bind-id181437%_
                                                (cons _%path181443%_ '())))))
                                _%bind-id181437%_))
                           (__obj183576
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
                       __obj183576
                       _%mod-id181439%_
                       _%super181435%_
                       _%ns181441%_
                       _%path181451%_)
                      __obj183576)))
                 (_%valid-module-id?181357%_
                  (lambda (_%id181408%_)
                    (let* ((_%str181410%_ (symbol->string _%id181408%_))
                           (_%len181412%_ (##string-length _%str181410%_)))
                      (if (##fx>= _%len181412%_ '1)
                          (let _%loop181415%_ ((_%index181417%_
                                                (##fx- (##string-length
                                                        _%str181410%_)
                                                       '1)))
                            (if (##fx>= _%index181417%_ '0)
                                (let ((_%c181419%_
                                       (string-ref
                                        _%str181410%_
                                        _%index181417%_)))
                                  (if (or (and (##char>=? _%c181419%_ '#\a)
                                               (##char<=? _%c181419%_ '#\z))
                                          (and (##char>=? _%c181419%_ '#\A)
                                               (##char<=? _%c181419%_ '#\Z))
                                          (and (##char>=? _%c181419%_ '#\0)
                                               (##char<=? _%c181419%_ '#\9))
                                          (##char=? _%c181419%_ '#\_)
                                          (##char=? _%c181419%_ '#\-))
                                      (_%loop181415%_
                                       (##fx- _%index181417%_ '1))
                                      '#f))
                                '#t))
                          '#f)))))
          (let* ((_%e181358181368%_ _%stx181354%_)
                 (_%E181360181372%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e181358181368%_)))
                 (_%E181359181404%_
                  (lambda ()
                    (if (gx#stx-pair? _%e181358181368%_)
                        (let ((_%e181361181376%_
                               (gx#syntax-e _%e181358181368%_)))
                          (let ((_%hd181362181379%_ (##car _%e181361181376%_))
                                (_%tl181363181381%_ (##cdr _%e181361181376%_)))
                            (if (gx#stx-pair? _%tl181363181381%_)
                                (let ((_%e181364181384%_
                                       (gx#syntax-e _%tl181363181381%_)))
                                  (let ((_%hd181365181387%_
                                         (##car _%e181364181384%_))
                                        (_%tl181366181389%_
                                         (##cdr _%e181364181384%_)))
                                    (let* ((_%id181392%_ _%hd181365181387%_)
                                           (_%body181394%_ _%tl181366181389%_))
                                      (if (and (gx#identifier? _%id181392%_)
                                               (gx#stx-list? _%body181394%_))
                                          (if (_%valid-module-id?181357%_
                                               (gx#stx-e
                                                (gx#datum->syntax__0 '#f 'id)))
                                              (let* ((_%ctx181396%_
                                                      (_%make-context181356%_
                                                       _%id181392%_))
                                                     (_%body181398%_
                                                      (gx#core-expand-module-begin
                                                       _%body181394%_
                                                       _%ctx181396%_))
                                                     (_%body181400%_
                                                      (gx#core-quote-syntax__1
                                                       (gx#core-cons
                                                        '%#begin
                                                        _%body181398%_)
                                                       (gx#stx-source
                                                        _%stx181354%_))))
                                                (##unchecked-structure-set!
                                                 _%ctx181396%_
                                                 (__make-atomic-promise
                                                  (lambda ()
                                                    (gx#eval-syntax*
                                                     _%body181400%_)))
                                                 '10
                                                 '#f
                                                 '#f)
                                                (##unchecked-structure-set!
                                                 _%ctx181396%_
                                                 _%body181400%_
                                                 '11
                                                 '#f
                                                 '#f)
                                                (gx#core-bind-syntax!__0
                                                 _%id181392%_
                                                 _%ctx181396%_)
                                                (gx#core-quote-syntax__1
                                                 (gx#core-list
                                                  '%#module
                                                  (gx#core-quote-syntax__0
                                                   _%id181392%_)
                                                  _%body181400%_)
                                                 (gx#stx-source
                                                  _%stx181354%_)))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"invalid module id; allowed characters are A-Z,a-z,0-9,_,-"
                                               _%stx181354%_
                                               (gx#datum->syntax__0 '#f 'id)))
                                          (_%E181360181372%_)))))
                                (_%E181360181372%_))))
                        (_%E181360181372%_)))))
            (_%E181359181404%_)))))
    (define gx#core-expand-module-begin
      (lambda (_%body181319%_ _%ctx181320%_)
        (call-with-parameters__1
         (lambda ()
           (call-with-parameters__1
            (lambda ()
              (gx#core-bind-feature!__1 'gerbil-module '#t)
              (let* ((_%stx181324%_
                      (gx#core-expand-head
                       (cons '%%begin-module _%body181319%_)))
                     (_%e181325181332%_ _%stx181324%_)
                     (_%E181327181336%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module body expansion"
                         _%stx181324%_)))
                     (_%E181326181350%_
                      (lambda ()
                        (if (gx#stx-pair? _%e181325181332%_)
                            (let ((_%e181328181340%_
                                   (gx#syntax-e _%e181325181332%_)))
                              (let ((_%hd181329181343%_
                                     (##car _%e181328181340%_))
                                    (_%tl181330181345%_
                                     (##cdr _%e181328181340%_)))
                                (if (and (gx#identifier? _%hd181329181343%_)
                                         (gx#core-identifier=?
                                          _%hd181329181343%_
                                          '%#begin-module))
                                    (let ((_%body181348%_ _%tl181330181345%_))
                                      (if (gx#sealed-syntax? _%stx181324%_)
                                          _%body181348%_
                                          (gx#core-expand-module-body
                                           _%body181348%_)))
                                    (_%E181327181336%_))))
                            (_%E181327181336%_)))))
                (_%E181326181350%_)))
            gx#current-expander-phi
            '0))
         gx#current-expander-context
         _%ctx181320%_)))
    (define gx#core-expand-module-body
      (lambda (_%body181115%_)
        (letrec ((_%expand-special181117%_
                  (lambda (_%hd181246%_ _%K181247%_ _%rest181248%_ _%r181249%_)
                    (let* ((_%e181250181267%_ _%hd181246%_)
                           (_%E181262181271%_
                            (lambda ()
                              (_%K181247%_
                               _%rest181248%_
                               (cons (gx#core-expand-top _%hd181246%_)
                                     _%r181249%_))))
                           (_%E181252181283%_
                            (lambda ()
                              (if (gx#stx-pair? _%e181250181267%_)
                                  (let ((_%e181263181275%_
                                         (gx#syntax-e _%e181250181267%_)))
                                    (let ((_%hd181264181278%_
                                           (##car _%e181263181275%_))
                                          (_%tl181265181280%_
                                           (##cdr _%e181263181275%_)))
                                      (if (and (gx#identifier?
                                                _%hd181264181278%_)
                                               (gx#core-identifier=?
                                                _%hd181264181278%_
                                                '%#export))
                                          (_%K181247%_
                                           _%rest181248%_
                                           (cons _%hd181246%_ _%r181249%_))
                                          (_%E181262181271%_))))
                                  (_%E181262181271%_))))
                           (_%E181251181315%_
                            (lambda ()
                              (if (gx#stx-pair? _%e181250181267%_)
                                  (let ((_%e181253181287%_
                                         (gx#syntax-e _%e181250181267%_)))
                                    (let ((_%hd181254181290%_
                                           (##car _%e181253181287%_))
                                          (_%tl181255181292%_
                                           (##cdr _%e181253181287%_)))
                                      (if (and (gx#identifier?
                                                _%hd181254181290%_)
                                               (gx#core-identifier=?
                                                _%hd181254181290%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl181255181292%_)
                                              (let ((_%e181256181295%_
                                                     (gx#syntax-e
                                                      _%tl181255181292%_)))
                                                (let ((_%hd181257181298%_
                                                       (##car _%e181256181295%_))
                                                      (_%tl181258181300%_
                                                       (##cdr _%e181256181295%_)))
                                                  (let ((_%hd-bind181303%_
                                                         _%hd181257181298%_))
                                                    (if (gx#stx-pair?
                                                         _%tl181258181300%_)
                                                        (let ((_%e181259181305%_
                                                               (gx#syntax-e
                                                                _%tl181258181300%_)))
                                                          (let ((_%hd181260181308%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e181259181305%_))
                        (_%tl181261181310%_ (##cdr _%e181259181305%_)))
                    (let ((_%expr181313%_ _%hd181260181308%_))
                      (if (gx#stx-null? _%tl181261181310%_)
                          (if (gx#core-bind-values? _%hd-bind181303%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind181303%_)
                                (_%K181247%_
                                 _%rest181248%_
                                 (cons _%hd181246%_ _%r181249%_)))
                              (_%E181252181283%_))
                          (_%E181252181283%_)))))
                (_%E181252181283%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E181252181283%_))
                                          (_%E181252181283%_))))
                                  (_%E181252181283%_)))))
                      (_%E181251181315%_))))
                 (_%expand-body181118%_
                  (lambda (_%rbody181120%_)
                    (let _%lp181122%_ ((_%rest181124%_ _%rbody181120%_)
                                       (_%body181125%_ '()))
                      (let* ((_%rest181126181134%_ _%rest181124%_)
                             (_%else181128181142%_ (lambda () _%body181125%_))
                             (_%K181130181234%_
                              (lambda (_%rest181145%_ _%hd181146%_)
                                (let* ((_%e181147181168%_ _%hd181146%_)
                                       (_%E181163181172%_
                                        (lambda ()
                                          (_%lp181122%_
                                           _%rest181145%_
                                           (cons (gx#core-expand-expression
                                                  _%hd181146%_)
                                                 _%body181125%_))))
                                       (_%E181159181186%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e181147181168%_)
                                              (let ((_%e181164181176%_
                                                     (gx#syntax-e
                                                      _%e181147181168%_)))
                                                (let ((_%hd181165181179%_
                                                       (##car _%e181164181176%_))
                                                      (_%tl181166181181%_
                                                       (##cdr _%e181164181176%_)))
                                                  (let ((_%form181184%_
                                                         _%hd181165181179%_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _%form181184%_
                                                         gx#special-form-binding?)
                                                        (_%lp181122%_
                                                         _%rest181145%_
                                                         (cons _%hd181146%_
                                                               _%body181125%_))
                                                        (_%E181163181172%_)))))
                                              (_%E181163181172%_))))
                                       (_%E181149181198%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e181147181168%_)
                                              (let ((_%e181160181190%_
                                                     (gx#syntax-e
                                                      _%e181147181168%_)))
                                                (let ((_%hd181161181193%_
                                                       (##car _%e181160181190%_))
                                                      (_%tl181162181195%_
                                                       (##cdr _%e181160181190%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd181161181193%_)
                                                           (gx#core-identifier=?
                                                            _%hd181161181193%_
                                                            '%#export))
                                                      (_%lp181122%_
                                                       _%rest181145%_
                                                       (cons (gx#core-expand-export%__0
                                                              _%hd181146%_)
                                                             _%body181125%_))
                                                      (_%E181159181186%_))))
                                              (_%E181159181186%_))))
                                       (_%E181148181230%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e181147181168%_)
                                              (let ((_%e181150181202%_
                                                     (gx#syntax-e
                                                      _%e181147181168%_)))
                                                (let ((_%hd181151181205%_
                                                       (##car _%e181150181202%_))
                                                      (_%tl181152181207%_
                                                       (##cdr _%e181150181202%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd181151181205%_)
                                                           (gx#core-identifier=?
                                                            _%hd181151181205%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl181152181207%_)
                                                          (let ((_%e181153181210%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl181152181207%_)))
                    (let ((_%hd181154181213%_ (##car _%e181153181210%_))
                          (_%tl181155181215%_ (##cdr _%e181153181210%_)))
                      (let ((_%hd-bind181218%_ _%hd181154181213%_))
                        (if (gx#stx-pair? _%tl181155181215%_)
                            (let ((_%e181156181220%_
                                   (gx#syntax-e _%tl181155181215%_)))
                              (let ((_%hd181157181223%_
                                     (##car _%e181156181220%_))
                                    (_%tl181158181225%_
                                     (##cdr _%e181156181220%_)))
                                (let ((_%expr181228%_ _%hd181157181223%_))
                                  (if (gx#stx-null? _%tl181158181225%_)
                                      (_%lp181122%_
                                       _%rest181145%_
                                       (cons (gx#core-quote-syntax__1
                                              (gx#core-list
                                               '%#define-values
                                               (gx#core-quote-bind-values
                                                _%hd-bind181218%_)
                                               (gx#core-expand-expression
                                                _%expr181228%_))
                                              (gx#stx-source _%hd181146%_))
                                             _%body181125%_))
                                      (_%E181149181198%_)))))
                            (_%E181149181198%_)))))
                  (_%E181149181198%_))
              (_%E181149181198%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E181149181198%_)))))
                                  (_%E181148181230%_)))))
                        (if (pair? _%rest181126181134%_)
                            (let ((_%hd181131181237%_
                                   (##car _%rest181126181134%_))
                                  (_%tl181132181239%_
                                   (##cdr _%rest181126181134%_)))
                              (let* ((_%hd181242%_ _%hd181131181237%_)
                                     (_%rest181244%_ _%tl181132181239%_))
                                (_%K181130181234%_
                                 _%rest181244%_
                                 _%hd181242%_)))
                            (_%else181128181142%_)))))))
          (_%expand-body181118%_
           (gx#core-expand-block__%
            (cons '%#begin-module _%body181115%_)
            _%expand-special181117%_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_%stx180956%_
               _%expanded?180957%_
               _%method180958%_
               _%current-phi180959%_
               _%expand1180960%_)
        (letrec ((_%K180962%_
                  (lambda (_%rest181082%_ _%r181083%_)
                    (let* ((_%e181084181091%_ _%rest181082%_)
                           (_%E181086181095%_ (lambda () _%r181083%_))
                           (_%E181085181111%_
                            (lambda ()
                              (if (gx#stx-pair? _%e181084181091%_)
                                  (let ((_%e181087181099%_
                                         (gx#syntax-e _%e181084181091%_)))
                                    (let ((_%hd181088181102%_
                                           (##car _%e181087181099%_))
                                          (_%tl181089181104%_
                                           (##cdr _%e181087181099%_)))
                                      (let* ((_%hd181107%_ _%hd181088181102%_)
                                             (_%rest181109%_
                                              _%tl181089181104%_))
                                        (_%step180963%_
                                         _%hd181107%_
                                         _%rest181109%_
                                         _%r181083%_))))
                                  (_%E181086181095%_)))))
                      (_%E181085181111%_))))
                 (_%step180963%_
                  (lambda (_%hd180996%_ _%rest180997%_ _%r180998%_)
                    (let* ((_%e180999181017%_ _%hd180996%_)
                           (_%E181012181021%_
                            (lambda ()
                              (if (_%expanded?180957%_ (gx#stx-e _%hd180996%_))
                                  (_%K180962%_
                                   _%rest180997%_
                                   (cons (gx#stx-e _%hd180996%_) _%r180998%_))
                                  (_%expand1180960%_
                                   _%hd180996%_
                                   _%K180962%_
                                   _%rest180997%_
                                   _%r180998%_))))
                           (_%E181008181037%_
                            (lambda ()
                              (if (gx#stx-pair? _%e180999181017%_)
                                  (let ((_%e181013181025%_
                                         (gx#syntax-e _%e180999181017%_)))
                                    (let ((_%hd181014181028%_
                                           (##car _%e181013181025%_))
                                          (_%tl181015181030%_
                                           (##cdr _%e181013181025%_)))
                                      (let* ((_%macro181033%_
                                              _%hd181014181028%_)
                                             (_%body181035%_
                                              _%tl181015181030%_))
                                        (if (gx#core-bound-identifier?__%
                                             _%macro181033%_
                                             gx#syntax-binding?)
                                            (_%K180962%_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _%macro181033%_)
                                                    _%hd180996%_
                                                    _%method180958%_)
                                                   _%rest180997%_)
                                             _%r180998%_)
                                            (_%E181012181021%_)))))
                                  (_%E181012181021%_))))
                           (_%E181001181051%_
                            (lambda ()
                              (if (gx#stx-pair? _%e180999181017%_)
                                  (let ((_%e181009181041%_
                                         (gx#syntax-e _%e180999181017%_)))
                                    (let ((_%hd181010181044%_
                                           (##car _%e181009181041%_))
                                          (_%tl181011181046%_
                                           (##cdr _%e181009181041%_)))
                                      (if (eq? (gx#stx-e _%hd181010181044%_)
                                               'begin:)
                                          (let ((_%body181049%_
                                                 _%tl181011181046%_))
                                            (_%K180962%_
                                             (gx#stx-foldr
                                              cons
                                              _%rest180997%_
                                              _%body181049%_)
                                             _%r180998%_))
                                          (_%E181008181037%_))))
                                  (_%E181008181037%_))))
                           (_%E181000181078%_
                            (lambda ()
                              (if (gx#stx-pair? _%e180999181017%_)
                                  (let ((_%e181002181055%_
                                         (gx#syntax-e _%e180999181017%_)))
                                    (let ((_%hd181003181058%_
                                           (##car _%e181002181055%_))
                                          (_%tl181004181060%_
                                           (##cdr _%e181002181055%_)))
                                      (if (eq? (gx#stx-e _%hd181003181058%_)
                                               'phi:)
                                          (if (gx#stx-pair? _%tl181004181060%_)
                                              (let ((_%e181005181063%_
                                                     (gx#syntax-e
                                                      _%tl181004181060%_)))
                                                (let ((_%hd181006181066%_
                                                       (##car _%e181005181063%_))
                                                      (_%tl181007181068%_
                                                       (##cdr _%e181005181063%_)))
                                                  (let* ((_%dphi181071%_
                                                          _%hd181006181066%_)
                                                         (_%body181073%_
                                                          _%tl181007181068%_))
                                                    (if (gx#stx-fixnum?
                                                         _%dphi181071%_)
                                                        (let ((_%rbody181076%_
                                                               (call-with-parameters__1
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%K180962%_ _%body181073%_ '()))
                        _%current-phi180959%_
                        (fx+ (gx#stx-e _%dphi181071%_)
                             (_%current-phi180959%_)))))
                  (_%K180962%_
                   _%rest180997%_
                   (foldr__0 cons _%r180998%_ _%rbody181076%_)))
                (_%E181001181051%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E181001181051%_))
                                          (_%E181001181051%_))))
                                  (_%E181001181051%_)))))
                      (_%E181000181078%_)))))
          (let* ((_%e180964180971%_ _%stx180956%_)
                 (_%E180966180975%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e180964180971%_)))
                 (_%E180965180992%_
                  (lambda ()
                    (if (gx#stx-pair? _%e180964180971%_)
                        (let ((_%e180967180979%_
                               (gx#syntax-e _%e180964180971%_)))
                          (let ((_%hd180968180982%_ (##car _%e180967180979%_))
                                (_%tl180969180984%_ (##cdr _%e180967180979%_)))
                            (let ((_%body180987%_ _%tl180969180984%_))
                              (if (_%current-phi180959%_)
                                  (_%K180962%_ _%body180987%_ '())
                                  (call-with-parameters__1
                                   (lambda () (_%K180962%_ _%body180987%_ '()))
                                   _%current-phi180959%_
                                   (gx#current-expander-phi))))))
                        (_%E180966180975%_)))))
            (_%E180965180992%_)))))
    (define gx#core-expand-import%__%
      (lambda (_%stx180610%_ _%internal-expand?180611%_)
        (letrec ((_%expand1180613%_
                  (lambda (_%hd180928%_ _%K180929%_ _%rest180930%_ _%r180931%_)
                    (if (gx#core-bound-module? _%hd180928%_)
                        (_%import1180614%_
                         (gx#syntax-local-e__0 _%hd180928%_)
                         _%K180929%_
                         _%rest180930%_
                         _%r180931%_)
                        (if (gx#core-library-module-path? _%hd180928%_)
                            (_%import1180614%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%hd180928%_))
                             _%K180929%_
                             _%rest180930%_
                             _%r180931%_)
                            (if (gx#core-library-relative-module-path?
                                 _%hd180928%_)
                                (_%import1180614%_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _%hd180928%_))
                                 _%K180929%_
                                 _%rest180930%_
                                 _%r180931%_)
                                (let ((_%e180937%_ (gx#stx-e _%hd180928%_)))
                                  (if (pair? _%e180937%_)
                                      (let ((_%$e180940%_
                                             (gx#stx-e (##car _%e180937%_))))
                                        (if (eq? 'spec: _%$e180940%_)
                                            (_%import-spec180617%_
                                             _%hd180928%_
                                             _%K180929%_
                                             _%rest180930%_
                                             _%r180931%_)
                                            (if (eq? 'in: _%$e180940%_)
                                                (_%import-submodule180615%_
                                                 _%hd180928%_
                                                 _%K180929%_
                                                 _%rest180930%_
                                                 _%r180931%_)
                                                (if (eq? 'runtime:
                                                         _%$e180940%_)
                                                    (_%import-runtime180616%_
                                                     _%hd180928%_
                                                     _%K180929%_
                                                     _%rest180930%_
                                                     _%r180931%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _%stx180610%_
                                                     _%hd180928%_)))))
                                      (if (string? _%e180937%_)
                                          (_%import1180614%_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _%hd180928%_
                                             (gx#stx-source _%stx180610%_)))
                                           _%K180929%_
                                           _%rest180930%_
                                           _%r180931%_)
                                          (if (##structure-instance-of?
                                               _%e180937%_
                                               'gx#module-context::t)
                                              (_%K180929%_
                                               _%rest180930%_
                                               (cons _%e180937%_ _%r180931%_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _%stx180610%_
                                               _%hd180928%_))))))))))
                 (_%import1180614%_
                  (lambda (_%ctx180917%_
                           _%K180918%_
                           _%rest180919%_
                           _%r180920%_)
                    (let ((_%dphi180922%_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_%K180918%_
                       _%rest180919%_
                       (cons (##structure
                              gx#import-set::t
                              _%ctx180917%_
                              _%dphi180922%_
                              (map (lambda (_%g180923180925%_)
                                     (gx#core-module-export->import__%
                                      _%g180923180925%_
                                      '#f
                                      _%dphi180922%_))
                                   (##unchecked-structure-ref
                                    _%ctx180917%_
                                    '9
                                    '#f
                                    '#f)))
                             _%r180920%_)))))
                 (_%import-submodule180615%_
                  (lambda (_%hd180884%_ _%K180885%_ _%rest180886%_ _%r180887%_)
                    (let* ((_%e180888180895%_ _%hd180884%_)
                           (_%E180890180899%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e180888180895%_)))
                           (_%E180889180913%_
                            (lambda ()
                              (if (gx#stx-pair? _%e180888180895%_)
                                  (let ((_%e180891180903%_
                                         (gx#syntax-e _%e180888180895%_)))
                                    (let ((_%hd180892180906%_
                                           (##car _%e180891180903%_))
                                          (_%tl180893180908%_
                                           (##cdr _%e180891180903%_)))
                                      (let ((_%spath180911%_
                                             _%tl180893180908%_))
                                        (_%import1180614%_
                                         (_%import-spec-source180618%_
                                          _%spath180911%_)
                                         _%K180885%_
                                         _%rest180886%_
                                         _%r180887%_))))
                                  (_%E180890180899%_)))))
                      (_%E180889180913%_))))
                 (_%import-runtime180616%_
                  (lambda (_%hd180851%_ _%K180852%_ _%rest180853%_ _%r180854%_)
                    (let* ((_%e180855180862%_ _%hd180851%_)
                           (_%E180857180866%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e180855180862%_)))
                           (_%E180856180880%_
                            (lambda ()
                              (if (gx#stx-pair? _%e180855180862%_)
                                  (let ((_%e180858180870%_
                                         (gx#syntax-e _%e180855180862%_)))
                                    (let ((_%hd180859180873%_
                                           (##car _%e180858180870%_))
                                          (_%tl180860180875%_
                                           (##cdr _%e180858180870%_)))
                                      (let ((_%spath180878%_
                                             _%tl180860180875%_))
                                        (_%K180852%_
                                         _%rest180853%_
                                         (cons (_%import-spec-source180618%_
                                                _%spath180878%_)
                                               _%r180854%_)))))
                                  (_%E180857180866%_)))))
                      (_%E180856180880%_))))
                 (_%import-spec180617%_
                  (lambda (_%hd180689%_ _%K180690%_ _%rest180691%_ _%r180692%_)
                    (let* ((_%e180693180710%_ _%hd180689%_)
                           (_%E180702180714%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e180693180710%_)))
                           (_%E180695180825%_
                            (lambda ()
                              (if (gx#stx-pair? _%e180693180710%_)
                                  (let ((_%e180703180718%_
                                         (gx#syntax-e _%e180693180710%_)))
                                    (let ((_%hd180704180721%_
                                           (##car _%e180703180718%_))
                                          (_%tl180705180723%_
                                           (##cdr _%e180703180718%_)))
                                      (if (gx#stx-pair? _%tl180705180723%_)
                                          (let ((_%e180706180726%_
                                                 (gx#syntax-e
                                                  _%tl180705180723%_)))
                                            (let ((_%hd180707180729%_
                                                   (##car _%e180706180726%_))
                                                  (_%tl180708180731%_
                                                   (##cdr _%e180706180726%_)))
                                              (let* ((_%path180734%_
                                                      _%hd180707180729%_)
                                                     (_%specs180736%_
                                                      _%tl180708180731%_))
                                                (let ((_%src-ctx180738%_
                                                       (_%import-spec-source180618%_
                                                        _%path180734%_))
                                                      (_%exports180739%_
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
                                                      (_%specs180740%_
                                                       (gx#syntax->list
                                                        _%specs180736%_)))
                                                  (for-each
                                                   (lambda (_%out180742%_)
                                                     (__hash-put!
                                                      _%exports180739%_
                                                      (cons (##unchecked-structure-ref
                                                             _%out180742%_
                                                             '3
                                                             '#f
                                                             '#f)
                                                            (##unchecked-structure-ref
                                                             _%out180742%_
                                                             '4
                                                             '#f
                                                             '#f))
                                                      _%out180742%_))
                                                   (##unchecked-structure-ref
                                                    _%src-ctx180738%_
                                                    '9
                                                    '#f
                                                    '#f))
                                                  (_%K180690%_
                                                   _%rest180691%_
                                                   (foldl__0
                                                    (lambda (_%spec180744%_
                                                             _%r180745%_)
                                                      (let* ((_%e180746180762%_
                                                              _%spec180744%_)
                                                             (_%E180748180766%_
                                                              (lambda ()
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid syntax-case clause"
                         _%e180746180762%_)))
                     (_%E180747180821%_
                      (lambda ()
                        (if (gx#stx-pair? _%e180746180762%_)
                            (let ((_%e180749180770%_
                                   (gx#syntax-e _%e180746180762%_)))
                              (let ((_%hd180750180773%_
                                     (##car _%e180749180770%_))
                                    (_%tl180751180775%_
                                     (##cdr _%e180749180770%_)))
                                (let ((_%phi180778%_ _%hd180750180773%_))
                                  (if (gx#stx-pair? _%tl180751180775%_)
                                      (let ((_%e180752180780%_
                                             (gx#syntax-e _%tl180751180775%_)))
                                        (let ((_%hd180753180783%_
                                               (##car _%e180752180780%_))
                                              (_%tl180754180785%_
                                               (##cdr _%e180752180780%_)))
                                          (let ((_%name180788%_
                                                 _%hd180753180783%_))
                                            (if (gx#stx-pair?
                                                 _%tl180754180785%_)
                                                (let ((_%e180755180790%_
                                                       (gx#syntax-e
                                                        _%tl180754180785%_)))
                                                  (let ((_%hd180756180793%_
                                                         (##car _%e180755180790%_))
                                                        (_%tl180757180795%_
                                                         (##cdr _%e180755180790%_)))
                                                    (let ((_%src-phi180798%_
                                                           _%hd180756180793%_))
                                                      (if (gx#stx-pair?
                                                           _%tl180757180795%_)
                                                          (let ((_%e180758180800%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl180757180795%_)))
                    (let ((_%hd180759180803%_ (##car _%e180758180800%_))
                          (_%tl180760180805%_ (##cdr _%e180758180800%_)))
                      (let ((_%src-name180808%_ _%hd180759180803%_))
                        (if (gx#stx-null? _%tl180760180805%_)
                            (if (and (gx#stx-fixnum? _%src-phi180798%_)
                                     (gx#identifier? _%src-name180808%_)
                                     (gx#stx-fixnum? _%phi180778%_)
                                     (gx#identifier? _%name180788%_))
                                (let ((_%src-phi180810%_
                                       (gx#stx-e _%src-phi180798%_))
                                      (_%src-name180811%_
                                       (gx#core-identifier-key
                                        _%src-name180808%_))
                                      (_%phi180812%_ (gx#stx-e _%phi180778%_))
                                      (_%name180813%_
                                       (gx#core-identifier-key
                                        _%name180788%_)))
                                  (let ((_%$e180815%_
                                         (__hash-get
                                          _%exports180739%_
                                          (cons _%src-phi180810%_
                                                _%src-name180811%_))))
                                    (if _%$e180815%_
                                        ((lambda (_%out180818%_)
                                           (cons (gx#core-module-export->import__%
                                                  _%out180818%_
                                                  _%name180813%_
                                                  (fx- _%phi180812%_
                                                       _%src-phi180810%_))
                                                 _%r180745%_))
                                         _%$e180815%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; no matching export"
                                         _%stx180610%_
                                         _%hd180689%_))))
                                (_%E180748180766%_))
                            (_%E180748180766%_)))))
                  (_%E180748180766%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E180748180766%_)))))
                                      (_%E180748180766%_)))))
                            (_%E180748180766%_)))))
                (_%E180747180821%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r180692%_
                                                    _%specs180740%_))))))
                                          (_%E180702180714%_))))
                                  (_%E180702180714%_))))
                           (_%E180694180847%_
                            (lambda ()
                              (if (gx#stx-pair? _%e180693180710%_)
                                  (let ((_%e180696180829%_
                                         (gx#syntax-e _%e180693180710%_)))
                                    (let ((_%hd180697180832%_
                                           (##car _%e180696180829%_))
                                          (_%tl180698180834%_
                                           (##cdr _%e180696180829%_)))
                                      (if (gx#stx-pair? _%tl180698180834%_)
                                          (let ((_%e180699180837%_
                                                 (gx#syntax-e
                                                  _%tl180698180834%_)))
                                            (let ((_%hd180700180840%_
                                                   (##car _%e180699180837%_))
                                                  (_%tl180701180842%_
                                                   (##cdr _%e180699180837%_)))
                                              (let ((_%path180845%_
                                                     _%hd180700180840%_))
                                                (if (gx#stx-null?
                                                     _%tl180701180842%_)
                                                    (_%K180690%_
                                                     _%rest180691%_
                                                     (cons (_%import-spec-source180618%_
                                                            _%path180845%_)
                                                           _%r180692%_))
                                                    (_%E180695180825%_)))))
                                          (_%E180695180825%_))))
                                  (_%E180695180825%_)))))
                      (_%E180694180847%_))))
                 (_%import-spec-source180618%_
                  (lambda (_%spath180687%_)
                    (gx#core-import-nested-module
                     _%spath180687%_
                     _%stx180610%_)))
                 (_%import!180619%_
                  (lambda (_%rbody180632%_)
                    (letrec* ((_%current-ctx180634%_
                               (gx#current-expander-context))
                              (_%deps180635%_ (make-hash-table-eq))
                              (_%bind!180636%_
                               (lambda (_%hd180685%_)
                                 (gx#core-bind-import!__1
                                  _%hd180685%_
                                  _%current-ctx180634%_))))
                      (let _%lp180638%_ ((_%rest180640%_ _%rbody180632%_)
                                         (_%body180641%_ '()))
                        (let* ((_%rest180642180650%_ _%rest180640%_)
                               (_%else180644180661%_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _%current-ctx180634%_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _%current-ctx180634%_
                                       (foldl__0
                                        cons
                                        (##unchecked-structure-ref
                                         _%current-ctx180634%_
                                         '8
                                         '#f
                                         '#f)
                                        _%body180641%_)
                                       '8
                                       '#f
                                       '#f)
                                      '#!void)
                                  (__hash-for-each
                                   (lambda (_%ctx180658%_ _%_180659%_)
                                     (gx#eval-module _%ctx180658%_))
                                   _%deps180635%_)
                                  _%body180641%_))
                               (_%K180646180673%_
                                (lambda (_%rest180664%_ _%hd180665%_)
                                  (if (##structure-direct-instance-of?
                                       _%hd180665%_
                                       'gx#module-import::t)
                                      (let ()
                                        (_%bind!180636%_ _%hd180665%_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _%hd180665%_
                                                   '3
                                                   '#f
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _%hd180665%_
                                                            '1
                                                            '#f
                                                            '#f)
                                                           '3
                                                           '#f
                                                           '#f)))
                                            (__hash-put!
                                             _%deps180635%_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _%hd180665%_
                                               '1
                                               '#f
                                               '#f)
                                              '1
                                              '#f
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _%hd180665%_
                                           'gx#import-set::t)
                                          (let ()
                                            (for-each
                                             _%bind!180636%_
                                             (##unchecked-structure-ref
                                              _%hd180665%_
                                              '3
                                              '#f
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _%hd180665%_
                                                  '2
                                                  '#f
                                                  '#f))
                                                (__hash-put!
                                                 _%deps180635%_
                                                 (##unchecked-structure-ref
                                                  _%hd180665%_
                                                  '1
                                                  '#f
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_%$e180669%_
                                                 (##structure-instance-of?
                                                  _%hd180665%_
                                                  'gx#module-context::t)))
                                            (if _%$e180669%_
                                                _%$e180669%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _%stx180610%_
                                                 _%hd180665%_)))))
                                  (_%lp180638%_
                                   _%rest180664%_
                                   (cons _%hd180665%_ _%body180641%_)))))
                          (if (pair? _%rest180642180650%_)
                              (let ((_%hd180647180676%_
                                     (##car _%rest180642180650%_))
                                    (_%tl180648180678%_
                                     (##cdr _%rest180642180650%_)))
                                (let* ((_%hd180681%_ _%hd180647180676%_)
                                       (_%rest180683%_ _%tl180648180678%_))
                                  (_%K180646180673%_
                                   _%rest180683%_
                                   _%hd180681%_)))
                              (_%else180644180661%_)))))))
                 (_%expanded-import?180620%_
                  (lambda (_%e180624%_)
                    (let ((_%$e180626%_
                           (##structure-direct-instance-of?
                            _%e180624%_
                            'gx#import-set::t)))
                      (if _%$e180626%_
                          _%$e180626%_
                          (let ((_%$e180629%_
                                 (##structure-direct-instance-of?
                                  _%e180624%_
                                  'gx#module-import::t)))
                            (if _%$e180629%_
                                _%$e180629%_
                                (##structure-instance-of?
                                 _%e180624%_
                                 'gx#module-context::t))))))))
          (let ((_%rbody180622%_
                 (gx#core-expand-import/export
                  _%stx180610%_
                  _%expanded-import?180620%_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _%expand1180613%_)))
            (if _%internal-expand?180611%_
                (reverse _%rbody180622%_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_%import!180619%_ _%rbody180622%_))
                 (gx#stx-source _%stx180610%_)))))))
    (define gx#core-expand-import%__0
      (lambda (_%stx180949%_)
        (let ((_%internal-expand?180951%_ '#f))
          (gx#core-expand-import%__%
           _%stx180949%_
           _%internal-expand?180951%_))))
    (define gx#core-expand-import%
      (lambda _g183601_
        (let ((_g183602_ (##length _g183601_)))
          (cond ((##fx= _g183602_ 1)
                 (apply gx#core-expand-import%__0 _g183601_))
                ((##fx= _g183602_ 2)
                 (apply gx#core-expand-import%__% _g183601_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g183601_))))))
    (define gx#core-import-nested-module
      (lambda (_%spath180537%_ _%where180538%_)
        (let* ((_%e180539180546%_ _%spath180537%_)
               (_%E180541180550%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180539180546%_)))
               (_%E180540180605%_
                (lambda ()
                  (if (gx#stx-pair? _%e180539180546%_)
                      (let ((_%e180542180554%_
                             (gx#syntax-e _%e180539180546%_)))
                        (let ((_%hd180543180557%_ (##car _%e180542180554%_))
                              (_%tl180544180559%_ (##cdr _%e180542180554%_)))
                          (let* ((_%origin180562%_ _%hd180543180557%_)
                                 (_%sub180564%_ _%tl180544180559%_)
                                 (_%origin-ctx180566%_
                                  (if (gx#stx-false? _%origin180562%_)
                                      (gx#current-expander-context)
                                      (gx#import-module__0 _%origin180562%_))))
                            (let _%lp180568%_ ((_%rest180570%_ _%sub180564%_)
                                               (_%ctx180571%_
                                                _%origin-ctx180566%_))
                              (let* ((_%e180572180579%_ _%rest180570%_)
                                     (_%E180574180583%_
                                      (lambda () _%ctx180571%_))
                                     (_%E180573180601%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e180572180579%_)
                                            (let ((_%e180575180587%_
                                                   (gx#syntax-e
                                                    _%e180572180579%_)))
                                              (let ((_%hd180576180590%_
                                                     (##car _%e180575180587%_))
                                                    (_%tl180577180592%_
                                                     (##cdr _%e180575180587%_)))
                                                (let* ((_%id180595%_
                                                        _%hd180576180590%_)
                                                       (_%rest180597%_
                                                        _%tl180577180592%_)
                                                       (_%bind180599%_
                                                        (gx#resolve-identifier__%
                                                         _%id180595%_
                                                         '0
                                                         _%ctx180571%_)))
                                                  (if (and (##structure-direct-instance-of?
                                                            _%bind180599%_
                                                            'gx#syntax-binding::t)
                                                           (##structure-instance-of?
                                                            (##unchecked-structure-ref
                                                             _%bind180599%_
                                                             '5
                                                             '#f
                                                             '#f)
                                                            'gx#module-context::t))
                                                      '#!void
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; not bound as module"
                                                       _%where180538%_
                                                       _%spath180537%_
                                                       _%id180595%_))
                                                  (_%lp180568%_
                                                   _%rest180597%_
                                                   (##unchecked-structure-ref
                                                    _%bind180599%_
                                                    '5
                                                    '#f
                                                    '#f)))))
                                            (_%E180574180583%_)))))
                                (_%E180573180601%_))))))
                      (_%E180541180550%_)))))
          (_%E180540180605%_))))
    (define gx#core-expand-import-source
      (lambda (_%hd180535%_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _%hd180535%_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_%stx180030%_ _%internal-expand?180031%_)
        (letrec* ((_%make-export__183529183530%_
                   (lambda (_%bind180483%_
                            _%phi180484%_
                            _%ctx180485%_
                            _%name180486%_)
                     (let* ((_%key180488%_
                             (##unchecked-structure-ref
                              _%bind180483%_
                              '2
                              '#f
                              '#f))
                            (_%export-key180490%_
                             (if _%name180486%_
                                 (gx#core-identifier-key _%name180486%_)
                                 _%key180488%_)))
                       (##structure
                        gx#module-export::t
                        _%ctx180485%_
                        _%key180488%_
                        _%phi180484%_
                        _%export-key180490%_
                        (let ((_%$e180493%_
                               (##structure-instance-of?
                                _%bind180483%_
                                'gx#extern-binding::t)))
                          (if _%$e180493%_
                              _%$e180493%_
                              (##structure-direct-instance-of?
                               _%bind180483%_
                               'gx#import-binding::t)))))))
                  (_%make-export__0__183531183534%_
                   (lambda (_%bind180499%_)
                     (let* ((_%phi180501%_ (gx#current-export-expander-phi))
                            (_%ctx180503%_ (gx#current-expander-context))
                            (_%name180505%_ '#f))
                       (_%make-export__183529183530%_
                        _%bind180499%_
                        _%phi180501%_
                        _%ctx180503%_
                        _%name180505%_))))
                  (_%make-export__1__183532183535%_
                   (lambda (_%bind180507%_ _%phi180508%_)
                     (let* ((_%ctx180510%_ (gx#current-expander-context))
                            (_%name180512%_ '#f))
                       (_%make-export__183529183530%_
                        _%bind180507%_
                        _%phi180508%_
                        _%ctx180510%_
                        _%name180512%_))))
                  (_%make-export__2__183533183536%_
                   (lambda (_%bind180514%_ _%phi180515%_ _%ctx180516%_)
                     (let ((_%name180518%_ '#f))
                       (_%make-export__183529183530%_
                        _%bind180514%_
                        _%phi180515%_
                        _%ctx180516%_
                        _%name180518%_))))
                  (_%make-export180033%_
                   (lambda _g183603_
                     (let ((_g183604_ (##length _g183603_)))
                       (cond ((##fx= _g183604_ 1)
                              (apply _%make-export__0__183531183534%_
                                     _g183603_))
                             ((##fx= _g183604_ 2)
                              (apply _%make-export__1__183532183535%_
                                     _g183603_))
                             ((##fx= _g183604_ 3)
                              (apply _%make-export__2__183533183536%_
                                     _g183603_))
                             ((##fx= _g183604_ 4)
                              (apply _%make-export__183529183530%_ _g183603_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g183603_))))))
                  (_%expand1180034%_
                   (lambda (_%hd180188%_
                            _%K180189%_
                            _%rest180190%_
                            _%r180191%_)
                     (let* ((_%e180192180224%_ _%hd180188%_)
                            (_%E180219180228%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _%stx180030%_
                                _%hd180188%_)))
                            (_%E180209180312%_
                             (lambda ()
                               (if (gx#stx-pair? _%e180192180224%_)
                                   (let ((_%e180220180232%_
                                          (gx#syntax-e _%e180192180224%_)))
                                     (let ((_%hd180221180235%_
                                            (##car _%e180220180232%_))
                                           (_%tl180222180237%_
                                            (##cdr _%e180220180232%_)))
                                       (if (eq? (gx#stx-e _%hd180221180235%_)
                                                'import:)
                                           (let ((_%in180240%_
                                                  _%tl180222180237%_))
                                             (if (gx#stx-list? _%in180240%_)
                                                 (let _%lp180242%_ ((_%in-rest180244%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%in180240%_)
                            (_%r180245%_ _%r180191%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%e180246180253%_
                                                           _%in-rest180244%_)
                                                          (_%E180248180257%_
                                                           (lambda ()
                                                             (_%K180189%_
                                                              _%rest180190%_
                                                              _%r180245%_)))
                                                          (_%E180247180308%_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%e180246180253%_)
                         (let ((_%e180249180261%_
                                (gx#syntax-e _%e180246180253%_)))
                           (let ((_%hd180250180264%_ (##car _%e180249180261%_))
                                 (_%tl180251180266%_
                                  (##cdr _%e180249180261%_)))
                             (let* ((_%hd180269%_ _%hd180250180264%_)
                                    (_%in-rest180271%_ _%tl180251180266%_)
                                    (_%src180306%_
                                     (if (gx#core-bound-module? _%hd180269%_)
                                         (gx#syntax-local-e__0 _%hd180269%_)
                                         (if (gx#core-library-module-path?
                                              _%hd180269%_)
                                             (gx#import-module__0
                                              (gx#core-resolve-library-module-path
                                               _%hd180269%_))
                                             (if (gx#core-library-relative-module-path?
                                                  _%hd180269%_)
                                                 (gx#import-module__0
                                                  (gx#core-resolve-library-relative-module-path
                                                   _%hd180269%_))
                                                 (if (gx#stx-string?
                                                      _%hd180269%_)
                                                     (gx#import-module__0
                                                      (gx#core-resolve-module-path__%
                                                       _%hd180269%_
                                                       (gx#stx-source
                                                        _%stx180030%_)))
                                                     (let* ((_%e180277180284%_
                                                             _%hd180269%_)
                                                            (_%E180279180288%_
                                                             (lambda ()
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; illegal re-export"
                                                                _%stx180030%_
                                                                _%hd180269%_)))
                                                            (_%E180278180302%_
                                                             (lambda ()
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%e180277180284%_)
                           (let ((_%e180280180292%_
                                  (gx#syntax-e _%e180277180284%_)))
                             (let ((_%hd180281180295%_
                                    (##car _%e180280180292%_))
                                   (_%tl180282180297%_
                                    (##cdr _%e180280180292%_)))
                               (if (eq? (gx#stx-e _%hd180281180295%_) 'in:)
                                   (let ((_%spath180300%_ _%tl180282180297%_))
                                     (gx#core-import-nested-module
                                      _%spath180300%_
                                      _%stx180030%_))
                                   (_%E180279180288%_))))
                           (_%E180279180288%_)))))
               (_%E180278180302%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (_%lp180242%_
                                _%in-rest180271%_
                                (_%export-imports180035%_
                                 _%src180306%_
                                 _%r180245%_)))))
                         (_%E180248180257%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E180247180308%_)))
                                                 (_%E180219180228%_)))
                                           (_%E180219180228%_))))
                                   (_%E180219180228%_))))
                            (_%E180196180352%_
                             (lambda ()
                               (if (gx#stx-pair? _%e180192180224%_)
                                   (let ((_%e180210180316%_
                                          (gx#syntax-e _%e180192180224%_)))
                                     (let ((_%hd180211180319%_
                                            (##car _%e180210180316%_))
                                           (_%tl180212180321%_
                                            (##cdr _%e180210180316%_)))
                                       (if (eq? (gx#stx-e _%hd180211180319%_)
                                                'rename:)
                                           (if (gx#stx-pair?
                                                _%tl180212180321%_)
                                               (let ((_%e180213180324%_
                                                      (gx#syntax-e
                                                       _%tl180212180321%_)))
                                                 (let ((_%hd180214180327%_
                                                        (##car _%e180213180324%_))
                                                       (_%tl180215180329%_
                                                        (##cdr _%e180213180324%_)))
                                                   (let ((_%id180332%_
                                                          _%hd180214180327%_))
                                                     (if (gx#stx-pair?
                                                          _%tl180215180329%_)
                                                         (let ((_%e180216180334%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl180215180329%_)))
                   (let ((_%hd180217180337%_ (##car _%e180216180334%_))
                         (_%tl180218180339%_ (##cdr _%e180216180334%_)))
                     (let ((_%name180342%_ _%hd180217180337%_))
                       (if (gx#stx-null? _%tl180218180339%_)
                           (let* ((_%phi180344%_
                                   (gx#current-export-expander-phi))
                                  (_%$e180346%_
                                   (gx#core-resolve-identifier__1
                                    _%id180332%_
                                    _%phi180344%_)))
                             (if _%$e180346%_
                                 ((lambda (_%bind180349%_)
                                    (_%K180189%_
                                     _%rest180190%_
                                     (cons (_%make-export__183529183530%_
                                            _%bind180349%_
                                            _%phi180344%_
                                            (gx#current-expander-context)
                                            _%name180342%_)
                                           _%r180191%_)))
                                  _%$e180346%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Reference to unbound identifier"
                                  _%stx180030%_
                                  _%hd180188%_
                                  _%id180332%_)))
                           (_%E180209180312%_)))))
                 (_%E180209180312%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E180209180312%_))
                                           (_%E180209180312%_))))
                                   (_%E180209180312%_))))
                            (_%E180195180402%_
                             (lambda ()
                               (if (gx#stx-pair? _%e180192180224%_)
                                   (let ((_%e180197180356%_
                                          (gx#syntax-e _%e180192180224%_)))
                                     (let ((_%hd180198180359%_
                                            (##car _%e180197180356%_))
                                           (_%tl180199180361%_
                                            (##cdr _%e180197180356%_)))
                                       (if (eq? (gx#stx-e _%hd180198180359%_)
                                                'spec:)
                                           (if (gx#stx-pair?
                                                _%tl180199180361%_)
                                               (let ((_%e180200180364%_
                                                      (gx#syntax-e
                                                       _%tl180199180361%_)))
                                                 (let ((_%hd180201180367%_
                                                        (##car _%e180200180364%_))
                                                       (_%tl180202180369%_
                                                        (##cdr _%e180200180364%_)))
                                                   (let ((_%phi180372%_
                                                          _%hd180201180367%_))
                                                     (if (gx#stx-pair?
                                                          _%tl180202180369%_)
                                                         (let ((_%e180203180374%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl180202180369%_)))
                   (let ((_%hd180204180377%_ (##car _%e180203180374%_))
                         (_%tl180205180379%_ (##cdr _%e180203180374%_)))
                     (let ((_%id180382%_ _%hd180204180377%_))
                       (if (gx#stx-pair? _%tl180205180379%_)
                           (let ((_%e180206180384%_
                                  (gx#syntax-e _%tl180205180379%_)))
                             (let ((_%hd180207180387%_
                                    (##car _%e180206180384%_))
                                   (_%tl180208180389%_
                                    (##cdr _%e180206180384%_)))
                               (let ((_%name180392%_ _%hd180207180387%_))
                                 (if (gx#stx-null? _%tl180208180389%_)
                                     (if (and (gx#stx-fixnum? _%phi180372%_)
                                              (gx#identifier? _%id180382%_)
                                              (gx#identifier? _%name180392%_))
                                         (let* ((_%phi180394%_
                                                 (gx#stx-e _%phi180372%_))
                                                (_%$e180396%_
                                                 (gx#core-resolve-identifier__1
                                                  _%id180382%_
                                                  _%phi180394%_)))
                                           (if _%$e180396%_
                                               ((lambda (_%bind180399%_)
                                                  (_%K180189%_
                                                   _%rest180190%_
                                                   (cons (_%make-export__183529183530%_
                                                          _%bind180399%_
                                                          _%phi180394%_
                                                          (gx#current-expander-context)
                                                          _%name180392%_)
                                                         _%r180191%_)))
                                                _%$e180396%_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _%stx180030%_
                                                _%hd180188%_
                                                _%id180382%_)))
                                         (_%E180196180352%_))
                                     (_%E180196180352%_)))))
                           (_%E180196180352%_)))))
                 (_%E180196180352%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E180196180352%_))
                                           (_%E180196180352%_))))
                                   (_%E180196180352%_))))
                            (_%E180194180414%_
                             (lambda ()
                               (let ((_%id180406%_ _%e180192180224%_))
                                 (if (gx#identifier? _%id180406%_)
                                     (let ((_%$e180408%_
                                            (gx#core-resolve-identifier__1
                                             _%id180406%_
                                             (gx#current-export-expander-phi))))
                                       (if _%$e180408%_
                                           ((lambda (_%bind180411%_)
                                              (_%K180189%_
                                               _%rest180190%_
                                               (cons (_%make-export__0__183531183534%_
                                                      _%bind180411%_)
                                                     _%r180191%_)))
                                            _%$e180408%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _%stx180030%_
                                            _%hd180188%_)))
                                     (_%E180195180402%_)))))
                            (_%E180193180478%_
                             (lambda ()
                               (if (eq? (gx#stx-e _%e180192180224%_) '#t)
                                   (let* ((_%current-ctx180418%_
                                           (gx#current-expander-context))
                                          (_%current-phi180420%_
                                           (gx#current-export-expander-phi))
                                          (_%phi-ctx180422%_
                                           (gx#core-context-shift
                                            _%current-ctx180418%_
                                            _%current-phi180420%_))
                                          (_%phi-bind180424%_
                                           (hash->list
                                            (##unchecked-structure-ref
                                             _%phi-ctx180422%_
                                             '2
                                             '#f
                                             '#f))))
                                     (let _%lp180427%_ ((_%bind-rest180429%_
                                                         _%phi-bind180424%_)
                                                        (_%set180430%_ '()))
                                       (let* ((_%bind-rest180431180441%_
                                               _%bind-rest180429%_)
                                              (_%else180433180449%_
                                               (lambda ()
                                                 (_%K180189%_
                                                  _%rest180190%_
                                                  (cons (##structure
                                                         gx#export-set::t
                                                         '#f
                                                         _%current-phi180420%_
                                                         _%set180430%_)
                                                        _%r180191%_))))
                                              (_%K180435180459%_
                                               (lambda (_%bind-rest180452%_
                                                        _%bind180453%_
                                                        _%key180454%_)
                                                 (if (or (##structure-direct-instance-of?
                                                          _%bind180453%_
                                                          'gx#import-binding::t)
                                                         (gx#private-feature-binding?
                                                          _%bind180453%_))
                                                     (_%lp180427%_
                                                      _%bind-rest180452%_
                                                      _%set180430%_)
                                                     (_%lp180427%_
                                                      _%bind-rest180452%_
                                                      (cons (_%make-export__2__183533183536%_
                                                             _%bind180453%_
                                                             _%current-phi180420%_
                                                             _%current-ctx180418%_)
                                                            _%set180430%_))))))
                                         (if (pair? _%bind-rest180431180441%_)
                                             (let ((_%hd180436180462%_
                                                    (##car _%bind-rest180431180441%_))
                                                   (_%tl180437180464%_
                                                    (##cdr _%bind-rest180431180441%_)))
                                               (if (pair? _%hd180436180462%_)
                                                   (let ((_%hd180438180467%_
                                                          (##car _%hd180436180462%_))
                                                         (_%tl180439180469%_
                                                          (##cdr _%hd180436180462%_)))
                                                     (let* ((_%key180472%_
                                                             _%hd180438180467%_)
                                                            (_%bind180474%_
                                                             _%tl180439180469%_)
                                                            (_%bind-rest180476%_
                                                             _%tl180437180464%_))
                                                       (_%K180435180459%_
                                                        _%bind-rest180476%_
                                                        _%bind180474%_
                                                        _%key180472%_)))
                                                   (_%else180433180449%_)))
                                             (_%else180433180449%_)))))
                                   (_%E180194180414%_)))))
                       (_%E180193180478%_))))
                  (_%export-imports180035%_
                   (lambda (_%src180065%_ _%r180066%_)
                     (letrec* ((_%current-ctx180068%_
                                (gx#current-expander-context))
                               (_%current-phi180069%_
                                (gx#current-export-expander-phi))
                               (_%import->export180070%_
                                (lambda (_%in180151%_)
                                  (let* ((_%in180152180160%_ _%in180151%_)
                                         (_%E180154180163%_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _%in180152180160%_
                                                   '((module-import
                                                      out
                                                      key
                                                      phi)))
                                            '#!void))
                                         (_%K180155180170%_
                                          (lambda (_%phi180166%_
                                                   _%key180167%_
                                                   _%out180168%_)
                                            (##structure
                                             gx#module-export::t
                                             _%current-ctx180068%_
                                             _%key180167%_
                                             _%phi180166%_
                                             _%key180167%_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _%in180152180160%_
                                         'gx#module-import::t)
                                        (let* ((_%e180156180173%_
                                                (##unchecked-structure-ref
                                                 _%in180152180160%_
                                                 '1
                                                 '#f
                                                 '#f))
                                               (_%out180176%_
                                                _%e180156180173%_)
                                               (_%e180157180178%_
                                                (##unchecked-structure-ref
                                                 _%in180152180160%_
                                                 '2
                                                 '#f
                                                 '#f))
                                               (_%key180181%_
                                                _%e180157180178%_)
                                               (_%e180158180183%_
                                                (##unchecked-structure-ref
                                                 _%in180152180160%_
                                                 '3
                                                 '#f
                                                 '#f))
                                               (_%phi180186%_
                                                _%e180158180183%_))
                                          (_%K180155180170%_
                                           _%phi180186%_
                                           _%key180181%_
                                           _%out180176%_))
                                        (_%E180154180163%_)))))
                               (_%fold-e180071%_
                                (lambda (_%in180073%_ _%r180074%_)
                                  (let* ((_%in180075180089%_ _%in180073%_)
                                         (_%else180078180097%_
                                          (lambda () _%r180074%_)))
                                    (let ((_%K180084180133%_
                                           (lambda (_%phi180129%_
                                                    _%key180130%_
                                                    _%out180131%_)
                                             (if (and (fx= _%phi180129%_
                                                           _%current-phi180069%_)
                                                      (eq? _%src180065%_
                                                           (##unchecked-structure-ref
                                                            _%out180131%_
                                                            '1
                                                            '#f
                                                            '#f)))
                                                 (cons (_%import->export180070%_
                                                        _%in180073%_)
                                                       _%r180074%_)
                                                 _%r180074%_)))
                                          (_%K180080180108%_
                                           (lambda (_%imports180101%_
                                                    _%phi180102%_
                                                    _%ctx180103%_)
                                             (if (and (fx= _%phi180102%_
                                                           _%current-phi180069%_)
                                                      (eq? _%src180065%_
                                                           _%ctx180103%_))
                                                 (foldl__0
                                                  (lambda (_%in180105%_
                                                           _%r180106%_)
                                                    (cons (_%import->export180070%_
                                                           _%in180105%_)
                                                          _%r180106%_))
                                                  _%r180074%_
                                                  _%imports180101%_)
                                                 _%r180074%_))))
                                      (let ((_%try-match180077180126%_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _%in180075180089%_
                                                    'gx#import-set::t)
                                                   (let* ((_%e180081180111%_
                                                           (##unchecked-structure-ref
                                                            _%in180075180089%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                          (_%e180082180116%_
                                                           (##unchecked-structure-ref
                                                            _%in180075180089%_
                                                            '2
                                                            '#f
                                                            '#f))
                                                          (_%e180083180121%_
                                                           (##unchecked-structure-ref
                                                            _%in180075180089%_
                                                            '3
                                                            '#f
                                                            '#f)))
                                                     (let ((_%ctx180114%_
                                                            _%e180081180111%_)
                                                           (_%phi180119%_
                                                            _%e180082180116%_)
                                                           (_%imports180124%_
                                                            _%e180083180121%_))
                                                       (_%K180080180108%_
                                                        _%imports180124%_
                                                        _%phi180119%_
                                                        _%ctx180114%_)))
                                                   (_%else180078180097%_)))))
                                        (if (##structure-direct-instance-of?
                                             _%in180075180089%_
                                             'gx#module-import::t)
                                            (let* ((_%e180085180136%_
                                                    (##unchecked-structure-ref
                                                     _%in180075180089%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                   (_%e180086180141%_
                                                    (##unchecked-structure-ref
                                                     _%in180075180089%_
                                                     '2
                                                     '#f
                                                     '#f))
                                                   (_%e180087180146%_
                                                    (##unchecked-structure-ref
                                                     _%in180075180089%_
                                                     '3
                                                     '#f
                                                     '#f)))
                                              (let ((_%out180139%_
                                                     _%e180085180136%_)
                                                    (_%key180144%_
                                                     _%e180086180141%_)
                                                    (_%phi180149%_
                                                     _%e180087180146%_))
                                                (_%K180084180133%_
                                                 _%phi180149%_
                                                 _%key180144%_
                                                 _%out180139%_)))
                                            (_%try-match180077180126%_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _%src180065%_
                              _%current-phi180069%_
                              (foldl__0
                               _%fold-e180071%_
                               '()
                               (##unchecked-structure-ref
                                _%current-ctx180068%_
                                '8
                                '#f
                                '#f)))
                             _%r180066%_))))
                  (_%export!180036%_
                   (lambda (_%rbody180052%_)
                     (letrec* ((_%current-ctx180054%_
                                (gx#current-expander-context))
                               (_%fold-e180055%_
                                (lambda (_%out180059%_ _%r180060%_)
                                  (if (##structure-direct-instance-of?
                                       _%out180059%_
                                       'gx#module-export::t)
                                      (cons _%out180059%_ _%r180060%_)
                                      (if (##structure-direct-instance-of?
                                           _%out180059%_
                                           'gx#export-set::t)
                                          (foldl__0
                                           cons
                                           _%r180060%_
                                           (##unchecked-structure-ref
                                            _%out180059%_
                                            '3
                                            '#f
                                            '#f))
                                          _%r180060%_)))))
                       (let ((_%body180057%_ (reverse _%rbody180052%_)))
                         (##unchecked-structure-set!
                          _%current-ctx180054%_
                          (foldl__0
                           _%fold-e180055%_
                           (##unchecked-structure-ref
                            _%current-ctx180054%_
                            '9
                            '#f
                            '#f)
                           _%body180057%_)
                          '9
                          '#f
                          '#f)
                         _%body180057%_))))
                  (_%expanded-export?180037%_
                   (lambda (_%e180047%_)
                     (let ((_%$e180049%_
                            (##structure-direct-instance-of?
                             _%e180047%_
                             'gx#module-export::t)))
                       (if _%$e180049%_
                           _%$e180049%_
                           (##structure-direct-instance-of?
                            _%e180047%_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _%internal-expand?180031%_)
              (let ((_%rbody180043%_
                     (gx#core-expand-import/export
                      _%stx180030%_
                      _%expanded-export?180037%_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _%expand1180034%_)))
                (if _%internal-expand?180031%_
                    (reverse _%rbody180043%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons
                      '%#export
                      (_%export!180036%_ _%rbody180043%_))
                     (gx#stx-source _%stx180030%_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _%stx180030%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _%stx180030%_))))))
    (define gx#core-expand-export%__0
      (lambda (_%stx180528%_)
        (let ((_%internal-expand?180530%_ '#f))
          (gx#core-expand-export%__%
           _%stx180528%_
           _%internal-expand?180530%_))))
    (define gx#core-expand-export%
      (lambda _g183605_
        (let ((_g183606_ (##length _g183605_)))
          (cond ((##fx= _g183606_ 1)
                 (apply gx#core-expand-export%__0 _g183605_))
                ((##fx= _g183606_ 2)
                 (apply gx#core-expand-export%__% _g183605_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g183605_))))))
    (define gx#core-expand-export-source
      (lambda (_%hd180027%_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _%hd180027%_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_%stx179997%_)
        (let* ((_%e179998180005%_ _%stx179997%_)
               (_%E180000180009%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e179998180005%_)))
               (_%E179999180023%_
                (lambda ()
                  (if (gx#stx-pair? _%e179998180005%_)
                      (let ((_%e180001180013%_
                             (gx#syntax-e _%e179998180005%_)))
                        (let ((_%hd180002180016%_ (##car _%e180001180013%_))
                              (_%tl180003180018%_ (##cdr _%e180001180013%_)))
                          (let ((_%body180021%_ _%tl180003180018%_))
                            (if (gx#identifier-list? _%body180021%_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _%body180021%_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _%body180021%_))
                                   (gx#stx-source _%stx179997%_)))
                                (_%E180000180009%_)))))
                      (_%E180000180009%_)))))
          (_%E179999180023%_))))
    (define gx#core-bind-feature!__%
      (lambda (_%id179963%_ _%private?179964%_ _%phi179965%_ _%ctx179966%_)
        (gx#core-bind-syntax!__%
         _%id179963%_
         ((if _%private?179964%_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _%id179963%_))
         _%private?179964%_
         _%phi179965%_
         _%ctx179966%_)))
    (define gx#core-bind-feature!__0
      (lambda (_%id179971%_)
        (let* ((_%private?179973%_ '#f)
               (_%phi179975%_ (gx#current-expander-phi))
               (_%ctx179977%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id179971%_
           _%private?179973%_
           _%phi179975%_
           _%ctx179977%_))))
    (define gx#core-bind-feature!__1
      (lambda (_%id179979%_ _%private?179980%_)
        (let* ((_%phi179982%_ (gx#current-expander-phi))
               (_%ctx179984%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id179979%_
           _%private?179980%_
           _%phi179982%_
           _%ctx179984%_))))
    (define gx#core-bind-feature!__2
      (lambda (_%id179986%_ _%private?179987%_ _%phi179988%_)
        (let ((_%ctx179990%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id179986%_
           _%private?179987%_
           _%phi179988%_
           _%ctx179990%_))))
    (define gx#core-bind-feature!
      (lambda _g183607_
        (let ((_g183608_ (##length _g183607_)))
          (cond ((##fx= _g183608_ 1)
                 (apply gx#core-bind-feature!__0 _g183607_))
                ((##fx= _g183608_ 2)
                 (apply gx#core-bind-feature!__1 _g183607_))
                ((##fx= _g183608_ 3)
                 (apply gx#core-bind-feature!__2 _g183607_))
                ((##fx= _g183608_ 4)
                 (apply gx#core-bind-feature!__% _g183607_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g183607_))))))))
