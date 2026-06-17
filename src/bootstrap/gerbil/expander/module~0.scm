(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1781697563)
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
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '((print: name))))
       '#f))
    (define gx#module-import? (__make-class-predicate gx#module-import::t))
    (define gx#make-module-import
      (lambda _%$args190579%_
        (apply make-instance gx#module-import::t _%$args190579%_)))
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
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '((print: name))))
       '#f))
    (define gx#module-export? (__make-class-predicate gx#module-export::t))
    (define gx#make-module-export
      (lambda _%$args190576%_
        (apply make-instance gx#module-export::t _%$args190576%_)))
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
      (lambda _%$args190573%_
        (apply make-instance gx#import-set::t _%$args190573%_)))
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
      (lambda _%$args190570%_
        (apply make-instance gx#export-set::t _%$args190570%_)))
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
      (lambda _%$args190567%_
        (apply make-instance gx#import-expander::t _%$args190567%_)))
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
      (lambda _%$args190564%_
        (apply make-instance gx#export-expander::t _%$args190564%_)))
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
      (lambda _%$args190561%_
        (apply make-instance gx#import-export-expander::t _%$args190561%_)))
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
      (lambda (_%path190558%_ _%fun190559%_)
        (call-with-input-file
         (cons 'path: (cons _%path190558%_ gx#source-file-settings))
         _%fun190559%_)))
    (define gx#module-context:::init!
      (lambda (_%self190541%_
               _%id190542%_
               _%super190543%_
               _%ns190544%_
               _%path190545%_)
        (let ((_%self190548%_ _%self190541%_))
          (if (##fx< '11 (##structure-length _%self190548%_))
              (begin
                (##unchecked-structure-set!
                 _%self190548%_
                 _%id190542%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self190548%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self190548%_
                 _%super190543%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self190548%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self190548%_ '#f '5 '#f '#f)
                (##unchecked-structure-set!
                 _%self190548%_
                 _%ns190544%_
                 '6
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self190548%_
                 _%path190545%_
                 '7
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self190548%_ '() '8 '#f '#f)
                (##unchecked-structure-set! _%self190548%_ '() '9 '#f '#f)
                (##unchecked-structure-set! _%self190548%_ '#f '10 '#f '#f)
                (##unchecked-structure-set! _%self190548%_ '#f '11 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self190548%_
                     '11
                     (##structure-length _%self190548%_))))))
    (__bind-method!__%
     gx#module-context::t
     ':init!
     gx#module-context:::init!
     '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_%self190374%_ _%ctx190375%_ _%root190376%_)
        (let* ((_%self190379%_ _%self190374%_)
               (_%super190395%_
                (let ((_%$e190389%_ _%root190376%_))
                  (if _%$e190389%_
                      _%$e190389%_
                      (let ((_%$e190392%_ (gx#core-context-root__0)))
                        (if _%$e190392%_
                            _%$e190392%_
                            (let ((__obj190623
                                   (##structure gx#root-context::t '#f '#f)))
                              (let ((__constructor190624
                                     (direct-method-ref
                                      gx#root-context::t
                                      __obj190623
                                      ':init!)))
                                (if __constructor190624
                                    (__constructor190624 __obj190623)
                                    (error '"missing constructor method implementation"
                                           'class:
                                           gx#root-context::t
                                           'method:
                                           ':init!)))
                              __obj190623)))))))
          (if _%ctx190375%_
              (let ((_%id190398%_
                     (##structure-ref
                      _%ctx190375%_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_%path190399%_
                     (##structure-ref
                      _%ctx190375%_
                      '7
                      gx#module-context::t
                      '#f))
                    (_%in190400%_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _%ctx190375%_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_%e190401%_
                     (__make-atomic-promise
                      (lambda () (gx#eval-module _%ctx190375%_)))))
                (if (##fx< '8 (##structure-length _%self190379%_))
                    (begin
                      (##unchecked-structure-set!
                       _%self190379%_
                       _%id190398%_
                       '1
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self190379%_
                       (make-hash-table-eq 'size: (##length _%in190400%_))
                       '2
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self190379%_
                       _%super190395%_
                       '3
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self190379%_
                       '#f
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self190379%_
                       '#f
                       '5
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self190379%_
                       _%path190399%_
                       '6
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self190379%_
                       _%in190400%_
                       '7
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self190379%_
                       _%e190401%_
                       '8
                       '#f
                       '#f)
                      '#!void)
                    (error '"struct-instance-init!: too many arguments for struct"
                           _%self190379%_
                           '8
                           (##structure-length _%self190379%_)))
                (##for-each
                 (lambda (_%$%g190402190404%_)
                   (gx#core-bind-weak-import!__%
                    _%$%g190402190404%_
                    _%self190379%_))
                 _%in190400%_))
              (if (##fx< '8 (##structure-length _%self190379%_))
                  (begin
                    (##unchecked-structure-set! _%self190379%_ '#f '1 '#f '#f)
                    (##unchecked-structure-set!
                     _%self190379%_
                     (make-hash-table-eq)
                     '2
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self190379%_
                     _%super190395%_
                     '3
                     '#f
                     '#f)
                    (##unchecked-structure-set! _%self190379%_ '#f '4 '#f '#f)
                    (##unchecked-structure-set! _%self190379%_ '#f '5 '#f '#f)
                    (##unchecked-structure-set! _%self190379%_ '#f '6 '#f '#f)
                    (##unchecked-structure-set! _%self190379%_ '() '7 '#f '#f)
                    (##unchecked-structure-set! _%self190379%_ '#f '8 '#f '#f)
                    '#!void)
                  (error '"struct-instance-init!: too many arguments for struct"
                         _%self190379%_
                         '8
                         (##structure-length _%self190379%_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_%self190410%_ _%ctx190411%_)
        (let ((_%root190413%_ '#f))
          (gx#prelude-context:::init!__%
           _%self190410%_
           _%ctx190411%_
           _%root190413%_))))
    (define gx#prelude-context:::init!
      (lambda _g190630_
        (let ((_g190631_ (##length _g190630_)))
          (cond ((##fx= _g190631_ 2)
                 (apply gx#prelude-context:::init!__0 _g190630_))
                ((##fx= _g190631_ 3)
                 (apply gx#prelude-context:::init!__% _g190630_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g190630_))))))
    (__bind-method!__%
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_%self190248%_ _%e190249%_)
        (if (##fx< '3 (##structure-length _%self190248%_))
            (begin
              (##unchecked-structure-set!
               _%self190248%_
               _%e190249%_
               '1
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self190248%_
               (gx#current-expander-context)
               '2
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self190248%_
               (##fx- (gx#current-expander-phi) '1)
               '3
               '#f
               '#f)
              '#!void)
            (error '"struct-instance-init!: too many arguments for struct"
                   _%self190248%_
                   '3
                   (##structure-length _%self190248%_)))))
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
      (lambda (_%$%g189874189877%_ _%$%g189875189879%_)
        (gx#core-apply-user-expander__%
         _%$%g189874189877%_
         _%$%g189875189879%_
         'apply-import-expander)))
    (__bind-method!__%
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_%$%g189745189748%_ _%$%g189746189750%_)
        (gx#core-apply-user-expander__%
         _%$%g189745189748%_
         _%$%g189746189750%_
         'apply-export-expander)))
    (__bind-method!__%
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_%ctx189616%_)
        (let* ((_%path189618%_
                (##structure-ref _%ctx189616%_ '7 gx#module-context::t '#f))
               (_%path189620%_
                (if (pair? _%path189618%_)
                    (##last _%path189618%_)
                    _%path189618%_)))
          (if (string? _%path189620%_) _%path189620%_ '#f))))
    (define gx#import-module__%
      (lambda (_%path189592%_ _%reload?189593%_ _%eval?189594%_)
        (let ((_%ctx189596%_
               ((gx#current-expander-module-import)
                _%path189592%_
                _%reload?189593%_)))
          (if (and _%ctx189596%_ _%eval?189594%_)
              (gx#eval-module _%ctx189596%_)
              '#!void)
          _%ctx189596%_)))
    (define gx#import-module__0
      (lambda (_%path189601%_)
        (let* ((_%reload?189603%_ '#f) (_%eval?189605%_ '#f))
          (gx#import-module__%
           _%path189601%_
           _%reload?189603%_
           _%eval?189605%_))))
    (define gx#import-module__1
      (lambda (_%path189607%_ _%reload?189608%_)
        (let ((_%eval?189610%_ '#f))
          (gx#import-module__%
           _%path189607%_
           _%reload?189608%_
           _%eval?189610%_))))
    (define gx#import-module
      (lambda _g190632_
        (let ((_g190633_ (##length _g190632_)))
          (cond ((##fx= _g190633_ 1) (apply gx#import-module__0 _g190632_))
                ((##fx= _g190633_ 2) (apply gx#import-module__1 _g190632_))
                ((##fx= _g190633_ 3) (apply gx#import-module__% _g190632_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g190632_))))))
    (define gx#eval-module
      (lambda (_%mod189589%_)
        ((gx#current-expander-module-eval) _%mod189589%_)))
    (define gx#core-eval-module
      (lambda (_%obj189568%_)
        (letrec ((_%force-e189570%_
                  (lambda (_%getf189584%_ _%e189585%_)
                    (call-with-parameters__1
                     (lambda ()
                       (call-with-parameters__1
                        (lambda () (force (_%getf189584%_ _%e189585%_)))
                        gx#current-expander-phi
                        '0))
                     gx#current-expander-context
                     _%e189585%_))))
          (let _%recur189572%_ ((_%e189574%_ _%obj189568%_))
            (if (##structure-instance-of? _%e189574%_ 'gx#module-context::t)
                (let ()
                  (let ((_%$e189577%_
                         (gx#core-context-prelude__% _%e189574%_)))
                    (if _%$e189577%_ (_%recur189572%_ _%$e189577%_) '#!void))
                  (_%force-e189570%_ gx#module-context-e _%e189574%_))
                (if (##structure-instance-of?
                     _%e189574%_
                     'gx#prelude-context::t)
                    (_%force-e189570%_ gx#prelude-context-e _%e189574%_)
                    (if (gx#stx-string? _%e189574%_)
                        (_%recur189572%_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _%e189574%_)))
                        (if (gx#core-library-module-path? _%e189574%_)
                            (_%recur189572%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%e189574%_)))
                            (error '"cannot eval module" _%obj189568%_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_%ctx189548%_)
        (let _%lp189550%_ ((_%e189552%_ _%ctx189548%_))
          (if (or (##structure-instance-of? _%e189552%_ 'gx#module-context::t)
                  (##structure-instance-of? _%e189552%_ 'gx#local-context::t))
              (_%lp189550%_ (##unchecked-structure-ref _%e189552%_ '3 '#f '#f))
              (if (##structure-instance-of? _%e189552%_ 'gx#prelude-context::t)
                  _%e189552%_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_%ctx189564%_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _%ctx189564%_))))
    (define gx#core-context-prelude
      (lambda _g190634_
        (let ((_g190635_ (##length _g190634_)))
          (cond ((##fx= _g190635_ 0)
                 (apply gx#core-context-prelude__0 _g190634_))
                ((##fx= _g190635_ 1)
                 (apply gx#core-context-prelude__% _g190634_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g190634_))))))
    (define gx#core-module->prelude-context
      (lambda (_%ctx189539%_)
        (let ((_%$e189541%_ (__hash-get gx#__module-registry _%ctx189539%_)))
          (if _%$e189541%_
              _%$e189541%_
              (let ((_%pre189545%_
                     (let ((__obj190625
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
                        __obj190625
                        _%ctx189539%_)
                       __obj190625)))
                (__hash-put! gx#__module-registry _%ctx189539%_ _%pre189545%_)
                _%pre189545%_)))))
    (define gx#core-import-module__%
      (lambda (_%rpath189407%_ _%reload?189408%_)
        (letrec ((_%import-source189410%_
                  (lambda (_%path189498%_)
                    (if (member _%path189498%_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _%path189498%_)
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
                                      (let ((_g190636_
                                             (gx#core-read-module
                                              _%path189498%_)))
                                        (begin
                                          (let ((_g190637_
                                                 (if (##values? _g190636_)
                                                     (##values-length
                                                      _g190636_)
                                                     1)))
                                            (if (not (##fx= _g190637_ 4))
                                                (error "Context expects 4 values"
                                                       _g190637_)))
                                          (let ((_%pre189506%_
                                                 (##values-ref _g190636_ 0))
                                                (_%id189507%_
                                                 (##values-ref _g190636_ 1))
                                                (_%ns189508%_
                                                 (##values-ref _g190636_ 2))
                                                (_%body189509%_
                                                 (##values-ref _g190636_ 3)))
                                            (let* ((_%prelude189519%_
                                                    (if (##structure-instance-of?
                                                         _%pre189506%_
                                                         'gx#prelude-context::t)
                                                        _%pre189506%_
                                                        (if (##structure-instance-of?
                                                             _%pre189506%_
                                                             'gx#module-context::t)
                                                            (gx#core-module->prelude-context
                                                             _%pre189506%_)
                                                            (if (string? _%pre189506%_)
                                                                (gx#core-module->prelude-context
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#core-import-module__0 _%pre189506%_))
                        (if (not _%pre189506%_)
                            (let ((_%$e189515%_
                                   (gx#current-expander-module-prelude)))
                              (if _%$e189515%_
                                  _%$e189515%_
                                  (let ((__obj190626
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
                                     __obj190626
                                     '#f)
                                    __obj190626)))
                            (error '"cannot import module; unknown prelude"
                                   _%rpath189407%_
                                   _%pre189506%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%ctx189521%_
                                                    (let ((__obj190627
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
                                                       __obj190627
                                                       _%id189507%_
                                                       _%prelude189519%_
                                                       _%ns189508%_
                                                       _%path189498%_)
                                                      __obj190627))
                                                   (_%body189523%_
                                                    (gx#core-expand-module-begin
                                                     _%body189509%_
                                                     _%ctx189521%_))
                                                   (_%body189525%_
                                                    (gx#core-quote-syntax__%
                                                     (gx#core-cons
                                                      '%#begin
                                                      _%body189523%_)
                                                     _%path189498%_
                                                     _%ctx189521%_
                                                     '())))
                                              (##unchecked-structure-set!
                                               _%ctx189521%_
                                               (__make-atomic-promise
                                                (lambda ()
                                                  (gx#eval-syntax*
                                                   _%body189525%_)))
                                               '10
                                               '#f
                                               '#f)
                                              (##unchecked-structure-set!
                                               _%ctx189521%_
                                               _%body189525%_
                                               '11
                                               '#f
                                               '#f)
                                              (__hash-put!
                                               gx#__module-registry
                                               _%path189498%_
                                               _%ctx189521%_)
                                              (__hash-put!
                                               gx#__module-registry
                                               _%id189507%_
                                               _%ctx189521%_)
                                              _%ctx189521%_)))))
                                    gx#current-export-expander-phi
                                    '#f))
                                 gx#current-import-expander-phi
                                 '#f))
                              gx#current-expander-path
                              (cons _%path189498%_
                                    (gx#current-expander-path))))
                           gx#current-expander-phi
                           '0))
                        gx#current-expander-marks
                        '()))
                     gx#current-expander-context
                     (gx#core-context-root__0))))
                 (_%import-submodule189411%_
                  (lambda (_%rpath189427%_)
                    (let* ((_%$%rpath189428189435%_ _%rpath189427%_)
                           (_%$%E189430189438%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%$%rpath189428189435%_
                                     '([origin . refs]))
                              '#!void))
                           (_%$%K189431189486%_
                            (lambda (_%refs189441%_ _%origin189442%_)
                              (let ((_%ctx189444%_
                                     (if _%origin189442%_
                                         (gx#core-import-module__%
                                          _%origin189442%_
                                          _%reload?189408%_)
                                         (gx#current-expander-context))))
                                (let _%lp189446%_ ((_%rest189448%_
                                                    _%refs189441%_)
                                                   (_%ctx189449%_
                                                    _%ctx189444%_))
                                  (let* ((_%$%rest189450189458%_
                                          _%rest189448%_)
                                         (_%$%else189452189466%_
                                          (lambda () _%ctx189449%_))
                                         (_%$%K189454189474%_
                                          (lambda (_%rest189469%_ _%id189470%_)
                                            (let ((_%bind189472%_
                                                   (gx#resolve-identifier__%
                                                    _%id189470%_
                                                    '0
                                                    _%ctx189449%_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _%bind189472%_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _%bind189472%_
                                                         '5
                                                         '#f
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_%lp189446%_
                                                   _%rest189469%_
                                                   (##unchecked-structure-ref
                                                    _%bind189472%_
                                                    '5
                                                    '#f
                                                    '#f))
                                                  (error '"cannot import submodule; not bound as a module"
                                                         _%rpath189427%_
                                                         _%id189470%_
                                                         _%bind189472%_))))))
                                    (if (pair? _%$%rest189450189458%_)
                                        (let ((_%$%hd189455189477%_
                                               (##car _%$%rest189450189458%_))
                                              (_%$%tl189456189479%_
                                               (##cdr _%$%rest189450189458%_)))
                                          (let* ((_%id189482%_
                                                  _%$%hd189455189477%_)
                                                 (_%rest189484%_
                                                  _%$%tl189456189479%_))
                                            (_%$%K189454189474%_
                                             _%rest189484%_
                                             _%id189482%_)))
                                        (_%$%else189452189466%_))))))))
                      (if (pair? _%$%rpath189428189435%_)
                          (let ((_%$%hd189432189489%_
                                 (##car _%$%rpath189428189435%_))
                                (_%$%tl189433189491%_
                                 (##cdr _%$%rpath189428189435%_)))
                            (let* ((_%origin189494%_ _%$%hd189432189489%_)
                                   (_%refs189496%_ _%$%tl189433189491%_))
                              (_%$%K189431189486%_
                               _%refs189496%_
                               _%origin189494%_)))
                          (_%$%E189430189438%_))))))
          (let ((_%$e189413%_
                 (if (not _%reload?189408%_)
                     (__hash-get gx#__module-registry _%rpath189407%_)
                     '#f)))
            (if _%$e189413%_
                _%$e189413%_
                (if (list? _%rpath189407%_)
                    (_%import-submodule189411%_ _%rpath189407%_)
                    (if (gx#core-library-module-path? _%rpath189407%_)
                        (let ((_%ctx189418%_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _%rpath189407%_)
                                _%reload?189408%_)))
                          (__hash-put!
                           gx#__module-registry
                           _%rpath189407%_
                           _%ctx189418%_)
                          _%ctx189418%_)
                        (let* ((_%npath189421%_
                                (path-normalize _%rpath189407%_))
                               (_%$e189423%_
                                (if (not _%reload?189408%_)
                                    (__hash-get
                                     gx#__module-registry
                                     _%npath189421%_)
                                    '#f)))
                          (if _%$e189423%_
                              _%$e189423%_
                              (_%import-source189410%_
                               _%npath189421%_))))))))))
    (define gx#core-import-module__0
      (lambda (_%rpath189532%_)
        (let ((_%reload?189534%_ '#f))
          (gx#core-import-module__% _%rpath189532%_ _%reload?189534%_))))
    (define gx#core-import-module
      (lambda _g190638_
        (let ((_g190639_ (##length _g190638_)))
          (cond ((##fx= _g190639_ 1)
                 (apply gx#core-import-module__0 _g190638_))
                ((##fx= _g190639_ 2)
                 (apply gx#core-import-module__% _g190638_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g190638_))))))
    (define gx#core-read-module
      (lambda (_%path189389%_)
        (__with-catch
         (lambda (_%exn189391%_)
           (if (datum-parsing-exception? _%exn189391%_)
               (let ((_%pos189393%_
                      (datum-parsing-exception-filepos _%exn189391%_)))
                 (if (= _%pos189393%_ '0)
                     (gx#core-read-module/lang _%path189389%_)
                     (gx#raise-syntax-error
                      'read-module
                      '"error reading module"
                      _%path189389%_
                      (call-with-parameters__1
                       (lambda ()
                         (call-with-output-string
                          '""
                          (lambda (_%$%g189395189397%_)
                            (display-exception__%
                             _%exn189391%_
                             _%$%g189395189397%_))))
                       dump-stack-trace?
                       '#f)
                      (cons 'line:
                            (cons (##filepos-line _%pos189393%_)
                                  (cons 'col:
                                        (cons (##filepos-col _%pos189393%_)
                                              '())))))))
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _%path189389%_
                (call-with-parameters__1
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_%$%g189400189402%_)
                      (display-exception__%
                       _%exn189391%_
                       _%$%g189400189402%_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _%path189389%_)))))
    (define gx#core-read-module/sexp
      (lambda (_%path189241%_)
        (let _%lp189243%_ ((_%body189245%_
                            (read-syntax-from-file _%path189241%_))
                           (_%pre189246%_ '#f)
                           (_%ns189247%_ '#f)
                           (_%pkg189248%_ '#f))
          (let* ((_%$%e189249189273%_ _%body189245%_)
                 (_%$%E189265189299%_
                  (lambda ()
                    (let ((_g190640_
                           (if _%pkg189248%_
                               (values _%pre189246%_
                                       _%ns189247%_
                                       _%pkg189248%_)
                               (gx#core-read-module-package
                                _%path189241%_
                                _%pre189246%_
                                _%ns189247%_))))
                      (begin
                        (let ((_g190641_
                               (if (##values? _g190640_)
                                   (##values-length _g190640_)
                                   1)))
                          (if (not (##fx= _g190641_ 3))
                              (error "Context expects 3 values" _g190641_)))
                        (let ((_%pre189277%_ (##values-ref _g190640_ 0))
                              (_%ns189278%_ (##values-ref _g190640_ 1))
                              (_%pkg189279%_ (##values-ref _g190640_ 2)))
                          (let* ((_%prelude189285%_
                                  (if (gx#core-bound-module-prelude?
                                       _%pre189277%_)
                                      (gx#syntax-local-e__0 _%pre189277%_)
                                      (if (gx#core-library-module-path?
                                           _%pre189277%_)
                                          (gx#core-resolve-library-module-path
                                           _%pre189277%_)
                                          (if (gx#stx-string? _%pre189277%_)
                                              (gx#core-resolve-module-path__%
                                               _%pre189277%_
                                               _%path189241%_)
                                              (gx#stx-e _%pre189277%_)))))
                                 (_%path-id189287%_
                                  (gx#core-module-path->namespace
                                   _%path189241%_))
                                 (_%pkg-id189289%_
                                  (if _%pkg189279%_
                                      (##string-append
                                       _%pkg189279%_
                                       '"/"
                                       _%path-id189287%_)
                                      _%path-id189287%_))
                                 (_%module-id189291%_
                                  (##string->symbol _%pkg-id189289%_))
                                 (_%module-ns189296%_
                                  (if (eq? _%ns189278%_ '#!void)
                                      '#f
                                      (let ((_%$e189293%_ _%ns189278%_))
                                        (if _%$e189293%_
                                            _%$e189293%_
                                            _%pkg-id189289%_)))))
                            (values _%prelude189285%_
                                    _%module-id189291%_
                                    _%module-ns189296%_
                                    _%body189245%_)))))))
                 (_%$%E189258189331%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e189249189273%_)
                        (let ((_%$%e189266189303%_
                               (gx#syntax-e _%$%e189249189273%_)))
                          (let ((_%$%hd189267189306%_
                                 (##car _%$%e189266189303%_))
                                (_%$%tl189268189308%_
                                 (##cdr _%$%e189266189303%_)))
                            (if (eq? (gx#stx-e _%$%hd189267189306%_) 'package:)
                                (if (gx#stx-pair? _%$%tl189268189308%_)
                                    (let ((_%$%e189269189311%_
                                           (gx#syntax-e _%$%tl189268189308%_)))
                                      (let ((_%$%hd189270189314%_
                                             (##car _%$%e189269189311%_))
                                            (_%$%tl189271189316%_
                                             (##cdr _%$%e189269189311%_)))
                                        (let* ((_%pkg189319%_
                                                _%$%hd189270189314%_)
                                               (_%rest189321%_
                                                _%$%tl189271189316%_)
                                               (_%pkg189329%_
                                                (if (gx#identifier?
                                                     _%pkg189319%_)
                                                    (symbol->string
                                                     (gx#stx-e _%pkg189319%_))
                                                    (if (or (gx#stx-string?
                                                             _%pkg189319%_)
                                                            (gx#stx-false?
                                                             _%pkg189319%_))
                                                        (gx#stx-e
                                                         _%pkg189319%_)
                                                        (gx#raise-syntax-error
                                                         'import
                                                         '"Bad syntax; Illegal package name"
                                                         _%pkg189319%_)))))
                                          (_%lp189243%_
                                           _%rest189321%_
                                           _%pre189246%_
                                           _%ns189247%_
                                           _%pkg189329%_))))
                                    (_%$%E189265189299%_))
                                (_%$%E189265189299%_))))
                        (_%$%E189265189299%_))))
                 (_%$%E189251189361%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e189249189273%_)
                        (let ((_%$%e189259189335%_
                               (gx#syntax-e _%$%e189249189273%_)))
                          (let ((_%$%hd189260189338%_
                                 (##car _%$%e189259189335%_))
                                (_%$%tl189261189340%_
                                 (##cdr _%$%e189259189335%_)))
                            (if (eq? (gx#stx-e _%$%hd189260189338%_)
                                     'namespace:)
                                (if (gx#stx-pair? _%$%tl189261189340%_)
                                    (let ((_%$%e189262189343%_
                                           (gx#syntax-e _%$%tl189261189340%_)))
                                      (let ((_%$%hd189263189346%_
                                             (##car _%$%e189262189343%_))
                                            (_%$%tl189264189348%_
                                             (##cdr _%$%e189262189343%_)))
                                        (let* ((_%ns189351%_
                                                _%$%hd189263189346%_)
                                               (_%rest189353%_
                                                _%$%tl189264189348%_)
                                               (_%ns189359%_
                                                (if (gx#identifier?
                                                     _%ns189351%_)
                                                    (symbol->string
                                                     (gx#stx-e _%ns189351%_))
                                                    (if (gx#stx-string?
                                                         _%ns189351%_)
                                                        (gx#stx-e _%ns189351%_)
                                                        (if (gx#stx-false?
                                                             _%ns189351%_)
                                                            '#!void
                                                            (gx#raise-syntax-error
                                                             'import
                                                             '"Bad syntax; illegal namespace"
                                                             _%ns189351%_))))))
                                          (_%lp189243%_
                                           _%rest189353%_
                                           _%pre189246%_
                                           _%ns189359%_
                                           _%pkg189248%_))))
                                    (_%$%E189258189331%_))
                                (_%$%E189258189331%_))))
                        (_%$%E189258189331%_))))
                 (_%$%E189250189385%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e189249189273%_)
                        (let ((_%$%e189252189365%_
                               (gx#syntax-e _%$%e189249189273%_)))
                          (let ((_%$%hd189253189368%_
                                 (##car _%$%e189252189365%_))
                                (_%$%tl189254189370%_
                                 (##cdr _%$%e189252189365%_)))
                            (if (eq? (gx#stx-e _%$%hd189253189368%_) 'prelude:)
                                (if (gx#stx-pair? _%$%tl189254189370%_)
                                    (let ((_%$%e189255189373%_
                                           (gx#syntax-e _%$%tl189254189370%_)))
                                      (let ((_%$%hd189256189376%_
                                             (##car _%$%e189255189373%_))
                                            (_%$%tl189257189378%_
                                             (##cdr _%$%e189255189373%_)))
                                        (let* ((_%prelude189381%_
                                                _%$%hd189256189376%_)
                                               (_%rest189383%_
                                                _%$%tl189257189378%_))
                                          (_%lp189243%_
                                           _%rest189383%_
                                           _%prelude189381%_
                                           _%ns189247%_
                                           _%pkg189248%_))))
                                    (_%$%E189251189361%_))
                                (_%$%E189251189361%_))))
                        (_%$%E189251189361%_)))))
            (_%$%E189250189385%_)))))
    (define gx#core-read-module/lang
      (lambda (_%path189062%_)
        (letrec ((_%default-read-module-body189064%_
                  (lambda (_%inp189233%_)
                    (let _%lp189235%_ ((_%body189237%_ '()))
                      (let ((_%next189239%_ (read-syntax__% _%inp189233%_)))
                        (if (eof-object? _%next189239%_)
                            (reverse _%body189237%_)
                            (_%lp189235%_
                             (cons _%next189239%_ _%body189237%_)))))))
                 (_%read-body189065%_
                  (lambda (_%inp189150%_
                           _%pre189151%_
                           _%ns189152%_
                           _%pkg189153%_
                           _%args189154%_)
                    (let ((_g190642_
                           (if _%pkg189153%_
                               (values _%pre189151%_
                                       _%ns189152%_
                                       _%pkg189153%_)
                               (gx#core-read-module-package
                                _%path189062%_
                                _%pre189151%_
                                _%ns189152%_))))
                      (begin
                        (let ((_g190643_
                               (if (##values? _g190642_)
                                   (##values-length _g190642_)
                                   1)))
                          (if (not (##fx= _g190643_ 3))
                              (error "Context expects 3 values" _g190643_)))
                        (let ((_%pre189156%_ (##values-ref _g190642_ 0))
                              (_%ns189157%_ (##values-ref _g190642_ 1))
                              (_%pkg189158%_ (##values-ref _g190642_ 2)))
                          (let* ((_%prelude189160%_
                                  (gx#import-module__0 _%pre189156%_))
                                 (_%read-module-body189215%_
                                  (let ((_%$e189206%_
                                         (__find (lambda (_%$%e189161189163%_)
                                                   (let* ((_%$%$%e189161189165189175%_
                                                           _%$%e189161189163%_)
                                                          (_%$%else189167189183%_
                                                           (lambda () '#f))
                                                          (_%$%K189169189187%_
                                                           (lambda () '#t)))
                                                     (if (##structure-direct-instance-of?
                                                          _%$%$%e189161189165189175%_
                                                          'gx#module-export::t)
                                                         (let* ((_%$%e189170189190%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##unchecked-structure-ref
                          _%$%$%e189161189165189175%_
                          '1
                          '#f
                          '#f))
                        (_%$%e189171189193%_
                         (##unchecked-structure-ref
                          _%$%$%e189161189165189175%_
                          '2
                          '#f
                          '#f))
                        (_%$%e189172189196%_
                         (##unchecked-structure-ref
                          _%$%$%e189161189165189175%_
                          '3
                          '#f
                          '#f)))
                   (if (##eq? _%$%e189172189196%_ '1)
                       (let ((_%$%e189173189199%_
                              (##unchecked-structure-ref
                               _%$%$%e189161189165189175%_
                               '4
                               '#f
                               '#f)))
                         (if (eq? _%$%e189173189199%_ 'read-module-body)
                             (_%$%K189169189187%_)
                             (_%$%else189167189183%_)))
                       (_%$%else189167189183%_)))
                 (_%$%else189167189183%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (##unchecked-structure-ref
                                                  _%prelude189160%_
                                                  '9
                                                  '#f
                                                  '#f))))
                                    (if _%$e189206%_
                                        (let ((_%proc189212%_
                                               (__with-catch
                                                void
                                                (lambda ()
                                                  (gx#eval-syntax__0
                                                   (##structure-ref
                                                    (gx#core-resolve-module-export
                                                     _%$e189206%_)
                                                    '1
                                                    gx#binding::t
                                                    '#f))))))
                                          (if (procedure? _%proc189212%_)
                                              _%proc189212%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang prelude; read-module-body is not a procedure"
                                               _%path189062%_
                                               _%pre189156%_
                                               _%proc189212%_)))
                                        _%default-read-module-body189064%_)))
                                 (_%path-id189217%_
                                  (gx#core-module-path->namespace
                                   _%path189062%_))
                                 (_%pkg-id189219%_
                                  (if _%pkg189158%_
                                      (##string-append
                                       _%pkg189158%_
                                       '"/"
                                       _%path-id189217%_)
                                      _%path-id189217%_))
                                 (_%module-id189221%_
                                  (##string->symbol _%pkg-id189219%_))
                                 (_%module-ns189226%_
                                  (let ((_%$e189223%_ _%ns189157%_))
                                    (if _%$e189223%_
                                        _%$e189223%_
                                        _%pkg-id189219%_)))
                                 (_%body189230%_
                                  (call-with-parameters__1
                                   (lambda ()
                                     (call-with-parameters__1
                                      (lambda ()
                                        (_%read-module-body189215%_
                                         _%inp189150%_))
                                      gx#current-module-reader-args
                                      _%args189154%_))
                                   gx#current-module-reader-path
                                   _%path189062%_)))
                            (values _%prelude189160%_
                                    _%module-id189221%_
                                    _%module-ns189226%_
                                    _%body189230%_)))))))
                 (_%string-e189066%_
                  (lambda (_%obj189144%_ _%what189145%_)
                    (if (string? _%obj189144%_)
                        _%obj189144%_
                        (if (symbol? _%obj189144%_)
                            (##symbol->string _%obj189144%_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _%what189145%_)
                             _%path189062%_
                             _%obj189144%_)))))
                 (_%read-lang-args189067%_
                  (lambda (_%inp189099%_ _%args189100%_)
                    (let* ((_%$%args189101189109%_ _%args189100%_)
                           (_%$%else189103189117%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _%path189062%_)))
                           (_%$%K189105189132%_
                            (lambda (_%args189120%_ _%prelude189121%_)
                              (let* ((_%pkg189123%_
                                      (pgetq__0 'package: _%args189120%_))
                                     (_%pkg189125%_
                                      (if _%pkg189123%_
                                          (_%string-e189066%_
                                           _%pkg189123%_
                                           '"package")
                                          '#f))
                                     (_%ns189127%_
                                      (pgetq__0 'namespace: _%args189120%_))
                                     (_%ns189129%_
                                      (if _%ns189127%_
                                          (_%string-e189066%_
                                           _%ns189127%_
                                           '"namespace")
                                          '#f)))
                                (_%read-body189065%_
                                 _%inp189099%_
                                 _%prelude189121%_
                                 _%ns189129%_
                                 _%pkg189125%_
                                 _%args189120%_)))))
                      (if (pair? _%$%args189101189109%_)
                          (let ((_%$%hd189106189135%_
                                 (##car _%$%args189101189109%_))
                                (_%$%tl189107189137%_
                                 (##cdr _%$%args189101189109%_)))
                            (let* ((_%prelude189140%_ _%$%hd189106189135%_)
                                   (_%args189142%_ _%$%tl189107189137%_))
                              (_%$%K189105189132%_
                               _%args189142%_
                               _%prelude189140%_)))
                          (_%$%else189103189117%_)))))
                 (_%read-lang189068%_
                  (lambda (_%inp189073%_)
                    (let* ((_%head189075%_ (read-line _%inp189073%_))
                           (_%$e189077%_
                            (string-index__0 _%head189075%_ '#\space)))
                      (if _%$e189077%_
                          (let ((_%lang189082%_
                                 (substring _%head189075%_ '0 _%$e189077%_)))
                            (if (equal? _%lang189082%_ '"#lang")
                                (let* ((_%rest189084%_
                                        (substring
                                         _%head189075%_
                                         (##fx+ _%$e189077%_ '1)
                                         (string-length _%head189075%_)))
                                       (_%args189095%_
                                        (__with-catch
                                         (lambda (_%$%g189085189087%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Illegal #lang arguments"
                                            _%path189062%_
                                            _%$%g189085189087%_))
                                         (lambda ()
                                           (call-with-input-string
                                            _%rest189084%_
                                            (lambda (_%$%g189090189092%_)
                                              (read-all
                                               _%$%g189090189092%_
                                               read)))))))
                                  (_%read-lang-args189067%_
                                   _%inp189073%_
                                   _%args189095%_))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Illegal module syntax"
                                 _%path189062%_)))
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _%path189062%_)))))
                 (_%read-e189069%_
                  (lambda (_%inp189071%_)
                    (if (eq? (peek-char _%inp189071%_) '#\#)
                        (_%read-lang189068%_ _%inp189071%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _%path189062%_)))))
          (gx#call-with-input-source-file _%path189062%_ _%read-e189069%_))))
    (define gx#core-read-module-package
      (lambda (_%path189010%_ _%pre189011%_ _%ns189012%_)
        (letrec ((_%string-e189014%_
                  (lambda (_%e189057%_)
                    (if (symbol? _%e189057%_)
                        (##symbol->string _%e189057%_)
                        (if (string? _%e189057%_)
                            _%e189057%_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%e189057%_))))))
          (let _%lp189016%_ ((_%dir189018%_ (path-directory _%path189010%_))
                             (_%pkg-path189019%_ '()))
            (let ((_%gerbil.pkg189021%_
                   (path-expand '"gerbil.pkg" _%dir189018%_)))
              (if (##file-exists? _%gerbil.pkg189021%_)
                  (let ((_%plist189023%_
                         (gx#core-library-package-plist__% _%dir189018%_ '#t)))
                    (if (null? _%plist189023%_)
                        (let ((_%pkg189026%_
                               (if (null? _%pkg-path189019%_)
                                   '#f
                                   (string-join _%pkg-path189019%_ '"/"))))
                          (values _%pre189011%_ _%ns189012%_ _%pkg189026%_))
                        (if (list? _%plist189023%_)
                            (let* ((_%root189029%_
                                    (pgetq__0 'package: _%plist189023%_))
                                   (_%pkg189033%_
                                    (let ((_%pkg-path189031%_
                                           (if _%root189029%_
                                               (cons (_%string-e189014%_
                                                      _%root189029%_)
                                                     _%pkg-path189019%_)
                                               _%pkg-path189019%_)))
                                      (if (null? _%pkg-path189031%_)
                                          '#f
                                          (string-join
                                           _%pkg-path189031%_
                                           '"/"))))
                                   (_%ns189040%_
                                    (let ((_%ns189038%_
                                           (let ((_%$e189035%_ _%ns189012%_))
                                             (if _%$e189035%_
                                                 _%$e189035%_
                                                 (pgetq__0
                                                  'namespace:
                                                  _%plist189023%_)))))
                                      (if _%ns189038%_
                                          (_%string-e189014%_ _%ns189038%_)
                                          '#f)))
                                   (_%pre189045%_
                                    (let ((_%$e189042%_ _%pre189011%_))
                                      (if _%$e189042%_
                                          _%$e189042%_
                                          (pgetq__0
                                           'prelude:
                                           _%plist189023%_)))))
                              (values _%pre189045%_
                                      _%ns189040%_
                                      _%pkg189033%_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%plist189023%_))))
                  (let ((_%dir*189049%_
                         (path-strip-trailing-directory-separator
                          _%dir189018%_)))
                    (if (or (__string-empty? _%dir*189049%_)
                            (equal? _%dir189018%_ _%dir*189049%_))
                        (values _%pre189011%_ _%ns189012%_ '#f)
                        (let ((_%xpath189054%_
                               (path-strip-directory _%dir*189049%_))
                              (_%xdir189055%_ (path-directory _%dir*189049%_)))
                          (_%lp189016%_
                           _%xdir189055%_
                           (cons _%xpath189054%_ _%pkg-path189019%_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_%path189008%_)
        (path-strip-extension (path-strip-directory _%path189008%_))))
    (define gx#core-module-path->id
      (lambda (_%path189006%_)
        (##string->symbol (gx#core-module-path->namespace _%path189006%_))))
    (define gx#core-resolve-module-path__%
      (lambda (_%stx-path188985%_ _%rel188986%_)
        (let* ((_%path188988%_ (gx#stx-e _%stx-path188985%_))
               (_%path188990%_
                (if (__string-empty? (path-extension _%path188988%_))
                    (##string-append _%path188988%_ '".ss")
                    _%path188988%_)))
          (gx#core-resolve-path__%
           _%path188990%_
           (let ((_%$e188993%_ (gx#stx-source _%stx-path188985%_)))
             (if _%$e188993%_ _%$e188993%_ _%rel188986%_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_%stx-path188999%_)
        (let ((_%rel189001%_ '#f))
          (gx#core-resolve-module-path__% _%stx-path188999%_ _%rel189001%_))))
    (define gx#core-resolve-module-path
      (lambda _g190644_
        (let ((_g190645_ (##length _g190644_)))
          (cond ((##fx= _g190645_ 1)
                 (apply gx#core-resolve-module-path__0 _g190644_))
                ((##fx= _g190645_ 2)
                 (apply gx#core-resolve-module-path__% _g190644_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g190644_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_%libpath188870%_)
        (let* ((_%spath188872%_ (symbol->string (gx#stx-e _%libpath188870%_)))
               (_%spath188874%_
                (substring
                 _%spath188872%_
                 '1
                 (##string-length _%spath188872%_)))
               (_%ext188876%_ (path-extension _%spath188874%_))
               (_%ssi188878%_
                (if (__string-empty? _%ext188876%_)
                    (##string-append _%spath188874%_ '".ssi")
                    (##string-append
                     (path-strip-extension _%spath188874%_)
                     '".ssi")))
               (_%srcs188882%_
                (if (__string-empty? _%ext188876%_)
                    (##map (lambda (_%ext188880%_)
                             (string-append _%spath188874%_ _%ext188880%_))
                           '(".ss" ".sld" ".scm"))
                    (cons _%spath188874%_ '()))))
          (let _%lp188885%_ ((_%rest188887%_ (load-path)))
            (let* ((_%$%rest188888188897%_ _%rest188887%_)
                   (_%$%E188891188901%_
                    (lambda ()
                      (error '"No clause matching"
                             _%$%rest188888188897%_
                             '([dir . rest])
                             '([]))
                      '#!void)))
              (let ((_%$%K188893188972%_
                     (lambda (_%rest188912%_ _%dir188913%_)
                       (letrec ((_%resolve188915%_
                                 (lambda (_%ssi188928%_ _%srcs188929%_)
                                   (let ((_%compiled-path188931%_
                                          (path-expand
                                           _%ssi188928%_
                                           _%dir188913%_)))
                                     (if (##file-exists?
                                          _%compiled-path188931%_)
                                         (path-normalize
                                          _%compiled-path188931%_)
                                         (let _%lpr188933%_ ((_%rest-src188935%_
                                                              _%srcs188929%_))
                                           (let* ((_%$%rest-src188936188944%_
                                                   _%rest-src188935%_)
                                                  (_%$%else188938188952%_
                                                   (lambda ()
                                                     (_%lp188885%_
                                                      _%rest188912%_)))
                                                  (_%$%K188940188960%_
                                                   (lambda (_%rest-src188955%_
                                                            _%src188956%_)
                                                     (let ((_%src-path188958%_
                                                            (path-expand
                                                             _%src188956%_
                                                             _%dir188913%_)))
                                                       (if (##file-exists?
                                                            _%src-path188958%_)
                                                           (path-normalize
                                                            _%src-path188958%_)
                                                           (_%lpr188933%_
                                                            _%rest-src188955%_))))))
                                             (if (pair? _%$%rest-src188936188944%_)
                                                 (let ((_%$%hd188941188963%_
                                                        (##car _%$%rest-src188936188944%_))
                                                       (_%$%tl188942188965%_
                                                        (##cdr _%$%rest-src188936188944%_)))
                                                   (let* ((_%src188968%_
                                                           _%$%hd188941188963%_)
                                                          (_%rest-src188970%_
                                                           _%$%tl188942188965%_))
                                                     (_%$%K188940188960%_
                                                      _%rest-src188970%_
                                                      _%src188968%_)))
                                                 (_%$%else188938188952%_)))))))))
                         (let ((_%$e188917%_
                                (gx#core-library-package-path-prefix
                                 _%dir188913%_)))
                           (if _%$e188917%_
                               (if (string-prefix?
                                    _%$e188917%_
                                    _%spath188874%_)
                                   (let ((_%ssi188924%_
                                          (substring
                                           _%ssi188878%_
                                           (string-length _%$e188917%_)
                                           (##string-length _%ssi188878%_)))
                                         (_%srcs188925%_
                                          (##map (lambda (_%src188922%_)
                                                   (substring
                                                    _%src188922%_
                                                    (string-length
                                                     _%$e188917%_)
                                                    (string-length
                                                     _%src188922%_)))
                                                 _%srcs188882%_)))
                                     (_%resolve188915%_
                                      _%ssi188924%_
                                      _%srcs188925%_))
                                   (_%lp188885%_ _%rest188912%_))
                               (_%resolve188915%_
                                _%ssi188878%_
                                _%srcs188882%_))))))
                    (_%$%K188892188906%_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"cannot find library module"
                        _%libpath188870%_))))
                (let ((_%$%try-match188890188909%_
                       (lambda ()
                         (if (null? _%$%rest188888188897%_)
                             (_%$%K188892188906%_)
                             (_%$%E188891188901%_)))))
                  (if (pair? _%$%rest188888188897%_)
                      (let ((_%$%tl188895188977%_
                             (##cdr _%$%rest188888188897%_))
                            (_%$%hd188894188975%_
                             (##car _%$%rest188888188897%_)))
                        (let ((_%dir188980%_ _%$%hd188894188975%_)
                              (_%rest188982%_ _%$%tl188895188977%_))
                          (_%$%K188893188972%_ _%rest188982%_ _%dir188980%_)))
                      (_%$%try-match188890188909%_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_%modpath188838%_)
        (letrec ((_%resolve188840%_
                  (lambda (_%path188861%_ _%base188862%_)
                    (let ((_%$e188864%_
                           (string-rindex__0 _%base188862%_ '#\/)))
                      (if _%$e188864%_
                          (gx#core-resolve-library-module-path
                           (##string->symbol
                            (string-append
                             '":"
                             (substring _%base188862%_ '0 _%$e188864%_)
                             '"/"
                             _%path188861%_)))
                          (gx#core-resolve-library-module-path
                           (##string->symbol
                            (string-append '":" _%path188861%_))))))))
          (let ((_%spath188842%_ (symbol->string (gx#stx-e _%modpath188838%_)))
                (_%mod188843%_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _%mod188843%_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"cannot resolve relative module path; not in module context"
                 _%modpath188838%_))
            (let ((_%mpath188845%_
                   (symbol->string
                    (##structure-ref
                     _%mod188843%_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _%lp188847%_ ((_%spath188849%_ _%spath188842%_)
                                 (_%mpath188850%_ _%mpath188845%_))
                (if (string-prefix? '"../" _%spath188849%_)
                    (let ((_%$e188853%_
                           (string-rindex__0 _%mpath188850%_ '#\/)))
                      (if _%$e188853%_
                          (_%lp188847%_
                           (substring
                            _%spath188849%_
                            '3
                            (string-length _%spath188849%_))
                           (substring _%mpath188850%_ '0 _%$e188853%_))
                          (gx#raise-syntax-error
                           '#f
                           '"cannot resolve relative module path; illegal traversal"
                           _%modpath188838%_)))
                    (if (string-prefix? '"./" _%spath188849%_)
                        (_%lp188847%_
                         (substring
                          _%spath188849%_
                          '2
                          (string-length _%spath188849%_))
                         _%mpath188850%_)
                        (_%resolve188840%_
                         _%spath188849%_
                         _%mpath188850%_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_%dir188830%_)
        (let ((_%$e188832%_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _%dir188830%_))))
          (if _%$e188832%_
              (##string-append (symbol->string _%$e188832%_) '"/")
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_%dir188800%_ _%exists?188801%_)
        (let ((_%$e188803%_ (__hash-get gx#__module-pkg-cache _%dir188800%_)))
          (if _%$e188803%_
              _%$e188803%_
              (let* ((_%gerbil.pkg188807%_
                      (path-expand '"gerbil.pkg" _%dir188800%_))
                     (_%plist188817%_
                      (if (or _%exists?188801%_
                              (##file-exists? _%gerbil.pkg188807%_))
                          (let ((_%e188812%_
                                 (gx#call-with-input-source-file
                                  _%gerbil.pkg188807%_
                                  read)))
                            (if (eof-object? _%e188812%_)
                                '()
                                (if (list? _%e188812%_)
                                    _%e188812%_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _%gerbil.pkg188807%_
                                     _%e188812%_))))
                          '())))
                (__hash-put!
                 gx#__module-pkg-cache
                 _%dir188800%_
                 _%plist188817%_)
                _%plist188817%_)))))
    (define gx#core-library-package-plist__0
      (lambda (_%dir188823%_)
        (let ((_%exists?188825%_ '#f))
          (gx#core-library-package-plist__% _%dir188823%_ _%exists?188825%_))))
    (define gx#core-library-package-plist
      (lambda _g190646_
        (let ((_g190647_ (##length _g190646_)))
          (cond ((##fx= _g190647_ 1)
                 (apply gx#core-library-package-plist__0 _g190646_))
                ((##fx= _g190647_ 2)
                 (apply gx#core-library-package-plist__% _g190646_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g190646_))))))
    (define gx#core-library-module-path?
      (lambda (_%stx188797%_)
        (gx#core-special-module-path? _%stx188797%_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_%stx188795%_)
        (gx#core-special-module-path? _%stx188795%_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_%stx188790%_ _%char188791%_)
        (if (gx#identifier? _%stx188790%_)
            (if (interned-symbol? (gx#stx-e _%stx188790%_))
                (let ((_%str188793%_
                       (symbol->string (gx#stx-e _%stx188790%_))))
                  (if (##fx> (##string-length _%str188793%_) '1)
                      (eq? (string-ref _%str188793%_ '0) _%char188791%_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_%stx188784%_)
        (gx#core-bound-identifier?__%
         _%stx188784%_
         (lambda (_%$%g188785188787%_)
           (gx#expander-binding?__%
            _%$%g188785188787%_
            gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_%stx188778%_)
        (gx#core-bound-identifier?__%
         _%stx188778%_
         (lambda (_%$%g188779188781%_)
           (gx#expander-binding?__% _%$%g188779188781%_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_%stx188765%_)
        (letrec ((_%module-prelude?188767%_
                  (lambda (_%e188773%_)
                    (let ((_%$e188775%_
                           (##structure-instance-of?
                            _%e188773%_
                            'gx#module-context::t)))
                      (if _%$e188775%_
                          _%$e188775%_
                          (##structure-instance-of?
                           _%e188773%_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _%stx188765%_
           (lambda (_%$%g188768188770%_)
             (gx#expander-binding?__%
              _%$%g188768188770%_
              _%module-prelude?188767%_))))))
    (define gx#core-bind-import!__%
      (lambda (_%in188696%_ _%ctx188697%_ _%force-weak?188698%_)
        (let* ((_%$%in188699188708%_ _%in188696%_)
               (_%$%E188701188711%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%in188699188708%_
                         '((module-import source key phi weak?)))
                  '#!void))
               (_%$%K188702188724%_
                (lambda (_%weak?188714%_
                         _%phi188715%_
                         _%key188716%_
                         _%source188717%_)
                  (gx#core-bind!__%
                   _%key188716%_
                   (let* ((_%e188719%_
                           (gx#core-resolve-module-export _%source188717%_))
                          (__obj190628
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
                      __obj190628
                      (##unchecked-structure-ref _%e188719%_ '1 '#f '#f)
                      _%key188716%_
                      _%phi188715%_
                      _%e188719%_
                      (##unchecked-structure-ref _%source188717%_ '1 '#f '#f)
                      (let ((_%$e188721%_ _%force-weak?188698%_))
                        (if _%$e188721%_ _%$e188721%_ _%weak?188714%_)))
                     __obj190628)
                   gx#core-context-rebind?
                   _%phi188715%_
                   _%ctx188697%_))))
          (if (##structure-direct-instance-of?
               _%$%in188699188708%_
               'gx#module-import::t)
              (let* ((_%$%e188703188727%_
                      (##unchecked-structure-ref
                       _%$%in188699188708%_
                       '1
                       '#f
                       '#f))
                     (_%source188730%_ _%$%e188703188727%_)
                     (_%$%e188704188732%_
                      (##unchecked-structure-ref
                       _%$%in188699188708%_
                       '2
                       '#f
                       '#f))
                     (_%key188735%_ _%$%e188704188732%_)
                     (_%$%e188705188737%_
                      (##unchecked-structure-ref
                       _%$%in188699188708%_
                       '3
                       '#f
                       '#f))
                     (_%phi188740%_ _%$%e188705188737%_)
                     (_%$%e188706188742%_
                      (##unchecked-structure-ref
                       _%$%in188699188708%_
                       '4
                       '#f
                       '#f))
                     (_%weak?188745%_ _%$%e188706188742%_))
                (_%$%K188702188724%_
                 _%weak?188745%_
                 _%phi188740%_
                 _%key188735%_
                 _%source188730%_))
              (_%$%E188701188711%_)))))
    (define gx#core-bind-import!__0
      (lambda (_%in188750%_)
        (let* ((_%ctx188752%_ (gx#current-expander-context))
               (_%force-weak?188754%_ '#f))
          (gx#core-bind-import!__%
           _%in188750%_
           _%ctx188752%_
           _%force-weak?188754%_))))
    (define gx#core-bind-import!__1
      (lambda (_%in188756%_ _%ctx188757%_)
        (let ((_%force-weak?188759%_ '#f))
          (gx#core-bind-import!__%
           _%in188756%_
           _%ctx188757%_
           _%force-weak?188759%_))))
    (define gx#core-bind-import!
      (lambda _g190648_
        (let ((_g190649_ (##length _g190648_)))
          (cond ((##fx= _g190649_ 1) (apply gx#core-bind-import!__0 _g190648_))
                ((##fx= _g190649_ 2) (apply gx#core-bind-import!__1 _g190648_))
                ((##fx= _g190649_ 3) (apply gx#core-bind-import!__% _g190648_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g190648_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_%in188682%_ _%ctx188683%_)
        (gx#core-bind-import!__% _%in188682%_ _%ctx188683%_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_%in188688%_)
        (let ((_%ctx188690%_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _%in188688%_ _%ctx188690%_))))
    (define gx#core-bind-weak-import!
      (lambda _g190650_
        (let ((_g190651_ (##length _g190650_)))
          (cond ((##fx= _g190651_ 1)
                 (apply gx#core-bind-weak-import!__0 _g190650_))
                ((##fx= _g190651_ 2)
                 (apply gx#core-bind-weak-import!__% _g190650_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g190650_))))))
    (define gx#core-resolve-module-export
      (lambda (_%out188575%_)
        (letrec ((_%subst188577%_
                  (lambda (_%key188622%_)
                    (let* ((_%$%key188623188631%_ _%key188622%_)
                           (_%$%else188625188639%_ (lambda () _%key188622%_))
                           (_%$%K188627188669%_
                            (lambda (_%mark188642%_ _%id188643%_)
                              (let* ((_%$%mark188644188650%_ _%mark188642%_)
                                     (_%$%E188646188653%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%$%mark188644188650%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%$%K188647188661%_
                                      (lambda (_%subst188656%_)
                                        (let ((_%$e188658%_
                                               (if _%subst188656%_
                                                   (hash-get
                                                    _%subst188656%_
                                                    _%id188643%_)
                                                   '#f)))
                                          (if _%$e188658%_
                                              _%$e188658%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _%key188622%_))))))
                                (if (##structure-instance-of?
                                     _%$%mark188644188650%_
                                     'gx#expander-mark::t)
                                    (let* ((_%$%e188648188664%_
                                            (##unchecked-structure-ref
                                             _%$%mark188644188650%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst188667%_
                                            _%$%e188648188664%_))
                                      (_%$%K188647188661%_ _%subst188667%_))
                                    (_%$%E188646188653%_))))))
                      (if (pair? _%$%key188623188631%_)
                          (let ((_%$%hd188628188672%_
                                 (##car _%$%key188623188631%_))
                                (_%$%tl188629188674%_
                                 (##cdr _%$%key188623188631%_)))
                            (let* ((_%id188677%_ _%$%hd188628188672%_)
                                   (_%mark188679%_ _%$%tl188629188674%_))
                              (_%$%K188627188669%_
                               _%mark188679%_
                               _%id188677%_)))
                          (_%$%else188625188639%_))))))
          (let* ((_%$%out188578188588%_ _%out188575%_)
                 (_%$%E188580188591%_
                  (lambda ()
                    (error '"No clause matching"
                           _%$%out188578188588%_
                           '((module-export ctx key phi _ _)))
                    '#!void))
                 (_%$%K188581188598%_
                  (lambda (_%phi188594%_ _%key188595%_ _%ctx188596%_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _%ctx188596%_ _%phi188594%_)
                     (_%subst188577%_ _%key188595%_)))))
            (if (##structure-direct-instance-of?
                 _%$%out188578188588%_
                 'gx#module-export::t)
                (let* ((_%$%e188582188601%_
                        (##unchecked-structure-ref
                         _%$%out188578188588%_
                         '1
                         '#f
                         '#f))
                       (_%ctx188604%_ _%$%e188582188601%_)
                       (_%$%e188583188606%_
                        (##unchecked-structure-ref
                         _%$%out188578188588%_
                         '2
                         '#f
                         '#f))
                       (_%key188609%_ _%$%e188583188606%_)
                       (_%$%e188584188611%_
                        (##unchecked-structure-ref
                         _%$%out188578188588%_
                         '3
                         '#f
                         '#f))
                       (_%phi188614%_ _%$%e188584188611%_)
                       (_%$%e188585188616%_
                        (##unchecked-structure-ref
                         _%$%out188578188588%_
                         '4
                         '#f
                         '#f))
                       (_%$%e188586188619%_
                        (##unchecked-structure-ref
                         _%$%out188578188588%_
                         '5
                         '#f
                         '#f)))
                  (_%$%K188581188598%_
                   _%phi188614%_
                   _%key188609%_
                   _%ctx188604%_))
                (_%$%E188580188591%_))))))
    (define gx#core-module-export->import__%
      (lambda (_%out188501%_ _%rename188502%_ _%dphi188503%_)
        (let* ((_%$%out188504188514%_ _%out188501%_)
               (_%$%E188506188517%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%out188504188514%_
                         '((module-export ctx key phi name weak?)))
                  '#!void))
               (_%$%K188507188529%_
                (lambda (_%weak?188520%_
                         _%name188521%_
                         _%phi188522%_
                         _%key188523%_
                         _%ctx188524%_)
                  (##structure
                   gx#module-import::t
                   _%out188501%_
                   (let ((_%$e188526%_ _%rename188502%_))
                     (if _%$e188526%_ _%$e188526%_ _%name188521%_))
                   (fx+ _%phi188522%_ _%dphi188503%_)
                   _%weak?188520%_))))
          (if (##structure-direct-instance-of?
               _%$%out188504188514%_
               'gx#module-export::t)
              (let* ((_%$%e188508188532%_
                      (##unchecked-structure-ref
                       _%$%out188504188514%_
                       '1
                       '#f
                       '#f))
                     (_%ctx188535%_ _%$%e188508188532%_)
                     (_%$%e188509188537%_
                      (##unchecked-structure-ref
                       _%$%out188504188514%_
                       '2
                       '#f
                       '#f))
                     (_%key188540%_ _%$%e188509188537%_)
                     (_%$%e188510188542%_
                      (##unchecked-structure-ref
                       _%$%out188504188514%_
                       '3
                       '#f
                       '#f))
                     (_%phi188545%_ _%$%e188510188542%_)
                     (_%$%e188511188547%_
                      (##unchecked-structure-ref
                       _%$%out188504188514%_
                       '4
                       '#f
                       '#f))
                     (_%name188550%_ _%$%e188511188547%_)
                     (_%$%e188512188552%_
                      (##unchecked-structure-ref
                       _%$%out188504188514%_
                       '5
                       '#f
                       '#f))
                     (_%weak?188555%_ _%$%e188512188552%_))
                (_%$%K188507188529%_
                 _%weak?188555%_
                 _%name188550%_
                 _%phi188545%_
                 _%key188540%_
                 _%ctx188535%_))
              (_%$%E188506188517%_)))))
    (define gx#core-module-export->import__0
      (lambda (_%out188560%_)
        (let* ((_%rename188562%_ '#f) (_%dphi188564%_ '0))
          (gx#core-module-export->import__%
           _%out188560%_
           _%rename188562%_
           _%dphi188564%_))))
    (define gx#core-module-export->import__1
      (lambda (_%out188566%_ _%rename188567%_)
        (let ((_%dphi188569%_ '0))
          (gx#core-module-export->import__%
           _%out188566%_
           _%rename188567%_
           _%dphi188569%_))))
    (define gx#core-module-export->import
      (lambda _g190652_
        (let ((_g190653_ (##length _g190652_)))
          (cond ((##fx= _g190653_ 1)
                 (apply gx#core-module-export->import__0 _g190652_))
                ((##fx= _g190653_ 2)
                 (apply gx#core-module-export->import__1 _g190652_))
                ((##fx= _g190653_ 3)
                 (apply gx#core-module-export->import__% _g190652_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g190652_))))))
    (define gx#core-expand-module%
      (lambda (_%stx188400%_)
        (letrec ((_%make-context188402%_
                  (lambda (_%id188479%_)
                    (let* ((_%super188481%_ (gx#current-expander-context))
                           (_%bind-id188483%_ (gx#stx-e _%id188479%_))
                           (_%mod-id188485%_
                            (if (##structure-instance-of?
                                 _%super188481%_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##unchecked-structure-ref
                                  _%super188481%_
                                  '1
                                  '#f
                                  '#f)
                                 '"~"
                                 _%bind-id188483%_)
                                _%bind-id188483%_))
                           (_%ns188487%_ (symbol->string _%mod-id188485%_))
                           (_%path188497%_
                            (if (##structure-instance-of?
                                 _%super188481%_
                                 'gx#module-context::t)
                                (let ((_%path188489%_
                                       (##unchecked-structure-ref
                                        _%super188481%_
                                        '7
                                        '#f
                                        '#f)))
                                  (if (or (pair? _%path188489%_)
                                          (null? _%path188489%_))
                                      (cons _%bind-id188483%_ _%path188489%_)
                                      (if (not _%path188489%_)
                                          _%bind-id188483%_
                                          (cons _%bind-id188483%_
                                                (cons _%path188489%_ '())))))
                                _%bind-id188483%_))
                           (__obj190629
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
                       __obj190629
                       _%mod-id188485%_
                       _%super188481%_
                       _%ns188487%_
                       _%path188497%_)
                      __obj190629)))
                 (_%valid-module-id?188403%_
                  (lambda (_%id188454%_)
                    (let* ((_%str188456%_ (symbol->string _%id188454%_))
                           (_%len188458%_ (##string-length _%str188456%_)))
                      (if (##fx>= _%len188458%_ '1)
                          (let _%loop188461%_ ((_%index188463%_
                                                (##fx- (##string-length
                                                        _%str188456%_)
                                                       '1)))
                            (if (##fx>= _%index188463%_ '0)
                                (let ((_%c188465%_
                                       (string-ref
                                        _%str188456%_
                                        _%index188463%_)))
                                  (if (or (and (##char>=? _%c188465%_ '#\a)
                                               (##char<=? _%c188465%_ '#\z))
                                          (and (##char>=? _%c188465%_ '#\A)
                                               (##char<=? _%c188465%_ '#\Z))
                                          (and (##char>=? _%c188465%_ '#\0)
                                               (##char<=? _%c188465%_ '#\9))
                                          (##char=? _%c188465%_ '#\_)
                                          (##char=? _%c188465%_ '#\-))
                                      (_%loop188461%_
                                       (##fx- _%index188463%_ '1))
                                      '#f))
                                '#t))
                          '#f)))))
          (let* ((_%$%e188404188414%_ _%stx188400%_)
                 (_%$%E188406188418%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%$%e188404188414%_)))
                 (_%$%E188405188450%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e188404188414%_)
                        (let ((_%$%e188407188422%_
                               (gx#syntax-e _%$%e188404188414%_)))
                          (let ((_%$%hd188408188425%_
                                 (##car _%$%e188407188422%_))
                                (_%$%tl188409188427%_
                                 (##cdr _%$%e188407188422%_)))
                            (if (gx#stx-pair? _%$%tl188409188427%_)
                                (let ((_%$%e188410188430%_
                                       (gx#syntax-e _%$%tl188409188427%_)))
                                  (let ((_%$%hd188411188433%_
                                         (##car _%$%e188410188430%_))
                                        (_%$%tl188412188435%_
                                         (##cdr _%$%e188410188430%_)))
                                    (let* ((_%id188438%_ _%$%hd188411188433%_)
                                           (_%body188440%_
                                            _%$%tl188412188435%_))
                                      (if (and (gx#identifier? _%id188438%_)
                                               (gx#stx-list? _%body188440%_))
                                          (if (_%valid-module-id?188403%_
                                               (gx#stx-e
                                                (gx#datum->syntax__0 '#f 'id)))
                                              (let* ((_%ctx188442%_
                                                      (_%make-context188402%_
                                                       _%id188438%_))
                                                     (_%body188444%_
                                                      (gx#core-expand-module-begin
                                                       _%body188440%_
                                                       _%ctx188442%_))
                                                     (_%body188446%_
                                                      (gx#core-quote-syntax__1
                                                       (gx#core-cons
                                                        '%#begin
                                                        _%body188444%_)
                                                       (gx#stx-source
                                                        _%stx188400%_))))
                                                (##unchecked-structure-set!
                                                 _%ctx188442%_
                                                 (__make-atomic-promise
                                                  (lambda ()
                                                    (gx#eval-syntax*
                                                     _%body188446%_)))
                                                 '10
                                                 '#f
                                                 '#f)
                                                (##unchecked-structure-set!
                                                 _%ctx188442%_
                                                 _%body188446%_
                                                 '11
                                                 '#f
                                                 '#f)
                                                (gx#core-bind-syntax!__0
                                                 _%id188438%_
                                                 _%ctx188442%_)
                                                (gx#core-quote-syntax__1
                                                 (gx#core-list
                                                  '%#module
                                                  (gx#core-quote-syntax__0
                                                   _%id188438%_)
                                                  _%body188446%_)
                                                 (gx#stx-source
                                                  _%stx188400%_)))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"invalid module id; allowed characters are A-Z,a-z,0-9,_,-"
                                               _%stx188400%_
                                               (gx#datum->syntax__0 '#f 'id)))
                                          (_%$%E188406188418%_)))))
                                (_%$%E188406188418%_))))
                        (_%$%E188406188418%_)))))
            (_%$%E188405188450%_)))))
    (define gx#core-expand-module-begin
      (lambda (_%body188365%_ _%ctx188366%_)
        (call-with-parameters__1
         (lambda ()
           (call-with-parameters__1
            (lambda ()
              (gx#core-bind-feature!__1 'gerbil-module '#t)
              (let* ((_%stx188370%_
                      (gx#core-expand-head
                       (cons '%%begin-module _%body188365%_)))
                     (_%$%e188371188378%_ _%stx188370%_)
                     (_%$%E188373188382%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module body expansion"
                         _%stx188370%_)))
                     (_%$%E188372188396%_
                      (lambda ()
                        (if (gx#stx-pair? _%$%e188371188378%_)
                            (let ((_%$%e188374188386%_
                                   (gx#syntax-e _%$%e188371188378%_)))
                              (let ((_%$%hd188375188389%_
                                     (##car _%$%e188374188386%_))
                                    (_%$%tl188376188391%_
                                     (##cdr _%$%e188374188386%_)))
                                (if (and (gx#identifier? _%$%hd188375188389%_)
                                         (gx#core-identifier=?
                                          _%$%hd188375188389%_
                                          '%#begin-module))
                                    (let ((_%body188394%_
                                           _%$%tl188376188391%_))
                                      (if (gx#sealed-syntax? _%stx188370%_)
                                          _%body188394%_
                                          (gx#core-expand-module-body
                                           _%body188394%_)))
                                    (_%$%E188373188382%_))))
                            (_%$%E188373188382%_)))))
                (_%$%E188372188396%_)))
            gx#current-expander-phi
            '0))
         gx#current-expander-context
         _%ctx188366%_)))
    (define gx#core-expand-module-body
      (lambda (_%body188062%_)
        (letrec ((_%expand-special188064%_
                  (lambda (_%hd188193%_ _%K188194%_ _%rest188195%_ _%r188196%_)
                    (let* ((_%$%e188197188237%_ _%hd188193%_)
                           (_%$%E188232188241%_
                            (lambda ()
                              (_%K188194%_
                               _%rest188195%_
                               (cons (gx#core-expand-top _%hd188193%_)
                                     _%r188196%_))))
                           (_%$%E188219188253%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e188197188237%_)
                                  (let ((_%$%e188233188245%_
                                         (gx#syntax-e _%$%e188197188237%_)))
                                    (let ((_%$%hd188234188248%_
                                           (##car _%$%e188233188245%_))
                                          (_%$%tl188235188250%_
                                           (##cdr _%$%e188233188245%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd188234188248%_)
                                               (gx#core-identifier=?
                                                _%$%hd188234188248%_
                                                '%#export))
                                          (_%K188194%_
                                           _%rest188195%_
                                           (cons _%hd188193%_ _%r188196%_))
                                          (_%$%E188232188241%_))))
                                  (_%$%E188232188241%_))))
                           (_%$%E188209188295%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e188197188237%_)
                                  (let ((_%$%e188220188257%_
                                         (gx#syntax-e _%$%e188197188237%_)))
                                    (let ((_%$%hd188221188260%_
                                           (##car _%$%e188220188257%_))
                                          (_%$%tl188222188262%_
                                           (##cdr _%$%e188220188257%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd188221188260%_)
                                               (gx#core-identifier=?
                                                _%$%hd188221188260%_
                                                '%#bind-runtime-properties!))
                                          (if (gx#stx-pair?
                                               _%$%tl188222188262%_)
                                              (let ((_%$%e188223188265%_
                                                     (gx#syntax-e
                                                      _%$%tl188222188262%_)))
                                                (let ((_%$%hd188224188268%_
                                                       (##car _%$%e188223188265%_))
                                                      (_%$%tl188225188270%_
                                                       (##cdr _%$%e188223188265%_)))
                                                  (if (gx#stx-pair?
                                                       _%$%hd188224188268%_)
                                                      (let ((_%$%e188229188273%_
                                                             (gx#syntax-e
                                                              _%$%hd188224188268%_)))
                                                        (let ((_%$%hd188230188276%_
                                                               (##car _%$%e188229188273%_))
                                                              (_%$%tl188231188278%_
                                                               (##cdr _%$%e188229188273%_)))
                                                          (let ((_%id188281%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%hd188230188276%_))
                    (if (gx#stx-null? _%$%tl188231188278%_)
                        (if (gx#stx-pair? _%$%tl188225188270%_)
                            (let ((_%$%e188226188283%_
                                   (gx#syntax-e _%$%tl188225188270%_)))
                              (let ((_%$%hd188227188286%_
                                     (##car _%$%e188226188283%_))
                                    (_%$%tl188228188288%_
                                     (##cdr _%$%e188226188283%_)))
                                (let ((_%props188291%_ _%$%hd188227188286%_))
                                  (if (gx#stx-null? _%$%tl188228188288%_)
                                      (let ((_%bind188293%_
                                             (gx#resolve-identifier__0
                                              _%id188281%_)))
                                        (gx#core-bind-runtime-properties!
                                         _%bind188293%_
                                         _%props188291%_)
                                        (_%K188194%_
                                         _%rest188195%_
                                         _%r188196%_))
                                      (_%$%E188219188253%_)))))
                            (_%$%E188219188253%_))
                        (_%$%E188219188253%_)))))
              (_%$%E188219188253%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E188219188253%_))
                                          (_%$%E188219188253%_))))
                                  (_%$%E188219188253%_))))
                           (_%$%E188199188327%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e188197188237%_)
                                  (let ((_%$%e188210188299%_
                                         (gx#syntax-e _%$%e188197188237%_)))
                                    (let ((_%$%hd188211188302%_
                                           (##car _%$%e188210188299%_))
                                          (_%$%tl188212188304%_
                                           (##cdr _%$%e188210188299%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd188211188302%_)
                                               (gx#core-identifier=?
                                                _%$%hd188211188302%_
                                                '%#define-values))
                                          (if (gx#stx-pair?
                                               _%$%tl188212188304%_)
                                              (let ((_%$%e188213188307%_
                                                     (gx#syntax-e
                                                      _%$%tl188212188304%_)))
                                                (let ((_%$%hd188214188310%_
                                                       (##car _%$%e188213188307%_))
                                                      (_%$%tl188215188312%_
                                                       (##cdr _%$%e188213188307%_)))
                                                  (let ((_%hd-bind188315%_
                                                         _%$%hd188214188310%_))
                                                    (if (gx#stx-pair?
                                                         _%$%tl188215188312%_)
                                                        (let ((_%$%e188216188317%_
                                                               (gx#syntax-e
                                                                _%$%tl188215188312%_)))
                                                          (let ((_%$%hd188217188320%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%$%e188216188317%_))
                        (_%$%tl188218188322%_ (##cdr _%$%e188216188317%_)))
                    (let ((_%expr188325%_ _%$%hd188217188320%_))
                      (if (gx#stx-null? _%$%tl188218188322%_)
                          (if (gx#core-bind-values? _%hd-bind188315%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind188315%_)
                                (_%K188194%_
                                 _%rest188195%_
                                 (cons _%hd188193%_ _%r188196%_)))
                              (_%$%E188209188295%_))
                          (_%$%E188209188295%_)))))
                (_%$%E188209188295%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E188209188295%_))
                                          (_%$%E188209188295%_))))
                                  (_%$%E188209188295%_))))
                           (_%$%E188198188361%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e188197188237%_)
                                  (let ((_%$%e188200188331%_
                                         (gx#syntax-e _%$%e188197188237%_)))
                                    (let ((_%$%hd188201188334%_
                                           (##car _%$%e188200188331%_))
                                          (_%$%tl188202188336%_
                                           (##cdr _%$%e188200188331%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd188201188334%_)
                                               (gx#core-identifier=?
                                                _%$%hd188201188334%_
                                                '%#define-values))
                                          (if (gx#stx-pair?
                                               _%$%tl188202188336%_)
                                              (let ((_%$%e188203188339%_
                                                     (gx#syntax-e
                                                      _%$%tl188202188336%_)))
                                                (let ((_%$%hd188204188342%_
                                                       (##car _%$%e188203188339%_))
                                                      (_%$%tl188205188344%_
                                                       (##cdr _%$%e188203188339%_)))
                                                  (let ((_%hd-bind188347%_
                                                         _%$%hd188204188342%_))
                                                    (if (gx#stx-pair?
                                                         _%$%tl188205188344%_)
                                                        (let ((_%$%e188206188349%_
                                                               (gx#syntax-e
                                                                _%$%tl188205188344%_)))
                                                          (let ((_%$%hd188207188352%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%$%e188206188349%_))
                        (_%$%tl188208188354%_ (##cdr _%$%e188206188349%_)))
                    (let* ((_%expr188357%_ _%$%hd188207188352%_)
                           (_%props188359%_ _%$%tl188208188354%_))
                      (if (and (gx#core-bind-values? _%hd-bind188347%_)
                               (gx#stx-list? _%props188359%_)
                               (not (gx#stx-null? _%props188359%_)))
                          (begin
                            (gx#core-bind-values!__0 _%hd-bind188347%_)
                            (_%K188194%_
                             (cons (gx#core-cons
                                    '%#bind-runtime-properties!
                                    (cons _%hd-bind188347%_
                                          (cons _%props188359%_ '())))
                                   _%rest188195%_)
                             (cons (gx#core-cons
                                    '%#define-values
                                    (cons _%hd-bind188347%_
                                          (cons _%expr188357%_ '())))
                                   _%r188196%_)))
                          (_%$%E188199188327%_)))))
                (_%$%E188199188327%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E188199188327%_))
                                          (_%$%E188199188327%_))))
                                  (_%$%E188199188327%_)))))
                      (_%$%E188198188361%_))))
                 (_%expand-body188065%_
                  (lambda (_%rbody188067%_)
                    (let _%lp188069%_ ((_%rest188071%_ _%rbody188067%_)
                                       (_%body188072%_ '()))
                      (let* ((_%$%rest188073188081%_ _%rest188071%_)
                             (_%$%else188075188089%_
                              (lambda () _%body188072%_))
                             (_%$%K188077188181%_
                              (lambda (_%rest188092%_ _%hd188093%_)
                                (let* ((_%$%e188094188115%_ _%hd188093%_)
                                       (_%$%E188110188119%_
                                        (lambda ()
                                          (_%lp188069%_
                                           _%rest188092%_
                                           (cons (gx#core-expand-expression
                                                  _%hd188093%_)
                                                 _%body188072%_))))
                                       (_%$%E188106188133%_
                                        (lambda ()
                                          (if (gx#stx-pair?
                                               _%$%e188094188115%_)
                                              (let ((_%$%e188111188123%_
                                                     (gx#syntax-e
                                                      _%$%e188094188115%_)))
                                                (let ((_%$%hd188112188126%_
                                                       (##car _%$%e188111188123%_))
                                                      (_%$%tl188113188128%_
                                                       (##cdr _%$%e188111188123%_)))
                                                  (let ((_%form188131%_
                                                         _%$%hd188112188126%_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _%form188131%_
                                                         gx#special-form-binding?)
                                                        (_%lp188069%_
                                                         _%rest188092%_
                                                         (cons _%hd188093%_
                                                               _%body188072%_))
                                                        (_%$%E188110188119%_)))))
                                              (_%$%E188110188119%_))))
                                       (_%$%E188096188145%_
                                        (lambda ()
                                          (if (gx#stx-pair?
                                               _%$%e188094188115%_)
                                              (let ((_%$%e188107188137%_
                                                     (gx#syntax-e
                                                      _%$%e188094188115%_)))
                                                (let ((_%$%hd188108188140%_
                                                       (##car _%$%e188107188137%_))
                                                      (_%$%tl188109188142%_
                                                       (##cdr _%$%e188107188137%_)))
                                                  (if (and (gx#identifier?
                                                            _%$%hd188108188140%_)
                                                           (gx#core-identifier=?
                                                            _%$%hd188108188140%_
                                                            '%#export))
                                                      (_%lp188069%_
                                                       _%rest188092%_
                                                       (cons (gx#core-expand-export%__0
                                                              _%hd188093%_)
                                                             _%body188072%_))
                                                      (_%$%E188106188133%_))))
                                              (_%$%E188106188133%_))))
                                       (_%$%E188095188177%_
                                        (lambda ()
                                          (if (gx#stx-pair?
                                               _%$%e188094188115%_)
                                              (let ((_%$%e188097188149%_
                                                     (gx#syntax-e
                                                      _%$%e188094188115%_)))
                                                (let ((_%$%hd188098188152%_
                                                       (##car _%$%e188097188149%_))
                                                      (_%$%tl188099188154%_
                                                       (##cdr _%$%e188097188149%_)))
                                                  (if (and (gx#identifier?
                                                            _%$%hd188098188152%_)
                                                           (gx#core-identifier=?
                                                            _%$%hd188098188152%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%$%tl188099188154%_)
                                                          (let ((_%$%e188100188157%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl188099188154%_)))
                    (let ((_%$%hd188101188160%_ (##car _%$%e188100188157%_))
                          (_%$%tl188102188162%_ (##cdr _%$%e188100188157%_)))
                      (let ((_%hd-bind188165%_ _%$%hd188101188160%_))
                        (if (gx#stx-pair? _%$%tl188102188162%_)
                            (let ((_%$%e188103188167%_
                                   (gx#syntax-e _%$%tl188102188162%_)))
                              (let ((_%$%hd188104188170%_
                                     (##car _%$%e188103188167%_))
                                    (_%$%tl188105188172%_
                                     (##cdr _%$%e188103188167%_)))
                                (let ((_%expr188175%_ _%$%hd188104188170%_))
                                  (if (gx#stx-null? _%$%tl188105188172%_)
                                      (_%lp188069%_
                                       _%rest188092%_
                                       (cons (gx#core-quote-syntax__1
                                              (gx#core-list
                                               '%#define-values
                                               (gx#core-quote-bind-values
                                                _%hd-bind188165%_)
                                               (gx#core-expand-expression
                                                _%expr188175%_))
                                              (gx#stx-source _%hd188093%_))
                                             _%body188072%_))
                                      (_%$%E188096188145%_)))))
                            (_%$%E188096188145%_)))))
                  (_%$%E188096188145%_))
              (_%$%E188096188145%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E188096188145%_)))))
                                  (_%$%E188095188177%_)))))
                        (if (pair? _%$%rest188073188081%_)
                            (let ((_%$%hd188078188184%_
                                   (##car _%$%rest188073188081%_))
                                  (_%$%tl188079188186%_
                                   (##cdr _%$%rest188073188081%_)))
                              (let* ((_%hd188189%_ _%$%hd188078188184%_)
                                     (_%rest188191%_ _%$%tl188079188186%_))
                                (_%$%K188077188181%_
                                 _%rest188191%_
                                 _%hd188189%_)))
                            (_%$%else188075188089%_)))))))
          (_%expand-body188065%_
           (gx#core-expand-block__%
            (cons '%#begin-module _%body188062%_)
            _%expand-special188064%_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_%stx187903%_
               _%expanded?187904%_
               _%method187905%_
               _%current-phi187906%_
               _%expand1187907%_)
        (letrec ((_%K187909%_
                  (lambda (_%rest188029%_ _%r188030%_)
                    (let* ((_%$%e188031188038%_ _%rest188029%_)
                           (_%$%E188033188042%_ (lambda () _%r188030%_))
                           (_%$%E188032188058%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e188031188038%_)
                                  (let ((_%$%e188034188046%_
                                         (gx#syntax-e _%$%e188031188038%_)))
                                    (let ((_%$%hd188035188049%_
                                           (##car _%$%e188034188046%_))
                                          (_%$%tl188036188051%_
                                           (##cdr _%$%e188034188046%_)))
                                      (let* ((_%hd188054%_
                                              _%$%hd188035188049%_)
                                             (_%rest188056%_
                                              _%$%tl188036188051%_))
                                        (_%step187910%_
                                         _%hd188054%_
                                         _%rest188056%_
                                         _%r188030%_))))
                                  (_%$%E188033188042%_)))))
                      (_%$%E188032188058%_))))
                 (_%step187910%_
                  (lambda (_%hd187943%_ _%rest187944%_ _%r187945%_)
                    (let* ((_%$%e187946187964%_ _%hd187943%_)
                           (_%$%E187959187968%_
                            (lambda ()
                              (if (_%expanded?187904%_ (gx#stx-e _%hd187943%_))
                                  (_%K187909%_
                                   _%rest187944%_
                                   (cons (gx#stx-e _%hd187943%_) _%r187945%_))
                                  (_%expand1187907%_
                                   _%hd187943%_
                                   _%K187909%_
                                   _%rest187944%_
                                   _%r187945%_))))
                           (_%$%E187955187984%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e187946187964%_)
                                  (let ((_%$%e187960187972%_
                                         (gx#syntax-e _%$%e187946187964%_)))
                                    (let ((_%$%hd187961187975%_
                                           (##car _%$%e187960187972%_))
                                          (_%$%tl187962187977%_
                                           (##cdr _%$%e187960187972%_)))
                                      (let* ((_%macro187980%_
                                              _%$%hd187961187975%_)
                                             (_%body187982%_
                                              _%$%tl187962187977%_))
                                        (if (gx#core-bound-identifier?__%
                                             _%macro187980%_
                                             gx#syntax-binding?)
                                            (_%K187909%_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _%macro187980%_)
                                                    _%hd187943%_
                                                    _%method187905%_)
                                                   _%rest187944%_)
                                             _%r187945%_)
                                            (_%$%E187959187968%_)))))
                                  (_%$%E187959187968%_))))
                           (_%$%E187948187998%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e187946187964%_)
                                  (let ((_%$%e187956187988%_
                                         (gx#syntax-e _%$%e187946187964%_)))
                                    (let ((_%$%hd187957187991%_
                                           (##car _%$%e187956187988%_))
                                          (_%$%tl187958187993%_
                                           (##cdr _%$%e187956187988%_)))
                                      (if (eq? (gx#stx-e _%$%hd187957187991%_)
                                               'begin:)
                                          (let ((_%body187996%_
                                                 _%$%tl187958187993%_))
                                            (_%K187909%_
                                             (gx#stx-foldr
                                              cons
                                              _%rest187944%_
                                              _%body187996%_)
                                             _%r187945%_))
                                          (_%$%E187955187984%_))))
                                  (_%$%E187955187984%_))))
                           (_%$%E187947188025%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e187946187964%_)
                                  (let ((_%$%e187949188002%_
                                         (gx#syntax-e _%$%e187946187964%_)))
                                    (let ((_%$%hd187950188005%_
                                           (##car _%$%e187949188002%_))
                                          (_%$%tl187951188007%_
                                           (##cdr _%$%e187949188002%_)))
                                      (if (eq? (gx#stx-e _%$%hd187950188005%_)
                                               'phi:)
                                          (if (gx#stx-pair?
                                               _%$%tl187951188007%_)
                                              (let ((_%$%e187952188010%_
                                                     (gx#syntax-e
                                                      _%$%tl187951188007%_)))
                                                (let ((_%$%hd187953188013%_
                                                       (##car _%$%e187952188010%_))
                                                      (_%$%tl187954188015%_
                                                       (##cdr _%$%e187952188010%_)))
                                                  (let* ((_%dphi188018%_
                                                          _%$%hd187953188013%_)
                                                         (_%body188020%_
                                                          _%$%tl187954188015%_))
                                                    (if (gx#stx-fixnum?
                                                         _%dphi188018%_)
                                                        (let ((_%rbody188023%_
                                                               (call-with-parameters__1
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%K187909%_ _%body188020%_ '()))
                        _%current-phi187906%_
                        (fx+ (gx#stx-e _%dphi188018%_)
                             (_%current-phi187906%_)))))
                  (_%K187909%_
                   _%rest187944%_
                   (foldr__0 cons _%r187945%_ _%rbody188023%_)))
                (_%$%E187948187998%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E187948187998%_))
                                          (_%$%E187948187998%_))))
                                  (_%$%E187948187998%_)))))
                      (_%$%E187947188025%_)))))
          (let* ((_%$%e187911187918%_ _%stx187903%_)
                 (_%$%E187913187922%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%$%e187911187918%_)))
                 (_%$%E187912187939%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e187911187918%_)
                        (let ((_%$%e187914187926%_
                               (gx#syntax-e _%$%e187911187918%_)))
                          (let ((_%$%hd187915187929%_
                                 (##car _%$%e187914187926%_))
                                (_%$%tl187916187931%_
                                 (##cdr _%$%e187914187926%_)))
                            (let ((_%body187934%_ _%$%tl187916187931%_))
                              (if (_%current-phi187906%_)
                                  (_%K187909%_ _%body187934%_ '())
                                  (call-with-parameters__1
                                   (lambda () (_%K187909%_ _%body187934%_ '()))
                                   _%current-phi187906%_
                                   (gx#current-expander-phi))))))
                        (_%$%E187913187922%_)))))
            (_%$%E187912187939%_)))))
    (define gx#core-expand-import%__%
      (lambda (_%stx187557%_ _%internal-expand?187558%_)
        (letrec ((_%expand1187560%_
                  (lambda (_%hd187875%_ _%K187876%_ _%rest187877%_ _%r187878%_)
                    (if (gx#core-bound-module? _%hd187875%_)
                        (_%import1187561%_
                         (gx#syntax-local-e__0 _%hd187875%_)
                         _%K187876%_
                         _%rest187877%_
                         _%r187878%_)
                        (if (gx#core-library-module-path? _%hd187875%_)
                            (_%import1187561%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%hd187875%_))
                             _%K187876%_
                             _%rest187877%_
                             _%r187878%_)
                            (if (gx#core-library-relative-module-path?
                                 _%hd187875%_)
                                (_%import1187561%_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _%hd187875%_))
                                 _%K187876%_
                                 _%rest187877%_
                                 _%r187878%_)
                                (let ((_%e187884%_ (gx#stx-e _%hd187875%_)))
                                  (if (pair? _%e187884%_)
                                      (let ((_%$e187887%_
                                             (gx#stx-e (##car _%e187884%_))))
                                        (if (eq? 'spec: _%$e187887%_)
                                            (_%import-spec187564%_
                                             _%hd187875%_
                                             _%K187876%_
                                             _%rest187877%_
                                             _%r187878%_)
                                            (if (eq? 'in: _%$e187887%_)
                                                (_%import-submodule187562%_
                                                 _%hd187875%_
                                                 _%K187876%_
                                                 _%rest187877%_
                                                 _%r187878%_)
                                                (if (eq? 'runtime:
                                                         _%$e187887%_)
                                                    (_%import-runtime187563%_
                                                     _%hd187875%_
                                                     _%K187876%_
                                                     _%rest187877%_
                                                     _%r187878%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _%stx187557%_
                                                     _%hd187875%_)))))
                                      (if (string? _%e187884%_)
                                          (_%import1187561%_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _%hd187875%_
                                             (gx#stx-source _%stx187557%_)))
                                           _%K187876%_
                                           _%rest187877%_
                                           _%r187878%_)
                                          (if (##structure-instance-of?
                                               _%e187884%_
                                               'gx#module-context::t)
                                              (_%K187876%_
                                               _%rest187877%_
                                               (cons _%e187884%_ _%r187878%_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _%stx187557%_
                                               _%hd187875%_))))))))))
                 (_%import1187561%_
                  (lambda (_%ctx187864%_
                           _%K187865%_
                           _%rest187866%_
                           _%r187867%_)
                    (let ((_%dphi187869%_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_%K187865%_
                       _%rest187866%_
                       (cons (##structure
                              gx#import-set::t
                              _%ctx187864%_
                              _%dphi187869%_
                              (map (lambda (_%$%g187870187872%_)
                                     (gx#core-module-export->import__%
                                      _%$%g187870187872%_
                                      '#f
                                      _%dphi187869%_))
                                   (##unchecked-structure-ref
                                    _%ctx187864%_
                                    '9
                                    '#f
                                    '#f)))
                             _%r187867%_)))))
                 (_%import-submodule187562%_
                  (lambda (_%hd187831%_ _%K187832%_ _%rest187833%_ _%r187834%_)
                    (let* ((_%$%e187835187842%_ _%hd187831%_)
                           (_%$%E187837187846%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%$%e187835187842%_)))
                           (_%$%E187836187860%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e187835187842%_)
                                  (let ((_%$%e187838187850%_
                                         (gx#syntax-e _%$%e187835187842%_)))
                                    (let ((_%$%hd187839187853%_
                                           (##car _%$%e187838187850%_))
                                          (_%$%tl187840187855%_
                                           (##cdr _%$%e187838187850%_)))
                                      (let ((_%spath187858%_
                                             _%$%tl187840187855%_))
                                        (_%import1187561%_
                                         (_%import-spec-source187565%_
                                          _%spath187858%_)
                                         _%K187832%_
                                         _%rest187833%_
                                         _%r187834%_))))
                                  (_%$%E187837187846%_)))))
                      (_%$%E187836187860%_))))
                 (_%import-runtime187563%_
                  (lambda (_%hd187798%_ _%K187799%_ _%rest187800%_ _%r187801%_)
                    (let* ((_%$%e187802187809%_ _%hd187798%_)
                           (_%$%E187804187813%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%$%e187802187809%_)))
                           (_%$%E187803187827%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e187802187809%_)
                                  (let ((_%$%e187805187817%_
                                         (gx#syntax-e _%$%e187802187809%_)))
                                    (let ((_%$%hd187806187820%_
                                           (##car _%$%e187805187817%_))
                                          (_%$%tl187807187822%_
                                           (##cdr _%$%e187805187817%_)))
                                      (let ((_%spath187825%_
                                             _%$%tl187807187822%_))
                                        (_%K187799%_
                                         _%rest187800%_
                                         (cons (_%import-spec-source187565%_
                                                _%spath187825%_)
                                               _%r187801%_)))))
                                  (_%$%E187804187813%_)))))
                      (_%$%E187803187827%_))))
                 (_%import-spec187564%_
                  (lambda (_%hd187636%_ _%K187637%_ _%rest187638%_ _%r187639%_)
                    (let* ((_%$%e187640187657%_ _%hd187636%_)
                           (_%$%E187649187661%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%$%e187640187657%_)))
                           (_%$%E187642187772%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e187640187657%_)
                                  (let ((_%$%e187650187665%_
                                         (gx#syntax-e _%$%e187640187657%_)))
                                    (let ((_%$%hd187651187668%_
                                           (##car _%$%e187650187665%_))
                                          (_%$%tl187652187670%_
                                           (##cdr _%$%e187650187665%_)))
                                      (if (gx#stx-pair? _%$%tl187652187670%_)
                                          (let ((_%$%e187653187673%_
                                                 (gx#syntax-e
                                                  _%$%tl187652187670%_)))
                                            (let ((_%$%hd187654187676%_
                                                   (##car _%$%e187653187673%_))
                                                  (_%$%tl187655187678%_
                                                   (##cdr _%$%e187653187673%_)))
                                              (let* ((_%path187681%_
                                                      _%$%hd187654187676%_)
                                                     (_%specs187683%_
                                                      _%$%tl187655187678%_))
                                                (let ((_%src-ctx187685%_
                                                       (_%import-spec-source187565%_
                                                        _%path187681%_))
                                                      (_%exports187686%_
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
                                                      (_%specs187687%_
                                                       (gx#syntax->list
                                                        _%specs187683%_)))
                                                  (for-each
                                                   (lambda (_%out187689%_)
                                                     (__hash-put!
                                                      _%exports187686%_
                                                      (cons (##unchecked-structure-ref
                                                             _%out187689%_
                                                             '3
                                                             '#f
                                                             '#f)
                                                            (##unchecked-structure-ref
                                                             _%out187689%_
                                                             '4
                                                             '#f
                                                             '#f))
                                                      _%out187689%_))
                                                   (##unchecked-structure-ref
                                                    _%src-ctx187685%_
                                                    '9
                                                    '#f
                                                    '#f))
                                                  (_%K187637%_
                                                   _%rest187638%_
                                                   (foldl__0
                                                    (lambda (_%spec187691%_
                                                             _%r187692%_)
                                                      (let* ((_%$%e187693187709%_
                                                              _%spec187691%_)
                                                             (_%$%E187695187713%_
                                                              (lambda ()
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid syntax-case clause"
                         _%$%e187693187709%_)))
                     (_%$%E187694187768%_
                      (lambda ()
                        (if (gx#stx-pair? _%$%e187693187709%_)
                            (let ((_%$%e187696187717%_
                                   (gx#syntax-e _%$%e187693187709%_)))
                              (let ((_%$%hd187697187720%_
                                     (##car _%$%e187696187717%_))
                                    (_%$%tl187698187722%_
                                     (##cdr _%$%e187696187717%_)))
                                (let ((_%phi187725%_ _%$%hd187697187720%_))
                                  (if (gx#stx-pair? _%$%tl187698187722%_)
                                      (let ((_%$%e187699187727%_
                                             (gx#syntax-e
                                              _%$%tl187698187722%_)))
                                        (let ((_%$%hd187700187730%_
                                               (##car _%$%e187699187727%_))
                                              (_%$%tl187701187732%_
                                               (##cdr _%$%e187699187727%_)))
                                          (let ((_%name187735%_
                                                 _%$%hd187700187730%_))
                                            (if (gx#stx-pair?
                                                 _%$%tl187701187732%_)
                                                (let ((_%$%e187702187737%_
                                                       (gx#syntax-e
                                                        _%$%tl187701187732%_)))
                                                  (let ((_%$%hd187703187740%_
                                                         (##car _%$%e187702187737%_))
                                                        (_%$%tl187704187742%_
                                                         (##cdr _%$%e187702187737%_)))
                                                    (let ((_%src-phi187745%_
                                                           _%$%hd187703187740%_))
                                                      (if (gx#stx-pair?
                                                           _%$%tl187704187742%_)
                                                          (let ((_%$%e187705187747%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl187704187742%_)))
                    (let ((_%$%hd187706187750%_ (##car _%$%e187705187747%_))
                          (_%$%tl187707187752%_ (##cdr _%$%e187705187747%_)))
                      (let ((_%src-name187755%_ _%$%hd187706187750%_))
                        (if (gx#stx-null? _%$%tl187707187752%_)
                            (if (and (gx#stx-fixnum? _%src-phi187745%_)
                                     (gx#identifier? _%src-name187755%_)
                                     (gx#stx-fixnum? _%phi187725%_)
                                     (gx#identifier? _%name187735%_))
                                (let ((_%src-phi187757%_
                                       (gx#stx-e _%src-phi187745%_))
                                      (_%src-name187758%_
                                       (gx#core-identifier-key
                                        _%src-name187755%_))
                                      (_%phi187759%_ (gx#stx-e _%phi187725%_))
                                      (_%name187760%_
                                       (gx#core-identifier-key
                                        _%name187735%_)))
                                  (let ((_%$e187762%_
                                         (__hash-get
                                          _%exports187686%_
                                          (cons _%src-phi187757%_
                                                _%src-name187758%_))))
                                    (if _%$e187762%_
                                        (cons (gx#core-module-export->import__%
                                               _%$e187762%_
                                               _%name187760%_
                                               (fx- _%phi187759%_
                                                    _%src-phi187757%_))
                                              _%r187692%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; no matching export"
                                         _%stx187557%_
                                         _%hd187636%_))))
                                (_%$%E187695187713%_))
                            (_%$%E187695187713%_)))))
                  (_%$%E187695187713%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%E187695187713%_)))))
                                      (_%$%E187695187713%_)))))
                            (_%$%E187695187713%_)))))
                (_%$%E187694187768%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r187639%_
                                                    _%specs187687%_))))))
                                          (_%$%E187649187661%_))))
                                  (_%$%E187649187661%_))))
                           (_%$%E187641187794%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e187640187657%_)
                                  (let ((_%$%e187643187776%_
                                         (gx#syntax-e _%$%e187640187657%_)))
                                    (let ((_%$%hd187644187779%_
                                           (##car _%$%e187643187776%_))
                                          (_%$%tl187645187781%_
                                           (##cdr _%$%e187643187776%_)))
                                      (if (gx#stx-pair? _%$%tl187645187781%_)
                                          (let ((_%$%e187646187784%_
                                                 (gx#syntax-e
                                                  _%$%tl187645187781%_)))
                                            (let ((_%$%hd187647187787%_
                                                   (##car _%$%e187646187784%_))
                                                  (_%$%tl187648187789%_
                                                   (##cdr _%$%e187646187784%_)))
                                              (let ((_%path187792%_
                                                     _%$%hd187647187787%_))
                                                (if (gx#stx-null?
                                                     _%$%tl187648187789%_)
                                                    (_%K187637%_
                                                     _%rest187638%_
                                                     (cons (_%import-spec-source187565%_
                                                            _%path187792%_)
                                                           _%r187639%_))
                                                    (_%$%E187642187772%_)))))
                                          (_%$%E187642187772%_))))
                                  (_%$%E187642187772%_)))))
                      (_%$%E187641187794%_))))
                 (_%import-spec-source187565%_
                  (lambda (_%spath187634%_)
                    (gx#core-import-nested-module
                     _%spath187634%_
                     _%stx187557%_)))
                 (_%import!187566%_
                  (lambda (_%rbody187579%_)
                    (letrec* ((_%current-ctx187581%_
                               (gx#current-expander-context))
                              (_%deps187582%_ (make-hash-table-eq))
                              (_%bind!187583%_
                               (lambda (_%hd187632%_)
                                 (gx#core-bind-import!__1
                                  _%hd187632%_
                                  _%current-ctx187581%_))))
                      (let _%lp187585%_ ((_%rest187587%_ _%rbody187579%_)
                                         (_%body187588%_ '()))
                        (let* ((_%$%rest187589187597%_ _%rest187587%_)
                               (_%$%else187591187608%_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _%current-ctx187581%_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _%current-ctx187581%_
                                       (foldl__0
                                        cons
                                        (##unchecked-structure-ref
                                         _%current-ctx187581%_
                                         '8
                                         '#f
                                         '#f)
                                        _%body187588%_)
                                       '8
                                       '#f
                                       '#f)
                                      '#!void)
                                  (__hash-for-each
                                   (lambda (_%ctx187605%_ _%_187606%_)
                                     (gx#eval-module _%ctx187605%_))
                                   _%deps187582%_)
                                  _%body187588%_))
                               (_%$%K187593187620%_
                                (lambda (_%rest187611%_ _%hd187612%_)
                                  (if (##structure-direct-instance-of?
                                       _%hd187612%_
                                       'gx#module-import::t)
                                      (let ()
                                        (_%bind!187583%_ _%hd187612%_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _%hd187612%_
                                                   '3
                                                   '#f
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _%hd187612%_
                                                            '1
                                                            '#f
                                                            '#f)
                                                           '3
                                                           '#f
                                                           '#f)))
                                            (__hash-put!
                                             _%deps187582%_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _%hd187612%_
                                               '1
                                               '#f
                                               '#f)
                                              '1
                                              '#f
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _%hd187612%_
                                           'gx#import-set::t)
                                          (let ()
                                            (for-each
                                             _%bind!187583%_
                                             (##unchecked-structure-ref
                                              _%hd187612%_
                                              '3
                                              '#f
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _%hd187612%_
                                                  '2
                                                  '#f
                                                  '#f))
                                                (__hash-put!
                                                 _%deps187582%_
                                                 (##unchecked-structure-ref
                                                  _%hd187612%_
                                                  '1
                                                  '#f
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_%$e187616%_
                                                 (##structure-instance-of?
                                                  _%hd187612%_
                                                  'gx#module-context::t)))
                                            (if _%$e187616%_
                                                _%$e187616%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _%stx187557%_
                                                 _%hd187612%_)))))
                                  (_%lp187585%_
                                   _%rest187611%_
                                   (cons _%hd187612%_ _%body187588%_)))))
                          (if (pair? _%$%rest187589187597%_)
                              (let ((_%$%hd187594187623%_
                                     (##car _%$%rest187589187597%_))
                                    (_%$%tl187595187625%_
                                     (##cdr _%$%rest187589187597%_)))
                                (let* ((_%hd187628%_ _%$%hd187594187623%_)
                                       (_%rest187630%_ _%$%tl187595187625%_))
                                  (_%$%K187593187620%_
                                   _%rest187630%_
                                   _%hd187628%_)))
                              (_%$%else187591187608%_)))))))
                 (_%expanded-import?187567%_
                  (lambda (_%e187571%_)
                    (let ((_%$e187573%_
                           (##structure-direct-instance-of?
                            _%e187571%_
                            'gx#import-set::t)))
                      (if _%$e187573%_
                          _%$e187573%_
                          (let ((_%$e187576%_
                                 (##structure-direct-instance-of?
                                  _%e187571%_
                                  'gx#module-import::t)))
                            (if _%$e187576%_
                                _%$e187576%_
                                (##structure-instance-of?
                                 _%e187571%_
                                 'gx#module-context::t))))))))
          (let ((_%rbody187569%_
                 (gx#core-expand-import/export
                  _%stx187557%_
                  _%expanded-import?187567%_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _%expand1187560%_)))
            (if _%internal-expand?187558%_
                (reverse _%rbody187569%_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_%import!187566%_ _%rbody187569%_))
                 (gx#stx-source _%stx187557%_)))))))
    (define gx#core-expand-import%__0
      (lambda (_%stx187896%_)
        (let ((_%internal-expand?187898%_ '#f))
          (gx#core-expand-import%__%
           _%stx187896%_
           _%internal-expand?187898%_))))
    (define gx#core-expand-import%
      (lambda _g190654_
        (let ((_g190655_ (##length _g190654_)))
          (cond ((##fx= _g190655_ 1)
                 (apply gx#core-expand-import%__0 _g190654_))
                ((##fx= _g190655_ 2)
                 (apply gx#core-expand-import%__% _g190654_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g190654_))))))
    (define gx#core-import-nested-module
      (lambda (_%spath187484%_ _%where187485%_)
        (let* ((_%$%e187486187493%_ _%spath187484%_)
               (_%$%E187488187497%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e187486187493%_)))
               (_%$%E187487187552%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e187486187493%_)
                      (let ((_%$%e187489187501%_
                             (gx#syntax-e _%$%e187486187493%_)))
                        (let ((_%$%hd187490187504%_
                               (##car _%$%e187489187501%_))
                              (_%$%tl187491187506%_
                               (##cdr _%$%e187489187501%_)))
                          (let* ((_%origin187509%_ _%$%hd187490187504%_)
                                 (_%sub187511%_ _%$%tl187491187506%_)
                                 (_%origin-ctx187513%_
                                  (if (gx#stx-false? _%origin187509%_)
                                      (gx#current-expander-context)
                                      (gx#import-module__0 _%origin187509%_))))
                            (let _%lp187515%_ ((_%rest187517%_ _%sub187511%_)
                                               (_%ctx187518%_
                                                _%origin-ctx187513%_))
                              (let* ((_%$%e187519187526%_ _%rest187517%_)
                                     (_%$%E187521187530%_
                                      (lambda () _%ctx187518%_))
                                     (_%$%E187520187548%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%$%e187519187526%_)
                                            (let ((_%$%e187522187534%_
                                                   (gx#syntax-e
                                                    _%$%e187519187526%_)))
                                              (let ((_%$%hd187523187537%_
                                                     (##car _%$%e187522187534%_))
                                                    (_%$%tl187524187539%_
                                                     (##cdr _%$%e187522187534%_)))
                                                (let* ((_%id187542%_
                                                        _%$%hd187523187537%_)
                                                       (_%rest187544%_
                                                        _%$%tl187524187539%_)
                                                       (_%bind187546%_
                                                        (gx#resolve-identifier__%
                                                         _%id187542%_
                                                         '0
                                                         _%ctx187518%_)))
                                                  (if (and (##structure-direct-instance-of?
                                                            _%bind187546%_
                                                            'gx#syntax-binding::t)
                                                           (##structure-instance-of?
                                                            (##unchecked-structure-ref
                                                             _%bind187546%_
                                                             '5
                                                             '#f
                                                             '#f)
                                                            'gx#module-context::t))
                                                      '#!void
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; not bound as module"
                                                       _%where187485%_
                                                       _%spath187484%_
                                                       _%id187542%_))
                                                  (_%lp187515%_
                                                   _%rest187544%_
                                                   (##unchecked-structure-ref
                                                    _%bind187546%_
                                                    '5
                                                    '#f
                                                    '#f)))))
                                            (_%$%E187521187530%_)))))
                                (_%$%E187520187548%_))))))
                      (_%$%E187488187497%_)))))
          (_%$%E187487187552%_))))
    (define gx#core-expand-import-source
      (lambda (_%hd187482%_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _%hd187482%_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_%stx186977%_ _%internal-expand?186978%_)
        (letrec* ((_%make-export__190582190583%_
                   (lambda (_%bind187430%_
                            _%phi187431%_
                            _%ctx187432%_
                            _%name187433%_)
                     (let* ((_%key187435%_
                             (##unchecked-structure-ref
                              _%bind187430%_
                              '2
                              '#f
                              '#f))
                            (_%export-key187437%_
                             (if _%name187433%_
                                 (gx#core-identifier-key _%name187433%_)
                                 _%key187435%_)))
                       (##structure
                        gx#module-export::t
                        _%ctx187432%_
                        _%key187435%_
                        _%phi187431%_
                        _%export-key187437%_
                        (let ((_%$e187440%_
                               (##structure-instance-of?
                                _%bind187430%_
                                'gx#extern-binding::t)))
                          (if _%$e187440%_
                              _%$e187440%_
                              (##structure-direct-instance-of?
                               _%bind187430%_
                               'gx#import-binding::t)))))))
                  (_%make-export__0__190584190587%_
                   (lambda (_%bind187446%_)
                     (let* ((_%phi187448%_ (gx#current-export-expander-phi))
                            (_%ctx187450%_ (gx#current-expander-context))
                            (_%name187452%_ '#f))
                       (_%make-export__190582190583%_
                        _%bind187446%_
                        _%phi187448%_
                        _%ctx187450%_
                        _%name187452%_))))
                  (_%make-export__1__190585190588%_
                   (lambda (_%bind187454%_ _%phi187455%_)
                     (let* ((_%ctx187457%_ (gx#current-expander-context))
                            (_%name187459%_ '#f))
                       (_%make-export__190582190583%_
                        _%bind187454%_
                        _%phi187455%_
                        _%ctx187457%_
                        _%name187459%_))))
                  (_%make-export__2__190586190589%_
                   (lambda (_%bind187461%_ _%phi187462%_ _%ctx187463%_)
                     (let ((_%name187465%_ '#f))
                       (_%make-export__190582190583%_
                        _%bind187461%_
                        _%phi187462%_
                        _%ctx187463%_
                        _%name187465%_))))
                  (_%make-export186980%_
                   (lambda _g190656_
                     (let ((_g190657_ (##length _g190656_)))
                       (cond ((##fx= _g190657_ 1)
                              (apply _%make-export__0__190584190587%_
                                     _g190656_))
                             ((##fx= _g190657_ 2)
                              (apply _%make-export__1__190585190588%_
                                     _g190656_))
                             ((##fx= _g190657_ 3)
                              (apply _%make-export__2__190586190589%_
                                     _g190656_))
                             ((##fx= _g190657_ 4)
                              (apply _%make-export__190582190583%_ _g190656_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g190656_))))))
                  (_%expand1186981%_
                   (lambda (_%hd187135%_
                            _%K187136%_
                            _%rest187137%_
                            _%r187138%_)
                     (let* ((_%$%e187139187171%_ _%hd187135%_)
                            (_%$%E187166187175%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _%stx186977%_
                                _%hd187135%_)))
                            (_%$%E187156187259%_
                             (lambda ()
                               (if (gx#stx-pair? _%$%e187139187171%_)
                                   (let ((_%$%e187167187179%_
                                          (gx#syntax-e _%$%e187139187171%_)))
                                     (let ((_%$%hd187168187182%_
                                            (##car _%$%e187167187179%_))
                                           (_%$%tl187169187184%_
                                            (##cdr _%$%e187167187179%_)))
                                       (if (eq? (gx#stx-e _%$%hd187168187182%_)
                                                'import:)
                                           (let ((_%in187187%_
                                                  _%$%tl187169187184%_))
                                             (if (gx#stx-list? _%in187187%_)
                                                 (let _%lp187189%_ ((_%in-rest187191%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%in187187%_)
                            (_%r187192%_ _%r187138%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%$%e187193187200%_
                                                           _%in-rest187191%_)
                                                          (_%$%E187195187204%_
                                                           (lambda ()
                                                             (_%K187136%_
                                                              _%rest187137%_
                                                              _%r187192%_)))
                                                          (_%$%E187194187255%_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%e187193187200%_)
                         (let ((_%$%e187196187208%_
                                (gx#syntax-e _%$%e187193187200%_)))
                           (let ((_%$%hd187197187211%_
                                  (##car _%$%e187196187208%_))
                                 (_%$%tl187198187213%_
                                  (##cdr _%$%e187196187208%_)))
                             (let* ((_%hd187216%_ _%$%hd187197187211%_)
                                    (_%in-rest187218%_ _%$%tl187198187213%_)
                                    (_%src187253%_
                                     (if (gx#core-bound-module? _%hd187216%_)
                                         (gx#syntax-local-e__0 _%hd187216%_)
                                         (if (gx#core-library-module-path?
                                              _%hd187216%_)
                                             (gx#import-module__0
                                              (gx#core-resolve-library-module-path
                                               _%hd187216%_))
                                             (if (gx#core-library-relative-module-path?
                                                  _%hd187216%_)
                                                 (gx#import-module__0
                                                  (gx#core-resolve-library-relative-module-path
                                                   _%hd187216%_))
                                                 (if (gx#stx-string?
                                                      _%hd187216%_)
                                                     (gx#import-module__0
                                                      (gx#core-resolve-module-path__%
                                                       _%hd187216%_
                                                       (gx#stx-source
                                                        _%stx186977%_)))
                                                     (let* ((_%$%e187224187231%_
                                                             _%hd187216%_)
                                                            (_%$%E187226187235%_
                                                             (lambda ()
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; illegal re-export"
                                                                _%stx186977%_
                                                                _%hd187216%_)))
                                                            (_%$%E187225187249%_
                                                             (lambda ()
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%e187224187231%_)
                           (let ((_%$%e187227187239%_
                                  (gx#syntax-e _%$%e187224187231%_)))
                             (let ((_%$%hd187228187242%_
                                    (##car _%$%e187227187239%_))
                                   (_%$%tl187229187244%_
                                    (##cdr _%$%e187227187239%_)))
                               (if (eq? (gx#stx-e _%$%hd187228187242%_) 'in:)
                                   (let ((_%spath187247%_
                                          _%$%tl187229187244%_))
                                     (gx#core-import-nested-module
                                      _%spath187247%_
                                      _%stx186977%_))
                                   (_%$%E187226187235%_))))
                           (_%$%E187226187235%_)))))
               (_%$%E187225187249%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (_%lp187189%_
                                _%in-rest187218%_
                                (_%export-imports186982%_
                                 _%src187253%_
                                 _%r187192%_)))))
                         (_%$%E187195187204%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%E187194187255%_)))
                                                 (_%$%E187166187175%_)))
                                           (_%$%E187166187175%_))))
                                   (_%$%E187166187175%_))))
                            (_%$%E187143187299%_
                             (lambda ()
                               (if (gx#stx-pair? _%$%e187139187171%_)
                                   (let ((_%$%e187157187263%_
                                          (gx#syntax-e _%$%e187139187171%_)))
                                     (let ((_%$%hd187158187266%_
                                            (##car _%$%e187157187263%_))
                                           (_%$%tl187159187268%_
                                            (##cdr _%$%e187157187263%_)))
                                       (if (eq? (gx#stx-e _%$%hd187158187266%_)
                                                'rename:)
                                           (if (gx#stx-pair?
                                                _%$%tl187159187268%_)
                                               (let ((_%$%e187160187271%_
                                                      (gx#syntax-e
                                                       _%$%tl187159187268%_)))
                                                 (let ((_%$%hd187161187274%_
                                                        (##car _%$%e187160187271%_))
                                                       (_%$%tl187162187276%_
                                                        (##cdr _%$%e187160187271%_)))
                                                   (let ((_%id187279%_
                                                          _%$%hd187161187274%_))
                                                     (if (gx#stx-pair?
                                                          _%$%tl187162187276%_)
                                                         (let ((_%$%e187163187281%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%tl187162187276%_)))
                   (let ((_%$%hd187164187284%_ (##car _%$%e187163187281%_))
                         (_%$%tl187165187286%_ (##cdr _%$%e187163187281%_)))
                     (let ((_%name187289%_ _%$%hd187164187284%_))
                       (if (gx#stx-null? _%$%tl187165187286%_)
                           (let* ((_%phi187291%_
                                   (gx#current-export-expander-phi))
                                  (_%$e187293%_
                                   (gx#core-resolve-identifier__1
                                    _%id187279%_
                                    _%phi187291%_)))
                             (if _%$e187293%_
                                 (_%K187136%_
                                  _%rest187137%_
                                  (cons (_%make-export__190582190583%_
                                         _%$e187293%_
                                         _%phi187291%_
                                         (gx#current-expander-context)
                                         _%name187289%_)
                                        _%r187138%_))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Reference to unbound identifier"
                                  _%stx186977%_
                                  _%hd187135%_
                                  _%id187279%_)))
                           (_%$%E187156187259%_)))))
                 (_%$%E187156187259%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%E187156187259%_))
                                           (_%$%E187156187259%_))))
                                   (_%$%E187156187259%_))))
                            (_%$%E187142187349%_
                             (lambda ()
                               (if (gx#stx-pair? _%$%e187139187171%_)
                                   (let ((_%$%e187144187303%_
                                          (gx#syntax-e _%$%e187139187171%_)))
                                     (let ((_%$%hd187145187306%_
                                            (##car _%$%e187144187303%_))
                                           (_%$%tl187146187308%_
                                            (##cdr _%$%e187144187303%_)))
                                       (if (eq? (gx#stx-e _%$%hd187145187306%_)
                                                'spec:)
                                           (if (gx#stx-pair?
                                                _%$%tl187146187308%_)
                                               (let ((_%$%e187147187311%_
                                                      (gx#syntax-e
                                                       _%$%tl187146187308%_)))
                                                 (let ((_%$%hd187148187314%_
                                                        (##car _%$%e187147187311%_))
                                                       (_%$%tl187149187316%_
                                                        (##cdr _%$%e187147187311%_)))
                                                   (let ((_%phi187319%_
                                                          _%$%hd187148187314%_))
                                                     (if (gx#stx-pair?
                                                          _%$%tl187149187316%_)
                                                         (let ((_%$%e187150187321%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%tl187149187316%_)))
                   (let ((_%$%hd187151187324%_ (##car _%$%e187150187321%_))
                         (_%$%tl187152187326%_ (##cdr _%$%e187150187321%_)))
                     (let ((_%id187329%_ _%$%hd187151187324%_))
                       (if (gx#stx-pair? _%$%tl187152187326%_)
                           (let ((_%$%e187153187331%_
                                  (gx#syntax-e _%$%tl187152187326%_)))
                             (let ((_%$%hd187154187334%_
                                    (##car _%$%e187153187331%_))
                                   (_%$%tl187155187336%_
                                    (##cdr _%$%e187153187331%_)))
                               (let ((_%name187339%_ _%$%hd187154187334%_))
                                 (if (gx#stx-null? _%$%tl187155187336%_)
                                     (if (and (gx#stx-fixnum? _%phi187319%_)
                                              (gx#identifier? _%id187329%_)
                                              (gx#identifier? _%name187339%_))
                                         (let* ((_%phi187341%_
                                                 (gx#stx-e _%phi187319%_))
                                                (_%$e187343%_
                                                 (gx#core-resolve-identifier__1
                                                  _%id187329%_
                                                  _%phi187341%_)))
                                           (if _%$e187343%_
                                               (_%K187136%_
                                                _%rest187137%_
                                                (cons (_%make-export__190582190583%_
                                                       _%$e187343%_
                                                       _%phi187341%_
                                                       (gx#current-expander-context)
                                                       _%name187339%_)
                                                      _%r187138%_))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _%stx186977%_
                                                _%hd187135%_
                                                _%id187329%_)))
                                         (_%$%E187143187299%_))
                                     (_%$%E187143187299%_)))))
                           (_%$%E187143187299%_)))))
                 (_%$%E187143187299%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%E187143187299%_))
                                           (_%$%E187143187299%_))))
                                   (_%$%E187143187299%_))))
                            (_%$%E187141187361%_
                             (lambda ()
                               (let ((_%id187353%_ _%$%e187139187171%_))
                                 (if (gx#identifier? _%id187353%_)
                                     (let ((_%$e187355%_
                                            (gx#core-resolve-identifier__1
                                             _%id187353%_
                                             (gx#current-export-expander-phi))))
                                       (if _%$e187355%_
                                           (_%K187136%_
                                            _%rest187137%_
                                            (cons (_%make-export__0__190584190587%_
                                                   _%$e187355%_)
                                                  _%r187138%_))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _%stx186977%_
                                            _%hd187135%_)))
                                     (_%$%E187142187349%_)))))
                            (_%$%E187140187425%_
                             (lambda ()
                               (if (eq? (gx#stx-e _%$%e187139187171%_) '#t)
                                   (let* ((_%current-ctx187365%_
                                           (gx#current-expander-context))
                                          (_%current-phi187367%_
                                           (gx#current-export-expander-phi))
                                          (_%phi-ctx187369%_
                                           (gx#core-context-shift
                                            _%current-ctx187365%_
                                            _%current-phi187367%_))
                                          (_%phi-bind187371%_
                                           (hash->list
                                            (##unchecked-structure-ref
                                             _%phi-ctx187369%_
                                             '2
                                             '#f
                                             '#f))))
                                     (let _%lp187374%_ ((_%bind-rest187376%_
                                                         _%phi-bind187371%_)
                                                        (_%set187377%_ '()))
                                       (let* ((_%$%bind-rest187378187388%_
                                               _%bind-rest187376%_)
                                              (_%$%else187380187396%_
                                               (lambda ()
                                                 (_%K187136%_
                                                  _%rest187137%_
                                                  (cons (##structure
                                                         gx#export-set::t
                                                         '#f
                                                         _%current-phi187367%_
                                                         _%set187377%_)
                                                        _%r187138%_))))
                                              (_%$%K187382187406%_
                                               (lambda (_%bind-rest187399%_
                                                        _%bind187400%_
                                                        _%key187401%_)
                                                 (if (or (##structure-direct-instance-of?
                                                          _%bind187400%_
                                                          'gx#import-binding::t)
                                                         (gx#private-feature-binding?
                                                          _%bind187400%_))
                                                     (_%lp187374%_
                                                      _%bind-rest187399%_
                                                      _%set187377%_)
                                                     (_%lp187374%_
                                                      _%bind-rest187399%_
                                                      (cons (_%make-export__2__190586190589%_
                                                             _%bind187400%_
                                                             _%current-phi187367%_
                                                             _%current-ctx187365%_)
                                                            _%set187377%_))))))
                                         (if (pair? _%$%bind-rest187378187388%_)
                                             (let ((_%$%hd187383187409%_
                                                    (##car _%$%bind-rest187378187388%_))
                                                   (_%$%tl187384187411%_
                                                    (##cdr _%$%bind-rest187378187388%_)))
                                               (if (pair? _%$%hd187383187409%_)
                                                   (let ((_%$%hd187385187414%_
                                                          (##car _%$%hd187383187409%_))
                                                         (_%$%tl187386187416%_
                                                          (##cdr _%$%hd187383187409%_)))
                                                     (let* ((_%key187419%_
                                                             _%$%hd187385187414%_)
                                                            (_%bind187421%_
                                                             _%$%tl187386187416%_)
                                                            (_%bind-rest187423%_
                                                             _%$%tl187384187411%_))
                                                       (_%$%K187382187406%_
                                                        _%bind-rest187423%_
                                                        _%bind187421%_
                                                        _%key187419%_)))
                                                   (_%$%else187380187396%_)))
                                             (_%$%else187380187396%_)))))
                                   (_%$%E187141187361%_)))))
                       (_%$%E187140187425%_))))
                  (_%export-imports186982%_
                   (lambda (_%src187012%_ _%r187013%_)
                     (letrec* ((_%current-ctx187015%_
                                (gx#current-expander-context))
                               (_%current-phi187016%_
                                (gx#current-export-expander-phi))
                               (_%import->export187017%_
                                (lambda (_%in187098%_)
                                  (let* ((_%$%in187099187107%_ _%in187098%_)
                                         (_%$%E187101187110%_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _%$%in187099187107%_
                                                   '((module-import
                                                      out
                                                      key
                                                      phi)))
                                            '#!void))
                                         (_%$%K187102187117%_
                                          (lambda (_%phi187113%_
                                                   _%key187114%_
                                                   _%out187115%_)
                                            (##structure
                                             gx#module-export::t
                                             _%current-ctx187015%_
                                             _%key187114%_
                                             _%phi187113%_
                                             _%key187114%_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _%$%in187099187107%_
                                         'gx#module-import::t)
                                        (let* ((_%$%e187103187120%_
                                                (##unchecked-structure-ref
                                                 _%$%in187099187107%_
                                                 '1
                                                 '#f
                                                 '#f))
                                               (_%out187123%_
                                                _%$%e187103187120%_)
                                               (_%$%e187104187125%_
                                                (##unchecked-structure-ref
                                                 _%$%in187099187107%_
                                                 '2
                                                 '#f
                                                 '#f))
                                               (_%key187128%_
                                                _%$%e187104187125%_)
                                               (_%$%e187105187130%_
                                                (##unchecked-structure-ref
                                                 _%$%in187099187107%_
                                                 '3
                                                 '#f
                                                 '#f))
                                               (_%phi187133%_
                                                _%$%e187105187130%_))
                                          (_%$%K187102187117%_
                                           _%phi187133%_
                                           _%key187128%_
                                           _%out187123%_))
                                        (_%$%E187101187110%_)))))
                               (_%fold-e187018%_
                                (lambda (_%in187020%_ _%r187021%_)
                                  (let* ((_%$%in187022187036%_ _%in187020%_)
                                         (_%$%else187025187044%_
                                          (lambda () _%r187021%_)))
                                    (let ((_%$%K187031187080%_
                                           (lambda (_%phi187076%_
                                                    _%key187077%_
                                                    _%out187078%_)
                                             (if (and (fx= _%phi187076%_
                                                           _%current-phi187016%_)
                                                      (eq? _%src187012%_
                                                           (##unchecked-structure-ref
                                                            _%out187078%_
                                                            '1
                                                            '#f
                                                            '#f)))
                                                 (cons (_%import->export187017%_
                                                        _%in187020%_)
                                                       _%r187021%_)
                                                 _%r187021%_)))
                                          (_%$%K187027187055%_
                                           (lambda (_%imports187048%_
                                                    _%phi187049%_
                                                    _%ctx187050%_)
                                             (if (and (fx= _%phi187049%_
                                                           _%current-phi187016%_)
                                                      (eq? _%src187012%_
                                                           _%ctx187050%_))
                                                 (foldl__0
                                                  (lambda (_%in187052%_
                                                           _%r187053%_)
                                                    (cons (_%import->export187017%_
                                                           _%in187052%_)
                                                          _%r187053%_))
                                                  _%r187021%_
                                                  _%imports187048%_)
                                                 _%r187021%_))))
                                      (let ((_%$%try-match187024187073%_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _%$%in187022187036%_
                                                    'gx#import-set::t)
                                                   (let* ((_%$%e187028187058%_
                                                           (##unchecked-structure-ref
                                                            _%$%in187022187036%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                          (_%$%e187029187063%_
                                                           (##unchecked-structure-ref
                                                            _%$%in187022187036%_
                                                            '2
                                                            '#f
                                                            '#f))
                                                          (_%$%e187030187068%_
                                                           (##unchecked-structure-ref
                                                            _%$%in187022187036%_
                                                            '3
                                                            '#f
                                                            '#f)))
                                                     (let ((_%ctx187061%_
                                                            _%$%e187028187058%_)
                                                           (_%phi187066%_
                                                            _%$%e187029187063%_)
                                                           (_%imports187071%_
                                                            _%$%e187030187068%_))
                                                       (_%$%K187027187055%_
                                                        _%imports187071%_
                                                        _%phi187066%_
                                                        _%ctx187061%_)))
                                                   (_%$%else187025187044%_)))))
                                        (if (##structure-direct-instance-of?
                                             _%$%in187022187036%_
                                             'gx#module-import::t)
                                            (let* ((_%$%e187032187083%_
                                                    (##unchecked-structure-ref
                                                     _%$%in187022187036%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                   (_%$%e187033187088%_
                                                    (##unchecked-structure-ref
                                                     _%$%in187022187036%_
                                                     '2
                                                     '#f
                                                     '#f))
                                                   (_%$%e187034187093%_
                                                    (##unchecked-structure-ref
                                                     _%$%in187022187036%_
                                                     '3
                                                     '#f
                                                     '#f)))
                                              (let ((_%out187086%_
                                                     _%$%e187032187083%_)
                                                    (_%key187091%_
                                                     _%$%e187033187088%_)
                                                    (_%phi187096%_
                                                     _%$%e187034187093%_))
                                                (_%$%K187031187080%_
                                                 _%phi187096%_
                                                 _%key187091%_
                                                 _%out187086%_)))
                                            (_%$%try-match187024187073%_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _%src187012%_
                              _%current-phi187016%_
                              (foldl__0
                               _%fold-e187018%_
                               '()
                               (##unchecked-structure-ref
                                _%current-ctx187015%_
                                '8
                                '#f
                                '#f)))
                             _%r187013%_))))
                  (_%export!186983%_
                   (lambda (_%rbody186999%_)
                     (letrec* ((_%current-ctx187001%_
                                (gx#current-expander-context))
                               (_%fold-e187002%_
                                (lambda (_%out187006%_ _%r187007%_)
                                  (if (##structure-direct-instance-of?
                                       _%out187006%_
                                       'gx#module-export::t)
                                      (cons _%out187006%_ _%r187007%_)
                                      (if (##structure-direct-instance-of?
                                           _%out187006%_
                                           'gx#export-set::t)
                                          (foldl__0
                                           cons
                                           _%r187007%_
                                           (##unchecked-structure-ref
                                            _%out187006%_
                                            '3
                                            '#f
                                            '#f))
                                          _%r187007%_)))))
                       (let ((_%body187004%_ (reverse _%rbody186999%_)))
                         (##unchecked-structure-set!
                          _%current-ctx187001%_
                          (foldl__0
                           _%fold-e187002%_
                           (##unchecked-structure-ref
                            _%current-ctx187001%_
                            '9
                            '#f
                            '#f)
                           _%body187004%_)
                          '9
                          '#f
                          '#f)
                         _%body187004%_))))
                  (_%expanded-export?186984%_
                   (lambda (_%e186994%_)
                     (let ((_%$e186996%_
                            (##structure-direct-instance-of?
                             _%e186994%_
                             'gx#module-export::t)))
                       (if _%$e186996%_
                           _%$e186996%_
                           (##structure-direct-instance-of?
                            _%e186994%_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _%internal-expand?186978%_)
              (let ((_%rbody186990%_
                     (gx#core-expand-import/export
                      _%stx186977%_
                      _%expanded-export?186984%_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _%expand1186981%_)))
                (if _%internal-expand?186978%_
                    (reverse _%rbody186990%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons
                      '%#export
                      (_%export!186983%_ _%rbody186990%_))
                     (gx#stx-source _%stx186977%_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _%stx186977%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _%stx186977%_))))))
    (define gx#core-expand-export%__0
      (lambda (_%stx187475%_)
        (let ((_%internal-expand?187477%_ '#f))
          (gx#core-expand-export%__%
           _%stx187475%_
           _%internal-expand?187477%_))))
    (define gx#core-expand-export%
      (lambda _g190658_
        (let ((_g190659_ (##length _g190658_)))
          (cond ((##fx= _g190659_ 1)
                 (apply gx#core-expand-export%__0 _g190658_))
                ((##fx= _g190659_ 2)
                 (apply gx#core-expand-export%__% _g190658_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g190658_))))))
    (define gx#core-expand-export-source
      (lambda (_%hd186974%_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _%hd186974%_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_%stx186944%_)
        (let* ((_%$%e186945186952%_ _%stx186944%_)
               (_%$%E186947186956%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e186945186952%_)))
               (_%$%E186946186970%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e186945186952%_)
                      (let ((_%$%e186948186960%_
                             (gx#syntax-e _%$%e186945186952%_)))
                        (let ((_%$%hd186949186963%_
                               (##car _%$%e186948186960%_))
                              (_%$%tl186950186965%_
                               (##cdr _%$%e186948186960%_)))
                          (let ((_%body186968%_ _%$%tl186950186965%_))
                            (if (gx#identifier-list? _%body186968%_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _%body186968%_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _%body186968%_))
                                   (gx#stx-source _%stx186944%_)))
                                (_%$%E186947186956%_)))))
                      (_%$%E186947186956%_)))))
          (_%$%E186946186970%_))))
    (define gx#core-bind-feature!__%
      (lambda (_%id186910%_ _%private?186911%_ _%phi186912%_ _%ctx186913%_)
        (gx#core-bind-syntax!__%
         _%id186910%_
         ((if _%private?186911%_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _%id186910%_))
         _%private?186911%_
         _%phi186912%_
         _%ctx186913%_)))
    (define gx#core-bind-feature!__0
      (lambda (_%id186918%_)
        (let* ((_%private?186920%_ '#f)
               (_%phi186922%_ (gx#current-expander-phi))
               (_%ctx186924%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id186918%_
           _%private?186920%_
           _%phi186922%_
           _%ctx186924%_))))
    (define gx#core-bind-feature!__1
      (lambda (_%id186926%_ _%private?186927%_)
        (let* ((_%phi186929%_ (gx#current-expander-phi))
               (_%ctx186931%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id186926%_
           _%private?186927%_
           _%phi186929%_
           _%ctx186931%_))))
    (define gx#core-bind-feature!__2
      (lambda (_%id186933%_ _%private?186934%_ _%phi186935%_)
        (let ((_%ctx186937%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id186933%_
           _%private?186934%_
           _%phi186935%_
           _%ctx186937%_))))
    (define gx#core-bind-feature!
      (lambda _g190660_
        (let ((_g190661_ (##length _g190660_)))
          (cond ((##fx= _g190661_ 1)
                 (apply gx#core-bind-feature!__0 _g190660_))
                ((##fx= _g190661_ 2)
                 (apply gx#core-bind-feature!__1 _g190660_))
                ((##fx= _g190661_ 3)
                 (apply gx#core-bind-feature!__2 _g190660_))
                ((##fx= _g190661_ 4)
                 (apply gx#core-bind-feature!__% _g190660_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g190660_))))))))
