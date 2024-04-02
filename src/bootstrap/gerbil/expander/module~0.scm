(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1712093476)
  (begin
    (declare (not safe))
    (define gx#__module-registry (make-hash-table))
    (define gx#__module-pkg-cache (make-hash-table))
    (define gx#module-import::t
      (make-class-type
       'gx#module-import::t
       'module-import
       (list)
       '(source name phi weak?)
       (cons (cons 'struct: '#t)
             (cons (cons 'final: '#t) '((print: source name phi weak?))))
       '#f))
    (define gx#module-import? (__make-class-predicate gx#module-import::t))
    (define gx#make-module-import
      (lambda _%$args125201%_
        (apply make-instance gx#module-import::t _%$args125201%_)))
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
      (make-class-type
       'gx#module-export::t
       'module-export
       (list)
       '(context key phi name weak?)
       (cons (cons 'struct: '#t)
             (cons (cons 'final: '#t) '((transparent: . #t))))
       '#f))
    (define gx#module-export? (__make-class-predicate gx#module-export::t))
    (define gx#make-module-export
      (lambda _%$args125198%_
        (apply make-instance gx#module-export::t _%$args125198%_)))
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
      (make-class-type
       'gx#import-set::t
       'import-set
       (list)
       '(source phi imports)
       (cons (cons 'struct: '#t)
             (cons (cons 'final: '#t) '((print: source phi))))
       '#f))
    (define gx#import-set? (__make-class-predicate gx#import-set::t))
    (define gx#make-import-set
      (lambda _%$args125195%_
        (apply make-instance gx#import-set::t _%$args125195%_)))
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
      (make-class-type
       'gx#export-set::t
       'export-set
       (list)
       '(source phi exports)
       (cons (cons 'struct: '#t)
             (cons (cons 'final: '#t) '((print: source phi))))
       '#f))
    (define gx#export-set? (__make-class-predicate gx#export-set::t))
    (define gx#make-export-set
      (lambda _%$args125192%_
        (apply make-instance gx#export-set::t _%$args125192%_)))
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
      (make-class-type
       'gx#import-expander::t
       'import-expander
       (list gx#user-expander::t)
       '()
       '()
       ':init!))
    (define gx#import-expander? (__make-class-predicate gx#import-expander::t))
    (define gx#make-import-expander
      (lambda _%$args125189%_
        (apply make-instance gx#import-expander::t _%$args125189%_)))
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
      (make-class-type
       'gx#export-expander::t
       'export-expander
       (list gx#user-expander::t)
       '()
       '()
       ':init!))
    (define gx#export-expander? (__make-class-predicate gx#export-expander::t))
    (define gx#make-export-expander
      (lambda _%$args125186%_
        (apply make-instance gx#export-expander::t _%$args125186%_)))
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
      (make-class-type
       'gx#import-export-expander::t
       'import-export-expander
       (list gx#import-expander::t gx#export-expander::t)
       '()
       '()
       ':init!))
    (define gx#import-export-expander?
      (__make-class-predicate gx#import-export-expander::t))
    (define gx#make-import-export-expander
      (lambda _%$args125183%_
        (apply make-instance gx#import-export-expander::t _%$args125183%_)))
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
      (lambda (_%path125180%_ _%fun125181%_)
        (call-with-input-file
         (cons 'path: (cons _%path125180%_ gx#source-file-settings))
         _%fun125181%_)))
    (define gx#module-context:::init!
      (lambda (_%self125163%_
               _%id125164%_
               _%super125165%_
               _%ns125166%_
               _%path125167%_)
        (let ()
          (let ((_%self125170%_ _%self125163%_))
            (let ()
              (if (##fx< '11 (##structure-length _%self125170%_))
                  (begin
                    (##unchecked-structure-set!
                     _%self125170%_
                     _%id125164%_
                     '1
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self125170%_
                     (make-hash-table-eq)
                     '2
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self125170%_
                     _%super125165%_
                     '3
                     '#f
                     '#f)
                    (##unchecked-structure-set! _%self125170%_ '#f '4 '#f '#f)
                    (##unchecked-structure-set! _%self125170%_ '#f '5 '#f '#f)
                    (##unchecked-structure-set!
                     _%self125170%_
                     _%ns125166%_
                     '6
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self125170%_
                     _%path125167%_
                     '7
                     '#f
                     '#f)
                    (##unchecked-structure-set! _%self125170%_ '() '8 '#f '#f)
                    (##unchecked-structure-set! _%self125170%_ '() '9 '#f '#f)
                    (##unchecked-structure-set! _%self125170%_ '#f '10 '#f '#f)
                    (##unchecked-structure-set! _%self125170%_ '#f '11 '#f '#f)
                    '#!void)
                  (error '"struct-instance-init!: too many arguments for struct"
                         _%self125170%_
                         '11
                         (##vector-length _%self125170%_))))))))
    (__bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_%self124996%_ _%ctx124997%_ _%root124998%_)
        (let ()
          (let ((_%self125001%_ _%self124996%_))
            (let ()
              (let ((_%super125017%_
                     (let ((_%$e125011%_ _%root124998%_))
                       (if _%$e125011%_
                           _%$e125011%_
                           (let ((_%$e125014%_ (gx#core-context-root__0)))
                             (if _%$e125014%_
                                 _%$e125014%_
                                 (let ((__obj125245
                                        (##structure
                                         gx#root-context::t
                                         '#f
                                         '#f)))
                                   (let ((__constructor125246
                                          (direct-method-ref
                                           gx#root-context::t
                                           __obj125245
                                           ':init!)))
                                     (if __constructor125246
                                         (__constructor125246 __obj125245)
                                         (error '"missing constructor method implementation"
                                                'class:
                                                gx#root-context::t
                                                'method:
                                                ':init!)))
                                   __obj125245)))))))
                (if _%ctx124997%_
                    (let ((_%id125020%_
                           (##structure-ref
                            _%ctx124997%_
                            '1
                            gx#expander-context::t
                            '#f))
                          (_%path125021%_
                           (##structure-ref
                            _%ctx124997%_
                            '7
                            gx#module-context::t
                            '#f))
                          (_%in125022%_
                           (map gx#core-module-export->import
                                (##structure-ref
                                 _%ctx124997%_
                                 '9
                                 gx#module-context::t
                                 '#f)))
                          (_%e125023%_
                           (__make-promise
                            (lambda () (gx#eval-module _%ctx124997%_)))))
                      (if (##fx< '8 (##structure-length _%self125001%_))
                          (begin
                            (##unchecked-structure-set!
                             _%self125001%_
                             _%id125020%_
                             '1
                             '#f
                             '#f)
                            (##unchecked-structure-set!
                             _%self125001%_
                             (make-hash-table-eq
                              'size:
                              (##length _%in125022%_))
                             '2
                             '#f
                             '#f)
                            (##unchecked-structure-set!
                             _%self125001%_
                             _%super125017%_
                             '3
                             '#f
                             '#f)
                            (##unchecked-structure-set!
                             _%self125001%_
                             '#f
                             '4
                             '#f
                             '#f)
                            (##unchecked-structure-set!
                             _%self125001%_
                             '#f
                             '5
                             '#f
                             '#f)
                            (##unchecked-structure-set!
                             _%self125001%_
                             _%path125021%_
                             '6
                             '#f
                             '#f)
                            (##unchecked-structure-set!
                             _%self125001%_
                             _%in125022%_
                             '7
                             '#f
                             '#f)
                            (##unchecked-structure-set!
                             _%self125001%_
                             _%e125023%_
                             '8
                             '#f
                             '#f)
                            '#!void)
                          (error '"struct-instance-init!: too many arguments for struct"
                                 _%self125001%_
                                 '8
                                 (##vector-length _%self125001%_)))
                      (##for-each
                       (lambda (_%g125024125026%_)
                         (gx#core-bind-weak-import!__%
                          _%g125024125026%_
                          _%self125001%_))
                       _%in125022%_))
                    (if (##fx< '8 (##structure-length _%self125001%_))
                        (begin
                          (##unchecked-structure-set!
                           _%self125001%_
                           '#f
                           '1
                           '#f
                           '#f)
                          (##unchecked-structure-set!
                           _%self125001%_
                           (make-hash-table-eq)
                           '2
                           '#f
                           '#f)
                          (##unchecked-structure-set!
                           _%self125001%_
                           _%super125017%_
                           '3
                           '#f
                           '#f)
                          (##unchecked-structure-set!
                           _%self125001%_
                           '#f
                           '4
                           '#f
                           '#f)
                          (##unchecked-structure-set!
                           _%self125001%_
                           '#f
                           '5
                           '#f
                           '#f)
                          (##unchecked-structure-set!
                           _%self125001%_
                           '#f
                           '6
                           '#f
                           '#f)
                          (##unchecked-structure-set!
                           _%self125001%_
                           '()
                           '7
                           '#f
                           '#f)
                          (##unchecked-structure-set!
                           _%self125001%_
                           '#f
                           '8
                           '#f
                           '#f)
                          '#!void)
                        (error '"struct-instance-init!: too many arguments for struct"
                               _%self125001%_
                               '8
                               (##vector-length _%self125001%_))))))))))
    (define gx#prelude-context:::init!__0
      (lambda (_%self125032%_ _%ctx125033%_)
        (let ((_%root125035%_ '#f))
          (gx#prelude-context:::init!__%
           _%self125032%_
           _%ctx125033%_
           _%root125035%_))))
    (define gx#prelude-context:::init!
      (lambda _g125252_
        (let ((_g125251_ (##length _g125252_)))
          (cond ((##fx= _g125251_ 2)
                 (apply (lambda (_%self125032%_ _%ctx125033%_)
                          (gx#prelude-context:::init!__0
                           _%self125032%_
                           _%ctx125033%_))
                        _g125252_))
                ((##fx= _g125251_ 3)
                 (apply (lambda (_%self125037%_ _%ctx125038%_ _%root125039%_)
                          (gx#prelude-context:::init!__%
                           _%self125037%_
                           _%ctx125038%_
                           _%root125039%_))
                        _g125252_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g125252_))))))
    (__bind-method!
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_%self124870%_ _%e124871%_)
        (if (##fx< '3 (##structure-length _%self124870%_))
            (begin
              (##unchecked-structure-set!
               _%self124870%_
               _%e124871%_
               '1
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self124870%_
               (gx#current-expander-context)
               '2
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self124870%_
               (##fx- (gx#current-expander-phi) '1)
               '3
               '#f
               '#f)
              '#!void)
            (error '"struct-instance-init!: too many arguments for struct"
                   _%self124870%_
                   '3
                   (##vector-length _%self124870%_)))))
    (define gx#import-expander:::init! gx#import-export-expander-init!)
    (__bind-method!
     gx#import-expander::t
     ':init!
     gx#import-expander:::init!
     '#f)
    (define gx#export-expander:::init! gx#import-export-expander-init!)
    (__bind-method!
     gx#export-expander::t
     ':init!
     gx#export-expander:::init!
     '#f)
    (define gx#import-export-expander:::init! gx#import-export-expander-init!)
    (__bind-method!
     gx#import-export-expander::t
     ':init!
     gx#import-export-expander:::init!
     '#f)
    (define gx#import-expander::apply-import-expander
      (lambda (_%g124496124499%_ _%g124497124501%_)
        (gx#core-apply-user-expander__%
         _%g124496124499%_
         _%g124497124501%_
         'apply-import-expander)))
    (__bind-method!
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_%g124367124370%_ _%g124368124372%_)
        (gx#core-apply-user-expander__%
         _%g124367124370%_
         _%g124368124372%_
         'apply-export-expander)))
    (__bind-method!
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_%ctx124238%_)
        (let* ((_%path124240%_
                (##structure-ref _%ctx124238%_ '7 gx#module-context::t '#f))
               (_%path124242%_
                (if (pair? _%path124240%_)
                    (last _%path124240%_)
                    _%path124240%_)))
          (if (string? _%path124242%_) _%path124242%_ '#f))))
    (define gx#import-module__%
      (lambda (_%path124214%_ _%reload?124215%_ _%eval?124216%_)
        (let ((_%ctx124218%_
               ((gx#current-expander-module-import)
                _%path124214%_
                _%reload?124215%_)))
          (if (and _%ctx124218%_ _%eval?124216%_)
              (gx#eval-module _%ctx124218%_)
              '#!void)
          _%ctx124218%_)))
    (define gx#import-module__0
      (lambda (_%path124223%_)
        (let* ((_%reload?124225%_ '#f) (_%eval?124227%_ '#f))
          (gx#import-module__%
           _%path124223%_
           _%reload?124225%_
           _%eval?124227%_))))
    (define gx#import-module__1
      (lambda (_%path124229%_ _%reload?124230%_)
        (let ((_%eval?124232%_ '#f))
          (gx#import-module__%
           _%path124229%_
           _%reload?124230%_
           _%eval?124232%_))))
    (define gx#import-module
      (lambda _g125254_
        (let ((_g125253_ (##length _g125254_)))
          (cond ((##fx= _g125253_ 1)
                 (apply (lambda (_%path124223%_)
                          (gx#import-module__0 _%path124223%_))
                        _g125254_))
                ((##fx= _g125253_ 2)
                 (apply (lambda (_%path124229%_ _%reload?124230%_)
                          (gx#import-module__1
                           _%path124229%_
                           _%reload?124230%_))
                        _g125254_))
                ((##fx= _g125253_ 3)
                 (apply (lambda (_%path124234%_
                                 _%reload?124235%_
                                 _%eval?124236%_)
                          (gx#import-module__%
                           _%path124234%_
                           _%reload?124235%_
                           _%eval?124236%_))
                        _g125254_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g125254_))))))
    (define gx#eval-module
      (lambda (_%mod124211%_)
        ((gx#current-expander-module-eval) _%mod124211%_)))
    (define gx#core-eval-module
      (lambda (_%obj124191%_)
        (letrec ((_%force-e124193%_
                  (lambda (_%getf124207%_ _%e124208%_)
                    (__call-with-parameters
                     (lambda () (force (_%getf124207%_ _%e124208%_)))
                     gx#current-expander-context
                     _%e124208%_
                     gx#current-expander-phi
                     '0))))
          (let _%recur124195%_ ((_%e124197%_ _%obj124191%_))
            (if (##structure-instance-of? _%e124197%_ 'gx#module-context::t)
                (let ()
                  (let ((_%$e124200%_
                         (gx#core-context-prelude__% _%e124197%_)))
                    (if _%$e124200%_ (_%recur124195%_ _%$e124200%_) '#!void))
                  (_%force-e124193%_ gx#module-context-e _%e124197%_))
                (if (##structure-instance-of?
                     _%e124197%_
                     'gx#prelude-context::t)
                    (let ()
                      (_%force-e124193%_ gx#prelude-context-e _%e124197%_))
                    (if (gx#stx-string? _%e124197%_)
                        (let ()
                          (_%recur124195%_
                           (gx#import-module__0
                            (gx#core-resolve-module-path__0 _%e124197%_))))
                        (if (gx#core-library-module-path? _%e124197%_)
                            (let ()
                              (_%recur124195%_
                               (gx#import-module__0
                                (gx#core-resolve-library-module-path
                                 _%e124197%_))))
                            (let ()
                              (error '"Cannot eval module"
                                     _%obj124191%_))))))))))
    (define gx#core-context-prelude__%
      (lambda (_%ctx124171%_)
        (let _%lp124173%_ ((_%e124175%_ _%ctx124171%_))
          (if (or (##structure-instance-of? _%e124175%_ 'gx#module-context::t)
                  (##structure-instance-of? _%e124175%_ 'gx#local-context::t))
              (let ()
                (_%lp124173%_
                 (##unchecked-structure-ref _%e124175%_ '3 '#f '#f)))
              (if (##structure-instance-of? _%e124175%_ 'gx#prelude-context::t)
                  (let () _%e124175%_)
                  (let () '#f))))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_%ctx124187%_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _%ctx124187%_))))
    (define gx#core-context-prelude
      (lambda _g125256_
        (let ((_g125255_ (##length _g125256_)))
          (cond ((##fx= _g125255_ 0)
                 (apply (lambda () (gx#core-context-prelude__0)) _g125256_))
                ((##fx= _g125255_ 1)
                 (apply (lambda (_%ctx124189%_)
                          (gx#core-context-prelude__% _%ctx124189%_))
                        _g125256_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g125256_))))))
    (define gx#core-module->prelude-context
      (lambda (_%ctx124162%_)
        (let ((_%$e124164%_ (hash-get gx#__module-registry _%ctx124162%_)))
          (if _%$e124164%_
              _%$e124164%_
              (let ()
                (let ((_%pre124168%_
                       (let ((__obj125247
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
                         (gx#prelude-context:::init! __obj125247 _%ctx124162%_)
                         __obj125247)))
                  (hash-put! gx#__module-registry _%ctx124162%_ _%pre124168%_)
                  _%pre124168%_))))))
    (define gx#core-import-module__%
      (lambda (_%rpath124034%_ _%reload?124035%_)
        (letrec ((_%import-source124037%_
                  (lambda (_%path124126%_)
                    (if (member _%path124126%_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _%path124126%_)
                        '#!void)
                    (__call-with-parameters
                     (lambda ()
                       (let ((_g125257_ (gx#core-read-module _%path124126%_)))
                         (begin
                           (let ((_g125258_
                                  (if (##values? _g125257_)
                                      (##vector-length _g125257_)
                                      1)))
                             (if (not (##fx= _g125258_ 4))
                                 (error "Context expects 4 values" _g125258_)))
                           (let ((_%pre124129%_ (##vector-ref _g125257_ 0))
                                 (_%id124130%_ (##vector-ref _g125257_ 1))
                                 (_%ns124131%_ (##vector-ref _g125257_ 2))
                                 (_%body124132%_ (##vector-ref _g125257_ 3)))
                             (let* ((_%prelude124142%_
                                     (if (##structure-instance-of?
                                          _%pre124129%_
                                          'gx#prelude-context::t)
                                         (let () _%pre124129%_)
                                         (if (##structure-instance-of?
                                              _%pre124129%_
                                              'gx#module-context::t)
                                             (let ()
                                               (gx#core-module->prelude-context
                                                _%pre124129%_))
                                             (if (string? _%pre124129%_)
                                                 (let ()
                                                   (gx#core-module->prelude-context
                                                    (gx#core-import-module__0
                                                     _%pre124129%_)))
                                                 (if (not _%pre124129%_)
                                                     (let ()
                                                       (let ((_%$e124138%_
                                                              (gx#current-expander-module-prelude)))
                                                         (if _%$e124138%_
                                                             _%$e124138%_
                                                             (let ((__obj125248
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
                       (gx#prelude-context:::init! __obj125248 '#f)
                       __obj125248))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (error '"Cannot import module; unknown prelude"
                                                              _%rpath124034%_
                                                              _%pre124129%_)))))))
                                    (_%ctx124144%_
                                     (let ((__obj125249
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
                                        __obj125249
                                        _%id124130%_
                                        _%prelude124142%_
                                        _%ns124131%_
                                        _%path124126%_)
                                       __obj125249))
                                    (_%body124146%_
                                     (gx#core-expand-module-begin
                                      _%body124132%_
                                      _%ctx124144%_))
                                    (_%body124148%_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _%body124146%_)
                                      _%path124126%_
                                      _%ctx124144%_
                                      '())))
                               (##unchecked-structure-set!
                                _%ctx124144%_
                                (__make-promise
                                 (lambda () (gx#eval-syntax* _%body124148%_)))
                                '10
                                '#f
                                '#f)
                               (##unchecked-structure-set!
                                _%ctx124144%_
                                _%body124148%_
                                '11
                                '#f
                                '#f)
                               (hash-put!
                                gx#__module-registry
                                _%path124126%_
                                _%ctx124144%_)
                               (hash-put!
                                gx#__module-registry
                                _%id124130%_
                                _%ctx124144%_)
                               _%ctx124144%_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _%path124126%_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_%import-submodule124038%_
                  (lambda (_%rpath124054%_)
                    (let* ((_%rpath124055124062%_ _%rpath124054%_)
                           (_%E124057124066%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%rpath124055124062%_
                                     '([origin . refs]))
                              '#!void))
                           (_%K124058124114%_
                            (lambda (_%refs124069%_ _%origin124070%_)
                              (let ((_%ctx124072%_
                                     (if _%origin124070%_
                                         (gx#core-import-module__%
                                          _%origin124070%_
                                          _%reload?124035%_)
                                         (gx#current-expander-context))))
                                (let _%lp124074%_ ((_%rest124076%_
                                                    _%refs124069%_)
                                                   (_%ctx124077%_
                                                    _%ctx124072%_))
                                  (let* ((_%rest124078124086%_ _%rest124076%_)
                                         (_%else124080124094%_
                                          (lambda () _%ctx124077%_))
                                         (_%K124082124102%_
                                          (lambda (_%rest124097%_ _%id124098%_)
                                            (let ((_%bind124100%_
                                                   (gx#resolve-identifier__%
                                                    _%id124098%_
                                                    '0
                                                    _%ctx124077%_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _%bind124100%_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _%bind124100%_
                                                         '4
                                                         '#f
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_%lp124074%_
                                                   _%rest124097%_
                                                   (##unchecked-structure-ref
                                                    _%bind124100%_
                                                    '4
                                                    '#f
                                                    '#f))
                                                  (error '"Cannot import submodule; not bound as a module"
                                                         _%rpath124054%_
                                                         _%id124098%_
                                                         _%bind124100%_))))))
                                    (if (##pair? _%rest124078124086%_)
                                        (let ((_%hd124083124105%_
                                               (##car _%rest124078124086%_))
                                              (_%tl124084124107%_
                                               (##cdr _%rest124078124086%_)))
                                          (let* ((_%id124110%_
                                                  _%hd124083124105%_)
                                                 (_%rest124112%_
                                                  _%tl124084124107%_))
                                            (_%K124082124102%_
                                             _%rest124112%_
                                             _%id124110%_)))
                                        (_%else124080124094%_))))))))
                      (if (##pair? _%rpath124055124062%_)
                          (let ((_%hd124059124117%_
                                 (##car _%rpath124055124062%_))
                                (_%tl124060124119%_
                                 (##cdr _%rpath124055124062%_)))
                            (let* ((_%origin124122%_ _%hd124059124117%_)
                                   (_%refs124124%_ _%tl124060124119%_))
                              (_%K124058124114%_
                               _%refs124124%_
                               _%origin124122%_)))
                          (_%E124057124066%_))))))
          (let ((_%$e124040%_
                 (if (not _%reload?124035%_)
                     (hash-get gx#__module-registry _%rpath124034%_)
                     '#f)))
            (if _%$e124040%_
                (values _%$e124040%_)
                (if (list? _%rpath124034%_)
                    (let () (_%import-submodule124038%_ _%rpath124034%_))
                    (if (gx#core-library-module-path? _%rpath124034%_)
                        (let ()
                          (let ((_%ctx124045%_
                                 (gx#core-import-module__%
                                  (gx#core-resolve-library-module-path
                                   _%rpath124034%_)
                                  _%reload?124035%_)))
                            (hash-put!
                             gx#__module-registry
                             _%rpath124034%_
                             _%ctx124045%_)
                            _%ctx124045%_))
                        (let ()
                          (let* ((_%npath124048%_
                                  (path-normalize _%rpath124034%_))
                                 (_%$e124050%_
                                  (if (not _%reload?124035%_)
                                      (hash-get
                                       gx#__module-registry
                                       _%npath124048%_)
                                      '#f)))
                            (if _%$e124050%_
                                _%$e124050%_
                                (let ()
                                  (_%import-source124037%_
                                   _%npath124048%_))))))))))))
    (define gx#core-import-module__0
      (lambda (_%rpath124155%_)
        (let ((_%reload?124157%_ '#f))
          (gx#core-import-module__% _%rpath124155%_ _%reload?124157%_))))
    (define gx#core-import-module
      (lambda _g125260_
        (let ((_g125259_ (##length _g125260_)))
          (cond ((##fx= _g125259_ 1)
                 (apply (lambda (_%rpath124155%_)
                          (gx#core-import-module__0 _%rpath124155%_))
                        _g125260_))
                ((##fx= _g125259_ 2)
                 (apply (lambda (_%rpath124159%_ _%reload?124160%_)
                          (gx#core-import-module__%
                           _%rpath124159%_
                           _%reload?124160%_))
                        _g125260_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g125260_))))))
    (define gx#core-read-module
      (lambda (_%path124023%_)
        (__with-catch
         (lambda (_%exn124025%_)
           (if (and (datum-parsing-exception? _%exn124025%_)
                    (eq? (datum-parsing-exception-filepos _%exn124025%_) '0))
               (gx#core-read-module/lang _%path124023%_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _%path124023%_
                (__call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_%g124027124029%_)
                      (display-exception _%exn124025%_ _%g124027124029%_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _%path124023%_)))))
    (define gx#core-read-module/sexp
      (lambda (_%path123875%_)
        (let _%lp123877%_ ((_%body123879%_
                            (read-syntax-from-file _%path123875%_))
                           (_%pre123880%_ '#f)
                           (_%ns123881%_ '#f)
                           (_%pkg123882%_ '#f))
          (let* ((_%e123883123907%_ _%body123879%_)
                 (_%E123899123933%_
                  (lambda ()
                    (let ((_g125261_
                           (if _%pkg123882%_
                               (values _%pre123880%_
                                       _%ns123881%_
                                       _%pkg123882%_)
                               (gx#core-read-module-package
                                _%path123875%_
                                _%pre123880%_
                                _%ns123881%_))))
                      (begin
                        (let ((_g125262_
                               (if (##values? _g125261_)
                                   (##vector-length _g125261_)
                                   1)))
                          (if (not (##fx= _g125262_ 3))
                              (error "Context expects 3 values" _g125262_)))
                        (let ((_%pre123911%_ (##vector-ref _g125261_ 0))
                              (_%ns123912%_ (##vector-ref _g125261_ 1))
                              (_%pkg123913%_ (##vector-ref _g125261_ 2)))
                          (let* ((_%prelude123919%_
                                  (if (gx#core-bound-module-prelude?
                                       _%pre123911%_)
                                      (let ()
                                        (gx#syntax-local-e__0 _%pre123911%_))
                                      (if (gx#core-library-module-path?
                                           _%pre123911%_)
                                          (let ()
                                            (gx#core-resolve-library-module-path
                                             _%pre123911%_))
                                          (if (gx#stx-string? _%pre123911%_)
                                              (let ()
                                                (gx#core-resolve-module-path__%
                                                 _%pre123911%_
                                                 _%path123875%_))
                                              (let ()
                                                (gx#stx-e _%pre123911%_))))))
                                 (_%path-id123921%_
                                  (gx#core-module-path->namespace
                                   _%path123875%_))
                                 (_%pkg-id123923%_
                                  (if _%pkg123913%_
                                      (string-append
                                       _%pkg123913%_
                                       '"/"
                                       _%path-id123921%_)
                                      _%path-id123921%_))
                                 (_%module-id123925%_
                                  (string->symbol _%pkg-id123923%_))
                                 (_%module-ns123930%_
                                  (if (eq? _%ns123912%_ '#!void)
                                      '#f
                                      (let ((_%$e123927%_ _%ns123912%_))
                                        (if _%$e123927%_
                                            _%$e123927%_
                                            _%pkg-id123923%_)))))
                            (values _%prelude123919%_
                                    _%module-id123925%_
                                    _%module-ns123930%_
                                    _%body123879%_)))))))
                 (_%E123892123965%_
                  (lambda ()
                    (if (gx#stx-pair? _%e123883123907%_)
                        (let ((_%e123900123937%_
                               (gx#syntax-e _%e123883123907%_)))
                          (let ((_%hd123901123940%_ (##car _%e123900123937%_))
                                (_%tl123902123942%_ (##cdr _%e123900123937%_)))
                            (if (eq? (gx#stx-e _%hd123901123940%_) 'package:)
                                (if (gx#stx-pair? _%tl123902123942%_)
                                    (let ((_%e123903123945%_
                                           (gx#syntax-e _%tl123902123942%_)))
                                      (let ((_%hd123904123948%_
                                             (##car _%e123903123945%_))
                                            (_%tl123905123950%_
                                             (##cdr _%e123903123945%_)))
                                        (let* ((_%pkg123953%_
                                                _%hd123904123948%_)
                                               (_%rest123955%_
                                                _%tl123905123950%_))
                                          (if '#t
                                              (let ((_%pkg123963%_
                                                     (if (gx#identifier?
                                                          _%pkg123953%_)
                                                         (let ()
                                                           (symbol->string
                                                            (gx#stx-e
                                                             _%pkg123953%_)))
                                                         (if (or (gx#stx-string?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%pkg123953%_)
                         (gx#stx-false? _%pkg123953%_))
                     (let () (gx#stx-e _%pkg123953%_))
                     (let ()
                       (gx#raise-syntax-error
                        'import
                        '"Bad syntax; Illegal package name"
                        _%pkg123953%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%lp123877%_
                                                 _%rest123955%_
                                                 _%pre123880%_
                                                 _%ns123881%_
                                                 _%pkg123963%_))
                                              (_%E123899123933%_)))))
                                    (_%E123899123933%_))
                                (_%E123899123933%_))))
                        (_%E123899123933%_))))
                 (_%E123885123995%_
                  (lambda ()
                    (if (gx#stx-pair? _%e123883123907%_)
                        (let ((_%e123893123969%_
                               (gx#syntax-e _%e123883123907%_)))
                          (let ((_%hd123894123972%_ (##car _%e123893123969%_))
                                (_%tl123895123974%_ (##cdr _%e123893123969%_)))
                            (if (eq? (gx#stx-e _%hd123894123972%_) 'namespace:)
                                (if (gx#stx-pair? _%tl123895123974%_)
                                    (let ((_%e123896123977%_
                                           (gx#syntax-e _%tl123895123974%_)))
                                      (let ((_%hd123897123980%_
                                             (##car _%e123896123977%_))
                                            (_%tl123898123982%_
                                             (##cdr _%e123896123977%_)))
                                        (let* ((_%ns123985%_
                                                _%hd123897123980%_)
                                               (_%rest123987%_
                                                _%tl123898123982%_))
                                          (if '#t
                                              (let ((_%ns123993%_
                                                     (if (gx#identifier?
                                                          _%ns123985%_)
                                                         (let ()
                                                           (symbol->string
                                                            (gx#stx-e
                                                             _%ns123985%_)))
                                                         (if (gx#stx-string?
                                                              _%ns123985%_)
                                                             (let ()
                                                               (gx#stx-e
                                                                _%ns123985%_))
                                                             (if (gx#stx-false?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%ns123985%_)
                         (let () '#!void)
                         (let ()
                           (gx#raise-syntax-error
                            'import
                            '"Bad syntax; illegal namespace"
                            _%ns123985%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%lp123877%_
                                                 _%rest123987%_
                                                 _%pre123880%_
                                                 _%ns123993%_
                                                 _%pkg123882%_))
                                              (_%E123892123965%_)))))
                                    (_%E123892123965%_))
                                (_%E123892123965%_))))
                        (_%E123892123965%_))))
                 (_%E123884124019%_
                  (lambda ()
                    (if (gx#stx-pair? _%e123883123907%_)
                        (let ((_%e123886123999%_
                               (gx#syntax-e _%e123883123907%_)))
                          (let ((_%hd123887124002%_ (##car _%e123886123999%_))
                                (_%tl123888124004%_ (##cdr _%e123886123999%_)))
                            (if (eq? (gx#stx-e _%hd123887124002%_) 'prelude:)
                                (if (gx#stx-pair? _%tl123888124004%_)
                                    (let ((_%e123889124007%_
                                           (gx#syntax-e _%tl123888124004%_)))
                                      (let ((_%hd123890124010%_
                                             (##car _%e123889124007%_))
                                            (_%tl123891124012%_
                                             (##cdr _%e123889124007%_)))
                                        (let* ((_%prelude124015%_
                                                _%hd123890124010%_)
                                               (_%rest124017%_
                                                _%tl123891124012%_))
                                          (if '#t
                                              (_%lp123877%_
                                               _%rest124017%_
                                               _%prelude124015%_
                                               _%ns123881%_
                                               _%pkg123882%_)
                                              (_%E123885123995%_)))))
                                    (_%E123885123995%_))
                                (_%E123885123995%_))))
                        (_%E123885123995%_)))))
            (_%E123884124019%_)))))
    (define gx#core-read-module/lang
      (lambda (_%path123697%_)
        (letrec ((_%default-read-module-body123699%_
                  (lambda (_%inp123867%_)
                    (let _%lp123869%_ ((_%body123871%_ '()))
                      (let ((_%next123873%_ (read-syntax__% _%inp123867%_)))
                        (if (eof-object? _%next123873%_)
                            (reverse _%body123871%_)
                            (_%lp123869%_
                             (cons _%next123873%_ _%body123871%_)))))))
                 (_%read-body123700%_
                  (lambda (_%inp123785%_
                           _%pre123786%_
                           _%ns123787%_
                           _%pkg123788%_
                           _%args123789%_)
                    (let ((_g125263_
                           (if _%pkg123788%_
                               (values _%pre123786%_
                                       _%ns123787%_
                                       _%pkg123788%_)
                               (gx#core-read-module-package
                                _%path123697%_
                                _%pre123786%_
                                _%ns123787%_))))
                      (begin
                        (let ((_g125264_
                               (if (##values? _g125263_)
                                   (##vector-length _g125263_)
                                   1)))
                          (if (not (##fx= _g125264_ 3))
                              (error "Context expects 3 values" _g125264_)))
                        (let ((_%pre123791%_ (##vector-ref _g125263_ 0))
                              (_%ns123792%_ (##vector-ref _g125263_ 1))
                              (_%pkg123793%_ (##vector-ref _g125263_ 2)))
                          (let* ((_%prelude123795%_
                                  (gx#import-module__0 _%pre123791%_))
                                 (_%read-module-body123850%_
                                  (let ((_%$e123841%_
                                         (__find (lambda (_%e123796123798%_)
                                                   (let* ((_%g123800123810%_
                                                           _%e123796123798%_)
                                                          (_%else123802123818%_
                                                           (lambda () '#f))
                                                          (_%K123804123822%_
                                                           (lambda () '#t)))
                                                     (if (##structure-direct-instance-of?
                                                          _%g123800123810%_
                                                          'gx#module-export::t)
                                                         (let* ((_%e123805123825%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##unchecked-structure-ref
                          _%g123800123810%_
                          '1
                          '#f
                          '#f))
                        (_%e123806123828%_
                         (##unchecked-structure-ref
                          _%g123800123810%_
                          '2
                          '#f
                          '#f))
                        (_%e123807123831%_
                         (##unchecked-structure-ref
                          _%g123800123810%_
                          '3
                          '#f
                          '#f)))
                   (if (##eq? _%e123807123831%_ '1)
                       (let ((_%e123808123834%_
                              (##unchecked-structure-ref
                               _%g123800123810%_
                               '4
                               '#f
                               '#f)))
                         (if ((lambda (_%g123836123838%_)
                                (eq? _%g123836123838%_ 'read-module-body))
                              _%e123808123834%_)
                             (_%K123804123822%_)
                             (_%else123802123818%_)))
                       (_%else123802123818%_)))
                 (_%else123802123818%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (##unchecked-structure-ref
                                                  _%prelude123795%_
                                                  '9
                                                  '#f
                                                  '#f))))
                                    (if _%$e123841%_
                                        ((lambda (_%xport123844%_)
                                           (let ((_%proc123847%_
                                                  (__with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _%xport123844%_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _%proc123847%_)
                                                 _%proc123847%_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _%path123697%_
                                                  _%pre123791%_
                                                  _%proc123847%_))))
                                         _%$e123841%_)
                                        (let ()
                                          _%default-read-module-body123699%_))))
                                 (_%path-id123852%_
                                  (gx#core-module-path->namespace
                                   _%path123697%_))
                                 (_%pkg-id123854%_
                                  (if _%pkg123793%_
                                      (string-append
                                       _%pkg123793%_
                                       '"/"
                                       _%path-id123852%_)
                                      _%path-id123852%_))
                                 (_%module-id123856%_
                                  (string->symbol _%pkg-id123854%_))
                                 (_%module-ns123861%_
                                  (let ((_%$e123858%_ _%ns123792%_))
                                    (if _%$e123858%_
                                        _%$e123858%_
                                        _%pkg-id123854%_)))
                                 (_%body123864%_
                                  (__call-with-parameters
                                   (lambda ()
                                     (_%read-module-body123850%_
                                      _%inp123785%_))
                                   gx#current-module-reader-path
                                   _%path123697%_
                                   gx#current-module-reader-args
                                   _%args123789%_)))
                            (values _%prelude123795%_
                                    _%module-id123856%_
                                    _%module-ns123861%_
                                    _%body123864%_)))))))
                 (_%string-e123701%_
                  (lambda (_%obj123779%_ _%what123780%_)
                    (if (string? _%obj123779%_)
                        (let () _%obj123779%_)
                        (if (symbol? _%obj123779%_)
                            (let () (symbol->string _%obj123779%_))
                            (let ()
                              (gx#raise-syntax-error
                               '#f
                               (string-append
                                '"Illegal module "
                                _%what123780%_)
                               _%path123697%_
                               _%obj123779%_))))))
                 (_%read-lang-args123702%_
                  (lambda (_%inp123734%_ _%args123735%_)
                    (let* ((_%args123736123744%_ _%args123735%_)
                           (_%else123738123752%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _%path123697%_)))
                           (_%K123740123767%_
                            (lambda (_%args123755%_ _%prelude123756%_)
                              (let* ((_%pkg123758%_
                                      (pgetq__0 'package: _%args123755%_))
                                     (_%pkg123760%_
                                      (if _%pkg123758%_
                                          (_%string-e123701%_
                                           _%pkg123758%_
                                           '"package")
                                          '#f))
                                     (_%ns123762%_
                                      (pgetq__0 'namespace: _%args123755%_))
                                     (_%ns123764%_
                                      (if _%ns123762%_
                                          (_%string-e123701%_
                                           _%ns123762%_
                                           '"namespace")
                                          '#f)))
                                (_%read-body123700%_
                                 _%inp123734%_
                                 _%prelude123756%_
                                 _%ns123764%_
                                 _%pkg123760%_
                                 _%args123755%_)))))
                      (if (##pair? _%args123736123744%_)
                          (let ((_%hd123741123770%_
                                 (##car _%args123736123744%_))
                                (_%tl123742123772%_
                                 (##cdr _%args123736123744%_)))
                            (let* ((_%prelude123775%_ _%hd123741123770%_)
                                   (_%args123777%_ _%tl123742123772%_))
                              (_%K123740123767%_
                               _%args123777%_
                               _%prelude123775%_)))
                          (_%else123738123752%_)))))
                 (_%read-lang123703%_
                  (lambda (_%inp123708%_)
                    (let* ((_%head123710%_ (read-line _%inp123708%_))
                           (_%$e123712%_
                            (string-index__0 _%head123710%_ '#\space)))
                      (if _%$e123712%_
                          ((lambda (_%ix123715%_)
                             (let ((_%lang123717%_
                                    (substring
                                     _%head123710%_
                                     '0
                                     _%ix123715%_)))
                               (if (equal? _%lang123717%_ '"#lang")
                                   (let* ((_%rest123719%_
                                           (substring
                                            _%head123710%_
                                            (##fx+ _%ix123715%_ '1)
                                            (##string-length _%head123710%_)))
                                          (_%args123730%_
                                           (__with-catch
                                            (lambda (_%g123720123722%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _%path123697%_
                                               _%g123720123722%_))
                                            (lambda ()
                                              (call-with-input-string
                                               _%rest123719%_
                                               (lambda (_%g123725123727%_)
                                                 (read-all
                                                  _%g123725123727%_
                                                  read)))))))
                                     (_%read-lang-args123702%_
                                      _%inp123708%_
                                      _%args123730%_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _%path123697%_))))
                           _%$e123712%_)
                          (let ()
                            (gx#raise-syntax-error
                             '#f
                             '"Illegal module syntax"
                             _%path123697%_))))))
                 (_%read-e123704%_
                  (lambda (_%inp123706%_)
                    (if (eq? (peek-char _%inp123706%_) '#\#)
                        (_%read-lang123703%_ _%inp123706%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _%path123697%_)))))
          (gx#call-with-input-source-file _%path123697%_ _%read-e123704%_))))
    (define gx#core-read-module-package
      (lambda (_%path123645%_ _%pre123646%_ _%ns123647%_)
        (letrec ((_%string-e123649%_
                  (lambda (_%e123692%_)
                    (if (symbol? _%e123692%_)
                        (let () (symbol->string _%e123692%_))
                        (if (string? _%e123692%_)
                            (let () _%e123692%_)
                            (let ()
                              (gx#raise-syntax-error
                               '#f
                               '"Malformed package info; unexpected datum"
                               _%e123692%_)))))))
          (let _%lp123651%_ ((_%dir123653%_ (path-directory _%path123645%_))
                             (_%pkg-path123654%_ '()))
            (let ((_%gerbil.pkg123656%_
                   (path-expand '"gerbil.pkg" _%dir123653%_)))
              (if (##file-exists? _%gerbil.pkg123656%_)
                  (let ((_%plist123658%_
                         (gx#core-library-package-plist__% _%dir123653%_ '#t)))
                    (if (null? _%plist123658%_)
                        (let ()
                          (let ((_%pkg123661%_
                                 (if (not (null? _%pkg-path123654%_))
                                     (string-join _%pkg-path123654%_ '"/")
                                     '#f)))
                            (values _%pre123646%_ _%ns123647%_ _%pkg123661%_)))
                        (if (list? _%plist123658%_)
                            (let ()
                              (let* ((_%root123664%_
                                      (pgetq__0 'package: _%plist123658%_))
                                     (_%pkg123668%_
                                      (let ((_%pkg-path123666%_
                                             (if _%root123664%_
                                                 (cons (_%string-e123649%_
                                                        _%root123664%_)
                                                       _%pkg-path123654%_)
                                                 _%pkg-path123654%_)))
                                        (if (not (null? _%pkg-path123666%_))
                                            (string-join
                                             _%pkg-path123666%_
                                             '"/")
                                            '#f)))
                                     (_%ns123675%_
                                      (let ((_%ns123673%_
                                             (let ((_%$e123670%_ _%ns123647%_))
                                               (if _%$e123670%_
                                                   _%$e123670%_
                                                   (pgetq__0
                                                    'namespace:
                                                    _%plist123658%_)))))
                                        (if _%ns123673%_
                                            (_%string-e123649%_ _%ns123673%_)
                                            '#f)))
                                     (_%pre123680%_
                                      (let ((_%$e123677%_ _%pre123646%_))
                                        (if _%$e123677%_
                                            _%$e123677%_
                                            (pgetq__0
                                             'prelude:
                                             _%plist123658%_)))))
                                (values _%pre123680%_
                                        _%ns123675%_
                                        _%pkg123668%_)))
                            (let ()
                              (gx#raise-syntax-error
                               '#f
                               '"Malformed package info; unexpected datum"
                               _%plist123658%_)))))
                  (let ((_%dir*123684%_
                         (path-strip-trailing-directory-separator
                          _%dir123653%_)))
                    (if (or (__string-empty? _%dir*123684%_)
                            (equal? _%dir123653%_ _%dir*123684%_))
                        (values _%pre123646%_ _%ns123647%_ '#f)
                        (let ((_%xpath123689%_
                               (path-strip-directory _%dir*123684%_))
                              (_%xdir123690%_ (path-directory _%dir*123684%_)))
                          (_%lp123651%_
                           _%xdir123690%_
                           (cons _%xpath123689%_ _%pkg-path123654%_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_%path123643%_)
        (path-strip-extension (path-strip-directory _%path123643%_))))
    (define gx#core-module-path->id
      (lambda (_%path123641%_)
        (##string->symbol (gx#core-module-path->namespace _%path123641%_))))
    (define gx#core-resolve-module-path__%
      (lambda (_%stx-path123620%_ _%rel123621%_)
        (let* ((_%path123623%_ (gx#stx-e _%stx-path123620%_))
               (_%path123625%_
                (if (__string-empty? (path-extension _%path123623%_))
                    (##string-append _%path123623%_ '".ss")
                    _%path123623%_)))
          (gx#core-resolve-path__%
           _%path123625%_
           (let ((_%$e123628%_ (gx#stx-source _%stx-path123620%_)))
             (if _%$e123628%_ _%$e123628%_ _%rel123621%_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_%stx-path123634%_)
        (let ((_%rel123636%_ '#f))
          (gx#core-resolve-module-path__% _%stx-path123634%_ _%rel123636%_))))
    (define gx#core-resolve-module-path
      (lambda _g125266_
        (let ((_g125265_ (##length _g125266_)))
          (cond ((##fx= _g125265_ 1)
                 (apply (lambda (_%stx-path123634%_)
                          (gx#core-resolve-module-path__0 _%stx-path123634%_))
                        _g125266_))
                ((##fx= _g125265_ 2)
                 (apply (lambda (_%stx-path123638%_ _%rel123639%_)
                          (gx#core-resolve-module-path__%
                           _%stx-path123638%_
                           _%rel123639%_))
                        _g125266_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g125266_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_%libpath123505%_)
        (let* ((_%spath123507%_ (symbol->string (gx#stx-e _%libpath123505%_)))
               (_%spath123509%_
                (substring
                 _%spath123507%_
                 '1
                 (##string-length _%spath123507%_)))
               (_%ext123511%_ (path-extension _%spath123509%_))
               (_%ssi123513%_
                (if (__string-empty? _%ext123511%_)
                    (##string-append _%spath123509%_ '".ssi")
                    (##string-append
                     (path-strip-extension _%spath123509%_)
                     '".ssi")))
               (_%srcs123517%_
                (if (__string-empty? _%ext123511%_)
                    (##map (lambda (_%ext123515%_)
                             (string-append _%spath123509%_ _%ext123515%_))
                           '(".ss" ".sld" ".scm"))
                    (cons _%spath123509%_ '()))))
          (let _%lp123520%_ ((_%rest123522%_ (load-path)))
            (let* ((_%rest123523123532%_ _%rest123522%_)
                   (_%E123526123536%_
                    (lambda ()
                      (error '"No clause matching"
                             _%rest123523123532%_
                             '([dir . rest])
                             '([]))
                      '#!void)))
              (let ((_%K123528123607%_
                     (lambda (_%rest123547%_ _%dir123548%_)
                       (letrec ((_%resolve123550%_
                                 (lambda (_%ssi123563%_ _%srcs123564%_)
                                   (let ((_%compiled-path123566%_
                                          (path-expand
                                           _%ssi123563%_
                                           _%dir123548%_)))
                                     (if (##file-exists?
                                          _%compiled-path123566%_)
                                         (path-normalize
                                          _%compiled-path123566%_)
                                         (let _%lpr123568%_ ((_%rest-src123570%_
                                                              _%srcs123564%_))
                                           (let* ((_%rest-src123571123579%_
                                                   _%rest-src123570%_)
                                                  (_%else123573123587%_
                                                   (lambda ()
                                                     (_%lp123520%_
                                                      _%rest123547%_)))
                                                  (_%K123575123595%_
                                                   (lambda (_%rest-src123590%_
                                                            _%src123591%_)
                                                     (let ((_%src-path123593%_
                                                            (path-expand
                                                             _%src123591%_
                                                             _%dir123548%_)))
                                                       (if (##file-exists?
                                                            _%src-path123593%_)
                                                           (path-normalize
                                                            _%src-path123593%_)
                                                           (_%lpr123568%_
                                                            _%rest-src123590%_))))))
                                             (if (##pair? _%rest-src123571123579%_)
                                                 (let ((_%hd123576123598%_
                                                        (##car _%rest-src123571123579%_))
                                                       (_%tl123577123600%_
                                                        (##cdr _%rest-src123571123579%_)))
                                                   (let* ((_%src123603%_
                                                           _%hd123576123598%_)
                                                          (_%rest-src123605%_
                                                           _%tl123577123600%_))
                                                     (_%K123575123595%_
                                                      _%rest-src123605%_
                                                      _%src123603%_)))
                                                 (_%else123573123587%_)))))))))
                         (let ((_%$e123552%_
                                (gx#core-library-package-path-prefix
                                 _%dir123548%_)))
                           (if _%$e123552%_
                               ((lambda (_%prefix123555%_)
                                  (if (string-prefix?
                                       _%prefix123555%_
                                       _%spath123509%_)
                                      (let ((_%ssi123559%_
                                             (substring
                                              _%ssi123513%_
                                              (string-length _%prefix123555%_)
                                              (##string-length _%ssi123513%_)))
                                            (_%srcs123560%_
                                             (##map (lambda (_%src123557%_)
                                                      (substring
                                                       _%src123557%_
                                                       (string-length
                                                        _%prefix123555%_)
                                                       (string-length
                                                        _%src123557%_)))
                                                    _%srcs123517%_)))
                                        (_%resolve123550%_
                                         _%ssi123559%_
                                         _%srcs123560%_))
                                      (_%lp123520%_ _%rest123547%_)))
                                _%$e123552%_)
                               (let ()
                                 (_%resolve123550%_
                                  _%ssi123513%_
                                  _%srcs123517%_)))))))
                    (_%K123527123541%_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"Cannot find library module"
                        _%libpath123505%_))))
                (let ((_%try-match123525123544%_
                       (lambda ()
                         (if (##null? _%rest123523123532%_)
                             (_%K123527123541%_)
                             (_%E123526123536%_)))))
                  (if (##pair? _%rest123523123532%_)
                      (let ((_%tl123530123612%_ (##cdr _%rest123523123532%_))
                            (_%hd123529123610%_ (##car _%rest123523123532%_)))
                        (let ((_%dir123615%_ _%hd123529123610%_)
                              (_%rest123617%_ _%tl123530123612%_))
                          (_%K123528123607%_ _%rest123617%_ _%dir123615%_)))
                      (_%try-match123525123544%_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_%modpath123473%_)
        (letrec ((_%resolve123475%_
                  (lambda (_%path123496%_ _%base123497%_)
                    (let ((_%$e123499%_
                           (string-rindex__0 _%base123497%_ '#\/)))
                      (if _%$e123499%_
                          ((lambda (_%idx123502%_)
                             (gx#core-resolve-library-module-path
                              (##string->symbol
                               (string-append
                                '":"
                                (substring _%base123497%_ '0 _%idx123502%_)
                                '"/"
                                _%path123496%_))))
                           _%$e123499%_)
                          (let ()
                            (gx#core-resolve-library-module-path
                             (##string->symbol
                              (string-append '":" _%path123496%_)))))))))
          (let ((_%spath123477%_ (symbol->string (gx#stx-e _%modpath123473%_)))
                (_%mod123478%_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _%mod123478%_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"Cannot resolve relative module path; not in module context"
                 _%modpath123473%_))
            (let ((_%mpath123480%_
                   (symbol->string
                    (##structure-ref
                     _%mod123478%_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _%lp123482%_ ((_%spath123484%_ _%spath123477%_)
                                 (_%mpath123485%_ _%mpath123480%_))
                (if (string-prefix? '"../" _%spath123484%_)
                    (let ()
                      (let ((_%$e123488%_
                             (string-rindex__0 _%mpath123485%_ '#\/)))
                        (if _%$e123488%_
                            ((lambda (_%idx123491%_)
                               (_%lp123482%_
                                (substring
                                 _%spath123484%_
                                 '3
                                 (string-length _%spath123484%_))
                                (substring _%mpath123485%_ '0 _%idx123491%_)))
                             _%$e123488%_)
                            (let ()
                              (gx#raise-syntax-error
                               '#f
                               '"Cannot resolve relative module path; illegal traversal"
                               _%modpath123473%_)))))
                    (if (string-prefix? '"./" _%spath123484%_)
                        (let ()
                          (_%lp123482%_
                           (substring
                            _%spath123484%_
                            '2
                            (string-length _%spath123484%_))
                           _%mpath123485%_))
                        (let ()
                          (_%resolve123475%_
                           _%spath123484%_
                           _%mpath123485%_))))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_%dir123465%_)
        (let ((_%$e123467%_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _%dir123465%_))))
          (if _%$e123467%_
              ((lambda (_%pkg123470%_)
                 (##string-append (symbol->string _%pkg123470%_) '"/"))
               _%$e123467%_)
              (let () '#f)))))
    (define gx#core-library-package-plist__%
      (lambda (_%dir123435%_ _%exists?123436%_)
        (let ((_%$e123438%_ (hash-get gx#__module-pkg-cache _%dir123435%_)))
          (if _%$e123438%_
              (values _%$e123438%_)
              (let ()
                (let* ((_%gerbil.pkg123442%_
                        (path-expand '"gerbil.pkg" _%dir123435%_))
                       (_%plist123452%_
                        (if (or _%exists?123436%_
                                (##file-exists? _%gerbil.pkg123442%_))
                            (let ((_%e123447%_
                                   (gx#call-with-input-source-file
                                    _%gerbil.pkg123442%_
                                    read)))
                              (if (eof-object? _%e123447%_)
                                  (let () '())
                                  (if (list? _%e123447%_)
                                      (let () _%e123447%_)
                                      (let ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Malformed package info; unexpected datum"
                                         _%gerbil.pkg123442%_
                                         _%e123447%_)))))
                            '())))
                  (hash-put!
                   gx#__module-pkg-cache
                   _%dir123435%_
                   _%plist123452%_)
                  _%plist123452%_))))))
    (define gx#core-library-package-plist__0
      (lambda (_%dir123458%_)
        (let ((_%exists?123460%_ '#f))
          (gx#core-library-package-plist__% _%dir123458%_ _%exists?123460%_))))
    (define gx#core-library-package-plist
      (lambda _g125268_
        (let ((_g125267_ (##length _g125268_)))
          (cond ((##fx= _g125267_ 1)
                 (apply (lambda (_%dir123458%_)
                          (gx#core-library-package-plist__0 _%dir123458%_))
                        _g125268_))
                ((##fx= _g125267_ 2)
                 (apply (lambda (_%dir123462%_ _%exists?123463%_)
                          (gx#core-library-package-plist__%
                           _%dir123462%_
                           _%exists?123463%_))
                        _g125268_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g125268_))))))
    (define gx#core-library-module-path?
      (lambda (_%stx123432%_)
        (gx#core-special-module-path? _%stx123432%_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_%stx123430%_)
        (gx#core-special-module-path? _%stx123430%_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_%stx123425%_ _%char123426%_)
        (if (gx#identifier? _%stx123425%_)
            (if (interned-symbol? (gx#stx-e _%stx123425%_))
                (let ((_%str123428%_
                       (symbol->string (gx#stx-e _%stx123425%_))))
                  (if (##fx> (##string-length _%str123428%_) '1)
                      (eq? (string-ref _%str123428%_ '0) _%char123426%_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_%stx123419%_)
        (gx#core-bound-identifier?__%
         _%stx123419%_
         (lambda (_%g123420123422%_)
           (gx#expander-binding?__% _%g123420123422%_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_%stx123413%_)
        (gx#core-bound-identifier?__%
         _%stx123413%_
         (lambda (_%g123414123416%_)
           (gx#expander-binding?__% _%g123414123416%_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_%stx123400%_)
        (letrec ((_%module-prelude?123402%_
                  (lambda (_%e123408%_)
                    (let ((_%$e123410%_
                           (##structure-instance-of?
                            _%e123408%_
                            'gx#module-context::t)))
                      (if _%$e123410%_
                          _%$e123410%_
                          (##structure-instance-of?
                           _%e123408%_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _%stx123400%_
           (lambda (_%g123403123405%_)
             (gx#expander-binding?__%
              _%g123403123405%_
              _%module-prelude?123402%_))))))
    (define gx#core-bind-import!__%
      (lambda (_%in123330%_ _%ctx123331%_ _%force-weak?123332%_)
        (let* ((_%in123333123342%_ _%in123330%_)
               (_%E123335123346%_
                (lambda ()
                  (error '"No clause matching"
                         _%in123333123342%_
                         '((module-import source key phi weak?)))
                  '#!void))
               (_%K123336123359%_
                (lambda (_%weak?123349%_
                         _%phi123350%_
                         _%key123351%_
                         _%source123352%_)
                  (gx#core-bind!__%
                   _%key123351%_
                   (let ((_%e123354%_
                          (gx#core-resolve-module-export _%source123352%_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref _%e123354%_ '1 '#f '#f)
                      _%key123351%_
                      _%phi123350%_
                      _%e123354%_
                      (##unchecked-structure-ref _%source123352%_ '1 '#f '#f)
                      (let ((_%$e123356%_ _%force-weak?123332%_))
                        (if _%$e123356%_ _%$e123356%_ _%weak?123349%_))))
                   gx#core-context-rebind?
                   _%phi123350%_
                   _%ctx123331%_))))
          (if (##structure-direct-instance-of?
               _%in123333123342%_
               'gx#module-import::t)
              (let* ((_%e123337123362%_
                      (##unchecked-structure-ref
                       _%in123333123342%_
                       '1
                       '#f
                       '#f))
                     (_%source123365%_ _%e123337123362%_)
                     (_%e123338123367%_
                      (##unchecked-structure-ref
                       _%in123333123342%_
                       '2
                       '#f
                       '#f))
                     (_%key123370%_ _%e123338123367%_)
                     (_%e123339123372%_
                      (##unchecked-structure-ref
                       _%in123333123342%_
                       '3
                       '#f
                       '#f))
                     (_%phi123375%_ _%e123339123372%_)
                     (_%e123340123377%_
                      (##unchecked-structure-ref
                       _%in123333123342%_
                       '4
                       '#f
                       '#f))
                     (_%weak?123380%_ _%e123340123377%_))
                (_%K123336123359%_
                 _%weak?123380%_
                 _%phi123375%_
                 _%key123370%_
                 _%source123365%_))
              (_%E123335123346%_)))))
    (define gx#core-bind-import!__0
      (lambda (_%in123385%_)
        (let* ((_%ctx123387%_ (gx#current-expander-context))
               (_%force-weak?123389%_ '#f))
          (gx#core-bind-import!__%
           _%in123385%_
           _%ctx123387%_
           _%force-weak?123389%_))))
    (define gx#core-bind-import!__1
      (lambda (_%in123391%_ _%ctx123392%_)
        (let ((_%force-weak?123394%_ '#f))
          (gx#core-bind-import!__%
           _%in123391%_
           _%ctx123392%_
           _%force-weak?123394%_))))
    (define gx#core-bind-import!
      (lambda _g125270_
        (let ((_g125269_ (##length _g125270_)))
          (cond ((##fx= _g125269_ 1)
                 (apply (lambda (_%in123385%_)
                          (gx#core-bind-import!__0 _%in123385%_))
                        _g125270_))
                ((##fx= _g125269_ 2)
                 (apply (lambda (_%in123391%_ _%ctx123392%_)
                          (gx#core-bind-import!__1 _%in123391%_ _%ctx123392%_))
                        _g125270_))
                ((##fx= _g125269_ 3)
                 (apply (lambda (_%in123396%_
                                 _%ctx123397%_
                                 _%force-weak?123398%_)
                          (gx#core-bind-import!__%
                           _%in123396%_
                           _%ctx123397%_
                           _%force-weak?123398%_))
                        _g125270_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g125270_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_%in123316%_ _%ctx123317%_)
        (gx#core-bind-import!__% _%in123316%_ _%ctx123317%_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_%in123322%_)
        (let ((_%ctx123324%_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _%in123322%_ _%ctx123324%_))))
    (define gx#core-bind-weak-import!
      (lambda _g125272_
        (let ((_g125271_ (##length _g125272_)))
          (cond ((##fx= _g125271_ 1)
                 (apply (lambda (_%in123322%_)
                          (gx#core-bind-weak-import!__0 _%in123322%_))
                        _g125272_))
                ((##fx= _g125271_ 2)
                 (apply (lambda (_%in123326%_ _%ctx123327%_)
                          (gx#core-bind-weak-import!__%
                           _%in123326%_
                           _%ctx123327%_))
                        _g125272_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g125272_))))))
    (define gx#core-resolve-module-export
      (lambda (_%out123207%_)
        (letrec ((_%subst123209%_
                  (lambda (_%key123255%_)
                    (let* ((_%key123256123264%_ _%key123255%_)
                           (_%else123258123272%_ (lambda () _%key123255%_))
                           (_%K123260123303%_
                            (lambda (_%mark123275%_ _%id123276%_)
                              (let* ((_%mark123277123283%_ _%mark123275%_)
                                     (_%E123279123287%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark123277123283%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K123280123295%_
                                      (lambda (_%subst123290%_)
                                        (let ((_%$e123292%_
                                               (if _%subst123290%_
                                                   (hash-get
                                                    _%subst123290%_
                                                    _%id123276%_)
                                                   '#f)))
                                          (if _%$e123292%_
                                              _%$e123292%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _%key123255%_))))))
                                (if (##structure-instance-of?
                                     _%mark123277123283%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e123281123298%_
                                            (##unchecked-structure-ref
                                             _%mark123277123283%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst123301%_ _%e123281123298%_))
                                      (_%K123280123295%_ _%subst123301%_))
                                    (_%E123279123287%_))))))
                      (if (##pair? _%key123256123264%_)
                          (let ((_%hd123261123306%_
                                 (##car _%key123256123264%_))
                                (_%tl123262123308%_
                                 (##cdr _%key123256123264%_)))
                            (let* ((_%id123311%_ _%hd123261123306%_)
                                   (_%mark123313%_ _%tl123262123308%_))
                              (_%K123260123303%_ _%mark123313%_ _%id123311%_)))
                          (_%else123258123272%_))))))
          (let* ((_%out123210123220%_ _%out123207%_)
                 (_%E123212123224%_
                  (lambda ()
                    (error '"No clause matching"
                           _%out123210123220%_
                           '((module-export ctx key phi _ _)))
                    '#!void))
                 (_%K123213123231%_
                  (lambda (_%phi123227%_ _%key123228%_ _%ctx123229%_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _%ctx123229%_ _%phi123227%_)
                     (_%subst123209%_ _%key123228%_)))))
            (if (##structure-direct-instance-of?
                 _%out123210123220%_
                 'gx#module-export::t)
                (let* ((_%e123214123234%_
                        (##unchecked-structure-ref
                         _%out123210123220%_
                         '1
                         '#f
                         '#f))
                       (_%ctx123237%_ _%e123214123234%_)
                       (_%e123215123239%_
                        (##unchecked-structure-ref
                         _%out123210123220%_
                         '2
                         '#f
                         '#f))
                       (_%key123242%_ _%e123215123239%_)
                       (_%e123216123244%_
                        (##unchecked-structure-ref
                         _%out123210123220%_
                         '3
                         '#f
                         '#f))
                       (_%phi123247%_ _%e123216123244%_)
                       (_%e123217123249%_
                        (##unchecked-structure-ref
                         _%out123210123220%_
                         '4
                         '#f
                         '#f))
                       (_%e123218123252%_
                        (##unchecked-structure-ref
                         _%out123210123220%_
                         '5
                         '#f
                         '#f)))
                  (_%K123213123231%_
                   _%phi123247%_
                   _%key123242%_
                   _%ctx123237%_))
                (_%E123212123224%_))))))
    (define gx#core-module-export->import__%
      (lambda (_%out123132%_ _%rename123133%_ _%dphi123134%_)
        (let* ((_%out123135123145%_ _%out123132%_)
               (_%E123137123149%_
                (lambda ()
                  (error '"No clause matching"
                         _%out123135123145%_
                         '((module-export ctx key phi name weak?)))
                  '#!void))
               (_%K123138123161%_
                (lambda (_%weak?123152%_
                         _%name123153%_
                         _%phi123154%_
                         _%key123155%_
                         _%ctx123156%_)
                  (##structure
                   gx#module-import::t
                   _%out123132%_
                   (let ((_%$e123158%_ _%rename123133%_))
                     (if _%$e123158%_ _%$e123158%_ _%name123153%_))
                   (fx+ _%phi123154%_ _%dphi123134%_)
                   _%weak?123152%_))))
          (if (##structure-direct-instance-of?
               _%out123135123145%_
               'gx#module-export::t)
              (let* ((_%e123139123164%_
                      (##unchecked-structure-ref
                       _%out123135123145%_
                       '1
                       '#f
                       '#f))
                     (_%ctx123167%_ _%e123139123164%_)
                     (_%e123140123169%_
                      (##unchecked-structure-ref
                       _%out123135123145%_
                       '2
                       '#f
                       '#f))
                     (_%key123172%_ _%e123140123169%_)
                     (_%e123141123174%_
                      (##unchecked-structure-ref
                       _%out123135123145%_
                       '3
                       '#f
                       '#f))
                     (_%phi123177%_ _%e123141123174%_)
                     (_%e123142123179%_
                      (##unchecked-structure-ref
                       _%out123135123145%_
                       '4
                       '#f
                       '#f))
                     (_%name123182%_ _%e123142123179%_)
                     (_%e123143123184%_
                      (##unchecked-structure-ref
                       _%out123135123145%_
                       '5
                       '#f
                       '#f))
                     (_%weak?123187%_ _%e123143123184%_))
                (_%K123138123161%_
                 _%weak?123187%_
                 _%name123182%_
                 _%phi123177%_
                 _%key123172%_
                 _%ctx123167%_))
              (_%E123137123149%_)))))
    (define gx#core-module-export->import__0
      (lambda (_%out123192%_)
        (let* ((_%rename123194%_ '#f) (_%dphi123196%_ '0))
          (gx#core-module-export->import__%
           _%out123192%_
           _%rename123194%_
           _%dphi123196%_))))
    (define gx#core-module-export->import__1
      (lambda (_%out123198%_ _%rename123199%_)
        (let ((_%dphi123201%_ '0))
          (gx#core-module-export->import__%
           _%out123198%_
           _%rename123199%_
           _%dphi123201%_))))
    (define gx#core-module-export->import
      (lambda _g125274_
        (let ((_g125273_ (##length _g125274_)))
          (cond ((##fx= _g125273_ 1)
                 (apply (lambda (_%out123192%_)
                          (gx#core-module-export->import__0 _%out123192%_))
                        _g125274_))
                ((##fx= _g125273_ 2)
                 (apply (lambda (_%out123198%_ _%rename123199%_)
                          (gx#core-module-export->import__1
                           _%out123198%_
                           _%rename123199%_))
                        _g125274_))
                ((##fx= _g125273_ 3)
                 (apply (lambda (_%out123203%_ _%rename123204%_ _%dphi123205%_)
                          (gx#core-module-export->import__%
                           _%out123203%_
                           _%rename123204%_
                           _%dphi123205%_))
                        _g125274_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g125274_))))))
    (define gx#core-expand-module%
      (lambda (_%stx123031%_)
        (letrec ((_%make-context123033%_
                  (lambda (_%id123110%_)
                    (let* ((_%super123112%_ (gx#current-expander-context))
                           (_%bind-id123114%_ (gx#stx-e _%id123110%_))
                           (_%mod-id123116%_
                            (if (##structure-instance-of?
                                 _%super123112%_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##structure-ref
                                  _%super123112%_
                                  '1
                                  gx#expander-context::t
                                  '#f)
                                 '"~"
                                 _%bind-id123114%_)
                                _%bind-id123114%_))
                           (_%ns123118%_ (symbol->string _%mod-id123116%_))
                           (_%path123128%_
                            (if (##structure-instance-of?
                                 _%super123112%_
                                 'gx#module-context::t)
                                (let ((_%path123120%_
                                       (##unchecked-structure-ref
                                        _%super123112%_
                                        '7
                                        '#f
                                        '#f)))
                                  (if (or (pair? _%path123120%_)
                                          (null? _%path123120%_))
                                      (let ()
                                        (cons _%bind-id123114%_
                                              _%path123120%_))
                                      (if (not _%path123120%_)
                                          (let () _%bind-id123114%_)
                                          (let ()
                                            (cons _%bind-id123114%_
                                                  (cons _%path123120%_
                                                        '()))))))
                                _%bind-id123114%_)))
                      (let ((__obj125250
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
                         __obj125250
                         _%mod-id123116%_
                         _%super123112%_
                         _%ns123118%_
                         _%path123128%_)
                        __obj125250))))
                 (_%valid-module-id?123034%_
                  (lambda (_%id123085%_)
                    (let* ((_%str123087%_ (symbol->string _%id123085%_))
                           (_%len123089%_ (##string-length _%str123087%_)))
                      (if (##fx>= _%len123089%_ '1)
                          (let _%loop123092%_ ((_%index123094%_
                                                (##fx- (##string-length
                                                        _%str123087%_)
                                                       '1)))
                            (if (##fx>= _%index123094%_ '0)
                                (let ((_%c123096%_
                                       (string-ref
                                        _%str123087%_
                                        _%index123094%_)))
                                  (if (or (and (##char>=? _%c123096%_ '#\a)
                                               (##char<=? _%c123096%_ '#\z))
                                          (and (##char>=? _%c123096%_ '#\A)
                                               (##char<=? _%c123096%_ '#\Z))
                                          (and (##char>=? _%c123096%_ '#\0)
                                               (##char<=? _%c123096%_ '#\9))
                                          (##char=? _%c123096%_ '#\_)
                                          (##char=? _%c123096%_ '#\-))
                                      (_%loop123092%_
                                       (##fx- _%index123094%_ '1))
                                      '#f))
                                '#t))
                          '#f)))))
          (let* ((_%e123035123045%_ _%stx123031%_)
                 (_%E123037123049%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e123035123045%_)))
                 (_%E123036123081%_
                  (lambda ()
                    (if (gx#stx-pair? _%e123035123045%_)
                        (let ((_%e123038123053%_
                               (gx#syntax-e _%e123035123045%_)))
                          (let ((_%hd123039123056%_ (##car _%e123038123053%_))
                                (_%tl123040123058%_ (##cdr _%e123038123053%_)))
                            (if (gx#stx-pair? _%tl123040123058%_)
                                (let ((_%e123041123061%_
                                       (gx#syntax-e _%tl123040123058%_)))
                                  (let ((_%hd123042123064%_
                                         (##car _%e123041123061%_))
                                        (_%tl123043123066%_
                                         (##cdr _%e123041123061%_)))
                                    (let* ((_%id123069%_ _%hd123042123064%_)
                                           (_%body123071%_ _%tl123043123066%_))
                                      (if (and (gx#identifier? _%id123069%_)
                                               (gx#stx-list? _%body123071%_))
                                          (if (_%valid-module-id?123034%_
                                               (gx#stx-e
                                                (gx#datum->syntax__0 '#f 'id)))
                                              (let* ((_%ctx123073%_
                                                      (_%make-context123033%_
                                                       _%id123069%_))
                                                     (_%body123075%_
                                                      (gx#core-expand-module-begin
                                                       _%body123071%_
                                                       _%ctx123073%_))
                                                     (_%body123077%_
                                                      (gx#core-quote-syntax__1
                                                       (gx#core-cons
                                                        '%#begin
                                                        _%body123075%_)
                                                       (gx#stx-source
                                                        _%stx123031%_))))
                                                (##unchecked-structure-set!
                                                 _%ctx123073%_
                                                 (__make-promise
                                                  (lambda ()
                                                    (gx#eval-syntax*
                                                     _%body123077%_)))
                                                 '10
                                                 '#f
                                                 '#f)
                                                (##unchecked-structure-set!
                                                 _%ctx123073%_
                                                 _%body123077%_
                                                 '11
                                                 '#f
                                                 '#f)
                                                (gx#core-bind-syntax!__0
                                                 _%id123069%_
                                                 _%ctx123073%_)
                                                (gx#core-quote-syntax__1
                                                 (gx#core-list
                                                  '%#module
                                                  (gx#core-quote-syntax__0
                                                   _%id123069%_)
                                                  _%body123077%_)
                                                 (gx#stx-source
                                                  _%stx123031%_)))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"invalid module id; allowed characters are A-Z,a-z,0-9,_,-"
                                               _%stx123031%_
                                               (gx#datum->syntax__0 '#f 'id)))
                                          (_%E123037123049%_)))))
                                (_%E123037123049%_))))
                        (_%E123037123049%_)))))
            (_%E123036123081%_)))))
    (define gx#core-expand-module-begin
      (lambda (_%body122997%_ _%ctx122998%_)
        (__call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_%stx123001%_
                   (gx#core-expand-head (cons '%%begin-module _%body122997%_)))
                  (_%e123002123009%_ _%stx123001%_)
                  (_%E123004123013%_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _%stx123001%_)))
                  (_%E123003123027%_
                   (lambda ()
                     (if (gx#stx-pair? _%e123002123009%_)
                         (let ((_%e123005123017%_
                                (gx#syntax-e _%e123002123009%_)))
                           (let ((_%hd123006123020%_ (##car _%e123005123017%_))
                                 (_%tl123007123022%_
                                  (##cdr _%e123005123017%_)))
                             (if (and (gx#identifier? _%hd123006123020%_)
                                      (gx#core-identifier=?
                                       _%hd123006123020%_
                                       '%#begin-module))
                                 (let ((_%body123025%_ _%tl123007123022%_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _%stx123001%_)
                                           _%body123025%_
                                           (gx#core-expand-module-body
                                            _%body123025%_))
                                       (_%E123004123013%_)))
                                 (_%E123004123013%_))))
                         (_%E123004123013%_)))))
             (_%E123003123027%_)))
         gx#current-expander-context
         _%ctx122998%_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_%body122793%_)
        (letrec ((_%expand-special122795%_
                  (lambda (_%hd122924%_ _%K122925%_ _%rest122926%_ _%r122927%_)
                    (let* ((_%e122928122945%_ _%hd122924%_)
                           (_%E122940122949%_
                            (lambda ()
                              (_%K122925%_
                               _%rest122926%_
                               (cons (gx#core-expand-top _%hd122924%_)
                                     _%r122927%_))))
                           (_%E122930122961%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122928122945%_)
                                  (let ((_%e122941122953%_
                                         (gx#syntax-e _%e122928122945%_)))
                                    (let ((_%hd122942122956%_
                                           (##car _%e122941122953%_))
                                          (_%tl122943122958%_
                                           (##cdr _%e122941122953%_)))
                                      (if (and (gx#identifier?
                                                _%hd122942122956%_)
                                               (gx#core-identifier=?
                                                _%hd122942122956%_
                                                '%#export))
                                          (if '#t
                                              (_%K122925%_
                                               _%rest122926%_
                                               (cons _%hd122924%_ _%r122927%_))
                                              (_%E122940122949%_))
                                          (_%E122940122949%_))))
                                  (_%E122940122949%_))))
                           (_%E122929122993%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122928122945%_)
                                  (let ((_%e122931122965%_
                                         (gx#syntax-e _%e122928122945%_)))
                                    (let ((_%hd122932122968%_
                                           (##car _%e122931122965%_))
                                          (_%tl122933122970%_
                                           (##cdr _%e122931122965%_)))
                                      (if (and (gx#identifier?
                                                _%hd122932122968%_)
                                               (gx#core-identifier=?
                                                _%hd122932122968%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl122933122970%_)
                                              (let ((_%e122934122973%_
                                                     (gx#syntax-e
                                                      _%tl122933122970%_)))
                                                (let ((_%hd122935122976%_
                                                       (##car _%e122934122973%_))
                                                      (_%tl122936122978%_
                                                       (##cdr _%e122934122973%_)))
                                                  (let ((_%hd-bind122981%_
                                                         _%hd122935122976%_))
                                                    (if (gx#stx-pair?
                                                         _%tl122936122978%_)
                                                        (let ((_%e122937122983%_
                                                               (gx#syntax-e
                                                                _%tl122936122978%_)))
                                                          (let ((_%hd122938122986%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e122937122983%_))
                        (_%tl122939122988%_ (##cdr _%e122937122983%_)))
                    (let ((_%expr122991%_ _%hd122938122986%_))
                      (if (gx#stx-null? _%tl122939122988%_)
                          (if (gx#core-bind-values? _%hd-bind122981%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind122981%_)
                                (_%K122925%_
                                 _%rest122926%_
                                 (cons _%hd122924%_ _%r122927%_)))
                              (_%E122930122961%_))
                          (_%E122930122961%_)))))
                (_%E122930122961%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E122930122961%_))
                                          (_%E122930122961%_))))
                                  (_%E122930122961%_)))))
                      (_%E122929122993%_))))
                 (_%expand-body122796%_
                  (lambda (_%rbody122798%_)
                    (let _%lp122800%_ ((_%rest122802%_ _%rbody122798%_)
                                       (_%body122803%_ '()))
                      (let* ((_%rest122804122812%_ _%rest122802%_)
                             (_%else122806122820%_ (lambda () _%body122803%_))
                             (_%K122808122912%_
                              (lambda (_%rest122823%_ _%hd122824%_)
                                (let* ((_%e122825122846%_ _%hd122824%_)
                                       (_%E122841122850%_
                                        (lambda ()
                                          (_%lp122800%_
                                           _%rest122823%_
                                           (cons (gx#core-expand-expression
                                                  _%hd122824%_)
                                                 _%body122803%_))))
                                       (_%E122837122864%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e122825122846%_)
                                              (let ((_%e122842122854%_
                                                     (gx#syntax-e
                                                      _%e122825122846%_)))
                                                (let ((_%hd122843122857%_
                                                       (##car _%e122842122854%_))
                                                      (_%tl122844122859%_
                                                       (##cdr _%e122842122854%_)))
                                                  (let ((_%form122862%_
                                                         _%hd122843122857%_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _%form122862%_
                                                         gx#special-form-binding?)
                                                        (_%lp122800%_
                                                         _%rest122823%_
                                                         (cons _%hd122824%_
                                                               _%body122803%_))
                                                        (_%E122841122850%_)))))
                                              (_%E122841122850%_))))
                                       (_%E122827122876%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e122825122846%_)
                                              (let ((_%e122838122868%_
                                                     (gx#syntax-e
                                                      _%e122825122846%_)))
                                                (let ((_%hd122839122871%_
                                                       (##car _%e122838122868%_))
                                                      (_%tl122840122873%_
                                                       (##cdr _%e122838122868%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd122839122871%_)
                                                           (gx#core-identifier=?
                                                            _%hd122839122871%_
                                                            '%#export))
                                                      (if '#t
                                                          (_%lp122800%_
                                                           _%rest122823%_
                                                           (cons (gx#core-expand-export%__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%hd122824%_)
                         _%body122803%_))
                  (_%E122837122864%_))
              (_%E122837122864%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E122837122864%_))))
                                       (_%E122826122908%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e122825122846%_)
                                              (let ((_%e122828122880%_
                                                     (gx#syntax-e
                                                      _%e122825122846%_)))
                                                (let ((_%hd122829122883%_
                                                       (##car _%e122828122880%_))
                                                      (_%tl122830122885%_
                                                       (##cdr _%e122828122880%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd122829122883%_)
                                                           (gx#core-identifier=?
                                                            _%hd122829122883%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl122830122885%_)
                                                          (let ((_%e122831122888%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl122830122885%_)))
                    (let ((_%hd122832122891%_ (##car _%e122831122888%_))
                          (_%tl122833122893%_ (##cdr _%e122831122888%_)))
                      (let ((_%hd-bind122896%_ _%hd122832122891%_))
                        (if (gx#stx-pair? _%tl122833122893%_)
                            (let ((_%e122834122898%_
                                   (gx#syntax-e _%tl122833122893%_)))
                              (let ((_%hd122835122901%_
                                     (##car _%e122834122898%_))
                                    (_%tl122836122903%_
                                     (##cdr _%e122834122898%_)))
                                (let ((_%expr122906%_ _%hd122835122901%_))
                                  (if (gx#stx-null? _%tl122836122903%_)
                                      (if '#t
                                          (_%lp122800%_
                                           _%rest122823%_
                                           (cons (gx#core-quote-syntax__1
                                                  (gx#core-list
                                                   '%#define-values
                                                   (gx#core-quote-bind-values
                                                    _%hd-bind122896%_)
                                                   (gx#core-expand-expression
                                                    _%expr122906%_))
                                                  (gx#stx-source _%hd122824%_))
                                                 _%body122803%_))
                                          (_%E122827122876%_))
                                      (_%E122827122876%_)))))
                            (_%E122827122876%_)))))
                  (_%E122827122876%_))
              (_%E122827122876%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E122827122876%_)))))
                                  (_%E122826122908%_)))))
                        (if (##pair? _%rest122804122812%_)
                            (let ((_%hd122809122915%_
                                   (##car _%rest122804122812%_))
                                  (_%tl122810122917%_
                                   (##cdr _%rest122804122812%_)))
                              (let* ((_%hd122920%_ _%hd122809122915%_)
                                     (_%rest122922%_ _%tl122810122917%_))
                                (_%K122808122912%_
                                 _%rest122922%_
                                 _%hd122920%_)))
                            (_%else122806122820%_)))))))
          (_%expand-body122796%_
           (gx#core-expand-block__%
            (cons '%#begin-module _%body122793%_)
            _%expand-special122795%_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_%stx122634%_
               _%expanded?122635%_
               _%method122636%_
               _%current-phi122637%_
               _%expand1122638%_)
        (letrec ((_%K122640%_
                  (lambda (_%rest122760%_ _%r122761%_)
                    (let* ((_%e122762122769%_ _%rest122760%_)
                           (_%E122764122773%_ (lambda () _%r122761%_))
                           (_%E122763122789%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122762122769%_)
                                  (let ((_%e122765122777%_
                                         (gx#syntax-e _%e122762122769%_)))
                                    (let ((_%hd122766122780%_
                                           (##car _%e122765122777%_))
                                          (_%tl122767122782%_
                                           (##cdr _%e122765122777%_)))
                                      (let* ((_%hd122785%_ _%hd122766122780%_)
                                             (_%rest122787%_
                                              _%tl122767122782%_))
                                        (if '#t
                                            (_%step122641%_
                                             _%hd122785%_
                                             _%rest122787%_
                                             _%r122761%_)
                                            (_%E122764122773%_)))))
                                  (_%E122764122773%_)))))
                      (_%E122763122789%_))))
                 (_%step122641%_
                  (lambda (_%hd122674%_ _%rest122675%_ _%r122676%_)
                    (let* ((_%e122677122695%_ _%hd122674%_)
                           (_%E122690122699%_
                            (lambda ()
                              (if (_%expanded?122635%_ (gx#stx-e _%hd122674%_))
                                  (_%K122640%_
                                   _%rest122675%_
                                   (cons (gx#stx-e _%hd122674%_) _%r122676%_))
                                  (_%expand1122638%_
                                   _%hd122674%_
                                   _%K122640%_
                                   _%rest122675%_
                                   _%r122676%_))))
                           (_%E122686122715%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122677122695%_)
                                  (let ((_%e122691122703%_
                                         (gx#syntax-e _%e122677122695%_)))
                                    (let ((_%hd122692122706%_
                                           (##car _%e122691122703%_))
                                          (_%tl122693122708%_
                                           (##cdr _%e122691122703%_)))
                                      (let* ((_%macro122711%_
                                              _%hd122692122706%_)
                                             (_%body122713%_
                                              _%tl122693122708%_))
                                        (if (gx#core-bound-identifier?__%
                                             _%macro122711%_
                                             gx#syntax-binding?)
                                            (_%K122640%_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _%macro122711%_)
                                                    _%hd122674%_
                                                    _%method122636%_)
                                                   _%rest122675%_)
                                             _%r122676%_)
                                            (_%E122690122699%_)))))
                                  (_%E122690122699%_))))
                           (_%E122679122729%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122677122695%_)
                                  (let ((_%e122687122719%_
                                         (gx#syntax-e _%e122677122695%_)))
                                    (let ((_%hd122688122722%_
                                           (##car _%e122687122719%_))
                                          (_%tl122689122724%_
                                           (##cdr _%e122687122719%_)))
                                      (if (eq? (gx#stx-e _%hd122688122722%_)
                                               'begin:)
                                          (let ((_%body122727%_
                                                 _%tl122689122724%_))
                                            (if '#t
                                                (_%K122640%_
                                                 (gx#stx-foldr
                                                  cons
                                                  _%rest122675%_
                                                  _%body122727%_)
                                                 _%r122676%_)
                                                (_%E122686122715%_)))
                                          (_%E122686122715%_))))
                                  (_%E122686122715%_))))
                           (_%E122678122756%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122677122695%_)
                                  (let ((_%e122680122733%_
                                         (gx#syntax-e _%e122677122695%_)))
                                    (let ((_%hd122681122736%_
                                           (##car _%e122680122733%_))
                                          (_%tl122682122738%_
                                           (##cdr _%e122680122733%_)))
                                      (if (eq? (gx#stx-e _%hd122681122736%_)
                                               'phi:)
                                          (if (gx#stx-pair? _%tl122682122738%_)
                                              (let ((_%e122683122741%_
                                                     (gx#syntax-e
                                                      _%tl122682122738%_)))
                                                (let ((_%hd122684122744%_
                                                       (##car _%e122683122741%_))
                                                      (_%tl122685122746%_
                                                       (##cdr _%e122683122741%_)))
                                                  (let* ((_%dphi122749%_
                                                          _%hd122684122744%_)
                                                         (_%body122751%_
                                                          _%tl122685122746%_))
                                                    (if (gx#stx-fixnum?
                                                         _%dphi122749%_)
                                                        (let ((_%rbody122754%_
                                                               (__call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%K122640%_ _%body122751%_ '()))
                        _%current-phi122637%_
                        (fx+ (gx#stx-e _%dphi122749%_)
                             (_%current-phi122637%_)))))
                  (_%K122640%_
                   _%rest122675%_
                   (__foldr1 cons _%r122676%_ _%rbody122754%_)))
                (_%E122679122729%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E122679122729%_))
                                          (_%E122679122729%_))))
                                  (_%E122679122729%_)))))
                      (_%E122678122756%_)))))
          (let* ((_%e122642122649%_ _%stx122634%_)
                 (_%E122644122653%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e122642122649%_)))
                 (_%E122643122670%_
                  (lambda ()
                    (if (gx#stx-pair? _%e122642122649%_)
                        (let ((_%e122645122657%_
                               (gx#syntax-e _%e122642122649%_)))
                          (let ((_%hd122646122660%_ (##car _%e122645122657%_))
                                (_%tl122647122662%_ (##cdr _%e122645122657%_)))
                            (let ((_%body122665%_ _%tl122647122662%_))
                              (if '#t
                                  (if (_%current-phi122637%_)
                                      (let () (_%K122640%_ _%body122665%_ '()))
                                      (let ()
                                        (__call-with-parameters
                                         (lambda ()
                                           (_%K122640%_ _%body122665%_ '()))
                                         _%current-phi122637%_
                                         (gx#current-expander-phi))))
                                  (_%E122644122653%_)))))
                        (_%E122644122653%_)))))
            (_%E122643122670%_)))))
    (define gx#core-expand-import%__%
      (lambda (_%stx122288%_ _%internal-expand?122289%_)
        (letrec ((_%expand1122291%_
                  (lambda (_%hd122606%_ _%K122607%_ _%rest122608%_ _%r122609%_)
                    (if (gx#core-bound-module? _%hd122606%_)
                        (let ()
                          (_%import1122292%_
                           (gx#syntax-local-e__0 _%hd122606%_)
                           _%K122607%_
                           _%rest122608%_
                           _%r122609%_))
                        (if (gx#core-library-module-path? _%hd122606%_)
                            (let ()
                              (_%import1122292%_
                               (gx#import-module__0
                                (gx#core-resolve-library-module-path
                                 _%hd122606%_))
                               _%K122607%_
                               _%rest122608%_
                               _%r122609%_))
                            (if (gx#core-library-relative-module-path?
                                 _%hd122606%_)
                                (let ()
                                  (_%import1122292%_
                                   (gx#import-module__0
                                    (gx#core-resolve-library-relative-module-path
                                     _%hd122606%_))
                                   _%K122607%_
                                   _%rest122608%_
                                   _%r122609%_))
                                (let ()
                                  (let ((_%e122615%_ (gx#stx-e _%hd122606%_)))
                                    (if (pair? _%e122615%_)
                                        (let ()
                                          (let ((_%$e122618%_
                                                 (gx#stx-e (car _%e122615%_))))
                                            (if (eq? 'spec: _%$e122618%_)
                                                (_%import-spec122295%_
                                                 _%hd122606%_
                                                 _%K122607%_
                                                 _%rest122608%_
                                                 _%r122609%_)
                                                (if (eq? 'in: _%$e122618%_)
                                                    (_%import-submodule122293%_
                                                     _%hd122606%_
                                                     _%K122607%_
                                                     _%rest122608%_
                                                     _%r122609%_)
                                                    (if (eq? 'runtime:
                                                             _%$e122618%_)
                                                        (_%import-runtime122294%_
                                                         _%hd122606%_
                                                         _%K122607%_
                                                         _%rest122608%_
                                                         _%r122609%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; illegal import"
                                                         _%stx122288%_
                                                         _%hd122606%_))))))
                                        (if (string? _%e122615%_)
                                            (let ()
                                              (_%import1122292%_
                                               (gx#import-module__0
                                                (gx#core-resolve-module-path__%
                                                 _%hd122606%_
                                                 (gx#stx-source
                                                  _%stx122288%_)))
                                               _%K122607%_
                                               _%rest122608%_
                                               _%r122609%_))
                                            (if (##structure-instance-of?
                                                 _%e122615%_
                                                 'gx#module-context::t)
                                                (let ()
                                                  (_%K122607%_
                                                   _%rest122608%_
                                                   (cons _%e122615%_
                                                         _%r122609%_)))
                                                (let ()
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; illegal import"
                                                   _%stx122288%_
                                                   _%hd122606%_))))))))))))
                 (_%import1122292%_
                  (lambda (_%ctx122595%_
                           _%K122596%_
                           _%rest122597%_
                           _%r122598%_)
                    (let ((_%dphi122600%_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_%K122596%_
                       _%rest122597%_
                       (cons (##structure
                              gx#import-set::t
                              _%ctx122595%_
                              _%dphi122600%_
                              (map (lambda (_%g122601122603%_)
                                     (gx#core-module-export->import__%
                                      _%g122601122603%_
                                      '#f
                                      _%dphi122600%_))
                                   (##unchecked-structure-ref
                                    _%ctx122595%_
                                    '9
                                    '#f
                                    '#f)))
                             _%r122598%_)))))
                 (_%import-submodule122293%_
                  (lambda (_%hd122562%_ _%K122563%_ _%rest122564%_ _%r122565%_)
                    (let* ((_%e122566122573%_ _%hd122562%_)
                           (_%E122568122577%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e122566122573%_)))
                           (_%E122567122591%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122566122573%_)
                                  (let ((_%e122569122581%_
                                         (gx#syntax-e _%e122566122573%_)))
                                    (let ((_%hd122570122584%_
                                           (##car _%e122569122581%_))
                                          (_%tl122571122586%_
                                           (##cdr _%e122569122581%_)))
                                      (let ((_%spath122589%_
                                             _%tl122571122586%_))
                                        (if '#t
                                            (_%import1122292%_
                                             (_%import-spec-source122296%_
                                              _%spath122589%_)
                                             _%K122563%_
                                             _%rest122564%_
                                             _%r122565%_)
                                            (_%E122568122577%_)))))
                                  (_%E122568122577%_)))))
                      (_%E122567122591%_))))
                 (_%import-runtime122294%_
                  (lambda (_%hd122529%_ _%K122530%_ _%rest122531%_ _%r122532%_)
                    (let* ((_%e122533122540%_ _%hd122529%_)
                           (_%E122535122544%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e122533122540%_)))
                           (_%E122534122558%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122533122540%_)
                                  (let ((_%e122536122548%_
                                         (gx#syntax-e _%e122533122540%_)))
                                    (let ((_%hd122537122551%_
                                           (##car _%e122536122548%_))
                                          (_%tl122538122553%_
                                           (##cdr _%e122536122548%_)))
                                      (let ((_%spath122556%_
                                             _%tl122538122553%_))
                                        (if '#t
                                            (_%K122530%_
                                             _%rest122531%_
                                             (cons (_%import-spec-source122296%_
                                                    _%spath122556%_)
                                                   _%r122532%_))
                                            (_%E122535122544%_)))))
                                  (_%E122535122544%_)))))
                      (_%E122534122558%_))))
                 (_%import-spec122295%_
                  (lambda (_%hd122367%_ _%K122368%_ _%rest122369%_ _%r122370%_)
                    (let* ((_%e122371122388%_ _%hd122367%_)
                           (_%E122380122392%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e122371122388%_)))
                           (_%E122373122503%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122371122388%_)
                                  (let ((_%e122381122396%_
                                         (gx#syntax-e _%e122371122388%_)))
                                    (let ((_%hd122382122399%_
                                           (##car _%e122381122396%_))
                                          (_%tl122383122401%_
                                           (##cdr _%e122381122396%_)))
                                      (if (gx#stx-pair? _%tl122383122401%_)
                                          (let ((_%e122384122404%_
                                                 (gx#syntax-e
                                                  _%tl122383122401%_)))
                                            (let ((_%hd122385122407%_
                                                   (##car _%e122384122404%_))
                                                  (_%tl122386122409%_
                                                   (##cdr _%e122384122404%_)))
                                              (let* ((_%path122412%_
                                                      _%hd122385122407%_)
                                                     (_%specs122414%_
                                                      _%tl122386122409%_))
                                                (if '#t
                                                    (let ((_%src-ctx122416%_
                                                           (_%import-spec-source122296%_
                                                            _%path122412%_))
                                                          (_%exports122417%_
                                                           (make-hash-table))
                                                          (_%specs122418%_
                                                           (gx#syntax->list
                                                            _%specs122414%_)))
                                                      (for-each
                                                       (lambda (_%out122420%_)
                                                         (hash-put!
                                                          _%exports122417%_
                                                          (cons (##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%out122420%_
                         '3
                         '#f
                         '#f)
                        (##unchecked-structure-ref _%out122420%_ '4 '#f '#f))
                  _%out122420%_))
               (##unchecked-structure-ref _%src-ctx122416%_ '9 '#f '#f))
              (_%K122368%_
               _%rest122369%_
               (__foldl1
                (lambda (_%spec122422%_ _%r122423%_)
                  (let* ((_%e122424122440%_ _%spec122422%_)
                         (_%E122426122444%_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _%e122424122440%_)))
                         (_%E122425122499%_
                          (lambda ()
                            (if (gx#stx-pair? _%e122424122440%_)
                                (let ((_%e122427122448%_
                                       (gx#syntax-e _%e122424122440%_)))
                                  (let ((_%hd122428122451%_
                                         (##car _%e122427122448%_))
                                        (_%tl122429122453%_
                                         (##cdr _%e122427122448%_)))
                                    (let ((_%phi122456%_ _%hd122428122451%_))
                                      (if (gx#stx-pair? _%tl122429122453%_)
                                          (let ((_%e122430122458%_
                                                 (gx#syntax-e
                                                  _%tl122429122453%_)))
                                            (let ((_%hd122431122461%_
                                                   (##car _%e122430122458%_))
                                                  (_%tl122432122463%_
                                                   (##cdr _%e122430122458%_)))
                                              (let ((_%name122466%_
                                                     _%hd122431122461%_))
                                                (if (gx#stx-pair?
                                                     _%tl122432122463%_)
                                                    (let ((_%e122433122468%_
                                                           (gx#syntax-e
                                                            _%tl122432122463%_)))
                                                      (let ((_%hd122434122471%_
                                                             (##car _%e122433122468%_))
                                                            (_%tl122435122473%_
                                                             (##cdr _%e122433122468%_)))
                                                        (let ((_%src-phi122476%_
                                                               _%hd122434122471%_))
                                                          (if (gx#stx-pair?
                                                               _%tl122435122473%_)
                                                              (let ((_%e122436122478%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl122435122473%_)))
                        (let ((_%hd122437122481%_ (##car _%e122436122478%_))
                              (_%tl122438122483%_ (##cdr _%e122436122478%_)))
                          (let ((_%src-name122486%_ _%hd122437122481%_))
                            (if (gx#stx-null? _%tl122438122483%_)
                                (if (and (gx#stx-fixnum? _%src-phi122476%_)
                                         (gx#identifier? _%src-name122486%_)
                                         (gx#stx-fixnum? _%phi122456%_)
                                         (gx#identifier? _%name122466%_))
                                    (let ((_%src-phi122488%_
                                           (gx#stx-e _%src-phi122476%_))
                                          (_%src-name122489%_
                                           (gx#core-identifier-key
                                            _%src-name122486%_))
                                          (_%phi122490%_
                                           (gx#stx-e _%phi122456%_))
                                          (_%name122491%_
                                           (gx#core-identifier-key
                                            _%name122466%_)))
                                      (let ((_%$e122493%_
                                             (hash-get
                                              _%exports122417%_
                                              (cons _%src-phi122488%_
                                                    _%src-name122489%_))))
                                        (if _%$e122493%_
                                            ((lambda (_%out122496%_)
                                               (cons (gx#core-module-export->import__%
                                                      _%out122496%_
                                                      _%name122491%_
                                                      (fx- _%phi122490%_
                                                           _%src-phi122488%_))
                                                     _%r122423%_))
                                             _%$e122493%_)
                                            (let ()
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; no matching export"
                                               _%stx122288%_
                                               _%hd122367%_)))))
                                    (_%E122426122444%_))
                                (_%E122426122444%_)))))
                      (_%E122426122444%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E122426122444%_)))))
                                          (_%E122426122444%_)))))
                                (_%E122426122444%_)))))
                    (_%E122425122499%_)))
                _%r122370%_
                _%specs122418%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E122380122392%_)))))
                                          (_%E122380122392%_))))
                                  (_%E122380122392%_))))
                           (_%E122372122525%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122371122388%_)
                                  (let ((_%e122374122507%_
                                         (gx#syntax-e _%e122371122388%_)))
                                    (let ((_%hd122375122510%_
                                           (##car _%e122374122507%_))
                                          (_%tl122376122512%_
                                           (##cdr _%e122374122507%_)))
                                      (if (gx#stx-pair? _%tl122376122512%_)
                                          (let ((_%e122377122515%_
                                                 (gx#syntax-e
                                                  _%tl122376122512%_)))
                                            (let ((_%hd122378122518%_
                                                   (##car _%e122377122515%_))
                                                  (_%tl122379122520%_
                                                   (##cdr _%e122377122515%_)))
                                              (let ((_%path122523%_
                                                     _%hd122378122518%_))
                                                (if (gx#stx-null?
                                                     _%tl122379122520%_)
                                                    (if '#t
                                                        (_%K122368%_
                                                         _%rest122369%_
                                                         (cons (_%import-spec-source122296%_
                                                                _%path122523%_)
                                                               _%r122370%_))
                                                        (_%E122373122503%_))
                                                    (_%E122373122503%_)))))
                                          (_%E122373122503%_))))
                                  (_%E122373122503%_)))))
                      (_%E122372122525%_))))
                 (_%import-spec-source122296%_
                  (lambda (_%spath122365%_)
                    (gx#core-import-nested-module
                     _%spath122365%_
                     _%stx122288%_)))
                 (_%import!122297%_
                  (lambda (_%rbody122310%_)
                    (letrec* ((_%current-ctx122312%_
                               (gx#current-expander-context))
                              (_%deps122313%_ (make-hash-table-eq))
                              (_%bind!122314%_
                               (lambda (_%hd122363%_)
                                 (gx#core-bind-import!__1
                                  _%hd122363%_
                                  _%current-ctx122312%_))))
                      (let _%lp122316%_ ((_%rest122318%_ _%rbody122310%_)
                                         (_%body122319%_ '()))
                        (let* ((_%rest122320122328%_ _%rest122318%_)
                               (_%else122322122339%_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _%current-ctx122312%_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _%current-ctx122312%_
                                       (__foldl1
                                        cons
                                        (##unchecked-structure-ref
                                         _%current-ctx122312%_
                                         '8
                                         '#f
                                         '#f)
                                        _%body122319%_)
                                       '8
                                       '#f
                                       '#f)
                                      '#!void)
                                  (hash-for-each
                                   (lambda (_%ctx122336%_ _%_122337%_)
                                     (gx#eval-module _%ctx122336%_))
                                   _%deps122313%_)
                                  _%body122319%_))
                               (_%K122324122351%_
                                (lambda (_%rest122342%_ _%hd122343%_)
                                  (if (##structure-direct-instance-of?
                                       _%hd122343%_
                                       'gx#module-import::t)
                                      (let ()
                                        (_%bind!122314%_ _%hd122343%_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _%hd122343%_
                                                   '3
                                                   '#f
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _%hd122343%_
                                                            '1
                                                            '#f
                                                            '#f)
                                                           '3
                                                           '#f
                                                           '#f)))
                                            (hash-put!
                                             _%deps122313%_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _%hd122343%_
                                               '1
                                               '#f
                                               '#f)
                                              '1
                                              '#f
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _%hd122343%_
                                           'gx#import-set::t)
                                          (let ()
                                            (for-each
                                             _%bind!122314%_
                                             (##unchecked-structure-ref
                                              _%hd122343%_
                                              '3
                                              '#f
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _%hd122343%_
                                                  '2
                                                  '#f
                                                  '#f))
                                                (hash-put!
                                                 _%deps122313%_
                                                 (##unchecked-structure-ref
                                                  _%hd122343%_
                                                  '1
                                                  '#f
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_%$e122347%_
                                                 (##structure-instance-of?
                                                  _%hd122343%_
                                                  'gx#module-context::t)))
                                            (if _%$e122347%_
                                                _%$e122347%_
                                                (let ()
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Unexpected import"
                                                   _%stx122288%_
                                                   _%hd122343%_))))))
                                  (_%lp122316%_
                                   _%rest122342%_
                                   (cons _%hd122343%_ _%body122319%_)))))
                          (if (##pair? _%rest122320122328%_)
                              (let ((_%hd122325122354%_
                                     (##car _%rest122320122328%_))
                                    (_%tl122326122356%_
                                     (##cdr _%rest122320122328%_)))
                                (let* ((_%hd122359%_ _%hd122325122354%_)
                                       (_%rest122361%_ _%tl122326122356%_))
                                  (_%K122324122351%_
                                   _%rest122361%_
                                   _%hd122359%_)))
                              (_%else122322122339%_)))))))
                 (_%expanded-import?122298%_
                  (lambda (_%e122302%_)
                    (let ((_%$e122304%_
                           (##structure-direct-instance-of?
                            _%e122302%_
                            'gx#import-set::t)))
                      (if _%$e122304%_
                          _%$e122304%_
                          (let ((_%$e122307%_
                                 (##structure-direct-instance-of?
                                  _%e122302%_
                                  'gx#module-import::t)))
                            (if _%$e122307%_
                                _%$e122307%_
                                (##structure-instance-of?
                                 _%e122302%_
                                 'gx#module-context::t))))))))
          (let ((_%rbody122300%_
                 (gx#core-expand-import/export
                  _%stx122288%_
                  _%expanded-import?122298%_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _%expand1122291%_)))
            (if _%internal-expand?122289%_
                (reverse _%rbody122300%_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_%import!122297%_ _%rbody122300%_))
                 (gx#stx-source _%stx122288%_)))))))
    (define gx#core-expand-import%__0
      (lambda (_%stx122627%_)
        (let ((_%internal-expand?122629%_ '#f))
          (gx#core-expand-import%__%
           _%stx122627%_
           _%internal-expand?122629%_))))
    (define gx#core-expand-import%
      (lambda _g125276_
        (let ((_g125275_ (##length _g125276_)))
          (cond ((##fx= _g125275_ 1)
                 (apply (lambda (_%stx122627%_)
                          (gx#core-expand-import%__0 _%stx122627%_))
                        _g125276_))
                ((##fx= _g125275_ 2)
                 (apply (lambda (_%stx122631%_ _%internal-expand?122632%_)
                          (gx#core-expand-import%__%
                           _%stx122631%_
                           _%internal-expand?122632%_))
                        _g125276_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g125276_))))))
    (define gx#core-import-nested-module
      (lambda (_%spath122215%_ _%where122216%_)
        (let* ((_%e122217122224%_ _%spath122215%_)
               (_%E122219122228%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122217122224%_)))
               (_%E122218122283%_
                (lambda ()
                  (if (gx#stx-pair? _%e122217122224%_)
                      (let ((_%e122220122232%_
                             (gx#syntax-e _%e122217122224%_)))
                        (let ((_%hd122221122235%_ (##car _%e122220122232%_))
                              (_%tl122222122237%_ (##cdr _%e122220122232%_)))
                          (let* ((_%origin122240%_ _%hd122221122235%_)
                                 (_%sub122242%_ _%tl122222122237%_))
                            (if '#t
                                (let ((_%origin-ctx122244%_
                                       (if (gx#stx-false? _%origin122240%_)
                                           (gx#current-expander-context)
                                           (gx#import-module__0
                                            _%origin122240%_))))
                                  (let _%lp122246%_ ((_%rest122248%_
                                                      _%sub122242%_)
                                                     (_%ctx122249%_
                                                      _%origin-ctx122244%_))
                                    (let* ((_%e122250122257%_ _%rest122248%_)
                                           (_%E122252122261%_
                                            (lambda () _%ctx122249%_))
                                           (_%E122251122279%_
                                            (lambda ()
                                              (if (gx#stx-pair?
                                                   _%e122250122257%_)
                                                  (let ((_%e122253122265%_
                                                         (gx#syntax-e
                                                          _%e122250122257%_)))
                                                    (let ((_%hd122254122268%_
                                                           (##car _%e122253122265%_))
                                                          (_%tl122255122270%_
                                                           (##cdr _%e122253122265%_)))
                                                      (let* ((_%id122273%_
                                                              _%hd122254122268%_)
                                                             (_%rest122275%_
                                                              _%tl122255122270%_))
                                                        (if '#t
                                                            (let ((_%bind122277%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#resolve-identifier__%
                            _%id122273%_
                            '0
                            _%ctx122249%_)))
                      (if (and (##structure-direct-instance-of?
                                _%bind122277%_
                                'gx#syntax-binding::t)
                               (##structure-instance-of?
                                (##unchecked-structure-ref
                                 _%bind122277%_
                                 '4
                                 '#f
                                 '#f)
                                'gx#module-context::t))
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _%where122216%_
                           _%spath122215%_
                           _%id122273%_))
                      (_%lp122246%_
                       _%rest122275%_
                       (##unchecked-structure-ref _%bind122277%_ '4 '#f '#f)))
                    (_%E122252122261%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E122252122261%_)))))
                                      (_%E122251122279%_))))
                                (_%E122219122228%_)))))
                      (_%E122219122228%_)))))
          (_%E122218122283%_))))
    (define gx#core-expand-import-source
      (lambda (_%hd122213%_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _%hd122213%_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_%stx121707%_ _%internal-expand?121708%_)
        (letrec* ((_%make-export__125204125205%_
                   (lambda (_%bind122161%_
                            _%phi122162%_
                            _%ctx122163%_
                            _%name122164%_)
                     (let* ((_%key122166%_
                             (##unchecked-structure-ref
                              _%bind122161%_
                              '2
                              '#f
                              '#f))
                            (_%export-key122168%_
                             (if _%name122164%_
                                 (gx#core-identifier-key _%name122164%_)
                                 _%key122166%_)))
                       (##structure
                        gx#module-export::t
                        _%ctx122163%_
                        _%key122166%_
                        _%phi122162%_
                        _%export-key122168%_
                        (let ((_%$e122171%_
                               (##structure-instance-of?
                                _%bind122161%_
                                'gx#extern-binding::t)))
                          (if _%$e122171%_
                              _%$e122171%_
                              (##structure-direct-instance-of?
                               _%bind122161%_
                               'gx#import-binding::t)))))))
                  (_%make-export__0__125206125209%_
                   (lambda (_%bind122177%_)
                     (let* ((_%phi122179%_ (gx#current-export-expander-phi))
                            (_%ctx122181%_ (gx#current-expander-context))
                            (_%name122183%_ '#f))
                       (_%make-export__125204125205%_
                        _%bind122177%_
                        _%phi122179%_
                        _%ctx122181%_
                        _%name122183%_))))
                  (_%make-export__1__125207125210%_
                   (lambda (_%bind122185%_ _%phi122186%_)
                     (let* ((_%ctx122188%_ (gx#current-expander-context))
                            (_%name122190%_ '#f))
                       (_%make-export__125204125205%_
                        _%bind122185%_
                        _%phi122186%_
                        _%ctx122188%_
                        _%name122190%_))))
                  (_%make-export__2__125208125211%_
                   (lambda (_%bind122192%_ _%phi122193%_ _%ctx122194%_)
                     (let ((_%name122196%_ '#f))
                       (_%make-export__125204125205%_
                        _%bind122192%_
                        _%phi122193%_
                        _%ctx122194%_
                        _%name122196%_))))
                  (_%make-export121710%_
                   (lambda _g125278_
                     (let ((_g125277_ (##length _g125278_)))
                       (cond ((##fx= _g125277_ 1)
                              (apply (lambda (_%bind122177%_)
                                       (_%make-export__0__125206125209%_
                                        _%bind122177%_))
                                     _g125278_))
                             ((##fx= _g125277_ 2)
                              (apply (lambda (_%bind122185%_ _%phi122186%_)
                                       (_%make-export__1__125207125210%_
                                        _%bind122185%_
                                        _%phi122186%_))
                                     _g125278_))
                             ((##fx= _g125277_ 3)
                              (apply (lambda (_%bind122192%_
                                              _%phi122193%_
                                              _%ctx122194%_)
                                       (_%make-export__2__125208125211%_
                                        _%bind122192%_
                                        _%phi122193%_
                                        _%ctx122194%_))
                                     _g125278_))
                             ((##fx= _g125277_ 4)
                              (apply (lambda (_%bind122198%_
                                              _%phi122199%_
                                              _%ctx122200%_
                                              _%name122201%_)
                                       (_%make-export__125204125205%_
                                        _%bind122198%_
                                        _%phi122199%_
                                        _%ctx122200%_
                                        _%name122201%_))
                                     _g125278_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g125278_))))))
                  (_%expand1121711%_
                   (lambda (_%hd121866%_
                            _%K121867%_
                            _%rest121868%_
                            _%r121869%_)
                     (let* ((_%e121870121902%_ _%hd121866%_)
                            (_%E121897121906%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _%stx121707%_
                                _%hd121866%_)))
                            (_%E121887121990%_
                             (lambda ()
                               (if (gx#stx-pair? _%e121870121902%_)
                                   (let ((_%e121898121910%_
                                          (gx#syntax-e _%e121870121902%_)))
                                     (let ((_%hd121899121913%_
                                            (##car _%e121898121910%_))
                                           (_%tl121900121915%_
                                            (##cdr _%e121898121910%_)))
                                       (if (eq? (gx#stx-e _%hd121899121913%_)
                                                'import:)
                                           (let ((_%in121918%_
                                                  _%tl121900121915%_))
                                             (if (gx#stx-list? _%in121918%_)
                                                 (let _%lp121920%_ ((_%in-rest121922%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%in121918%_)
                            (_%r121923%_ _%r121869%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%e121924121931%_
                                                           _%in-rest121922%_)
                                                          (_%E121926121935%_
                                                           (lambda ()
                                                             (_%K121867%_
                                                              _%rest121868%_
                                                              _%r121923%_)))
                                                          (_%E121925121986%_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%e121924121931%_)
                         (let ((_%e121927121939%_
                                (gx#syntax-e _%e121924121931%_)))
                           (let ((_%hd121928121942%_ (##car _%e121927121939%_))
                                 (_%tl121929121944%_
                                  (##cdr _%e121927121939%_)))
                             (let* ((_%hd121947%_ _%hd121928121942%_)
                                    (_%in-rest121949%_ _%tl121929121944%_))
                               (if '#t
                                   (let ((_%src121984%_
                                          (if (gx#core-bound-module?
                                               _%hd121947%_)
                                              (let ()
                                                (gx#syntax-local-e__0
                                                 _%hd121947%_))
                                              (if (gx#core-library-module-path?
                                                   _%hd121947%_)
                                                  (let ()
                                                    (gx#import-module__0
                                                     (gx#core-resolve-library-module-path
                                                      _%hd121947%_)))
                                                  (if (gx#core-library-relative-module-path?
                                                       _%hd121947%_)
                                                      (let ()
                                                        (gx#import-module__0
                                                         (gx#core-resolve-library-relative-module-path
                                                          _%hd121947%_)))
                                                      (if (gx#stx-string?
                                                           _%hd121947%_)
                                                          (let ()
                                                            (gx#import-module__0
                                                             (gx#core-resolve-module-path__%
                                                              _%hd121947%_
                                                              (gx#stx-source
                                                               _%stx121707%_))))
                                                          (let ()
                                                            (let* ((_%e121955121962%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd121947%_)
                           (_%E121957121966%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; illegal re-export"
                               _%stx121707%_
                               _%hd121947%_)))
                           (_%E121956121980%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121955121962%_)
                                  (let ((_%e121958121970%_
                                         (gx#syntax-e _%e121955121962%_)))
                                    (let ((_%hd121959121973%_
                                           (##car _%e121958121970%_))
                                          (_%tl121960121975%_
                                           (##cdr _%e121958121970%_)))
                                      (if (eq? (gx#stx-e _%hd121959121973%_)
                                               'in:)
                                          (let ((_%spath121978%_
                                                 _%tl121960121975%_))
                                            (if '#t
                                                (gx#core-import-nested-module
                                                 _%spath121978%_
                                                 _%stx121707%_)
                                                (_%E121957121966%_)))
                                          (_%E121957121966%_))))
                                  (_%E121957121966%_)))))
                      (_%E121956121980%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%lp121920%_
                                      _%in-rest121949%_
                                      (_%export-imports121712%_
                                       _%src121984%_
                                       _%r121923%_)))
                                   (_%E121926121935%_)))))
                         (_%E121926121935%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E121925121986%_)))
                                                 (_%E121897121906%_)))
                                           (_%E121897121906%_))))
                                   (_%E121897121906%_))))
                            (_%E121874122030%_
                             (lambda ()
                               (if (gx#stx-pair? _%e121870121902%_)
                                   (let ((_%e121888121994%_
                                          (gx#syntax-e _%e121870121902%_)))
                                     (let ((_%hd121889121997%_
                                            (##car _%e121888121994%_))
                                           (_%tl121890121999%_
                                            (##cdr _%e121888121994%_)))
                                       (if (eq? (gx#stx-e _%hd121889121997%_)
                                                'rename:)
                                           (if (gx#stx-pair?
                                                _%tl121890121999%_)
                                               (let ((_%e121891122002%_
                                                      (gx#syntax-e
                                                       _%tl121890121999%_)))
                                                 (let ((_%hd121892122005%_
                                                        (##car _%e121891122002%_))
                                                       (_%tl121893122007%_
                                                        (##cdr _%e121891122002%_)))
                                                   (let ((_%id122010%_
                                                          _%hd121892122005%_))
                                                     (if (gx#stx-pair?
                                                          _%tl121893122007%_)
                                                         (let ((_%e121894122012%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl121893122007%_)))
                   (let ((_%hd121895122015%_ (##car _%e121894122012%_))
                         (_%tl121896122017%_ (##cdr _%e121894122012%_)))
                     (let ((_%name122020%_ _%hd121895122015%_))
                       (if (gx#stx-null? _%tl121896122017%_)
                           (if '#t
                               (let* ((_%phi122022%_
                                       (gx#current-export-expander-phi))
                                      (_%$e122024%_
                                       (gx#core-resolve-identifier__1
                                        _%id122010%_
                                        _%phi122022%_)))
                                 (if _%$e122024%_
                                     ((lambda (_%bind122027%_)
                                        (_%K121867%_
                                         _%rest121868%_
                                         (cons (_%make-export__125204125205%_
                                                _%bind122027%_
                                                _%phi122022%_
                                                (gx#current-expander-context)
                                                _%name122020%_)
                                               _%r121869%_)))
                                      _%$e122024%_)
                                     (let ()
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Reference to unbound identifier"
                                        _%stx121707%_
                                        _%hd121866%_
                                        _%id122010%_))))
                               (_%E121887121990%_))
                           (_%E121887121990%_)))))
                 (_%E121887121990%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E121887121990%_))
                                           (_%E121887121990%_))))
                                   (_%E121887121990%_))))
                            (_%E121873122080%_
                             (lambda ()
                               (if (gx#stx-pair? _%e121870121902%_)
                                   (let ((_%e121875122034%_
                                          (gx#syntax-e _%e121870121902%_)))
                                     (let ((_%hd121876122037%_
                                            (##car _%e121875122034%_))
                                           (_%tl121877122039%_
                                            (##cdr _%e121875122034%_)))
                                       (if (eq? (gx#stx-e _%hd121876122037%_)
                                                'spec:)
                                           (if (gx#stx-pair?
                                                _%tl121877122039%_)
                                               (let ((_%e121878122042%_
                                                      (gx#syntax-e
                                                       _%tl121877122039%_)))
                                                 (let ((_%hd121879122045%_
                                                        (##car _%e121878122042%_))
                                                       (_%tl121880122047%_
                                                        (##cdr _%e121878122042%_)))
                                                   (let ((_%phi122050%_
                                                          _%hd121879122045%_))
                                                     (if (gx#stx-pair?
                                                          _%tl121880122047%_)
                                                         (let ((_%e121881122052%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl121880122047%_)))
                   (let ((_%hd121882122055%_ (##car _%e121881122052%_))
                         (_%tl121883122057%_ (##cdr _%e121881122052%_)))
                     (let ((_%id122060%_ _%hd121882122055%_))
                       (if (gx#stx-pair? _%tl121883122057%_)
                           (let ((_%e121884122062%_
                                  (gx#syntax-e _%tl121883122057%_)))
                             (let ((_%hd121885122065%_
                                    (##car _%e121884122062%_))
                                   (_%tl121886122067%_
                                    (##cdr _%e121884122062%_)))
                               (let ((_%name122070%_ _%hd121885122065%_))
                                 (if (gx#stx-null? _%tl121886122067%_)
                                     (if (and (gx#stx-fixnum? _%phi122050%_)
                                              (gx#identifier? _%id122060%_)
                                              (gx#identifier? _%name122070%_))
                                         (let* ((_%phi122072%_
                                                 (gx#stx-e _%phi122050%_))
                                                (_%$e122074%_
                                                 (gx#core-resolve-identifier__1
                                                  _%id122060%_
                                                  _%phi122072%_)))
                                           (if _%$e122074%_
                                               ((lambda (_%bind122077%_)
                                                  (_%K121867%_
                                                   _%rest121868%_
                                                   (cons (_%make-export__125204125205%_
                                                          _%bind122077%_
                                                          _%phi122072%_
                                                          (gx#current-expander-context)
                                                          _%name122070%_)
                                                         _%r121869%_)))
                                                _%$e122074%_)
                                               (let ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Reference to unbound identifier"
                                                  _%stx121707%_
                                                  _%hd121866%_
                                                  _%id122060%_))))
                                         (_%E121874122030%_))
                                     (_%E121874122030%_)))))
                           (_%E121874122030%_)))))
                 (_%E121874122030%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E121874122030%_))
                                           (_%E121874122030%_))))
                                   (_%E121874122030%_))))
                            (_%E121872122092%_
                             (lambda ()
                               (let ((_%id122084%_ _%e121870121902%_))
                                 (if (gx#identifier? _%id122084%_)
                                     (let ((_%$e122086%_
                                            (gx#core-resolve-identifier__1
                                             _%id122084%_
                                             (gx#current-export-expander-phi))))
                                       (if _%$e122086%_
                                           ((lambda (_%bind122089%_)
                                              (_%K121867%_
                                               _%rest121868%_
                                               (cons (_%make-export__0__125206125209%_
                                                      _%bind122089%_)
                                                     _%r121869%_)))
                                            _%$e122086%_)
                                           (let ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Reference to unbound identifier"
                                              _%stx121707%_
                                              _%hd121866%_))))
                                     (_%E121873122080%_)))))
                            (_%E121871122156%_
                             (lambda ()
                               (if (eq? (gx#stx-e _%e121870121902%_) '#t)
                                   (if '#t
                                       (let* ((_%current-ctx122096%_
                                               (gx#current-expander-context))
                                              (_%current-phi122098%_
                                               (gx#current-export-expander-phi))
                                              (_%phi-ctx122100%_
                                               (gx#core-context-shift
                                                _%current-ctx122096%_
                                                _%current-phi122098%_))
                                              (_%phi-bind122102%_
                                               (hash->list
                                                (##unchecked-structure-ref
                                                 _%phi-ctx122100%_
                                                 '2
                                                 '#f
                                                 '#f))))
                                         (let _%lp122105%_ ((_%bind-rest122107%_
                                                             _%phi-bind122102%_)
                                                            (_%set122108%_
                                                             '()))
                                           (let* ((_%bind-rest122109122119%_
                                                   _%bind-rest122107%_)
                                                  (_%else122111122127%_
                                                   (lambda ()
                                                     (_%K121867%_
                                                      _%rest121868%_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _%current-phi122098%_
                                                             _%set122108%_)
                                                            _%r121869%_))))
                                                  (_%K122113122137%_
                                                   (lambda (_%bind-rest122130%_
                                                            _%bind122131%_
                                                            _%key122132%_)
                                                     (if (or (##structure-direct-instance-of?
                                                              _%bind122131%_
                                                              'gx#import-binding::t)
                                                             (gx#private-feature-binding?
                                                              _%bind122131%_))
                                                         (_%lp122105%_
                                                          _%bind-rest122130%_
                                                          _%set122108%_)
                                                         (_%lp122105%_
                                                          _%bind-rest122130%_
                                                          (cons (_%make-export__2__125208125211%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%bind122131%_
                         _%current-phi122098%_
                         _%current-ctx122096%_)
                        _%set122108%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _%bind-rest122109122119%_)
                                                 (let ((_%hd122114122140%_
                                                        (##car _%bind-rest122109122119%_))
                                                       (_%tl122115122142%_
                                                        (##cdr _%bind-rest122109122119%_)))
                                                   (if (##pair? _%hd122114122140%_)
                                                       (let ((_%hd122116122145%_
                                                              (##car _%hd122114122140%_))
                                                             (_%tl122117122147%_
                                                              (##cdr _%hd122114122140%_)))
                                                         (let* ((_%key122150%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd122116122145%_)
                        (_%bind122152%_ _%tl122117122147%_)
                        (_%bind-rest122154%_ _%tl122115122142%_))
                   (_%K122113122137%_
                    _%bind-rest122154%_
                    _%bind122152%_
                    _%key122150%_)))
               (_%else122111122127%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%else122111122127%_)))))
                                       (_%E121872122092%_))
                                   (_%E121872122092%_)))))
                       (_%E121871122156%_))))
                  (_%export-imports121712%_
                   (lambda (_%src121742%_ _%r121743%_)
                     (letrec* ((_%current-ctx121745%_
                                (gx#current-expander-context))
                               (_%current-phi121746%_
                                (gx#current-export-expander-phi))
                               (_%import->export121747%_
                                (lambda (_%in121828%_)
                                  (let* ((_%in121829121837%_ _%in121828%_)
                                         (_%E121831121841%_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _%in121829121837%_
                                                   '((module-import
                                                      out
                                                      key
                                                      phi)))
                                            '#!void))
                                         (_%K121832121848%_
                                          (lambda (_%phi121844%_
                                                   _%key121845%_
                                                   _%out121846%_)
                                            (##structure
                                             gx#module-export::t
                                             _%current-ctx121745%_
                                             _%key121845%_
                                             _%phi121844%_
                                             _%key121845%_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _%in121829121837%_
                                         'gx#module-import::t)
                                        (let* ((_%e121833121851%_
                                                (##unchecked-structure-ref
                                                 _%in121829121837%_
                                                 '1
                                                 '#f
                                                 '#f))
                                               (_%out121854%_
                                                _%e121833121851%_)
                                               (_%e121834121856%_
                                                (##unchecked-structure-ref
                                                 _%in121829121837%_
                                                 '2
                                                 '#f
                                                 '#f))
                                               (_%key121859%_
                                                _%e121834121856%_)
                                               (_%e121835121861%_
                                                (##unchecked-structure-ref
                                                 _%in121829121837%_
                                                 '3
                                                 '#f
                                                 '#f))
                                               (_%phi121864%_
                                                _%e121835121861%_))
                                          (_%K121832121848%_
                                           _%phi121864%_
                                           _%key121859%_
                                           _%out121854%_))
                                        (_%E121831121841%_)))))
                               (_%fold-e121748%_
                                (lambda (_%in121750%_ _%r121751%_)
                                  (let* ((_%in121752121766%_ _%in121750%_)
                                         (_%else121755121774%_
                                          (lambda () _%r121751%_)))
                                    (let ((_%K121761121810%_
                                           (lambda (_%phi121806%_
                                                    _%key121807%_
                                                    _%out121808%_)
                                             (if (and (fx= _%phi121806%_
                                                           _%current-phi121746%_)
                                                      (eq? _%src121742%_
                                                           (##unchecked-structure-ref
                                                            _%out121808%_
                                                            '1
                                                            '#f
                                                            '#f)))
                                                 (cons (_%import->export121747%_
                                                        _%in121750%_)
                                                       _%r121751%_)
                                                 _%r121751%_)))
                                          (_%K121757121785%_
                                           (lambda (_%imports121778%_
                                                    _%phi121779%_
                                                    _%ctx121780%_)
                                             (if (and (fx= _%phi121779%_
                                                           _%current-phi121746%_)
                                                      (eq? _%src121742%_
                                                           _%ctx121780%_))
                                                 (__foldl1
                                                  (lambda (_%in121782%_
                                                           _%r121783%_)
                                                    (cons (_%import->export121747%_
                                                           _%in121782%_)
                                                          _%r121783%_))
                                                  _%r121751%_
                                                  _%imports121778%_)
                                                 _%r121751%_))))
                                      (let ((_%try-match121754121803%_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _%in121752121766%_
                                                    'gx#import-set::t)
                                                   (let* ((_%e121758121788%_
                                                           (##unchecked-structure-ref
                                                            _%in121752121766%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                          (_%e121759121793%_
                                                           (##unchecked-structure-ref
                                                            _%in121752121766%_
                                                            '2
                                                            '#f
                                                            '#f))
                                                          (_%e121760121798%_
                                                           (##unchecked-structure-ref
                                                            _%in121752121766%_
                                                            '3
                                                            '#f
                                                            '#f)))
                                                     (let ((_%ctx121791%_
                                                            _%e121758121788%_)
                                                           (_%phi121796%_
                                                            _%e121759121793%_)
                                                           (_%imports121801%_
                                                            _%e121760121798%_))
                                                       (_%K121757121785%_
                                                        _%imports121801%_
                                                        _%phi121796%_
                                                        _%ctx121791%_)))
                                                   (_%else121755121774%_)))))
                                        (if (##structure-direct-instance-of?
                                             _%in121752121766%_
                                             'gx#module-import::t)
                                            (let* ((_%e121762121813%_
                                                    (##unchecked-structure-ref
                                                     _%in121752121766%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                   (_%e121763121818%_
                                                    (##unchecked-structure-ref
                                                     _%in121752121766%_
                                                     '2
                                                     '#f
                                                     '#f))
                                                   (_%e121764121823%_
                                                    (##unchecked-structure-ref
                                                     _%in121752121766%_
                                                     '3
                                                     '#f
                                                     '#f)))
                                              (let ((_%out121816%_
                                                     _%e121762121813%_)
                                                    (_%key121821%_
                                                     _%e121763121818%_)
                                                    (_%phi121826%_
                                                     _%e121764121823%_))
                                                (_%K121761121810%_
                                                 _%phi121826%_
                                                 _%key121821%_
                                                 _%out121816%_)))
                                            (_%try-match121754121803%_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _%src121742%_
                              _%current-phi121746%_
                              (__foldl1
                               _%fold-e121748%_
                               '()
                               (##unchecked-structure-ref
                                _%current-ctx121745%_
                                '8
                                '#f
                                '#f)))
                             _%r121743%_))))
                  (_%export!121713%_
                   (lambda (_%rbody121729%_)
                     (letrec* ((_%current-ctx121731%_
                                (gx#current-expander-context))
                               (_%fold-e121732%_
                                (lambda (_%out121736%_ _%r121737%_)
                                  (if (##structure-direct-instance-of?
                                       _%out121736%_
                                       'gx#module-export::t)
                                      (let () (cons _%out121736%_ _%r121737%_))
                                      (if (##structure-direct-instance-of?
                                           _%out121736%_
                                           'gx#export-set::t)
                                          (let ()
                                            (__foldl1
                                             cons
                                             _%r121737%_
                                             (##unchecked-structure-ref
                                              _%out121736%_
                                              '3
                                              '#f
                                              '#f)))
                                          (let () _%r121737%_))))))
                       (let ((_%body121734%_ (reverse _%rbody121729%_)))
                         (##unchecked-structure-set!
                          _%current-ctx121731%_
                          (__foldl1
                           _%fold-e121732%_
                           (##unchecked-structure-ref
                            _%current-ctx121731%_
                            '9
                            '#f
                            '#f)
                           _%body121734%_)
                          '9
                          '#f
                          '#f)
                         _%body121734%_))))
                  (_%expanded-export?121714%_
                   (lambda (_%e121724%_)
                     (let ((_%$e121726%_
                            (##structure-direct-instance-of?
                             _%e121724%_
                             'gx#module-export::t)))
                       (if _%$e121726%_
                           _%$e121726%_
                           (##structure-direct-instance-of?
                            _%e121724%_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _%internal-expand?121708%_)
              (let ()
                (let ((_%rbody121720%_
                       (gx#core-expand-import/export
                        _%stx121707%_
                        _%expanded-export?121714%_
                        'apply-export-expander
                        gx#current-export-expander-phi
                        _%expand1121711%_)))
                  (if _%internal-expand?121708%_
                      (reverse _%rbody121720%_)
                      (gx#core-quote-syntax__1
                       (gx#core-cons
                        '%#export
                        (_%export!121713%_ _%rbody121720%_))
                       (gx#stx-source _%stx121707%_)))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (let ()
                    (gx#core-quote-syntax__1
                     (gx#core-cons '%#begin '())
                     (gx#stx-source _%stx121707%_)))
                  (let ()
                    (gx#raise-syntax-error
                     '#f
                     '"Illegal context"
                     _%stx121707%_)))))))
    (define gx#core-expand-export%__0
      (lambda (_%stx122206%_)
        (let ((_%internal-expand?122208%_ '#f))
          (gx#core-expand-export%__%
           _%stx122206%_
           _%internal-expand?122208%_))))
    (define gx#core-expand-export%
      (lambda _g125280_
        (let ((_g125279_ (##length _g125280_)))
          (cond ((##fx= _g125279_ 1)
                 (apply (lambda (_%stx122206%_)
                          (gx#core-expand-export%__0 _%stx122206%_))
                        _g125280_))
                ((##fx= _g125279_ 2)
                 (apply (lambda (_%stx122210%_ _%internal-expand?122211%_)
                          (gx#core-expand-export%__%
                           _%stx122210%_
                           _%internal-expand?122211%_))
                        _g125280_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g125280_))))))
    (define gx#core-expand-export-source
      (lambda (_%hd121704%_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _%hd121704%_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_%stx121674%_)
        (let* ((_%e121675121682%_ _%stx121674%_)
               (_%E121677121686%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121675121682%_)))
               (_%E121676121700%_
                (lambda ()
                  (if (gx#stx-pair? _%e121675121682%_)
                      (let ((_%e121678121690%_
                             (gx#syntax-e _%e121675121682%_)))
                        (let ((_%hd121679121693%_ (##car _%e121678121690%_))
                              (_%tl121680121695%_ (##cdr _%e121678121690%_)))
                          (let ((_%body121698%_ _%tl121680121695%_))
                            (if (gx#identifier-list? _%body121698%_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _%body121698%_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _%body121698%_))
                                   (gx#stx-source _%stx121674%_)))
                                (_%E121677121686%_)))))
                      (_%E121677121686%_)))))
          (_%E121676121700%_))))
    (define gx#core-bind-feature!__%
      (lambda (_%id121640%_ _%private?121641%_ _%phi121642%_ _%ctx121643%_)
        (gx#core-bind-syntax!__%
         _%id121640%_
         ((if _%private?121641%_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _%id121640%_))
         _%private?121641%_
         _%phi121642%_
         _%ctx121643%_)))
    (define gx#core-bind-feature!__0
      (lambda (_%id121648%_)
        (let* ((_%private?121650%_ '#f)
               (_%phi121652%_ (gx#current-expander-phi))
               (_%ctx121654%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id121648%_
           _%private?121650%_
           _%phi121652%_
           _%ctx121654%_))))
    (define gx#core-bind-feature!__1
      (lambda (_%id121656%_ _%private?121657%_)
        (let* ((_%phi121659%_ (gx#current-expander-phi))
               (_%ctx121661%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id121656%_
           _%private?121657%_
           _%phi121659%_
           _%ctx121661%_))))
    (define gx#core-bind-feature!__2
      (lambda (_%id121663%_ _%private?121664%_ _%phi121665%_)
        (let ((_%ctx121667%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id121663%_
           _%private?121664%_
           _%phi121665%_
           _%ctx121667%_))))
    (define gx#core-bind-feature!
      (lambda _g125282_
        (let ((_g125281_ (##length _g125282_)))
          (cond ((##fx= _g125281_ 1)
                 (apply (lambda (_%id121648%_)
                          (gx#core-bind-feature!__0 _%id121648%_))
                        _g125282_))
                ((##fx= _g125281_ 2)
                 (apply (lambda (_%id121656%_ _%private?121657%_)
                          (gx#core-bind-feature!__1
                           _%id121656%_
                           _%private?121657%_))
                        _g125282_))
                ((##fx= _g125281_ 3)
                 (apply (lambda (_%id121663%_ _%private?121664%_ _%phi121665%_)
                          (gx#core-bind-feature!__2
                           _%id121663%_
                           _%private?121664%_
                           _%phi121665%_))
                        _g125282_))
                ((##fx= _g125281_ 4)
                 (apply (lambda (_%id121669%_
                                 _%private?121670%_
                                 _%phi121671%_
                                 _%ctx121672%_)
                          (gx#core-bind-feature!__%
                           _%id121669%_
                           _%private?121670%_
                           _%phi121671%_
                           _%ctx121672%_))
                        _g125282_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g125282_))))))))
