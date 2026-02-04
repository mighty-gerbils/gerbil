(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1770243150)
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
      (lambda _%$args151192%_
        (apply make-instance gx#module-import::t _%$args151192%_)))
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
      (lambda _%$args151189%_
        (apply make-instance gx#module-export::t _%$args151189%_)))
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
      (lambda _%$args151186%_
        (apply make-instance gx#import-set::t _%$args151186%_)))
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
      (lambda _%$args151183%_
        (apply make-instance gx#export-set::t _%$args151183%_)))
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
      (lambda _%$args151180%_
        (apply make-instance gx#import-expander::t _%$args151180%_)))
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
      (lambda _%$args151177%_
        (apply make-instance gx#export-expander::t _%$args151177%_)))
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
      (lambda _%$args151174%_
        (apply make-instance gx#import-export-expander::t _%$args151174%_)))
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
      (lambda (_%path151171%_ _%fun151172%_)
        (call-with-input-file
         (cons 'path: (cons _%path151171%_ gx#source-file-settings))
         _%fun151172%_)))
    (define gx#module-context:::init!
      (lambda (_%self151154%_
               _%id151155%_
               _%super151156%_
               _%ns151157%_
               _%path151158%_)
        (let ((_%self151161%_ _%self151154%_))
          (if (##fx< '11 (##structure-length _%self151161%_))
              (begin
                (##unchecked-structure-set!
                 _%self151161%_
                 _%id151155%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self151161%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self151161%_
                 _%super151156%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self151161%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self151161%_ '#f '5 '#f '#f)
                (##unchecked-structure-set!
                 _%self151161%_
                 _%ns151157%_
                 '6
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self151161%_
                 _%path151158%_
                 '7
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self151161%_ '() '8 '#f '#f)
                (##unchecked-structure-set! _%self151161%_ '() '9 '#f '#f)
                (##unchecked-structure-set! _%self151161%_ '#f '10 '#f '#f)
                (##unchecked-structure-set! _%self151161%_ '#f '11 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self151161%_
                     '11
                     (##structure-length _%self151161%_))))))
    (__bind-method!__%
     gx#module-context::t
     ':init!
     gx#module-context:::init!
     '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_%self150987%_ _%ctx150988%_ _%root150989%_)
        (let* ((_%self150992%_ _%self150987%_)
               (_%super151008%_
                (let ((_%$e151002%_ _%root150989%_))
                  (if _%$e151002%_
                      _%$e151002%_
                      (let ((_%$e151005%_ (gx#core-context-root__0)))
                        (if _%$e151005%_
                            _%$e151005%_
                            (let ((__obj151236
                                   (##structure gx#root-context::t '#f '#f)))
                              (let ((__constructor151237
                                     (direct-method-ref
                                      gx#root-context::t
                                      __obj151236
                                      ':init!)))
                                (if __constructor151237
                                    (__constructor151237 __obj151236)
                                    (error '"missing constructor method implementation"
                                           'class:
                                           gx#root-context::t
                                           'method:
                                           ':init!)))
                              __obj151236)))))))
          (if _%ctx150988%_
              (let ((_%id151011%_
                     (##structure-ref
                      _%ctx150988%_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_%path151012%_
                     (##structure-ref
                      _%ctx150988%_
                      '7
                      gx#module-context::t
                      '#f))
                    (_%in151013%_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _%ctx150988%_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_%e151014%_
                     (__make-atomic-promise
                      (lambda () (gx#eval-module _%ctx150988%_)))))
                (if (##fx< '8 (##structure-length _%self150992%_))
                    (begin
                      (##unchecked-structure-set!
                       _%self150992%_
                       _%id151011%_
                       '1
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self150992%_
                       (make-hash-table-eq 'size: (##length _%in151013%_))
                       '2
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self150992%_
                       _%super151008%_
                       '3
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self150992%_
                       '#f
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self150992%_
                       '#f
                       '5
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self150992%_
                       _%path151012%_
                       '6
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self150992%_
                       _%in151013%_
                       '7
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self150992%_
                       _%e151014%_
                       '8
                       '#f
                       '#f)
                      '#!void)
                    (error '"struct-instance-init!: too many arguments for struct"
                           _%self150992%_
                           '8
                           (##structure-length _%self150992%_)))
                (##for-each
                 (lambda (_%g151015151017%_)
                   (gx#core-bind-weak-import!__%
                    _%g151015151017%_
                    _%self150992%_))
                 _%in151013%_))
              (if (##fx< '8 (##structure-length _%self150992%_))
                  (begin
                    (##unchecked-structure-set! _%self150992%_ '#f '1 '#f '#f)
                    (##unchecked-structure-set!
                     _%self150992%_
                     (make-hash-table-eq)
                     '2
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self150992%_
                     _%super151008%_
                     '3
                     '#f
                     '#f)
                    (##unchecked-structure-set! _%self150992%_ '#f '4 '#f '#f)
                    (##unchecked-structure-set! _%self150992%_ '#f '5 '#f '#f)
                    (##unchecked-structure-set! _%self150992%_ '#f '6 '#f '#f)
                    (##unchecked-structure-set! _%self150992%_ '() '7 '#f '#f)
                    (##unchecked-structure-set! _%self150992%_ '#f '8 '#f '#f)
                    '#!void)
                  (error '"struct-instance-init!: too many arguments for struct"
                         _%self150992%_
                         '8
                         (##structure-length _%self150992%_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_%self151023%_ _%ctx151024%_)
        (let ((_%root151026%_ '#f))
          (gx#prelude-context:::init!__%
           _%self151023%_
           _%ctx151024%_
           _%root151026%_))))
    (define gx#prelude-context:::init!
      (lambda _g151242_
        (let ((_g151243_ (##length _g151242_)))
          (cond ((##fx= _g151243_ 2)
                 (apply gx#prelude-context:::init!__0 _g151242_))
                ((##fx= _g151243_ 3)
                 (apply gx#prelude-context:::init!__% _g151242_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g151242_))))))
    (__bind-method!__%
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_%self150861%_ _%e150862%_)
        (if (##fx< '3 (##structure-length _%self150861%_))
            (begin
              (##unchecked-structure-set!
               _%self150861%_
               _%e150862%_
               '1
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self150861%_
               (gx#current-expander-context)
               '2
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self150861%_
               (##fx- (gx#current-expander-phi) '1)
               '3
               '#f
               '#f)
              '#!void)
            (error '"struct-instance-init!: too many arguments for struct"
                   _%self150861%_
                   '3
                   (##structure-length _%self150861%_)))))
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
      (lambda (_%g150487150490%_ _%g150488150492%_)
        (gx#core-apply-user-expander__%
         _%g150487150490%_
         _%g150488150492%_
         'apply-import-expander)))
    (__bind-method!__%
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_%g150358150361%_ _%g150359150363%_)
        (gx#core-apply-user-expander__%
         _%g150358150361%_
         _%g150359150363%_
         'apply-export-expander)))
    (__bind-method!__%
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_%ctx150229%_)
        (let* ((_%path150231%_
                (##structure-ref _%ctx150229%_ '7 gx#module-context::t '#f))
               (_%path150233%_
                (if (pair? _%path150231%_)
                    (##last _%path150231%_)
                    _%path150231%_)))
          (if (string? _%path150233%_) _%path150233%_ '#f))))
    (define gx#import-module__%
      (lambda (_%path150205%_ _%reload?150206%_ _%eval?150207%_)
        (let ((_%ctx150209%_
               ((gx#current-expander-module-import)
                _%path150205%_
                _%reload?150206%_)))
          (if (and _%ctx150209%_ _%eval?150207%_)
              (gx#eval-module _%ctx150209%_)
              '#!void)
          _%ctx150209%_)))
    (define gx#import-module__0
      (lambda (_%path150214%_)
        (let* ((_%reload?150216%_ '#f) (_%eval?150218%_ '#f))
          (gx#import-module__%
           _%path150214%_
           _%reload?150216%_
           _%eval?150218%_))))
    (define gx#import-module__1
      (lambda (_%path150220%_ _%reload?150221%_)
        (let ((_%eval?150223%_ '#f))
          (gx#import-module__%
           _%path150220%_
           _%reload?150221%_
           _%eval?150223%_))))
    (define gx#import-module
      (lambda _g151244_
        (let ((_g151245_ (##length _g151244_)))
          (cond ((##fx= _g151245_ 1) (apply gx#import-module__0 _g151244_))
                ((##fx= _g151245_ 2) (apply gx#import-module__1 _g151244_))
                ((##fx= _g151245_ 3) (apply gx#import-module__% _g151244_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g151244_))))))
    (define gx#eval-module
      (lambda (_%mod150202%_)
        ((gx#current-expander-module-eval) _%mod150202%_)))
    (define gx#core-eval-module
      (lambda (_%obj150181%_)
        (letrec ((_%force-e150183%_
                  (lambda (_%getf150197%_ _%e150198%_)
                    (call-with-parameters__1
                     (lambda ()
                       (call-with-parameters__1
                        (lambda () (force (_%getf150197%_ _%e150198%_)))
                        gx#current-expander-phi
                        '0))
                     gx#current-expander-context
                     _%e150198%_))))
          (let _%recur150185%_ ((_%e150187%_ _%obj150181%_))
            (if (##structure-instance-of? _%e150187%_ 'gx#module-context::t)
                (let ()
                  (let ((_%$e150190%_
                         (gx#core-context-prelude__% _%e150187%_)))
                    (if _%$e150190%_ (_%recur150185%_ _%$e150190%_) '#!void))
                  (_%force-e150183%_ gx#module-context-e _%e150187%_))
                (if (##structure-instance-of?
                     _%e150187%_
                     'gx#prelude-context::t)
                    (_%force-e150183%_ gx#prelude-context-e _%e150187%_)
                    (if (gx#stx-string? _%e150187%_)
                        (_%recur150185%_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _%e150187%_)))
                        (if (gx#core-library-module-path? _%e150187%_)
                            (_%recur150185%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%e150187%_)))
                            (error '"cannot eval module" _%obj150181%_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_%ctx150161%_)
        (let _%lp150163%_ ((_%e150165%_ _%ctx150161%_))
          (if (or (##structure-instance-of? _%e150165%_ 'gx#module-context::t)
                  (##structure-instance-of? _%e150165%_ 'gx#local-context::t))
              (_%lp150163%_ (##unchecked-structure-ref _%e150165%_ '3 '#f '#f))
              (if (##structure-instance-of? _%e150165%_ 'gx#prelude-context::t)
                  _%e150165%_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_%ctx150177%_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _%ctx150177%_))))
    (define gx#core-context-prelude
      (lambda _g151246_
        (let ((_g151247_ (##length _g151246_)))
          (cond ((##fx= _g151247_ 0)
                 (apply gx#core-context-prelude__0 _g151246_))
                ((##fx= _g151247_ 1)
                 (apply gx#core-context-prelude__% _g151246_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g151246_))))))
    (define gx#core-module->prelude-context
      (lambda (_%ctx150152%_)
        (let ((_%$e150154%_ (__hash-get gx#__module-registry _%ctx150152%_)))
          (if _%$e150154%_
              _%$e150154%_
              (let ((_%pre150158%_
                     (let ((__obj151238
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
                        __obj151238
                        _%ctx150152%_)
                       __obj151238)))
                (__hash-put! gx#__module-registry _%ctx150152%_ _%pre150158%_)
                _%pre150158%_)))))
    (define gx#core-import-module__%
      (lambda (_%rpath150020%_ _%reload?150021%_)
        (letrec ((_%import-source150023%_
                  (lambda (_%path150111%_)
                    (if (member _%path150111%_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _%path150111%_)
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
                                      (let ((_g151248_
                                             (gx#core-read-module
                                              _%path150111%_)))
                                        (begin
                                          (let ((_g151249_
                                                 (if (##values? _g151248_)
                                                     (##values-length
                                                      _g151248_)
                                                     1)))
                                            (if (not (##fx= _g151249_ 4))
                                                (error "Context expects 4 values"
                                                       _g151249_)))
                                          (let ((_%pre150119%_
                                                 (##values-ref _g151248_ 0))
                                                (_%id150120%_
                                                 (##values-ref _g151248_ 1))
                                                (_%ns150121%_
                                                 (##values-ref _g151248_ 2))
                                                (_%body150122%_
                                                 (##values-ref _g151248_ 3)))
                                            (let* ((_%prelude150132%_
                                                    (if (##structure-instance-of?
                                                         _%pre150119%_
                                                         'gx#prelude-context::t)
                                                        _%pre150119%_
                                                        (if (##structure-instance-of?
                                                             _%pre150119%_
                                                             'gx#module-context::t)
                                                            (gx#core-module->prelude-context
                                                             _%pre150119%_)
                                                            (if (string? _%pre150119%_)
                                                                (gx#core-module->prelude-context
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#core-import-module__0 _%pre150119%_))
                        (if (not _%pre150119%_)
                            (let ((_%$e150128%_
                                   (gx#current-expander-module-prelude)))
                              (if _%$e150128%_
                                  _%$e150128%_
                                  (let ((__obj151239
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
                                     __obj151239
                                     '#f)
                                    __obj151239)))
                            (error '"cannot import module; unknown prelude"
                                   _%rpath150020%_
                                   _%pre150119%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%ctx150134%_
                                                    (let ((__obj151240
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
                                                       __obj151240
                                                       _%id150120%_
                                                       _%prelude150132%_
                                                       _%ns150121%_
                                                       _%path150111%_)
                                                      __obj151240))
                                                   (_%body150136%_
                                                    (gx#core-expand-module-begin
                                                     _%body150122%_
                                                     _%ctx150134%_))
                                                   (_%body150138%_
                                                    (gx#core-quote-syntax__%
                                                     (gx#core-cons
                                                      '%#begin
                                                      _%body150136%_)
                                                     _%path150111%_
                                                     _%ctx150134%_
                                                     '())))
                                              (##unchecked-structure-set!
                                               _%ctx150134%_
                                               (__make-atomic-promise
                                                (lambda ()
                                                  (gx#eval-syntax*
                                                   _%body150138%_)))
                                               '10
                                               '#f
                                               '#f)
                                              (##unchecked-structure-set!
                                               _%ctx150134%_
                                               _%body150138%_
                                               '11
                                               '#f
                                               '#f)
                                              (__hash-put!
                                               gx#__module-registry
                                               _%path150111%_
                                               _%ctx150134%_)
                                              (__hash-put!
                                               gx#__module-registry
                                               _%id150120%_
                                               _%ctx150134%_)
                                              _%ctx150134%_)))))
                                    gx#current-export-expander-phi
                                    '#f))
                                 gx#current-import-expander-phi
                                 '#f))
                              gx#current-expander-path
                              (cons _%path150111%_
                                    (gx#current-expander-path))))
                           gx#current-expander-phi
                           '0))
                        gx#current-expander-marks
                        '()))
                     gx#current-expander-context
                     (gx#core-context-root__0))))
                 (_%import-submodule150024%_
                  (lambda (_%rpath150040%_)
                    (let* ((_%rpath150041150048%_ _%rpath150040%_)
                           (_%E150043150051%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%rpath150041150048%_
                                     '([origin . refs]))
                              '#!void))
                           (_%K150044150099%_
                            (lambda (_%refs150054%_ _%origin150055%_)
                              (let ((_%ctx150057%_
                                     (if _%origin150055%_
                                         (gx#core-import-module__%
                                          _%origin150055%_
                                          _%reload?150021%_)
                                         (gx#current-expander-context))))
                                (let _%lp150059%_ ((_%rest150061%_
                                                    _%refs150054%_)
                                                   (_%ctx150062%_
                                                    _%ctx150057%_))
                                  (let* ((_%rest150063150071%_ _%rest150061%_)
                                         (_%else150065150079%_
                                          (lambda () _%ctx150062%_))
                                         (_%K150067150087%_
                                          (lambda (_%rest150082%_ _%id150083%_)
                                            (let ((_%bind150085%_
                                                   (gx#resolve-identifier__%
                                                    _%id150083%_
                                                    '0
                                                    _%ctx150062%_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _%bind150085%_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _%bind150085%_
                                                         '4
                                                         '#f
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_%lp150059%_
                                                   _%rest150082%_
                                                   (##unchecked-structure-ref
                                                    _%bind150085%_
                                                    '4
                                                    '#f
                                                    '#f))
                                                  (error '"cannot import submodule; not bound as a module"
                                                         _%rpath150040%_
                                                         _%id150083%_
                                                         _%bind150085%_))))))
                                    (if (pair? _%rest150063150071%_)
                                        (let ((_%hd150068150090%_
                                               (##car _%rest150063150071%_))
                                              (_%tl150069150092%_
                                               (##cdr _%rest150063150071%_)))
                                          (let* ((_%id150095%_
                                                  _%hd150068150090%_)
                                                 (_%rest150097%_
                                                  _%tl150069150092%_))
                                            (_%K150067150087%_
                                             _%rest150097%_
                                             _%id150095%_)))
                                        (_%else150065150079%_))))))))
                      (if (pair? _%rpath150041150048%_)
                          (let ((_%hd150045150102%_
                                 (##car _%rpath150041150048%_))
                                (_%tl150046150104%_
                                 (##cdr _%rpath150041150048%_)))
                            (let* ((_%origin150107%_ _%hd150045150102%_)
                                   (_%refs150109%_ _%tl150046150104%_))
                              (_%K150044150099%_
                               _%refs150109%_
                               _%origin150107%_)))
                          (_%E150043150051%_))))))
          (let ((_%$e150026%_
                 (if (not _%reload?150021%_)
                     (__hash-get gx#__module-registry _%rpath150020%_)
                     '#f)))
            (if _%$e150026%_
                _%$e150026%_
                (if (list? _%rpath150020%_)
                    (_%import-submodule150024%_ _%rpath150020%_)
                    (if (gx#core-library-module-path? _%rpath150020%_)
                        (let ((_%ctx150031%_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _%rpath150020%_)
                                _%reload?150021%_)))
                          (__hash-put!
                           gx#__module-registry
                           _%rpath150020%_
                           _%ctx150031%_)
                          _%ctx150031%_)
                        (let* ((_%npath150034%_
                                (path-normalize _%rpath150020%_))
                               (_%$e150036%_
                                (if (not _%reload?150021%_)
                                    (__hash-get
                                     gx#__module-registry
                                     _%npath150034%_)
                                    '#f)))
                          (if _%$e150036%_
                              _%$e150036%_
                              (_%import-source150023%_
                               _%npath150034%_))))))))))
    (define gx#core-import-module__0
      (lambda (_%rpath150145%_)
        (let ((_%reload?150147%_ '#f))
          (gx#core-import-module__% _%rpath150145%_ _%reload?150147%_))))
    (define gx#core-import-module
      (lambda _g151250_
        (let ((_g151251_ (##length _g151250_)))
          (cond ((##fx= _g151251_ 1)
                 (apply gx#core-import-module__0 _g151250_))
                ((##fx= _g151251_ 2)
                 (apply gx#core-import-module__% _g151250_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g151250_))))))
    (define gx#core-read-module
      (lambda (_%path150009%_)
        (__with-catch
         (lambda (_%exn150011%_)
           (if (and (datum-parsing-exception? _%exn150011%_)
                    (eq? (datum-parsing-exception-filepos _%exn150011%_) '0))
               (gx#core-read-module/lang _%path150009%_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _%path150009%_
                (call-with-parameters__1
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_%g150013150015%_)
                      (display-exception__% _%exn150011%_ _%g150013150015%_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _%path150009%_)))))
    (define gx#core-read-module/sexp
      (lambda (_%path149861%_)
        (let _%lp149863%_ ((_%body149865%_
                            (read-syntax-from-file _%path149861%_))
                           (_%pre149866%_ '#f)
                           (_%ns149867%_ '#f)
                           (_%pkg149868%_ '#f))
          (let* ((_%e149869149893%_ _%body149865%_)
                 (_%E149885149919%_
                  (lambda ()
                    (let ((_g151252_
                           (if _%pkg149868%_
                               (values _%pre149866%_
                                       _%ns149867%_
                                       _%pkg149868%_)
                               (gx#core-read-module-package
                                _%path149861%_
                                _%pre149866%_
                                _%ns149867%_))))
                      (begin
                        (let ((_g151253_
                               (if (##values? _g151252_)
                                   (##values-length _g151252_)
                                   1)))
                          (if (not (##fx= _g151253_ 3))
                              (error "Context expects 3 values" _g151253_)))
                        (let ((_%pre149897%_ (##values-ref _g151252_ 0))
                              (_%ns149898%_ (##values-ref _g151252_ 1))
                              (_%pkg149899%_ (##values-ref _g151252_ 2)))
                          (let* ((_%prelude149905%_
                                  (if (gx#core-bound-module-prelude?
                                       _%pre149897%_)
                                      (gx#syntax-local-e__0 _%pre149897%_)
                                      (if (gx#core-library-module-path?
                                           _%pre149897%_)
                                          (gx#core-resolve-library-module-path
                                           _%pre149897%_)
                                          (if (gx#stx-string? _%pre149897%_)
                                              (gx#core-resolve-module-path__%
                                               _%pre149897%_
                                               _%path149861%_)
                                              (gx#stx-e _%pre149897%_)))))
                                 (_%path-id149907%_
                                  (gx#core-module-path->namespace
                                   _%path149861%_))
                                 (_%pkg-id149909%_
                                  (if _%pkg149899%_
                                      (##string-append
                                       _%pkg149899%_
                                       '"/"
                                       _%path-id149907%_)
                                      _%path-id149907%_))
                                 (_%module-id149911%_
                                  (##string->symbol _%pkg-id149909%_))
                                 (_%module-ns149916%_
                                  (if (eq? _%ns149898%_ '#!void)
                                      '#f
                                      (let ((_%$e149913%_ _%ns149898%_))
                                        (if _%$e149913%_
                                            _%$e149913%_
                                            _%pkg-id149909%_)))))
                            (values _%prelude149905%_
                                    _%module-id149911%_
                                    _%module-ns149916%_
                                    _%body149865%_)))))))
                 (_%E149878149951%_
                  (lambda ()
                    (if (gx#stx-pair? _%e149869149893%_)
                        (let ((_%e149886149923%_
                               (gx#syntax-e _%e149869149893%_)))
                          (let ((_%hd149887149926%_ (##car _%e149886149923%_))
                                (_%tl149888149928%_ (##cdr _%e149886149923%_)))
                            (if (eq? (gx#stx-e _%hd149887149926%_) 'package:)
                                (if (gx#stx-pair? _%tl149888149928%_)
                                    (let ((_%e149889149931%_
                                           (gx#syntax-e _%tl149888149928%_)))
                                      (let ((_%hd149890149934%_
                                             (##car _%e149889149931%_))
                                            (_%tl149891149936%_
                                             (##cdr _%e149889149931%_)))
                                        (let* ((_%pkg149939%_
                                                _%hd149890149934%_)
                                               (_%rest149941%_
                                                _%tl149891149936%_)
                                               (_%pkg149949%_
                                                (if (gx#identifier?
                                                     _%pkg149939%_)
                                                    (symbol->string
                                                     (gx#stx-e _%pkg149939%_))
                                                    (if (or (gx#stx-string?
                                                             _%pkg149939%_)
                                                            (gx#stx-false?
                                                             _%pkg149939%_))
                                                        (gx#stx-e
                                                         _%pkg149939%_)
                                                        (gx#raise-syntax-error
                                                         'import
                                                         '"Bad syntax; Illegal package name"
                                                         _%pkg149939%_)))))
                                          (_%lp149863%_
                                           _%rest149941%_
                                           _%pre149866%_
                                           _%ns149867%_
                                           _%pkg149949%_))))
                                    (_%E149885149919%_))
                                (_%E149885149919%_))))
                        (_%E149885149919%_))))
                 (_%E149871149981%_
                  (lambda ()
                    (if (gx#stx-pair? _%e149869149893%_)
                        (let ((_%e149879149955%_
                               (gx#syntax-e _%e149869149893%_)))
                          (let ((_%hd149880149958%_ (##car _%e149879149955%_))
                                (_%tl149881149960%_ (##cdr _%e149879149955%_)))
                            (if (eq? (gx#stx-e _%hd149880149958%_) 'namespace:)
                                (if (gx#stx-pair? _%tl149881149960%_)
                                    (let ((_%e149882149963%_
                                           (gx#syntax-e _%tl149881149960%_)))
                                      (let ((_%hd149883149966%_
                                             (##car _%e149882149963%_))
                                            (_%tl149884149968%_
                                             (##cdr _%e149882149963%_)))
                                        (let* ((_%ns149971%_
                                                _%hd149883149966%_)
                                               (_%rest149973%_
                                                _%tl149884149968%_)
                                               (_%ns149979%_
                                                (if (gx#identifier?
                                                     _%ns149971%_)
                                                    (symbol->string
                                                     (gx#stx-e _%ns149971%_))
                                                    (if (gx#stx-string?
                                                         _%ns149971%_)
                                                        (gx#stx-e _%ns149971%_)
                                                        (if (gx#stx-false?
                                                             _%ns149971%_)
                                                            '#!void
                                                            (gx#raise-syntax-error
                                                             'import
                                                             '"Bad syntax; illegal namespace"
                                                             _%ns149971%_))))))
                                          (_%lp149863%_
                                           _%rest149973%_
                                           _%pre149866%_
                                           _%ns149979%_
                                           _%pkg149868%_))))
                                    (_%E149878149951%_))
                                (_%E149878149951%_))))
                        (_%E149878149951%_))))
                 (_%E149870150005%_
                  (lambda ()
                    (if (gx#stx-pair? _%e149869149893%_)
                        (let ((_%e149872149985%_
                               (gx#syntax-e _%e149869149893%_)))
                          (let ((_%hd149873149988%_ (##car _%e149872149985%_))
                                (_%tl149874149990%_ (##cdr _%e149872149985%_)))
                            (if (eq? (gx#stx-e _%hd149873149988%_) 'prelude:)
                                (if (gx#stx-pair? _%tl149874149990%_)
                                    (let ((_%e149875149993%_
                                           (gx#syntax-e _%tl149874149990%_)))
                                      (let ((_%hd149876149996%_
                                             (##car _%e149875149993%_))
                                            (_%tl149877149998%_
                                             (##cdr _%e149875149993%_)))
                                        (let* ((_%prelude150001%_
                                                _%hd149876149996%_)
                                               (_%rest150003%_
                                                _%tl149877149998%_))
                                          (_%lp149863%_
                                           _%rest150003%_
                                           _%prelude150001%_
                                           _%ns149867%_
                                           _%pkg149868%_))))
                                    (_%E149871149981%_))
                                (_%E149871149981%_))))
                        (_%E149871149981%_)))))
            (_%E149870150005%_)))))
    (define gx#core-read-module/lang
      (lambda (_%path149682%_)
        (letrec ((_%default-read-module-body149684%_
                  (lambda (_%inp149853%_)
                    (let _%lp149855%_ ((_%body149857%_ '()))
                      (let ((_%next149859%_ (read-syntax__% _%inp149853%_)))
                        (if (eof-object? _%next149859%_)
                            (reverse _%body149857%_)
                            (_%lp149855%_
                             (cons _%next149859%_ _%body149857%_)))))))
                 (_%read-body149685%_
                  (lambda (_%inp149770%_
                           _%pre149771%_
                           _%ns149772%_
                           _%pkg149773%_
                           _%args149774%_)
                    (let ((_g151254_
                           (if _%pkg149773%_
                               (values _%pre149771%_
                                       _%ns149772%_
                                       _%pkg149773%_)
                               (gx#core-read-module-package
                                _%path149682%_
                                _%pre149771%_
                                _%ns149772%_))))
                      (begin
                        (let ((_g151255_
                               (if (##values? _g151254_)
                                   (##values-length _g151254_)
                                   1)))
                          (if (not (##fx= _g151255_ 3))
                              (error "Context expects 3 values" _g151255_)))
                        (let ((_%pre149776%_ (##values-ref _g151254_ 0))
                              (_%ns149777%_ (##values-ref _g151254_ 1))
                              (_%pkg149778%_ (##values-ref _g151254_ 2)))
                          (let* ((_%prelude149780%_
                                  (gx#import-module__0 _%pre149776%_))
                                 (_%read-module-body149835%_
                                  (let ((_%$e149826%_
                                         (__find (lambda (_%e149781149783%_)
                                                   (let* ((_%e149781149785149795%_
                                                           _%e149781149783%_)
                                                          (_%else149787149803%_
                                                           (lambda () '#f))
                                                          (_%K149789149807%_
                                                           (lambda () '#t)))
                                                     (if (##structure-direct-instance-of?
                                                          _%e149781149785149795%_
                                                          'gx#module-export::t)
                                                         (let* ((_%e149790149810%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##unchecked-structure-ref
                          _%e149781149785149795%_
                          '1
                          '#f
                          '#f))
                        (_%e149791149813%_
                         (##unchecked-structure-ref
                          _%e149781149785149795%_
                          '2
                          '#f
                          '#f))
                        (_%e149792149816%_
                         (##unchecked-structure-ref
                          _%e149781149785149795%_
                          '3
                          '#f
                          '#f)))
                   (if (##eq? _%e149792149816%_ '1)
                       (let ((_%e149793149819%_
                              (##unchecked-structure-ref
                               _%e149781149785149795%_
                               '4
                               '#f
                               '#f)))
                         (if ((lambda (_%g149821149823%_)
                                (eq? _%g149821149823%_ 'read-module-body))
                              _%e149793149819%_)
                             (_%K149789149807%_)
                             (_%else149787149803%_)))
                       (_%else149787149803%_)))
                 (_%else149787149803%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (##unchecked-structure-ref
                                                  _%prelude149780%_
                                                  '9
                                                  '#f
                                                  '#f))))
                                    (if _%$e149826%_
                                        ((lambda (_%xport149829%_)
                                           (let ((_%proc149832%_
                                                  (__with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _%xport149829%_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _%proc149832%_)
                                                 _%proc149832%_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _%path149682%_
                                                  _%pre149776%_
                                                  _%proc149832%_))))
                                         _%$e149826%_)
                                        _%default-read-module-body149684%_)))
                                 (_%path-id149837%_
                                  (gx#core-module-path->namespace
                                   _%path149682%_))
                                 (_%pkg-id149839%_
                                  (if _%pkg149778%_
                                      (##string-append
                                       _%pkg149778%_
                                       '"/"
                                       _%path-id149837%_)
                                      _%path-id149837%_))
                                 (_%module-id149841%_
                                  (##string->symbol _%pkg-id149839%_))
                                 (_%module-ns149846%_
                                  (let ((_%$e149843%_ _%ns149777%_))
                                    (if _%$e149843%_
                                        _%$e149843%_
                                        _%pkg-id149839%_)))
                                 (_%body149850%_
                                  (call-with-parameters__1
                                   (lambda ()
                                     (call-with-parameters__1
                                      (lambda ()
                                        (_%read-module-body149835%_
                                         _%inp149770%_))
                                      gx#current-module-reader-args
                                      _%args149774%_))
                                   gx#current-module-reader-path
                                   _%path149682%_)))
                            (values _%prelude149780%_
                                    _%module-id149841%_
                                    _%module-ns149846%_
                                    _%body149850%_)))))))
                 (_%string-e149686%_
                  (lambda (_%obj149764%_ _%what149765%_)
                    (if (string? _%obj149764%_)
                        _%obj149764%_
                        (if (symbol? _%obj149764%_)
                            (##symbol->string _%obj149764%_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _%what149765%_)
                             _%path149682%_
                             _%obj149764%_)))))
                 (_%read-lang-args149687%_
                  (lambda (_%inp149719%_ _%args149720%_)
                    (let* ((_%args149721149729%_ _%args149720%_)
                           (_%else149723149737%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _%path149682%_)))
                           (_%K149725149752%_
                            (lambda (_%args149740%_ _%prelude149741%_)
                              (let* ((_%pkg149743%_
                                      (pgetq__0 'package: _%args149740%_))
                                     (_%pkg149745%_
                                      (if _%pkg149743%_
                                          (_%string-e149686%_
                                           _%pkg149743%_
                                           '"package")
                                          '#f))
                                     (_%ns149747%_
                                      (pgetq__0 'namespace: _%args149740%_))
                                     (_%ns149749%_
                                      (if _%ns149747%_
                                          (_%string-e149686%_
                                           _%ns149747%_
                                           '"namespace")
                                          '#f)))
                                (_%read-body149685%_
                                 _%inp149719%_
                                 _%prelude149741%_
                                 _%ns149749%_
                                 _%pkg149745%_
                                 _%args149740%_)))))
                      (if (pair? _%args149721149729%_)
                          (let ((_%hd149726149755%_
                                 (##car _%args149721149729%_))
                                (_%tl149727149757%_
                                 (##cdr _%args149721149729%_)))
                            (let* ((_%prelude149760%_ _%hd149726149755%_)
                                   (_%args149762%_ _%tl149727149757%_))
                              (_%K149725149752%_
                               _%args149762%_
                               _%prelude149760%_)))
                          (_%else149723149737%_)))))
                 (_%read-lang149688%_
                  (lambda (_%inp149693%_)
                    (let* ((_%head149695%_ (read-line _%inp149693%_))
                           (_%$e149697%_
                            (string-index__0 _%head149695%_ '#\space)))
                      (if _%$e149697%_
                          ((lambda (_%ix149700%_)
                             (let ((_%lang149702%_
                                    (substring
                                     _%head149695%_
                                     '0
                                     _%ix149700%_)))
                               (if (equal? _%lang149702%_ '"#lang")
                                   (let* ((_%rest149704%_
                                           (substring
                                            _%head149695%_
                                            (##fx+ _%ix149700%_ '1)
                                            (string-length _%head149695%_)))
                                          (_%args149715%_
                                           (__with-catch
                                            (lambda (_%g149705149707%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _%path149682%_
                                               _%g149705149707%_))
                                            (lambda ()
                                              (call-with-input-string
                                               _%rest149704%_
                                               (lambda (_%g149710149712%_)
                                                 (read-all
                                                  _%g149710149712%_
                                                  read)))))))
                                     (_%read-lang-args149687%_
                                      _%inp149693%_
                                      _%args149715%_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _%path149682%_))))
                           _%$e149697%_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _%path149682%_)))))
                 (_%read-e149689%_
                  (lambda (_%inp149691%_)
                    (if (eq? (peek-char _%inp149691%_) '#\#)
                        (_%read-lang149688%_ _%inp149691%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _%path149682%_)))))
          (gx#call-with-input-source-file _%path149682%_ _%read-e149689%_))))
    (define gx#core-read-module-package
      (lambda (_%path149630%_ _%pre149631%_ _%ns149632%_)
        (letrec ((_%string-e149634%_
                  (lambda (_%e149677%_)
                    (if (symbol? _%e149677%_)
                        (##symbol->string _%e149677%_)
                        (if (string? _%e149677%_)
                            _%e149677%_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%e149677%_))))))
          (let _%lp149636%_ ((_%dir149638%_ (path-directory _%path149630%_))
                             (_%pkg-path149639%_ '()))
            (let ((_%gerbil.pkg149641%_
                   (path-expand '"gerbil.pkg" _%dir149638%_)))
              (if (##file-exists? _%gerbil.pkg149641%_)
                  (let ((_%plist149643%_
                         (gx#core-library-package-plist__% _%dir149638%_ '#t)))
                    (if (null? _%plist149643%_)
                        (let ((_%pkg149646%_
                               (if (null? _%pkg-path149639%_)
                                   '#f
                                   (string-join _%pkg-path149639%_ '"/"))))
                          (values _%pre149631%_ _%ns149632%_ _%pkg149646%_))
                        (if (list? _%plist149643%_)
                            (let* ((_%root149649%_
                                    (pgetq__0 'package: _%plist149643%_))
                                   (_%pkg149653%_
                                    (let ((_%pkg-path149651%_
                                           (if _%root149649%_
                                               (cons (_%string-e149634%_
                                                      _%root149649%_)
                                                     _%pkg-path149639%_)
                                               _%pkg-path149639%_)))
                                      (if (null? _%pkg-path149651%_)
                                          '#f
                                          (string-join
                                           _%pkg-path149651%_
                                           '"/"))))
                                   (_%ns149660%_
                                    (let ((_%ns149658%_
                                           (let ((_%$e149655%_ _%ns149632%_))
                                             (if _%$e149655%_
                                                 _%$e149655%_
                                                 (pgetq__0
                                                  'namespace:
                                                  _%plist149643%_)))))
                                      (if _%ns149658%_
                                          (_%string-e149634%_ _%ns149658%_)
                                          '#f)))
                                   (_%pre149665%_
                                    (let ((_%$e149662%_ _%pre149631%_))
                                      (if _%$e149662%_
                                          _%$e149662%_
                                          (pgetq__0
                                           'prelude:
                                           _%plist149643%_)))))
                              (values _%pre149665%_
                                      _%ns149660%_
                                      _%pkg149653%_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%plist149643%_))))
                  (let ((_%dir*149669%_
                         (path-strip-trailing-directory-separator
                          _%dir149638%_)))
                    (if (or (__string-empty? _%dir*149669%_)
                            (equal? _%dir149638%_ _%dir*149669%_))
                        (values _%pre149631%_ _%ns149632%_ '#f)
                        (let ((_%xpath149674%_
                               (path-strip-directory _%dir*149669%_))
                              (_%xdir149675%_ (path-directory _%dir*149669%_)))
                          (_%lp149636%_
                           _%xdir149675%_
                           (cons _%xpath149674%_ _%pkg-path149639%_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_%path149628%_)
        (path-strip-extension (path-strip-directory _%path149628%_))))
    (define gx#core-module-path->id
      (lambda (_%path149626%_)
        (##string->symbol (gx#core-module-path->namespace _%path149626%_))))
    (define gx#core-resolve-module-path__%
      (lambda (_%stx-path149605%_ _%rel149606%_)
        (let* ((_%path149608%_ (gx#stx-e _%stx-path149605%_))
               (_%path149610%_
                (if (__string-empty? (path-extension _%path149608%_))
                    (##string-append _%path149608%_ '".ss")
                    _%path149608%_)))
          (gx#core-resolve-path__%
           _%path149610%_
           (let ((_%$e149613%_ (gx#stx-source _%stx-path149605%_)))
             (if _%$e149613%_ _%$e149613%_ _%rel149606%_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_%stx-path149619%_)
        (let ((_%rel149621%_ '#f))
          (gx#core-resolve-module-path__% _%stx-path149619%_ _%rel149621%_))))
    (define gx#core-resolve-module-path
      (lambda _g151256_
        (let ((_g151257_ (##length _g151256_)))
          (cond ((##fx= _g151257_ 1)
                 (apply gx#core-resolve-module-path__0 _g151256_))
                ((##fx= _g151257_ 2)
                 (apply gx#core-resolve-module-path__% _g151256_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g151256_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_%libpath149490%_)
        (let* ((_%spath149492%_ (symbol->string (gx#stx-e _%libpath149490%_)))
               (_%spath149494%_
                (substring
                 _%spath149492%_
                 '1
                 (##string-length _%spath149492%_)))
               (_%ext149496%_ (path-extension _%spath149494%_))
               (_%ssi149498%_
                (if (__string-empty? _%ext149496%_)
                    (##string-append _%spath149494%_ '".ssi")
                    (##string-append
                     (path-strip-extension _%spath149494%_)
                     '".ssi")))
               (_%srcs149502%_
                (if (__string-empty? _%ext149496%_)
                    (##map (lambda (_%ext149500%_)
                             (string-append _%spath149494%_ _%ext149500%_))
                           '(".ss" ".sld" ".scm"))
                    (cons _%spath149494%_ '()))))
          (let _%lp149505%_ ((_%rest149507%_ (load-path)))
            (let* ((_%rest149508149517%_ _%rest149507%_)
                   (_%E149511149521%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rest149508149517%_
                             '([dir . rest])
                             '([]))
                      '#!void)))
              (let ((_%K149513149592%_
                     (lambda (_%rest149532%_ _%dir149533%_)
                       (letrec ((_%resolve149535%_
                                 (lambda (_%ssi149548%_ _%srcs149549%_)
                                   (let ((_%compiled-path149551%_
                                          (path-expand
                                           _%ssi149548%_
                                           _%dir149533%_)))
                                     (if (##file-exists?
                                          _%compiled-path149551%_)
                                         (path-normalize
                                          _%compiled-path149551%_)
                                         (let _%lpr149553%_ ((_%rest-src149555%_
                                                              _%srcs149549%_))
                                           (let* ((_%rest-src149556149564%_
                                                   _%rest-src149555%_)
                                                  (_%else149558149572%_
                                                   (lambda ()
                                                     (_%lp149505%_
                                                      _%rest149532%_)))
                                                  (_%K149560149580%_
                                                   (lambda (_%rest-src149575%_
                                                            _%src149576%_)
                                                     (let ((_%src-path149578%_
                                                            (path-expand
                                                             _%src149576%_
                                                             _%dir149533%_)))
                                                       (if (##file-exists?
                                                            _%src-path149578%_)
                                                           (path-normalize
                                                            _%src-path149578%_)
                                                           (_%lpr149553%_
                                                            _%rest-src149575%_))))))
                                             (if (pair? _%rest-src149556149564%_)
                                                 (let ((_%hd149561149583%_
                                                        (##car _%rest-src149556149564%_))
                                                       (_%tl149562149585%_
                                                        (##cdr _%rest-src149556149564%_)))
                                                   (let* ((_%src149588%_
                                                           _%hd149561149583%_)
                                                          (_%rest-src149590%_
                                                           _%tl149562149585%_))
                                                     (_%K149560149580%_
                                                      _%rest-src149590%_
                                                      _%src149588%_)))
                                                 (_%else149558149572%_)))))))))
                         (let ((_%$e149537%_
                                (gx#core-library-package-path-prefix
                                 _%dir149533%_)))
                           (if _%$e149537%_
                               ((lambda (_%prefix149540%_)
                                  (if (string-prefix?
                                       _%prefix149540%_
                                       _%spath149494%_)
                                      (let ((_%ssi149544%_
                                             (substring
                                              _%ssi149498%_
                                              (string-length _%prefix149540%_)
                                              (##string-length _%ssi149498%_)))
                                            (_%srcs149545%_
                                             (##map (lambda (_%src149542%_)
                                                      (substring
                                                       _%src149542%_
                                                       (string-length
                                                        _%prefix149540%_)
                                                       (string-length
                                                        _%src149542%_)))
                                                    _%srcs149502%_)))
                                        (_%resolve149535%_
                                         _%ssi149544%_
                                         _%srcs149545%_))
                                      (_%lp149505%_ _%rest149532%_)))
                                _%$e149537%_)
                               (_%resolve149535%_
                                _%ssi149498%_
                                _%srcs149502%_))))))
                    (_%K149512149526%_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"cannot find library module"
                        _%libpath149490%_))))
                (let ((_%try-match149510149529%_
                       (lambda ()
                         (if (null? _%rest149508149517%_)
                             (_%K149512149526%_)
                             (_%E149511149521%_)))))
                  (if (pair? _%rest149508149517%_)
                      (let ((_%tl149515149597%_ (##cdr _%rest149508149517%_))
                            (_%hd149514149595%_ (##car _%rest149508149517%_)))
                        (let ((_%dir149600%_ _%hd149514149595%_)
                              (_%rest149602%_ _%tl149515149597%_))
                          (_%K149513149592%_ _%rest149602%_ _%dir149600%_)))
                      (_%try-match149510149529%_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_%modpath149458%_)
        (letrec ((_%resolve149460%_
                  (lambda (_%path149481%_ _%base149482%_)
                    (let ((_%$e149484%_
                           (string-rindex__0 _%base149482%_ '#\/)))
                      (if _%$e149484%_
                          ((lambda (_%idx149487%_)
                             (gx#core-resolve-library-module-path
                              (##string->symbol
                               (string-append
                                '":"
                                (substring _%base149482%_ '0 _%idx149487%_)
                                '"/"
                                _%path149481%_))))
                           _%$e149484%_)
                          (gx#core-resolve-library-module-path
                           (##string->symbol
                            (string-append '":" _%path149481%_))))))))
          (let ((_%spath149462%_ (symbol->string (gx#stx-e _%modpath149458%_)))
                (_%mod149463%_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _%mod149463%_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"cannot resolve relative module path; not in module context"
                 _%modpath149458%_))
            (let ((_%mpath149465%_
                   (symbol->string
                    (##structure-ref
                     _%mod149463%_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _%lp149467%_ ((_%spath149469%_ _%spath149462%_)
                                 (_%mpath149470%_ _%mpath149465%_))
                (if (string-prefix? '"../" _%spath149469%_)
                    (let ((_%$e149473%_
                           (string-rindex__0 _%mpath149470%_ '#\/)))
                      (if _%$e149473%_
                          ((lambda (_%idx149476%_)
                             (_%lp149467%_
                              (substring
                               _%spath149469%_
                               '3
                               (string-length _%spath149469%_))
                              (substring _%mpath149470%_ '0 _%idx149476%_)))
                           _%$e149473%_)
                          (gx#raise-syntax-error
                           '#f
                           '"cannot resolve relative module path; illegal traversal"
                           _%modpath149458%_)))
                    (if (string-prefix? '"./" _%spath149469%_)
                        (_%lp149467%_
                         (substring
                          _%spath149469%_
                          '2
                          (string-length _%spath149469%_))
                         _%mpath149470%_)
                        (_%resolve149460%_
                         _%spath149469%_
                         _%mpath149470%_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_%dir149450%_)
        (let ((_%$e149452%_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _%dir149450%_))))
          (if _%$e149452%_
              ((lambda (_%pkg149455%_)
                 (##string-append (symbol->string _%pkg149455%_) '"/"))
               _%$e149452%_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_%dir149420%_ _%exists?149421%_)
        (let ((_%$e149423%_ (__hash-get gx#__module-pkg-cache _%dir149420%_)))
          (if _%$e149423%_
              _%$e149423%_
              (let* ((_%gerbil.pkg149427%_
                      (path-expand '"gerbil.pkg" _%dir149420%_))
                     (_%plist149437%_
                      (if (or _%exists?149421%_
                              (##file-exists? _%gerbil.pkg149427%_))
                          (let ((_%e149432%_
                                 (gx#call-with-input-source-file
                                  _%gerbil.pkg149427%_
                                  read)))
                            (if (eof-object? _%e149432%_)
                                '()
                                (if (list? _%e149432%_)
                                    _%e149432%_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _%gerbil.pkg149427%_
                                     _%e149432%_))))
                          '())))
                (__hash-put!
                 gx#__module-pkg-cache
                 _%dir149420%_
                 _%plist149437%_)
                _%plist149437%_)))))
    (define gx#core-library-package-plist__0
      (lambda (_%dir149443%_)
        (let ((_%exists?149445%_ '#f))
          (gx#core-library-package-plist__% _%dir149443%_ _%exists?149445%_))))
    (define gx#core-library-package-plist
      (lambda _g151258_
        (let ((_g151259_ (##length _g151258_)))
          (cond ((##fx= _g151259_ 1)
                 (apply gx#core-library-package-plist__0 _g151258_))
                ((##fx= _g151259_ 2)
                 (apply gx#core-library-package-plist__% _g151258_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g151258_))))))
    (define gx#core-library-module-path?
      (lambda (_%stx149417%_)
        (gx#core-special-module-path? _%stx149417%_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_%stx149415%_)
        (gx#core-special-module-path? _%stx149415%_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_%stx149410%_ _%char149411%_)
        (if (gx#identifier? _%stx149410%_)
            (if (interned-symbol? (gx#stx-e _%stx149410%_))
                (let ((_%str149413%_
                       (symbol->string (gx#stx-e _%stx149410%_))))
                  (if (##fx> (##string-length _%str149413%_) '1)
                      (eq? (string-ref _%str149413%_ '0) _%char149411%_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_%stx149404%_)
        (gx#core-bound-identifier?__%
         _%stx149404%_
         (lambda (_%g149405149407%_)
           (gx#expander-binding?__% _%g149405149407%_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_%stx149398%_)
        (gx#core-bound-identifier?__%
         _%stx149398%_
         (lambda (_%g149399149401%_)
           (gx#expander-binding?__% _%g149399149401%_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_%stx149385%_)
        (letrec ((_%module-prelude?149387%_
                  (lambda (_%e149393%_)
                    (let ((_%$e149395%_
                           (##structure-instance-of?
                            _%e149393%_
                            'gx#module-context::t)))
                      (if _%$e149395%_
                          _%$e149395%_
                          (##structure-instance-of?
                           _%e149393%_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _%stx149385%_
           (lambda (_%g149388149390%_)
             (gx#expander-binding?__%
              _%g149388149390%_
              _%module-prelude?149387%_))))))
    (define gx#core-bind-import!__%
      (lambda (_%in149316%_ _%ctx149317%_ _%force-weak?149318%_)
        (let* ((_%in149319149328%_ _%in149316%_)
               (_%E149321149331%_
                (lambda ()
                  (error '"No clause matching"
                         _%in149319149328%_
                         '((module-import source key phi weak?)))
                  '#!void))
               (_%K149322149344%_
                (lambda (_%weak?149334%_
                         _%phi149335%_
                         _%key149336%_
                         _%source149337%_)
                  (gx#core-bind!__%
                   _%key149336%_
                   (let ((_%e149339%_
                          (gx#core-resolve-module-export _%source149337%_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref _%e149339%_ '1 '#f '#f)
                      _%key149336%_
                      _%phi149335%_
                      _%e149339%_
                      (##unchecked-structure-ref _%source149337%_ '1 '#f '#f)
                      (let ((_%$e149341%_ _%force-weak?149318%_))
                        (if _%$e149341%_ _%$e149341%_ _%weak?149334%_))))
                   gx#core-context-rebind?
                   _%phi149335%_
                   _%ctx149317%_))))
          (if (##structure-direct-instance-of?
               _%in149319149328%_
               'gx#module-import::t)
              (let* ((_%e149323149347%_
                      (##unchecked-structure-ref
                       _%in149319149328%_
                       '1
                       '#f
                       '#f))
                     (_%source149350%_ _%e149323149347%_)
                     (_%e149324149352%_
                      (##unchecked-structure-ref
                       _%in149319149328%_
                       '2
                       '#f
                       '#f))
                     (_%key149355%_ _%e149324149352%_)
                     (_%e149325149357%_
                      (##unchecked-structure-ref
                       _%in149319149328%_
                       '3
                       '#f
                       '#f))
                     (_%phi149360%_ _%e149325149357%_)
                     (_%e149326149362%_
                      (##unchecked-structure-ref
                       _%in149319149328%_
                       '4
                       '#f
                       '#f))
                     (_%weak?149365%_ _%e149326149362%_))
                (_%K149322149344%_
                 _%weak?149365%_
                 _%phi149360%_
                 _%key149355%_
                 _%source149350%_))
              (_%E149321149331%_)))))
    (define gx#core-bind-import!__0
      (lambda (_%in149370%_)
        (let* ((_%ctx149372%_ (gx#current-expander-context))
               (_%force-weak?149374%_ '#f))
          (gx#core-bind-import!__%
           _%in149370%_
           _%ctx149372%_
           _%force-weak?149374%_))))
    (define gx#core-bind-import!__1
      (lambda (_%in149376%_ _%ctx149377%_)
        (let ((_%force-weak?149379%_ '#f))
          (gx#core-bind-import!__%
           _%in149376%_
           _%ctx149377%_
           _%force-weak?149379%_))))
    (define gx#core-bind-import!
      (lambda _g151260_
        (let ((_g151261_ (##length _g151260_)))
          (cond ((##fx= _g151261_ 1) (apply gx#core-bind-import!__0 _g151260_))
                ((##fx= _g151261_ 2) (apply gx#core-bind-import!__1 _g151260_))
                ((##fx= _g151261_ 3) (apply gx#core-bind-import!__% _g151260_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g151260_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_%in149302%_ _%ctx149303%_)
        (gx#core-bind-import!__% _%in149302%_ _%ctx149303%_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_%in149308%_)
        (let ((_%ctx149310%_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _%in149308%_ _%ctx149310%_))))
    (define gx#core-bind-weak-import!
      (lambda _g151262_
        (let ((_g151263_ (##length _g151262_)))
          (cond ((##fx= _g151263_ 1)
                 (apply gx#core-bind-weak-import!__0 _g151262_))
                ((##fx= _g151263_ 2)
                 (apply gx#core-bind-weak-import!__% _g151262_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g151262_))))))
    (define gx#core-resolve-module-export
      (lambda (_%out149195%_)
        (letrec ((_%subst149197%_
                  (lambda (_%key149242%_)
                    (let* ((_%key149243149251%_ _%key149242%_)
                           (_%else149245149259%_ (lambda () _%key149242%_))
                           (_%K149247149289%_
                            (lambda (_%mark149262%_ _%id149263%_)
                              (let* ((_%mark149264149270%_ _%mark149262%_)
                                     (_%E149266149273%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark149264149270%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K149267149281%_
                                      (lambda (_%subst149276%_)
                                        (let ((_%$e149278%_
                                               (if _%subst149276%_
                                                   (hash-get
                                                    _%subst149276%_
                                                    _%id149263%_)
                                                   '#f)))
                                          (if _%$e149278%_
                                              _%$e149278%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _%key149242%_))))))
                                (if (##structure-instance-of?
                                     _%mark149264149270%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e149268149284%_
                                            (##unchecked-structure-ref
                                             _%mark149264149270%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst149287%_ _%e149268149284%_))
                                      (_%K149267149281%_ _%subst149287%_))
                                    (_%E149266149273%_))))))
                      (if (pair? _%key149243149251%_)
                          (let ((_%hd149248149292%_
                                 (##car _%key149243149251%_))
                                (_%tl149249149294%_
                                 (##cdr _%key149243149251%_)))
                            (let* ((_%id149297%_ _%hd149248149292%_)
                                   (_%mark149299%_ _%tl149249149294%_))
                              (_%K149247149289%_ _%mark149299%_ _%id149297%_)))
                          (_%else149245149259%_))))))
          (let* ((_%out149198149208%_ _%out149195%_)
                 (_%E149200149211%_
                  (lambda ()
                    (error '"No clause matching"
                           _%out149198149208%_
                           '((module-export ctx key phi _ _)))
                    '#!void))
                 (_%K149201149218%_
                  (lambda (_%phi149214%_ _%key149215%_ _%ctx149216%_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _%ctx149216%_ _%phi149214%_)
                     (_%subst149197%_ _%key149215%_)))))
            (if (##structure-direct-instance-of?
                 _%out149198149208%_
                 'gx#module-export::t)
                (let* ((_%e149202149221%_
                        (##unchecked-structure-ref
                         _%out149198149208%_
                         '1
                         '#f
                         '#f))
                       (_%ctx149224%_ _%e149202149221%_)
                       (_%e149203149226%_
                        (##unchecked-structure-ref
                         _%out149198149208%_
                         '2
                         '#f
                         '#f))
                       (_%key149229%_ _%e149203149226%_)
                       (_%e149204149231%_
                        (##unchecked-structure-ref
                         _%out149198149208%_
                         '3
                         '#f
                         '#f))
                       (_%phi149234%_ _%e149204149231%_)
                       (_%e149205149236%_
                        (##unchecked-structure-ref
                         _%out149198149208%_
                         '4
                         '#f
                         '#f))
                       (_%e149206149239%_
                        (##unchecked-structure-ref
                         _%out149198149208%_
                         '5
                         '#f
                         '#f)))
                  (_%K149201149218%_
                   _%phi149234%_
                   _%key149229%_
                   _%ctx149224%_))
                (_%E149200149211%_))))))
    (define gx#core-module-export->import__%
      (lambda (_%out149121%_ _%rename149122%_ _%dphi149123%_)
        (let* ((_%out149124149134%_ _%out149121%_)
               (_%E149126149137%_
                (lambda ()
                  (error '"No clause matching"
                         _%out149124149134%_
                         '((module-export ctx key phi name weak?)))
                  '#!void))
               (_%K149127149149%_
                (lambda (_%weak?149140%_
                         _%name149141%_
                         _%phi149142%_
                         _%key149143%_
                         _%ctx149144%_)
                  (##structure
                   gx#module-import::t
                   _%out149121%_
                   (let ((_%$e149146%_ _%rename149122%_))
                     (if _%$e149146%_ _%$e149146%_ _%name149141%_))
                   (fx+ _%phi149142%_ _%dphi149123%_)
                   _%weak?149140%_))))
          (if (##structure-direct-instance-of?
               _%out149124149134%_
               'gx#module-export::t)
              (let* ((_%e149128149152%_
                      (##unchecked-structure-ref
                       _%out149124149134%_
                       '1
                       '#f
                       '#f))
                     (_%ctx149155%_ _%e149128149152%_)
                     (_%e149129149157%_
                      (##unchecked-structure-ref
                       _%out149124149134%_
                       '2
                       '#f
                       '#f))
                     (_%key149160%_ _%e149129149157%_)
                     (_%e149130149162%_
                      (##unchecked-structure-ref
                       _%out149124149134%_
                       '3
                       '#f
                       '#f))
                     (_%phi149165%_ _%e149130149162%_)
                     (_%e149131149167%_
                      (##unchecked-structure-ref
                       _%out149124149134%_
                       '4
                       '#f
                       '#f))
                     (_%name149170%_ _%e149131149167%_)
                     (_%e149132149172%_
                      (##unchecked-structure-ref
                       _%out149124149134%_
                       '5
                       '#f
                       '#f))
                     (_%weak?149175%_ _%e149132149172%_))
                (_%K149127149149%_
                 _%weak?149175%_
                 _%name149170%_
                 _%phi149165%_
                 _%key149160%_
                 _%ctx149155%_))
              (_%E149126149137%_)))))
    (define gx#core-module-export->import__0
      (lambda (_%out149180%_)
        (let* ((_%rename149182%_ '#f) (_%dphi149184%_ '0))
          (gx#core-module-export->import__%
           _%out149180%_
           _%rename149182%_
           _%dphi149184%_))))
    (define gx#core-module-export->import__1
      (lambda (_%out149186%_ _%rename149187%_)
        (let ((_%dphi149189%_ '0))
          (gx#core-module-export->import__%
           _%out149186%_
           _%rename149187%_
           _%dphi149189%_))))
    (define gx#core-module-export->import
      (lambda _g151264_
        (let ((_g151265_ (##length _g151264_)))
          (cond ((##fx= _g151265_ 1)
                 (apply gx#core-module-export->import__0 _g151264_))
                ((##fx= _g151265_ 2)
                 (apply gx#core-module-export->import__1 _g151264_))
                ((##fx= _g151265_ 3)
                 (apply gx#core-module-export->import__% _g151264_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g151264_))))))
    (define gx#core-expand-module%
      (lambda (_%stx149020%_)
        (letrec ((_%make-context149022%_
                  (lambda (_%id149099%_)
                    (let* ((_%super149101%_ (gx#current-expander-context))
                           (_%bind-id149103%_ (gx#stx-e _%id149099%_))
                           (_%mod-id149105%_
                            (if (##structure-instance-of?
                                 _%super149101%_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##unchecked-structure-ref
                                  _%super149101%_
                                  '1
                                  '#f
                                  '#f)
                                 '"~"
                                 _%bind-id149103%_)
                                _%bind-id149103%_))
                           (_%ns149107%_ (symbol->string _%mod-id149105%_))
                           (_%path149117%_
                            (if (##structure-instance-of?
                                 _%super149101%_
                                 'gx#module-context::t)
                                (let ((_%path149109%_
                                       (##unchecked-structure-ref
                                        _%super149101%_
                                        '7
                                        '#f
                                        '#f)))
                                  (if (or (pair? _%path149109%_)
                                          (null? _%path149109%_))
                                      (cons _%bind-id149103%_ _%path149109%_)
                                      (if (not _%path149109%_)
                                          _%bind-id149103%_
                                          (cons _%bind-id149103%_
                                                (cons _%path149109%_ '())))))
                                _%bind-id149103%_))
                           (__obj151241
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
                       __obj151241
                       _%mod-id149105%_
                       _%super149101%_
                       _%ns149107%_
                       _%path149117%_)
                      __obj151241)))
                 (_%valid-module-id?149023%_
                  (lambda (_%id149074%_)
                    (let* ((_%str149076%_ (symbol->string _%id149074%_))
                           (_%len149078%_ (##string-length _%str149076%_)))
                      (if (##fx>= _%len149078%_ '1)
                          (let _%loop149081%_ ((_%index149083%_
                                                (##fx- (##string-length
                                                        _%str149076%_)
                                                       '1)))
                            (if (##fx>= _%index149083%_ '0)
                                (let ((_%c149085%_
                                       (string-ref
                                        _%str149076%_
                                        _%index149083%_)))
                                  (if (or (and (##char>=? _%c149085%_ '#\a)
                                               (##char<=? _%c149085%_ '#\z))
                                          (and (##char>=? _%c149085%_ '#\A)
                                               (##char<=? _%c149085%_ '#\Z))
                                          (and (##char>=? _%c149085%_ '#\0)
                                               (##char<=? _%c149085%_ '#\9))
                                          (##char=? _%c149085%_ '#\_)
                                          (##char=? _%c149085%_ '#\-))
                                      (_%loop149081%_
                                       (##fx- _%index149083%_ '1))
                                      '#f))
                                '#t))
                          '#f)))))
          (let* ((_%e149024149034%_ _%stx149020%_)
                 (_%E149026149038%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e149024149034%_)))
                 (_%E149025149070%_
                  (lambda ()
                    (if (gx#stx-pair? _%e149024149034%_)
                        (let ((_%e149027149042%_
                               (gx#syntax-e _%e149024149034%_)))
                          (let ((_%hd149028149045%_ (##car _%e149027149042%_))
                                (_%tl149029149047%_ (##cdr _%e149027149042%_)))
                            (if (gx#stx-pair? _%tl149029149047%_)
                                (let ((_%e149030149050%_
                                       (gx#syntax-e _%tl149029149047%_)))
                                  (let ((_%hd149031149053%_
                                         (##car _%e149030149050%_))
                                        (_%tl149032149055%_
                                         (##cdr _%e149030149050%_)))
                                    (let* ((_%id149058%_ _%hd149031149053%_)
                                           (_%body149060%_ _%tl149032149055%_))
                                      (if (and (gx#identifier? _%id149058%_)
                                               (gx#stx-list? _%body149060%_))
                                          (if (_%valid-module-id?149023%_
                                               (gx#stx-e
                                                (gx#datum->syntax__0 '#f 'id)))
                                              (let* ((_%ctx149062%_
                                                      (_%make-context149022%_
                                                       _%id149058%_))
                                                     (_%body149064%_
                                                      (gx#core-expand-module-begin
                                                       _%body149060%_
                                                       _%ctx149062%_))
                                                     (_%body149066%_
                                                      (gx#core-quote-syntax__1
                                                       (gx#core-cons
                                                        '%#begin
                                                        _%body149064%_)
                                                       (gx#stx-source
                                                        _%stx149020%_))))
                                                (##unchecked-structure-set!
                                                 _%ctx149062%_
                                                 (__make-atomic-promise
                                                  (lambda ()
                                                    (gx#eval-syntax*
                                                     _%body149066%_)))
                                                 '10
                                                 '#f
                                                 '#f)
                                                (##unchecked-structure-set!
                                                 _%ctx149062%_
                                                 _%body149066%_
                                                 '11
                                                 '#f
                                                 '#f)
                                                (gx#core-bind-syntax!__0
                                                 _%id149058%_
                                                 _%ctx149062%_)
                                                (gx#core-quote-syntax__1
                                                 (gx#core-list
                                                  '%#module
                                                  (gx#core-quote-syntax__0
                                                   _%id149058%_)
                                                  _%body149066%_)
                                                 (gx#stx-source
                                                  _%stx149020%_)))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"invalid module id; allowed characters are A-Z,a-z,0-9,_,-"
                                               _%stx149020%_
                                               (gx#datum->syntax__0 '#f 'id)))
                                          (_%E149026149038%_)))))
                                (_%E149026149038%_))))
                        (_%E149026149038%_)))))
            (_%E149025149070%_)))))
    (define gx#core-expand-module-begin
      (lambda (_%body148985%_ _%ctx148986%_)
        (call-with-parameters__1
         (lambda ()
           (call-with-parameters__1
            (lambda ()
              (gx#core-bind-feature!__1 'gerbil-module '#t)
              (let* ((_%stx148990%_
                      (gx#core-expand-head
                       (cons '%%begin-module _%body148985%_)))
                     (_%e148991148998%_ _%stx148990%_)
                     (_%E148993149002%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module body expansion"
                         _%stx148990%_)))
                     (_%E148992149016%_
                      (lambda ()
                        (if (gx#stx-pair? _%e148991148998%_)
                            (let ((_%e148994149006%_
                                   (gx#syntax-e _%e148991148998%_)))
                              (let ((_%hd148995149009%_
                                     (##car _%e148994149006%_))
                                    (_%tl148996149011%_
                                     (##cdr _%e148994149006%_)))
                                (if (and (gx#identifier? _%hd148995149009%_)
                                         (gx#core-identifier=?
                                          _%hd148995149009%_
                                          '%#begin-module))
                                    (let ((_%body149014%_ _%tl148996149011%_))
                                      (if (gx#sealed-syntax? _%stx148990%_)
                                          _%body149014%_
                                          (gx#core-expand-module-body
                                           _%body149014%_)))
                                    (_%E148993149002%_))))
                            (_%E148993149002%_)))))
                (_%E148992149016%_)))
            gx#current-expander-phi
            '0))
         gx#current-expander-context
         _%ctx148986%_)))
    (define gx#core-expand-module-body
      (lambda (_%body148781%_)
        (letrec ((_%expand-special148783%_
                  (lambda (_%hd148912%_ _%K148913%_ _%rest148914%_ _%r148915%_)
                    (let* ((_%e148916148933%_ _%hd148912%_)
                           (_%E148928148937%_
                            (lambda ()
                              (_%K148913%_
                               _%rest148914%_
                               (cons (gx#core-expand-top _%hd148912%_)
                                     _%r148915%_))))
                           (_%E148918148949%_
                            (lambda ()
                              (if (gx#stx-pair? _%e148916148933%_)
                                  (let ((_%e148929148941%_
                                         (gx#syntax-e _%e148916148933%_)))
                                    (let ((_%hd148930148944%_
                                           (##car _%e148929148941%_))
                                          (_%tl148931148946%_
                                           (##cdr _%e148929148941%_)))
                                      (if (and (gx#identifier?
                                                _%hd148930148944%_)
                                               (gx#core-identifier=?
                                                _%hd148930148944%_
                                                '%#export))
                                          (_%K148913%_
                                           _%rest148914%_
                                           (cons _%hd148912%_ _%r148915%_))
                                          (_%E148928148937%_))))
                                  (_%E148928148937%_))))
                           (_%E148917148981%_
                            (lambda ()
                              (if (gx#stx-pair? _%e148916148933%_)
                                  (let ((_%e148919148953%_
                                         (gx#syntax-e _%e148916148933%_)))
                                    (let ((_%hd148920148956%_
                                           (##car _%e148919148953%_))
                                          (_%tl148921148958%_
                                           (##cdr _%e148919148953%_)))
                                      (if (and (gx#identifier?
                                                _%hd148920148956%_)
                                               (gx#core-identifier=?
                                                _%hd148920148956%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl148921148958%_)
                                              (let ((_%e148922148961%_
                                                     (gx#syntax-e
                                                      _%tl148921148958%_)))
                                                (let ((_%hd148923148964%_
                                                       (##car _%e148922148961%_))
                                                      (_%tl148924148966%_
                                                       (##cdr _%e148922148961%_)))
                                                  (let ((_%hd-bind148969%_
                                                         _%hd148923148964%_))
                                                    (if (gx#stx-pair?
                                                         _%tl148924148966%_)
                                                        (let ((_%e148925148971%_
                                                               (gx#syntax-e
                                                                _%tl148924148966%_)))
                                                          (let ((_%hd148926148974%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e148925148971%_))
                        (_%tl148927148976%_ (##cdr _%e148925148971%_)))
                    (let ((_%expr148979%_ _%hd148926148974%_))
                      (if (gx#stx-null? _%tl148927148976%_)
                          (if (gx#core-bind-values? _%hd-bind148969%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind148969%_)
                                (_%K148913%_
                                 _%rest148914%_
                                 (cons _%hd148912%_ _%r148915%_)))
                              (_%E148918148949%_))
                          (_%E148918148949%_)))))
                (_%E148918148949%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E148918148949%_))
                                          (_%E148918148949%_))))
                                  (_%E148918148949%_)))))
                      (_%E148917148981%_))))
                 (_%expand-body148784%_
                  (lambda (_%rbody148786%_)
                    (let _%lp148788%_ ((_%rest148790%_ _%rbody148786%_)
                                       (_%body148791%_ '()))
                      (let* ((_%rest148792148800%_ _%rest148790%_)
                             (_%else148794148808%_ (lambda () _%body148791%_))
                             (_%K148796148900%_
                              (lambda (_%rest148811%_ _%hd148812%_)
                                (let* ((_%e148813148834%_ _%hd148812%_)
                                       (_%E148829148838%_
                                        (lambda ()
                                          (_%lp148788%_
                                           _%rest148811%_
                                           (cons (gx#core-expand-expression
                                                  _%hd148812%_)
                                                 _%body148791%_))))
                                       (_%E148825148852%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e148813148834%_)
                                              (let ((_%e148830148842%_
                                                     (gx#syntax-e
                                                      _%e148813148834%_)))
                                                (let ((_%hd148831148845%_
                                                       (##car _%e148830148842%_))
                                                      (_%tl148832148847%_
                                                       (##cdr _%e148830148842%_)))
                                                  (let ((_%form148850%_
                                                         _%hd148831148845%_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _%form148850%_
                                                         gx#special-form-binding?)
                                                        (_%lp148788%_
                                                         _%rest148811%_
                                                         (cons _%hd148812%_
                                                               _%body148791%_))
                                                        (_%E148829148838%_)))))
                                              (_%E148829148838%_))))
                                       (_%E148815148864%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e148813148834%_)
                                              (let ((_%e148826148856%_
                                                     (gx#syntax-e
                                                      _%e148813148834%_)))
                                                (let ((_%hd148827148859%_
                                                       (##car _%e148826148856%_))
                                                      (_%tl148828148861%_
                                                       (##cdr _%e148826148856%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd148827148859%_)
                                                           (gx#core-identifier=?
                                                            _%hd148827148859%_
                                                            '%#export))
                                                      (_%lp148788%_
                                                       _%rest148811%_
                                                       (cons (gx#core-expand-export%__0
                                                              _%hd148812%_)
                                                             _%body148791%_))
                                                      (_%E148825148852%_))))
                                              (_%E148825148852%_))))
                                       (_%E148814148896%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e148813148834%_)
                                              (let ((_%e148816148868%_
                                                     (gx#syntax-e
                                                      _%e148813148834%_)))
                                                (let ((_%hd148817148871%_
                                                       (##car _%e148816148868%_))
                                                      (_%tl148818148873%_
                                                       (##cdr _%e148816148868%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd148817148871%_)
                                                           (gx#core-identifier=?
                                                            _%hd148817148871%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl148818148873%_)
                                                          (let ((_%e148819148876%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl148818148873%_)))
                    (let ((_%hd148820148879%_ (##car _%e148819148876%_))
                          (_%tl148821148881%_ (##cdr _%e148819148876%_)))
                      (let ((_%hd-bind148884%_ _%hd148820148879%_))
                        (if (gx#stx-pair? _%tl148821148881%_)
                            (let ((_%e148822148886%_
                                   (gx#syntax-e _%tl148821148881%_)))
                              (let ((_%hd148823148889%_
                                     (##car _%e148822148886%_))
                                    (_%tl148824148891%_
                                     (##cdr _%e148822148886%_)))
                                (let ((_%expr148894%_ _%hd148823148889%_))
                                  (if (gx#stx-null? _%tl148824148891%_)
                                      (_%lp148788%_
                                       _%rest148811%_
                                       (cons (gx#core-quote-syntax__1
                                              (gx#core-list
                                               '%#define-values
                                               (gx#core-quote-bind-values
                                                _%hd-bind148884%_)
                                               (gx#core-expand-expression
                                                _%expr148894%_))
                                              (gx#stx-source _%hd148812%_))
                                             _%body148791%_))
                                      (_%E148815148864%_)))))
                            (_%E148815148864%_)))))
                  (_%E148815148864%_))
              (_%E148815148864%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E148815148864%_)))))
                                  (_%E148814148896%_)))))
                        (if (pair? _%rest148792148800%_)
                            (let ((_%hd148797148903%_
                                   (##car _%rest148792148800%_))
                                  (_%tl148798148905%_
                                   (##cdr _%rest148792148800%_)))
                              (let* ((_%hd148908%_ _%hd148797148903%_)
                                     (_%rest148910%_ _%tl148798148905%_))
                                (_%K148796148900%_
                                 _%rest148910%_
                                 _%hd148908%_)))
                            (_%else148794148808%_)))))))
          (_%expand-body148784%_
           (gx#core-expand-block__%
            (cons '%#begin-module _%body148781%_)
            _%expand-special148783%_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_%stx148622%_
               _%expanded?148623%_
               _%method148624%_
               _%current-phi148625%_
               _%expand1148626%_)
        (letrec ((_%K148628%_
                  (lambda (_%rest148748%_ _%r148749%_)
                    (let* ((_%e148750148757%_ _%rest148748%_)
                           (_%E148752148761%_ (lambda () _%r148749%_))
                           (_%E148751148777%_
                            (lambda ()
                              (if (gx#stx-pair? _%e148750148757%_)
                                  (let ((_%e148753148765%_
                                         (gx#syntax-e _%e148750148757%_)))
                                    (let ((_%hd148754148768%_
                                           (##car _%e148753148765%_))
                                          (_%tl148755148770%_
                                           (##cdr _%e148753148765%_)))
                                      (let* ((_%hd148773%_ _%hd148754148768%_)
                                             (_%rest148775%_
                                              _%tl148755148770%_))
                                        (_%step148629%_
                                         _%hd148773%_
                                         _%rest148775%_
                                         _%r148749%_))))
                                  (_%E148752148761%_)))))
                      (_%E148751148777%_))))
                 (_%step148629%_
                  (lambda (_%hd148662%_ _%rest148663%_ _%r148664%_)
                    (let* ((_%e148665148683%_ _%hd148662%_)
                           (_%E148678148687%_
                            (lambda ()
                              (if (_%expanded?148623%_ (gx#stx-e _%hd148662%_))
                                  (_%K148628%_
                                   _%rest148663%_
                                   (cons (gx#stx-e _%hd148662%_) _%r148664%_))
                                  (_%expand1148626%_
                                   _%hd148662%_
                                   _%K148628%_
                                   _%rest148663%_
                                   _%r148664%_))))
                           (_%E148674148703%_
                            (lambda ()
                              (if (gx#stx-pair? _%e148665148683%_)
                                  (let ((_%e148679148691%_
                                         (gx#syntax-e _%e148665148683%_)))
                                    (let ((_%hd148680148694%_
                                           (##car _%e148679148691%_))
                                          (_%tl148681148696%_
                                           (##cdr _%e148679148691%_)))
                                      (let* ((_%macro148699%_
                                              _%hd148680148694%_)
                                             (_%body148701%_
                                              _%tl148681148696%_))
                                        (if (gx#core-bound-identifier?__%
                                             _%macro148699%_
                                             gx#syntax-binding?)
                                            (_%K148628%_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _%macro148699%_)
                                                    _%hd148662%_
                                                    _%method148624%_)
                                                   _%rest148663%_)
                                             _%r148664%_)
                                            (_%E148678148687%_)))))
                                  (_%E148678148687%_))))
                           (_%E148667148717%_
                            (lambda ()
                              (if (gx#stx-pair? _%e148665148683%_)
                                  (let ((_%e148675148707%_
                                         (gx#syntax-e _%e148665148683%_)))
                                    (let ((_%hd148676148710%_
                                           (##car _%e148675148707%_))
                                          (_%tl148677148712%_
                                           (##cdr _%e148675148707%_)))
                                      (if (eq? (gx#stx-e _%hd148676148710%_)
                                               'begin:)
                                          (let ((_%body148715%_
                                                 _%tl148677148712%_))
                                            (_%K148628%_
                                             (gx#stx-foldr
                                              cons
                                              _%rest148663%_
                                              _%body148715%_)
                                             _%r148664%_))
                                          (_%E148674148703%_))))
                                  (_%E148674148703%_))))
                           (_%E148666148744%_
                            (lambda ()
                              (if (gx#stx-pair? _%e148665148683%_)
                                  (let ((_%e148668148721%_
                                         (gx#syntax-e _%e148665148683%_)))
                                    (let ((_%hd148669148724%_
                                           (##car _%e148668148721%_))
                                          (_%tl148670148726%_
                                           (##cdr _%e148668148721%_)))
                                      (if (eq? (gx#stx-e _%hd148669148724%_)
                                               'phi:)
                                          (if (gx#stx-pair? _%tl148670148726%_)
                                              (let ((_%e148671148729%_
                                                     (gx#syntax-e
                                                      _%tl148670148726%_)))
                                                (let ((_%hd148672148732%_
                                                       (##car _%e148671148729%_))
                                                      (_%tl148673148734%_
                                                       (##cdr _%e148671148729%_)))
                                                  (let* ((_%dphi148737%_
                                                          _%hd148672148732%_)
                                                         (_%body148739%_
                                                          _%tl148673148734%_))
                                                    (if (gx#stx-fixnum?
                                                         _%dphi148737%_)
                                                        (let ((_%rbody148742%_
                                                               (call-with-parameters__1
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%K148628%_ _%body148739%_ '()))
                        _%current-phi148625%_
                        (fx+ (gx#stx-e _%dphi148737%_)
                             (_%current-phi148625%_)))))
                  (_%K148628%_
                   _%rest148663%_
                   (__foldr1 cons _%r148664%_ _%rbody148742%_)))
                (_%E148667148717%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E148667148717%_))
                                          (_%E148667148717%_))))
                                  (_%E148667148717%_)))))
                      (_%E148666148744%_)))))
          (let* ((_%e148630148637%_ _%stx148622%_)
                 (_%E148632148641%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e148630148637%_)))
                 (_%E148631148658%_
                  (lambda ()
                    (if (gx#stx-pair? _%e148630148637%_)
                        (let ((_%e148633148645%_
                               (gx#syntax-e _%e148630148637%_)))
                          (let ((_%hd148634148648%_ (##car _%e148633148645%_))
                                (_%tl148635148650%_ (##cdr _%e148633148645%_)))
                            (let ((_%body148653%_ _%tl148635148650%_))
                              (if (_%current-phi148625%_)
                                  (_%K148628%_ _%body148653%_ '())
                                  (call-with-parameters__1
                                   (lambda () (_%K148628%_ _%body148653%_ '()))
                                   _%current-phi148625%_
                                   (gx#current-expander-phi))))))
                        (_%E148632148641%_)))))
            (_%E148631148658%_)))))
    (define gx#core-expand-import%__%
      (lambda (_%stx148276%_ _%internal-expand?148277%_)
        (letrec ((_%expand1148279%_
                  (lambda (_%hd148594%_ _%K148595%_ _%rest148596%_ _%r148597%_)
                    (if (gx#core-bound-module? _%hd148594%_)
                        (_%import1148280%_
                         (gx#syntax-local-e__0 _%hd148594%_)
                         _%K148595%_
                         _%rest148596%_
                         _%r148597%_)
                        (if (gx#core-library-module-path? _%hd148594%_)
                            (_%import1148280%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%hd148594%_))
                             _%K148595%_
                             _%rest148596%_
                             _%r148597%_)
                            (if (gx#core-library-relative-module-path?
                                 _%hd148594%_)
                                (_%import1148280%_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _%hd148594%_))
                                 _%K148595%_
                                 _%rest148596%_
                                 _%r148597%_)
                                (let ((_%e148603%_ (gx#stx-e _%hd148594%_)))
                                  (if (pair? _%e148603%_)
                                      (let ((_%$e148606%_
                                             (gx#stx-e (##car _%e148603%_))))
                                        (if (eq? 'spec: _%$e148606%_)
                                            (_%import-spec148283%_
                                             _%hd148594%_
                                             _%K148595%_
                                             _%rest148596%_
                                             _%r148597%_)
                                            (if (eq? 'in: _%$e148606%_)
                                                (_%import-submodule148281%_
                                                 _%hd148594%_
                                                 _%K148595%_
                                                 _%rest148596%_
                                                 _%r148597%_)
                                                (if (eq? 'runtime:
                                                         _%$e148606%_)
                                                    (_%import-runtime148282%_
                                                     _%hd148594%_
                                                     _%K148595%_
                                                     _%rest148596%_
                                                     _%r148597%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _%stx148276%_
                                                     _%hd148594%_)))))
                                      (if (string? _%e148603%_)
                                          (_%import1148280%_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _%hd148594%_
                                             (gx#stx-source _%stx148276%_)))
                                           _%K148595%_
                                           _%rest148596%_
                                           _%r148597%_)
                                          (if (##structure-instance-of?
                                               _%e148603%_
                                               'gx#module-context::t)
                                              (_%K148595%_
                                               _%rest148596%_
                                               (cons _%e148603%_ _%r148597%_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _%stx148276%_
                                               _%hd148594%_))))))))))
                 (_%import1148280%_
                  (lambda (_%ctx148583%_
                           _%K148584%_
                           _%rest148585%_
                           _%r148586%_)
                    (let ((_%dphi148588%_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_%K148584%_
                       _%rest148585%_
                       (cons (##structure
                              gx#import-set::t
                              _%ctx148583%_
                              _%dphi148588%_
                              (map (lambda (_%g148589148591%_)
                                     (gx#core-module-export->import__%
                                      _%g148589148591%_
                                      '#f
                                      _%dphi148588%_))
                                   (##unchecked-structure-ref
                                    _%ctx148583%_
                                    '9
                                    '#f
                                    '#f)))
                             _%r148586%_)))))
                 (_%import-submodule148281%_
                  (lambda (_%hd148550%_ _%K148551%_ _%rest148552%_ _%r148553%_)
                    (let* ((_%e148554148561%_ _%hd148550%_)
                           (_%E148556148565%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e148554148561%_)))
                           (_%E148555148579%_
                            (lambda ()
                              (if (gx#stx-pair? _%e148554148561%_)
                                  (let ((_%e148557148569%_
                                         (gx#syntax-e _%e148554148561%_)))
                                    (let ((_%hd148558148572%_
                                           (##car _%e148557148569%_))
                                          (_%tl148559148574%_
                                           (##cdr _%e148557148569%_)))
                                      (let ((_%spath148577%_
                                             _%tl148559148574%_))
                                        (_%import1148280%_
                                         (_%import-spec-source148284%_
                                          _%spath148577%_)
                                         _%K148551%_
                                         _%rest148552%_
                                         _%r148553%_))))
                                  (_%E148556148565%_)))))
                      (_%E148555148579%_))))
                 (_%import-runtime148282%_
                  (lambda (_%hd148517%_ _%K148518%_ _%rest148519%_ _%r148520%_)
                    (let* ((_%e148521148528%_ _%hd148517%_)
                           (_%E148523148532%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e148521148528%_)))
                           (_%E148522148546%_
                            (lambda ()
                              (if (gx#stx-pair? _%e148521148528%_)
                                  (let ((_%e148524148536%_
                                         (gx#syntax-e _%e148521148528%_)))
                                    (let ((_%hd148525148539%_
                                           (##car _%e148524148536%_))
                                          (_%tl148526148541%_
                                           (##cdr _%e148524148536%_)))
                                      (let ((_%spath148544%_
                                             _%tl148526148541%_))
                                        (_%K148518%_
                                         _%rest148519%_
                                         (cons (_%import-spec-source148284%_
                                                _%spath148544%_)
                                               _%r148520%_)))))
                                  (_%E148523148532%_)))))
                      (_%E148522148546%_))))
                 (_%import-spec148283%_
                  (lambda (_%hd148355%_ _%K148356%_ _%rest148357%_ _%r148358%_)
                    (let* ((_%e148359148376%_ _%hd148355%_)
                           (_%E148368148380%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e148359148376%_)))
                           (_%E148361148491%_
                            (lambda ()
                              (if (gx#stx-pair? _%e148359148376%_)
                                  (let ((_%e148369148384%_
                                         (gx#syntax-e _%e148359148376%_)))
                                    (let ((_%hd148370148387%_
                                           (##car _%e148369148384%_))
                                          (_%tl148371148389%_
                                           (##cdr _%e148369148384%_)))
                                      (if (gx#stx-pair? _%tl148371148389%_)
                                          (let ((_%e148372148392%_
                                                 (gx#syntax-e
                                                  _%tl148371148389%_)))
                                            (let ((_%hd148373148395%_
                                                   (##car _%e148372148392%_))
                                                  (_%tl148374148397%_
                                                   (##cdr _%e148372148392%_)))
                                              (let* ((_%path148400%_
                                                      _%hd148373148395%_)
                                                     (_%specs148402%_
                                                      _%tl148374148397%_))
                                                (let ((_%src-ctx148404%_
                                                       (_%import-spec-source148284%_
                                                        _%path148400%_))
                                                      (_%exports148405%_
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
                                                      (_%specs148406%_
                                                       (gx#syntax->list
                                                        _%specs148402%_)))
                                                  (for-each
                                                   (lambda (_%out148408%_)
                                                     (__hash-put!
                                                      _%exports148405%_
                                                      (cons (##unchecked-structure-ref
                                                             _%out148408%_
                                                             '3
                                                             '#f
                                                             '#f)
                                                            (##unchecked-structure-ref
                                                             _%out148408%_
                                                             '4
                                                             '#f
                                                             '#f))
                                                      _%out148408%_))
                                                   (##unchecked-structure-ref
                                                    _%src-ctx148404%_
                                                    '9
                                                    '#f
                                                    '#f))
                                                  (_%K148356%_
                                                   _%rest148357%_
                                                   (__foldl1
                                                    (lambda (_%spec148410%_
                                                             _%r148411%_)
                                                      (let* ((_%e148412148428%_
                                                              _%spec148410%_)
                                                             (_%E148414148432%_
                                                              (lambda ()
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid syntax-case clause"
                         _%e148412148428%_)))
                     (_%E148413148487%_
                      (lambda ()
                        (if (gx#stx-pair? _%e148412148428%_)
                            (let ((_%e148415148436%_
                                   (gx#syntax-e _%e148412148428%_)))
                              (let ((_%hd148416148439%_
                                     (##car _%e148415148436%_))
                                    (_%tl148417148441%_
                                     (##cdr _%e148415148436%_)))
                                (let ((_%phi148444%_ _%hd148416148439%_))
                                  (if (gx#stx-pair? _%tl148417148441%_)
                                      (let ((_%e148418148446%_
                                             (gx#syntax-e _%tl148417148441%_)))
                                        (let ((_%hd148419148449%_
                                               (##car _%e148418148446%_))
                                              (_%tl148420148451%_
                                               (##cdr _%e148418148446%_)))
                                          (let ((_%name148454%_
                                                 _%hd148419148449%_))
                                            (if (gx#stx-pair?
                                                 _%tl148420148451%_)
                                                (let ((_%e148421148456%_
                                                       (gx#syntax-e
                                                        _%tl148420148451%_)))
                                                  (let ((_%hd148422148459%_
                                                         (##car _%e148421148456%_))
                                                        (_%tl148423148461%_
                                                         (##cdr _%e148421148456%_)))
                                                    (let ((_%src-phi148464%_
                                                           _%hd148422148459%_))
                                                      (if (gx#stx-pair?
                                                           _%tl148423148461%_)
                                                          (let ((_%e148424148466%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl148423148461%_)))
                    (let ((_%hd148425148469%_ (##car _%e148424148466%_))
                          (_%tl148426148471%_ (##cdr _%e148424148466%_)))
                      (let ((_%src-name148474%_ _%hd148425148469%_))
                        (if (gx#stx-null? _%tl148426148471%_)
                            (if (and (gx#stx-fixnum? _%src-phi148464%_)
                                     (gx#identifier? _%src-name148474%_)
                                     (gx#stx-fixnum? _%phi148444%_)
                                     (gx#identifier? _%name148454%_))
                                (let ((_%src-phi148476%_
                                       (gx#stx-e _%src-phi148464%_))
                                      (_%src-name148477%_
                                       (gx#core-identifier-key
                                        _%src-name148474%_))
                                      (_%phi148478%_ (gx#stx-e _%phi148444%_))
                                      (_%name148479%_
                                       (gx#core-identifier-key
                                        _%name148454%_)))
                                  (let ((_%$e148481%_
                                         (__hash-get
                                          _%exports148405%_
                                          (cons _%src-phi148476%_
                                                _%src-name148477%_))))
                                    (if _%$e148481%_
                                        ((lambda (_%out148484%_)
                                           (cons (gx#core-module-export->import__%
                                                  _%out148484%_
                                                  _%name148479%_
                                                  (fx- _%phi148478%_
                                                       _%src-phi148476%_))
                                                 _%r148411%_))
                                         _%$e148481%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; no matching export"
                                         _%stx148276%_
                                         _%hd148355%_))))
                                (_%E148414148432%_))
                            (_%E148414148432%_)))))
                  (_%E148414148432%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E148414148432%_)))))
                                      (_%E148414148432%_)))))
                            (_%E148414148432%_)))))
                (_%E148413148487%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r148358%_
                                                    _%specs148406%_))))))
                                          (_%E148368148380%_))))
                                  (_%E148368148380%_))))
                           (_%E148360148513%_
                            (lambda ()
                              (if (gx#stx-pair? _%e148359148376%_)
                                  (let ((_%e148362148495%_
                                         (gx#syntax-e _%e148359148376%_)))
                                    (let ((_%hd148363148498%_
                                           (##car _%e148362148495%_))
                                          (_%tl148364148500%_
                                           (##cdr _%e148362148495%_)))
                                      (if (gx#stx-pair? _%tl148364148500%_)
                                          (let ((_%e148365148503%_
                                                 (gx#syntax-e
                                                  _%tl148364148500%_)))
                                            (let ((_%hd148366148506%_
                                                   (##car _%e148365148503%_))
                                                  (_%tl148367148508%_
                                                   (##cdr _%e148365148503%_)))
                                              (let ((_%path148511%_
                                                     _%hd148366148506%_))
                                                (if (gx#stx-null?
                                                     _%tl148367148508%_)
                                                    (_%K148356%_
                                                     _%rest148357%_
                                                     (cons (_%import-spec-source148284%_
                                                            _%path148511%_)
                                                           _%r148358%_))
                                                    (_%E148361148491%_)))))
                                          (_%E148361148491%_))))
                                  (_%E148361148491%_)))))
                      (_%E148360148513%_))))
                 (_%import-spec-source148284%_
                  (lambda (_%spath148353%_)
                    (gx#core-import-nested-module
                     _%spath148353%_
                     _%stx148276%_)))
                 (_%import!148285%_
                  (lambda (_%rbody148298%_)
                    (letrec* ((_%current-ctx148300%_
                               (gx#current-expander-context))
                              (_%deps148301%_ (make-hash-table-eq))
                              (_%bind!148302%_
                               (lambda (_%hd148351%_)
                                 (gx#core-bind-import!__1
                                  _%hd148351%_
                                  _%current-ctx148300%_))))
                      (let _%lp148304%_ ((_%rest148306%_ _%rbody148298%_)
                                         (_%body148307%_ '()))
                        (let* ((_%rest148308148316%_ _%rest148306%_)
                               (_%else148310148327%_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _%current-ctx148300%_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _%current-ctx148300%_
                                       (__foldl1
                                        cons
                                        (##unchecked-structure-ref
                                         _%current-ctx148300%_
                                         '8
                                         '#f
                                         '#f)
                                        _%body148307%_)
                                       '8
                                       '#f
                                       '#f)
                                      '#!void)
                                  (__hash-for-each
                                   (lambda (_%ctx148324%_ _%_148325%_)
                                     (gx#eval-module _%ctx148324%_))
                                   _%deps148301%_)
                                  _%body148307%_))
                               (_%K148312148339%_
                                (lambda (_%rest148330%_ _%hd148331%_)
                                  (if (##structure-direct-instance-of?
                                       _%hd148331%_
                                       'gx#module-import::t)
                                      (let ()
                                        (_%bind!148302%_ _%hd148331%_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _%hd148331%_
                                                   '3
                                                   '#f
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _%hd148331%_
                                                            '1
                                                            '#f
                                                            '#f)
                                                           '3
                                                           '#f
                                                           '#f)))
                                            (__hash-put!
                                             _%deps148301%_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _%hd148331%_
                                               '1
                                               '#f
                                               '#f)
                                              '1
                                              '#f
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _%hd148331%_
                                           'gx#import-set::t)
                                          (let ()
                                            (for-each
                                             _%bind!148302%_
                                             (##unchecked-structure-ref
                                              _%hd148331%_
                                              '3
                                              '#f
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _%hd148331%_
                                                  '2
                                                  '#f
                                                  '#f))
                                                (__hash-put!
                                                 _%deps148301%_
                                                 (##unchecked-structure-ref
                                                  _%hd148331%_
                                                  '1
                                                  '#f
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_%$e148335%_
                                                 (##structure-instance-of?
                                                  _%hd148331%_
                                                  'gx#module-context::t)))
                                            (if _%$e148335%_
                                                _%$e148335%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _%stx148276%_
                                                 _%hd148331%_)))))
                                  (_%lp148304%_
                                   _%rest148330%_
                                   (cons _%hd148331%_ _%body148307%_)))))
                          (if (pair? _%rest148308148316%_)
                              (let ((_%hd148313148342%_
                                     (##car _%rest148308148316%_))
                                    (_%tl148314148344%_
                                     (##cdr _%rest148308148316%_)))
                                (let* ((_%hd148347%_ _%hd148313148342%_)
                                       (_%rest148349%_ _%tl148314148344%_))
                                  (_%K148312148339%_
                                   _%rest148349%_
                                   _%hd148347%_)))
                              (_%else148310148327%_)))))))
                 (_%expanded-import?148286%_
                  (lambda (_%e148290%_)
                    (let ((_%$e148292%_
                           (##structure-direct-instance-of?
                            _%e148290%_
                            'gx#import-set::t)))
                      (if _%$e148292%_
                          _%$e148292%_
                          (let ((_%$e148295%_
                                 (##structure-direct-instance-of?
                                  _%e148290%_
                                  'gx#module-import::t)))
                            (if _%$e148295%_
                                _%$e148295%_
                                (##structure-instance-of?
                                 _%e148290%_
                                 'gx#module-context::t))))))))
          (let ((_%rbody148288%_
                 (gx#core-expand-import/export
                  _%stx148276%_
                  _%expanded-import?148286%_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _%expand1148279%_)))
            (if _%internal-expand?148277%_
                (reverse _%rbody148288%_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_%import!148285%_ _%rbody148288%_))
                 (gx#stx-source _%stx148276%_)))))))
    (define gx#core-expand-import%__0
      (lambda (_%stx148615%_)
        (let ((_%internal-expand?148617%_ '#f))
          (gx#core-expand-import%__%
           _%stx148615%_
           _%internal-expand?148617%_))))
    (define gx#core-expand-import%
      (lambda _g151266_
        (let ((_g151267_ (##length _g151266_)))
          (cond ((##fx= _g151267_ 1)
                 (apply gx#core-expand-import%__0 _g151266_))
                ((##fx= _g151267_ 2)
                 (apply gx#core-expand-import%__% _g151266_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g151266_))))))
    (define gx#core-import-nested-module
      (lambda (_%spath148203%_ _%where148204%_)
        (let* ((_%e148205148212%_ _%spath148203%_)
               (_%E148207148216%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e148205148212%_)))
               (_%E148206148271%_
                (lambda ()
                  (if (gx#stx-pair? _%e148205148212%_)
                      (let ((_%e148208148220%_
                             (gx#syntax-e _%e148205148212%_)))
                        (let ((_%hd148209148223%_ (##car _%e148208148220%_))
                              (_%tl148210148225%_ (##cdr _%e148208148220%_)))
                          (let* ((_%origin148228%_ _%hd148209148223%_)
                                 (_%sub148230%_ _%tl148210148225%_)
                                 (_%origin-ctx148232%_
                                  (if (gx#stx-false? _%origin148228%_)
                                      (gx#current-expander-context)
                                      (gx#import-module__0 _%origin148228%_))))
                            (let _%lp148234%_ ((_%rest148236%_ _%sub148230%_)
                                               (_%ctx148237%_
                                                _%origin-ctx148232%_))
                              (let* ((_%e148238148245%_ _%rest148236%_)
                                     (_%E148240148249%_
                                      (lambda () _%ctx148237%_))
                                     (_%E148239148267%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e148238148245%_)
                                            (let ((_%e148241148253%_
                                                   (gx#syntax-e
                                                    _%e148238148245%_)))
                                              (let ((_%hd148242148256%_
                                                     (##car _%e148241148253%_))
                                                    (_%tl148243148258%_
                                                     (##cdr _%e148241148253%_)))
                                                (let* ((_%id148261%_
                                                        _%hd148242148256%_)
                                                       (_%rest148263%_
                                                        _%tl148243148258%_)
                                                       (_%bind148265%_
                                                        (gx#resolve-identifier__%
                                                         _%id148261%_
                                                         '0
                                                         _%ctx148237%_)))
                                                  (if (and (##structure-direct-instance-of?
                                                            _%bind148265%_
                                                            'gx#syntax-binding::t)
                                                           (##structure-instance-of?
                                                            (##unchecked-structure-ref
                                                             _%bind148265%_
                                                             '4
                                                             '#f
                                                             '#f)
                                                            'gx#module-context::t))
                                                      '#!void
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; not bound as module"
                                                       _%where148204%_
                                                       _%spath148203%_
                                                       _%id148261%_))
                                                  (_%lp148234%_
                                                   _%rest148263%_
                                                   (##unchecked-structure-ref
                                                    _%bind148265%_
                                                    '4
                                                    '#f
                                                    '#f)))))
                                            (_%E148240148249%_)))))
                                (_%E148239148267%_))))))
                      (_%E148207148216%_)))))
          (_%E148206148271%_))))
    (define gx#core-expand-import-source
      (lambda (_%hd148201%_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _%hd148201%_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_%stx147696%_ _%internal-expand?147697%_)
        (letrec* ((_%make-export__151195151196%_
                   (lambda (_%bind148149%_
                            _%phi148150%_
                            _%ctx148151%_
                            _%name148152%_)
                     (let* ((_%key148154%_
                             (##unchecked-structure-ref
                              _%bind148149%_
                              '2
                              '#f
                              '#f))
                            (_%export-key148156%_
                             (if _%name148152%_
                                 (gx#core-identifier-key _%name148152%_)
                                 _%key148154%_)))
                       (##structure
                        gx#module-export::t
                        _%ctx148151%_
                        _%key148154%_
                        _%phi148150%_
                        _%export-key148156%_
                        (let ((_%$e148159%_
                               (##structure-instance-of?
                                _%bind148149%_
                                'gx#extern-binding::t)))
                          (if _%$e148159%_
                              _%$e148159%_
                              (##structure-direct-instance-of?
                               _%bind148149%_
                               'gx#import-binding::t)))))))
                  (_%make-export__0__151197151200%_
                   (lambda (_%bind148165%_)
                     (let* ((_%phi148167%_ (gx#current-export-expander-phi))
                            (_%ctx148169%_ (gx#current-expander-context))
                            (_%name148171%_ '#f))
                       (_%make-export__151195151196%_
                        _%bind148165%_
                        _%phi148167%_
                        _%ctx148169%_
                        _%name148171%_))))
                  (_%make-export__1__151198151201%_
                   (lambda (_%bind148173%_ _%phi148174%_)
                     (let* ((_%ctx148176%_ (gx#current-expander-context))
                            (_%name148178%_ '#f))
                       (_%make-export__151195151196%_
                        _%bind148173%_
                        _%phi148174%_
                        _%ctx148176%_
                        _%name148178%_))))
                  (_%make-export__2__151199151202%_
                   (lambda (_%bind148180%_ _%phi148181%_ _%ctx148182%_)
                     (let ((_%name148184%_ '#f))
                       (_%make-export__151195151196%_
                        _%bind148180%_
                        _%phi148181%_
                        _%ctx148182%_
                        _%name148184%_))))
                  (_%make-export147699%_
                   (lambda _g151268_
                     (let ((_g151269_ (##length _g151268_)))
                       (cond ((##fx= _g151269_ 1)
                              (apply _%make-export__0__151197151200%_
                                     _g151268_))
                             ((##fx= _g151269_ 2)
                              (apply _%make-export__1__151198151201%_
                                     _g151268_))
                             ((##fx= _g151269_ 3)
                              (apply _%make-export__2__151199151202%_
                                     _g151268_))
                             ((##fx= _g151269_ 4)
                              (apply _%make-export__151195151196%_ _g151268_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g151268_))))))
                  (_%expand1147700%_
                   (lambda (_%hd147854%_
                            _%K147855%_
                            _%rest147856%_
                            _%r147857%_)
                     (let* ((_%e147858147890%_ _%hd147854%_)
                            (_%E147885147894%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _%stx147696%_
                                _%hd147854%_)))
                            (_%E147875147978%_
                             (lambda ()
                               (if (gx#stx-pair? _%e147858147890%_)
                                   (let ((_%e147886147898%_
                                          (gx#syntax-e _%e147858147890%_)))
                                     (let ((_%hd147887147901%_
                                            (##car _%e147886147898%_))
                                           (_%tl147888147903%_
                                            (##cdr _%e147886147898%_)))
                                       (if (eq? (gx#stx-e _%hd147887147901%_)
                                                'import:)
                                           (let ((_%in147906%_
                                                  _%tl147888147903%_))
                                             (if (gx#stx-list? _%in147906%_)
                                                 (let _%lp147908%_ ((_%in-rest147910%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%in147906%_)
                            (_%r147911%_ _%r147857%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%e147912147919%_
                                                           _%in-rest147910%_)
                                                          (_%E147914147923%_
                                                           (lambda ()
                                                             (_%K147855%_
                                                              _%rest147856%_
                                                              _%r147911%_)))
                                                          (_%E147913147974%_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%e147912147919%_)
                         (let ((_%e147915147927%_
                                (gx#syntax-e _%e147912147919%_)))
                           (let ((_%hd147916147930%_ (##car _%e147915147927%_))
                                 (_%tl147917147932%_
                                  (##cdr _%e147915147927%_)))
                             (let* ((_%hd147935%_ _%hd147916147930%_)
                                    (_%in-rest147937%_ _%tl147917147932%_)
                                    (_%src147972%_
                                     (if (gx#core-bound-module? _%hd147935%_)
                                         (gx#syntax-local-e__0 _%hd147935%_)
                                         (if (gx#core-library-module-path?
                                              _%hd147935%_)
                                             (gx#import-module__0
                                              (gx#core-resolve-library-module-path
                                               _%hd147935%_))
                                             (if (gx#core-library-relative-module-path?
                                                  _%hd147935%_)
                                                 (gx#import-module__0
                                                  (gx#core-resolve-library-relative-module-path
                                                   _%hd147935%_))
                                                 (if (gx#stx-string?
                                                      _%hd147935%_)
                                                     (gx#import-module__0
                                                      (gx#core-resolve-module-path__%
                                                       _%hd147935%_
                                                       (gx#stx-source
                                                        _%stx147696%_)))
                                                     (let* ((_%e147943147950%_
                                                             _%hd147935%_)
                                                            (_%E147945147954%_
                                                             (lambda ()
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; illegal re-export"
                                                                _%stx147696%_
                                                                _%hd147935%_)))
                                                            (_%E147944147968%_
                                                             (lambda ()
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%e147943147950%_)
                           (let ((_%e147946147958%_
                                  (gx#syntax-e _%e147943147950%_)))
                             (let ((_%hd147947147961%_
                                    (##car _%e147946147958%_))
                                   (_%tl147948147963%_
                                    (##cdr _%e147946147958%_)))
                               (if (eq? (gx#stx-e _%hd147947147961%_) 'in:)
                                   (let ((_%spath147966%_ _%tl147948147963%_))
                                     (gx#core-import-nested-module
                                      _%spath147966%_
                                      _%stx147696%_))
                                   (_%E147945147954%_))))
                           (_%E147945147954%_)))))
               (_%E147944147968%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (_%lp147908%_
                                _%in-rest147937%_
                                (_%export-imports147701%_
                                 _%src147972%_
                                 _%r147911%_)))))
                         (_%E147914147923%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E147913147974%_)))
                                                 (_%E147885147894%_)))
                                           (_%E147885147894%_))))
                                   (_%E147885147894%_))))
                            (_%E147862148018%_
                             (lambda ()
                               (if (gx#stx-pair? _%e147858147890%_)
                                   (let ((_%e147876147982%_
                                          (gx#syntax-e _%e147858147890%_)))
                                     (let ((_%hd147877147985%_
                                            (##car _%e147876147982%_))
                                           (_%tl147878147987%_
                                            (##cdr _%e147876147982%_)))
                                       (if (eq? (gx#stx-e _%hd147877147985%_)
                                                'rename:)
                                           (if (gx#stx-pair?
                                                _%tl147878147987%_)
                                               (let ((_%e147879147990%_
                                                      (gx#syntax-e
                                                       _%tl147878147987%_)))
                                                 (let ((_%hd147880147993%_
                                                        (##car _%e147879147990%_))
                                                       (_%tl147881147995%_
                                                        (##cdr _%e147879147990%_)))
                                                   (let ((_%id147998%_
                                                          _%hd147880147993%_))
                                                     (if (gx#stx-pair?
                                                          _%tl147881147995%_)
                                                         (let ((_%e147882148000%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl147881147995%_)))
                   (let ((_%hd147883148003%_ (##car _%e147882148000%_))
                         (_%tl147884148005%_ (##cdr _%e147882148000%_)))
                     (let ((_%name148008%_ _%hd147883148003%_))
                       (if (gx#stx-null? _%tl147884148005%_)
                           (let* ((_%phi148010%_
                                   (gx#current-export-expander-phi))
                                  (_%$e148012%_
                                   (gx#core-resolve-identifier__1
                                    _%id147998%_
                                    _%phi148010%_)))
                             (if _%$e148012%_
                                 ((lambda (_%bind148015%_)
                                    (_%K147855%_
                                     _%rest147856%_
                                     (cons (_%make-export__151195151196%_
                                            _%bind148015%_
                                            _%phi148010%_
                                            (gx#current-expander-context)
                                            _%name148008%_)
                                           _%r147857%_)))
                                  _%$e148012%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Reference to unbound identifier"
                                  _%stx147696%_
                                  _%hd147854%_
                                  _%id147998%_)))
                           (_%E147875147978%_)))))
                 (_%E147875147978%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E147875147978%_))
                                           (_%E147875147978%_))))
                                   (_%E147875147978%_))))
                            (_%E147861148068%_
                             (lambda ()
                               (if (gx#stx-pair? _%e147858147890%_)
                                   (let ((_%e147863148022%_
                                          (gx#syntax-e _%e147858147890%_)))
                                     (let ((_%hd147864148025%_
                                            (##car _%e147863148022%_))
                                           (_%tl147865148027%_
                                            (##cdr _%e147863148022%_)))
                                       (if (eq? (gx#stx-e _%hd147864148025%_)
                                                'spec:)
                                           (if (gx#stx-pair?
                                                _%tl147865148027%_)
                                               (let ((_%e147866148030%_
                                                      (gx#syntax-e
                                                       _%tl147865148027%_)))
                                                 (let ((_%hd147867148033%_
                                                        (##car _%e147866148030%_))
                                                       (_%tl147868148035%_
                                                        (##cdr _%e147866148030%_)))
                                                   (let ((_%phi148038%_
                                                          _%hd147867148033%_))
                                                     (if (gx#stx-pair?
                                                          _%tl147868148035%_)
                                                         (let ((_%e147869148040%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl147868148035%_)))
                   (let ((_%hd147870148043%_ (##car _%e147869148040%_))
                         (_%tl147871148045%_ (##cdr _%e147869148040%_)))
                     (let ((_%id148048%_ _%hd147870148043%_))
                       (if (gx#stx-pair? _%tl147871148045%_)
                           (let ((_%e147872148050%_
                                  (gx#syntax-e _%tl147871148045%_)))
                             (let ((_%hd147873148053%_
                                    (##car _%e147872148050%_))
                                   (_%tl147874148055%_
                                    (##cdr _%e147872148050%_)))
                               (let ((_%name148058%_ _%hd147873148053%_))
                                 (if (gx#stx-null? _%tl147874148055%_)
                                     (if (and (gx#stx-fixnum? _%phi148038%_)
                                              (gx#identifier? _%id148048%_)
                                              (gx#identifier? _%name148058%_))
                                         (let* ((_%phi148060%_
                                                 (gx#stx-e _%phi148038%_))
                                                (_%$e148062%_
                                                 (gx#core-resolve-identifier__1
                                                  _%id148048%_
                                                  _%phi148060%_)))
                                           (if _%$e148062%_
                                               ((lambda (_%bind148065%_)
                                                  (_%K147855%_
                                                   _%rest147856%_
                                                   (cons (_%make-export__151195151196%_
                                                          _%bind148065%_
                                                          _%phi148060%_
                                                          (gx#current-expander-context)
                                                          _%name148058%_)
                                                         _%r147857%_)))
                                                _%$e148062%_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _%stx147696%_
                                                _%hd147854%_
                                                _%id148048%_)))
                                         (_%E147862148018%_))
                                     (_%E147862148018%_)))))
                           (_%E147862148018%_)))))
                 (_%E147862148018%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E147862148018%_))
                                           (_%E147862148018%_))))
                                   (_%E147862148018%_))))
                            (_%E147860148080%_
                             (lambda ()
                               (let ((_%id148072%_ _%e147858147890%_))
                                 (if (gx#identifier? _%id148072%_)
                                     (let ((_%$e148074%_
                                            (gx#core-resolve-identifier__1
                                             _%id148072%_
                                             (gx#current-export-expander-phi))))
                                       (if _%$e148074%_
                                           ((lambda (_%bind148077%_)
                                              (_%K147855%_
                                               _%rest147856%_
                                               (cons (_%make-export__0__151197151200%_
                                                      _%bind148077%_)
                                                     _%r147857%_)))
                                            _%$e148074%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _%stx147696%_
                                            _%hd147854%_)))
                                     (_%E147861148068%_)))))
                            (_%E147859148144%_
                             (lambda ()
                               (if (eq? (gx#stx-e _%e147858147890%_) '#t)
                                   (let* ((_%current-ctx148084%_
                                           (gx#current-expander-context))
                                          (_%current-phi148086%_
                                           (gx#current-export-expander-phi))
                                          (_%phi-ctx148088%_
                                           (gx#core-context-shift
                                            _%current-ctx148084%_
                                            _%current-phi148086%_))
                                          (_%phi-bind148090%_
                                           (hash->list
                                            (##unchecked-structure-ref
                                             _%phi-ctx148088%_
                                             '2
                                             '#f
                                             '#f))))
                                     (let _%lp148093%_ ((_%bind-rest148095%_
                                                         _%phi-bind148090%_)
                                                        (_%set148096%_ '()))
                                       (let* ((_%bind-rest148097148107%_
                                               _%bind-rest148095%_)
                                              (_%else148099148115%_
                                               (lambda ()
                                                 (_%K147855%_
                                                  _%rest147856%_
                                                  (cons (##structure
                                                         gx#export-set::t
                                                         '#f
                                                         _%current-phi148086%_
                                                         _%set148096%_)
                                                        _%r147857%_))))
                                              (_%K148101148125%_
                                               (lambda (_%bind-rest148118%_
                                                        _%bind148119%_
                                                        _%key148120%_)
                                                 (if (or (##structure-direct-instance-of?
                                                          _%bind148119%_
                                                          'gx#import-binding::t)
                                                         (gx#private-feature-binding?
                                                          _%bind148119%_))
                                                     (_%lp148093%_
                                                      _%bind-rest148118%_
                                                      _%set148096%_)
                                                     (_%lp148093%_
                                                      _%bind-rest148118%_
                                                      (cons (_%make-export__2__151199151202%_
                                                             _%bind148119%_
                                                             _%current-phi148086%_
                                                             _%current-ctx148084%_)
                                                            _%set148096%_))))))
                                         (if (pair? _%bind-rest148097148107%_)
                                             (let ((_%hd148102148128%_
                                                    (##car _%bind-rest148097148107%_))
                                                   (_%tl148103148130%_
                                                    (##cdr _%bind-rest148097148107%_)))
                                               (if (pair? _%hd148102148128%_)
                                                   (let ((_%hd148104148133%_
                                                          (##car _%hd148102148128%_))
                                                         (_%tl148105148135%_
                                                          (##cdr _%hd148102148128%_)))
                                                     (let* ((_%key148138%_
                                                             _%hd148104148133%_)
                                                            (_%bind148140%_
                                                             _%tl148105148135%_)
                                                            (_%bind-rest148142%_
                                                             _%tl148103148130%_))
                                                       (_%K148101148125%_
                                                        _%bind-rest148142%_
                                                        _%bind148140%_
                                                        _%key148138%_)))
                                                   (_%else148099148115%_)))
                                             (_%else148099148115%_)))))
                                   (_%E147860148080%_)))))
                       (_%E147859148144%_))))
                  (_%export-imports147701%_
                   (lambda (_%src147731%_ _%r147732%_)
                     (letrec* ((_%current-ctx147734%_
                                (gx#current-expander-context))
                               (_%current-phi147735%_
                                (gx#current-export-expander-phi))
                               (_%import->export147736%_
                                (lambda (_%in147817%_)
                                  (let* ((_%in147818147826%_ _%in147817%_)
                                         (_%E147820147829%_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _%in147818147826%_
                                                   '((module-import
                                                      out
                                                      key
                                                      phi)))
                                            '#!void))
                                         (_%K147821147836%_
                                          (lambda (_%phi147832%_
                                                   _%key147833%_
                                                   _%out147834%_)
                                            (##structure
                                             gx#module-export::t
                                             _%current-ctx147734%_
                                             _%key147833%_
                                             _%phi147832%_
                                             _%key147833%_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _%in147818147826%_
                                         'gx#module-import::t)
                                        (let* ((_%e147822147839%_
                                                (##unchecked-structure-ref
                                                 _%in147818147826%_
                                                 '1
                                                 '#f
                                                 '#f))
                                               (_%out147842%_
                                                _%e147822147839%_)
                                               (_%e147823147844%_
                                                (##unchecked-structure-ref
                                                 _%in147818147826%_
                                                 '2
                                                 '#f
                                                 '#f))
                                               (_%key147847%_
                                                _%e147823147844%_)
                                               (_%e147824147849%_
                                                (##unchecked-structure-ref
                                                 _%in147818147826%_
                                                 '3
                                                 '#f
                                                 '#f))
                                               (_%phi147852%_
                                                _%e147824147849%_))
                                          (_%K147821147836%_
                                           _%phi147852%_
                                           _%key147847%_
                                           _%out147842%_))
                                        (_%E147820147829%_)))))
                               (_%fold-e147737%_
                                (lambda (_%in147739%_ _%r147740%_)
                                  (let* ((_%in147741147755%_ _%in147739%_)
                                         (_%else147744147763%_
                                          (lambda () _%r147740%_)))
                                    (let ((_%K147750147799%_
                                           (lambda (_%phi147795%_
                                                    _%key147796%_
                                                    _%out147797%_)
                                             (if (and (fx= _%phi147795%_
                                                           _%current-phi147735%_)
                                                      (eq? _%src147731%_
                                                           (##unchecked-structure-ref
                                                            _%out147797%_
                                                            '1
                                                            '#f
                                                            '#f)))
                                                 (cons (_%import->export147736%_
                                                        _%in147739%_)
                                                       _%r147740%_)
                                                 _%r147740%_)))
                                          (_%K147746147774%_
                                           (lambda (_%imports147767%_
                                                    _%phi147768%_
                                                    _%ctx147769%_)
                                             (if (and (fx= _%phi147768%_
                                                           _%current-phi147735%_)
                                                      (eq? _%src147731%_
                                                           _%ctx147769%_))
                                                 (__foldl1
                                                  (lambda (_%in147771%_
                                                           _%r147772%_)
                                                    (cons (_%import->export147736%_
                                                           _%in147771%_)
                                                          _%r147772%_))
                                                  _%r147740%_
                                                  _%imports147767%_)
                                                 _%r147740%_))))
                                      (let ((_%try-match147743147792%_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _%in147741147755%_
                                                    'gx#import-set::t)
                                                   (let* ((_%e147747147777%_
                                                           (##unchecked-structure-ref
                                                            _%in147741147755%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                          (_%e147748147782%_
                                                           (##unchecked-structure-ref
                                                            _%in147741147755%_
                                                            '2
                                                            '#f
                                                            '#f))
                                                          (_%e147749147787%_
                                                           (##unchecked-structure-ref
                                                            _%in147741147755%_
                                                            '3
                                                            '#f
                                                            '#f)))
                                                     (let ((_%ctx147780%_
                                                            _%e147747147777%_)
                                                           (_%phi147785%_
                                                            _%e147748147782%_)
                                                           (_%imports147790%_
                                                            _%e147749147787%_))
                                                       (_%K147746147774%_
                                                        _%imports147790%_
                                                        _%phi147785%_
                                                        _%ctx147780%_)))
                                                   (_%else147744147763%_)))))
                                        (if (##structure-direct-instance-of?
                                             _%in147741147755%_
                                             'gx#module-import::t)
                                            (let* ((_%e147751147802%_
                                                    (##unchecked-structure-ref
                                                     _%in147741147755%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                   (_%e147752147807%_
                                                    (##unchecked-structure-ref
                                                     _%in147741147755%_
                                                     '2
                                                     '#f
                                                     '#f))
                                                   (_%e147753147812%_
                                                    (##unchecked-structure-ref
                                                     _%in147741147755%_
                                                     '3
                                                     '#f
                                                     '#f)))
                                              (let ((_%out147805%_
                                                     _%e147751147802%_)
                                                    (_%key147810%_
                                                     _%e147752147807%_)
                                                    (_%phi147815%_
                                                     _%e147753147812%_))
                                                (_%K147750147799%_
                                                 _%phi147815%_
                                                 _%key147810%_
                                                 _%out147805%_)))
                                            (_%try-match147743147792%_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _%src147731%_
                              _%current-phi147735%_
                              (__foldl1
                               _%fold-e147737%_
                               '()
                               (##unchecked-structure-ref
                                _%current-ctx147734%_
                                '8
                                '#f
                                '#f)))
                             _%r147732%_))))
                  (_%export!147702%_
                   (lambda (_%rbody147718%_)
                     (letrec* ((_%current-ctx147720%_
                                (gx#current-expander-context))
                               (_%fold-e147721%_
                                (lambda (_%out147725%_ _%r147726%_)
                                  (if (##structure-direct-instance-of?
                                       _%out147725%_
                                       'gx#module-export::t)
                                      (cons _%out147725%_ _%r147726%_)
                                      (if (##structure-direct-instance-of?
                                           _%out147725%_
                                           'gx#export-set::t)
                                          (__foldl1
                                           cons
                                           _%r147726%_
                                           (##unchecked-structure-ref
                                            _%out147725%_
                                            '3
                                            '#f
                                            '#f))
                                          _%r147726%_)))))
                       (let ((_%body147723%_ (reverse _%rbody147718%_)))
                         (##unchecked-structure-set!
                          _%current-ctx147720%_
                          (__foldl1
                           _%fold-e147721%_
                           (##unchecked-structure-ref
                            _%current-ctx147720%_
                            '9
                            '#f
                            '#f)
                           _%body147723%_)
                          '9
                          '#f
                          '#f)
                         _%body147723%_))))
                  (_%expanded-export?147703%_
                   (lambda (_%e147713%_)
                     (let ((_%$e147715%_
                            (##structure-direct-instance-of?
                             _%e147713%_
                             'gx#module-export::t)))
                       (if _%$e147715%_
                           _%$e147715%_
                           (##structure-direct-instance-of?
                            _%e147713%_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _%internal-expand?147697%_)
              (let ((_%rbody147709%_
                     (gx#core-expand-import/export
                      _%stx147696%_
                      _%expanded-export?147703%_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _%expand1147700%_)))
                (if _%internal-expand?147697%_
                    (reverse _%rbody147709%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons
                      '%#export
                      (_%export!147702%_ _%rbody147709%_))
                     (gx#stx-source _%stx147696%_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _%stx147696%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _%stx147696%_))))))
    (define gx#core-expand-export%__0
      (lambda (_%stx148194%_)
        (let ((_%internal-expand?148196%_ '#f))
          (gx#core-expand-export%__%
           _%stx148194%_
           _%internal-expand?148196%_))))
    (define gx#core-expand-export%
      (lambda _g151270_
        (let ((_g151271_ (##length _g151270_)))
          (cond ((##fx= _g151271_ 1)
                 (apply gx#core-expand-export%__0 _g151270_))
                ((##fx= _g151271_ 2)
                 (apply gx#core-expand-export%__% _g151270_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g151270_))))))
    (define gx#core-expand-export-source
      (lambda (_%hd147693%_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _%hd147693%_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_%stx147663%_)
        (let* ((_%e147664147671%_ _%stx147663%_)
               (_%E147666147675%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e147664147671%_)))
               (_%E147665147689%_
                (lambda ()
                  (if (gx#stx-pair? _%e147664147671%_)
                      (let ((_%e147667147679%_
                             (gx#syntax-e _%e147664147671%_)))
                        (let ((_%hd147668147682%_ (##car _%e147667147679%_))
                              (_%tl147669147684%_ (##cdr _%e147667147679%_)))
                          (let ((_%body147687%_ _%tl147669147684%_))
                            (if (gx#identifier-list? _%body147687%_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _%body147687%_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _%body147687%_))
                                   (gx#stx-source _%stx147663%_)))
                                (_%E147666147675%_)))))
                      (_%E147666147675%_)))))
          (_%E147665147689%_))))
    (define gx#core-bind-feature!__%
      (lambda (_%id147629%_ _%private?147630%_ _%phi147631%_ _%ctx147632%_)
        (gx#core-bind-syntax!__%
         _%id147629%_
         ((if _%private?147630%_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _%id147629%_))
         _%private?147630%_
         _%phi147631%_
         _%ctx147632%_)))
    (define gx#core-bind-feature!__0
      (lambda (_%id147637%_)
        (let* ((_%private?147639%_ '#f)
               (_%phi147641%_ (gx#current-expander-phi))
               (_%ctx147643%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id147637%_
           _%private?147639%_
           _%phi147641%_
           _%ctx147643%_))))
    (define gx#core-bind-feature!__1
      (lambda (_%id147645%_ _%private?147646%_)
        (let* ((_%phi147648%_ (gx#current-expander-phi))
               (_%ctx147650%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id147645%_
           _%private?147646%_
           _%phi147648%_
           _%ctx147650%_))))
    (define gx#core-bind-feature!__2
      (lambda (_%id147652%_ _%private?147653%_ _%phi147654%_)
        (let ((_%ctx147656%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id147652%_
           _%private?147653%_
           _%phi147654%_
           _%ctx147656%_))))
    (define gx#core-bind-feature!
      (lambda _g151272_
        (let ((_g151273_ (##length _g151272_)))
          (cond ((##fx= _g151273_ 1)
                 (apply gx#core-bind-feature!__0 _g151272_))
                ((##fx= _g151273_ 2)
                 (apply gx#core-bind-feature!__1 _g151272_))
                ((##fx= _g151273_ 3)
                 (apply gx#core-bind-feature!__2 _g151272_))
                ((##fx= _g151273_ 4)
                 (apply gx#core-bind-feature!__% _g151272_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g151272_))))))))
