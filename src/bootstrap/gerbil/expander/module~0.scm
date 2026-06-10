(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1781119048)
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
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '((print: name))))
       '#f))
    (define gx#module-import? (make-class-predicate gx#module-import::t))
    (define gx#make-module-import
      (lambda _%$args165240%_
        (apply make-instance gx#module-import::t _%$args165240%_)))
    (define gx#module-import-source
      (make-class-slot-accessor gx#module-import::t 'source))
    (define gx#module-import-name
      (make-class-slot-accessor gx#module-import::t 'name))
    (define gx#module-import-phi
      (make-class-slot-accessor gx#module-import::t 'phi))
    (define gx#module-import-weak?
      (make-class-slot-accessor gx#module-import::t 'weak?))
    (define gx#module-import-source-set!
      (make-class-slot-mutator gx#module-import::t 'source))
    (define gx#module-import-name-set!
      (make-class-slot-mutator gx#module-import::t 'name))
    (define gx#module-import-phi-set!
      (make-class-slot-mutator gx#module-import::t 'phi))
    (define gx#module-import-weak?-set!
      (make-class-slot-mutator gx#module-import::t 'weak?))
    (define gx#&module-import-source
      (make-class-slot-unchecked-accessor gx#module-import::t 'source))
    (define gx#&module-import-name
      (make-class-slot-unchecked-accessor gx#module-import::t 'name))
    (define gx#&module-import-phi
      (make-class-slot-unchecked-accessor gx#module-import::t 'phi))
    (define gx#&module-import-weak?
      (make-class-slot-unchecked-accessor gx#module-import::t 'weak?))
    (define gx#&module-import-source-set!
      (make-class-slot-unchecked-mutator gx#module-import::t 'source))
    (define gx#&module-import-name-set!
      (make-class-slot-unchecked-mutator gx#module-import::t 'name))
    (define gx#&module-import-phi-set!
      (make-class-slot-unchecked-mutator gx#module-import::t 'phi))
    (define gx#&module-import-weak?-set!
      (make-class-slot-unchecked-mutator gx#module-import::t 'weak?))
    (define gx#module-export::t
      (make-class-type
       'gx#module-export::t
       'module-export
       (list)
       '(context key phi name weak?)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '((print: name))))
       '#f))
    (define gx#module-export? (make-class-predicate gx#module-export::t))
    (define gx#make-module-export
      (lambda _%$args165237%_
        (apply make-instance gx#module-export::t _%$args165237%_)))
    (define gx#module-export-context
      (make-class-slot-accessor gx#module-export::t 'context))
    (define gx#module-export-key
      (make-class-slot-accessor gx#module-export::t 'key))
    (define gx#module-export-phi
      (make-class-slot-accessor gx#module-export::t 'phi))
    (define gx#module-export-name
      (make-class-slot-accessor gx#module-export::t 'name))
    (define gx#module-export-weak?
      (make-class-slot-accessor gx#module-export::t 'weak?))
    (define gx#module-export-context-set!
      (make-class-slot-mutator gx#module-export::t 'context))
    (define gx#module-export-key-set!
      (make-class-slot-mutator gx#module-export::t 'key))
    (define gx#module-export-phi-set!
      (make-class-slot-mutator gx#module-export::t 'phi))
    (define gx#module-export-name-set!
      (make-class-slot-mutator gx#module-export::t 'name))
    (define gx#module-export-weak?-set!
      (make-class-slot-mutator gx#module-export::t 'weak?))
    (define gx#&module-export-context
      (make-class-slot-unchecked-accessor gx#module-export::t 'context))
    (define gx#&module-export-key
      (make-class-slot-unchecked-accessor gx#module-export::t 'key))
    (define gx#&module-export-phi
      (make-class-slot-unchecked-accessor gx#module-export::t 'phi))
    (define gx#&module-export-name
      (make-class-slot-unchecked-accessor gx#module-export::t 'name))
    (define gx#&module-export-weak?
      (make-class-slot-unchecked-accessor gx#module-export::t 'weak?))
    (define gx#&module-export-context-set!
      (make-class-slot-unchecked-mutator gx#module-export::t 'context))
    (define gx#&module-export-key-set!
      (make-class-slot-unchecked-mutator gx#module-export::t 'key))
    (define gx#&module-export-phi-set!
      (make-class-slot-unchecked-mutator gx#module-export::t 'phi))
    (define gx#&module-export-name-set!
      (make-class-slot-unchecked-mutator gx#module-export::t 'name))
    (define gx#&module-export-weak?-set!
      (make-class-slot-unchecked-mutator gx#module-export::t 'weak?))
    (define gx#import-set::t
      (make-class-type
       'gx#import-set::t
       'import-set
       (list)
       '(source phi imports)
       (cons (cons 'struct: '#t)
             (cons (cons 'final: '#t) '((print: source phi))))
       '#f))
    (define gx#import-set? (make-class-predicate gx#import-set::t))
    (define gx#make-import-set
      (lambda _%$args165234%_
        (apply make-instance gx#import-set::t _%$args165234%_)))
    (define gx#import-set-source
      (make-class-slot-accessor gx#import-set::t 'source))
    (define gx#import-set-phi (make-class-slot-accessor gx#import-set::t 'phi))
    (define gx#import-set-imports
      (make-class-slot-accessor gx#import-set::t 'imports))
    (define gx#import-set-source-set!
      (make-class-slot-mutator gx#import-set::t 'source))
    (define gx#import-set-phi-set!
      (make-class-slot-mutator gx#import-set::t 'phi))
    (define gx#import-set-imports-set!
      (make-class-slot-mutator gx#import-set::t 'imports))
    (define gx#&import-set-source
      (make-class-slot-unchecked-accessor gx#import-set::t 'source))
    (define gx#&import-set-phi
      (make-class-slot-unchecked-accessor gx#import-set::t 'phi))
    (define gx#&import-set-imports
      (make-class-slot-unchecked-accessor gx#import-set::t 'imports))
    (define gx#&import-set-source-set!
      (make-class-slot-unchecked-mutator gx#import-set::t 'source))
    (define gx#&import-set-phi-set!
      (make-class-slot-unchecked-mutator gx#import-set::t 'phi))
    (define gx#&import-set-imports-set!
      (make-class-slot-unchecked-mutator gx#import-set::t 'imports))
    (define gx#export-set::t
      (make-class-type
       'gx#export-set::t
       'export-set
       (list)
       '(source phi exports)
       (cons (cons 'struct: '#t)
             (cons (cons 'final: '#t) '((print: source phi))))
       '#f))
    (define gx#export-set? (make-class-predicate gx#export-set::t))
    (define gx#make-export-set
      (lambda _%$args165231%_
        (apply make-instance gx#export-set::t _%$args165231%_)))
    (define gx#export-set-source
      (make-class-slot-accessor gx#export-set::t 'source))
    (define gx#export-set-phi (make-class-slot-accessor gx#export-set::t 'phi))
    (define gx#export-set-exports
      (make-class-slot-accessor gx#export-set::t 'exports))
    (define gx#export-set-source-set!
      (make-class-slot-mutator gx#export-set::t 'source))
    (define gx#export-set-phi-set!
      (make-class-slot-mutator gx#export-set::t 'phi))
    (define gx#export-set-exports-set!
      (make-class-slot-mutator gx#export-set::t 'exports))
    (define gx#&export-set-source
      (make-class-slot-unchecked-accessor gx#export-set::t 'source))
    (define gx#&export-set-phi
      (make-class-slot-unchecked-accessor gx#export-set::t 'phi))
    (define gx#&export-set-exports
      (make-class-slot-unchecked-accessor gx#export-set::t 'exports))
    (define gx#&export-set-source-set!
      (make-class-slot-unchecked-mutator gx#export-set::t 'source))
    (define gx#&export-set-phi-set!
      (make-class-slot-unchecked-mutator gx#export-set::t 'phi))
    (define gx#&export-set-exports-set!
      (make-class-slot-unchecked-mutator gx#export-set::t 'exports))
    (define gx#import-expander::t
      (make-class-type
       'gx#import-expander::t
       'import-expander
       (list gx#user-expander::t)
       '()
       '()
       ':init!))
    (define gx#import-expander? (make-class-predicate gx#import-expander::t))
    (define gx#make-import-expander
      (lambda _%$args165228%_
        (apply make-instance gx#import-expander::t _%$args165228%_)))
    (define gx#import-expander-context
      (make-class-slot-accessor gx#import-expander::t 'context))
    (define gx#import-expander-phi
      (make-class-slot-accessor gx#import-expander::t 'phi))
    (define gx#import-expander-e
      (make-class-slot-accessor gx#import-expander::t 'e))
    (define gx#import-expander-context-set!
      (make-class-slot-mutator gx#import-expander::t 'context))
    (define gx#import-expander-phi-set!
      (make-class-slot-mutator gx#import-expander::t 'phi))
    (define gx#import-expander-e-set!
      (make-class-slot-mutator gx#import-expander::t 'e))
    (define gx#&import-expander-context
      (make-class-slot-unchecked-accessor gx#import-expander::t 'context))
    (define gx#&import-expander-phi
      (make-class-slot-unchecked-accessor gx#import-expander::t 'phi))
    (define gx#&import-expander-e
      (make-class-slot-unchecked-accessor gx#import-expander::t 'e))
    (define gx#&import-expander-context-set!
      (make-class-slot-unchecked-mutator gx#import-expander::t 'context))
    (define gx#&import-expander-phi-set!
      (make-class-slot-unchecked-mutator gx#import-expander::t 'phi))
    (define gx#&import-expander-e-set!
      (make-class-slot-unchecked-mutator gx#import-expander::t 'e))
    (define gx#export-expander::t
      (make-class-type
       'gx#export-expander::t
       'export-expander
       (list gx#user-expander::t)
       '()
       '()
       ':init!))
    (define gx#export-expander? (make-class-predicate gx#export-expander::t))
    (define gx#make-export-expander
      (lambda _%$args165225%_
        (apply make-instance gx#export-expander::t _%$args165225%_)))
    (define gx#export-expander-context
      (make-class-slot-accessor gx#export-expander::t 'context))
    (define gx#export-expander-phi
      (make-class-slot-accessor gx#export-expander::t 'phi))
    (define gx#export-expander-e
      (make-class-slot-accessor gx#export-expander::t 'e))
    (define gx#export-expander-context-set!
      (make-class-slot-mutator gx#export-expander::t 'context))
    (define gx#export-expander-phi-set!
      (make-class-slot-mutator gx#export-expander::t 'phi))
    (define gx#export-expander-e-set!
      (make-class-slot-mutator gx#export-expander::t 'e))
    (define gx#&export-expander-context
      (make-class-slot-unchecked-accessor gx#export-expander::t 'context))
    (define gx#&export-expander-phi
      (make-class-slot-unchecked-accessor gx#export-expander::t 'phi))
    (define gx#&export-expander-e
      (make-class-slot-unchecked-accessor gx#export-expander::t 'e))
    (define gx#&export-expander-context-set!
      (make-class-slot-unchecked-mutator gx#export-expander::t 'context))
    (define gx#&export-expander-phi-set!
      (make-class-slot-unchecked-mutator gx#export-expander::t 'phi))
    (define gx#&export-expander-e-set!
      (make-class-slot-unchecked-mutator gx#export-expander::t 'e))
    (define gx#import-export-expander::t
      (make-class-type
       'gx#import-export-expander::t
       'import-export-expander
       (list gx#import-expander::t gx#export-expander::t)
       '()
       '()
       ':init!))
    (define gx#import-export-expander?
      (make-class-predicate gx#import-export-expander::t))
    (define gx#make-import-export-expander
      (lambda _%$args165222%_
        (apply make-instance gx#import-export-expander::t _%$args165222%_)))
    (define gx#import-export-expander-context
      (make-class-slot-accessor gx#import-export-expander::t 'context))
    (define gx#import-export-expander-phi
      (make-class-slot-accessor gx#import-export-expander::t 'phi))
    (define gx#import-export-expander-e
      (make-class-slot-accessor gx#import-export-expander::t 'e))
    (define gx#import-export-expander-context-set!
      (make-class-slot-mutator gx#import-export-expander::t 'context))
    (define gx#import-export-expander-phi-set!
      (make-class-slot-mutator gx#import-export-expander::t 'phi))
    (define gx#import-export-expander-e-set!
      (make-class-slot-mutator gx#import-export-expander::t 'e))
    (define gx#&import-export-expander-context
      (make-class-slot-unchecked-accessor
       gx#import-export-expander::t
       'context))
    (define gx#&import-export-expander-phi
      (make-class-slot-unchecked-accessor gx#import-export-expander::t 'phi))
    (define gx#&import-export-expander-e
      (make-class-slot-unchecked-accessor gx#import-export-expander::t 'e))
    (define gx#&import-export-expander-context-set!
      (make-class-slot-unchecked-mutator
       gx#import-export-expander::t
       'context))
    (define gx#&import-export-expander-phi-set!
      (make-class-slot-unchecked-mutator gx#import-export-expander::t 'phi))
    (define gx#&import-export-expander-e-set!
      (make-class-slot-unchecked-mutator gx#import-export-expander::t 'e))
    (define gx#current-import-expander-phi (make-parameter '#f))
    (define gx#current-export-expander-phi (make-parameter '#f))
    (define gx#current-module-reader-path (make-parameter '#f))
    (define gx#current-module-reader-args (make-parameter '#f))
    (define gx#source-file-settings '(char-encoding: UTF-8 eol-encoding: lf))
    (define gx#call-with-input-source-file
      (lambda (_%path165219%_ _%fun165220%_)
        (call-with-input-file
         (cons 'path: (cons _%path165219%_ gx#source-file-settings))
         _%fun165220%_)))
    (define gx#module-context:::init!
      (lambda (_%self165202%_
               _%id165203%_
               _%super165204%_
               _%ns165205%_
               _%path165206%_)
        (let ((_%self165209%_ _%self165202%_))
          (struct-instance-init!
           _%self165209%_
           _%id165203%_
           (make-hash-table-eq)
           _%super165204%_
           '#f
           '#f
           _%ns165205%_
           _%path165206%_
           '()
           '()
           '#f
           '#f))))
    (bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
    (define gx#prelude-context:::init!
      (let ((_%$%opt-lambda165033165068%_
             (lambda (_%self165035%_ _%ctx165036%_ _%root165037%_)
               (let* ((_%self165040%_ _%self165035%_)
                      (_%super165056%_
                       (let ((_%$e165050%_ _%root165037%_))
                         (if _%$e165050%_
                             _%$e165050%_
                             (let ((_%$e165053%_ (gx#core-context-root)))
                               (if _%$e165053%_
                                   _%$e165053%_
                                   (gx#make-root-context)))))))
                 (if _%ctx165036%_
                     (let ((_%id165059%_
                            (gx#expander-context-id _%ctx165036%_))
                           (_%path165060%_
                            (gx#module-context-path _%ctx165036%_))
                           (_%in165061%_
                            (map gx#core-module-export->import
                                 (gx#module-context-export _%ctx165036%_)))
                           (_%e165062%_
                            (make-atomic-promise
                             (lambda () (gx#eval-module _%ctx165036%_)))))
                       (struct-instance-init!
                        _%self165040%_
                        _%id165059%_
                        (make-hash-table-eq 'size: (length _%in165061%_))
                        _%super165056%_
                        '#f
                        '#f
                        _%path165060%_
                        _%in165061%_
                        _%e165062%_)
                       (for-each
                        (lambda (_%$%g165063165065%_)
                          (gx#core-bind-weak-import!
                           _%$%g165063165065%_
                           _%self165040%_))
                        _%in165061%_))
                     (struct-instance-init!
                      _%self165040%_
                      '#f
                      (make-hash-table-eq)
                      _%super165056%_
                      '#f
                      '#f
                      '#f
                      '()
                      '#f))))))
        (lambda _g165242_
          (let ((_g165243_ (##length _g165242_)))
            (cond ((##fx= _g165243_ 2)
                   (apply (lambda (_%self165071%_ _%ctx165072%_)
                            (let ((_%root165074%_ '#f))
                              (_%$%opt-lambda165033165068%_
                               _%self165071%_
                               _%ctx165072%_
                               _%root165074%_)))
                          _g165242_))
                  ((##fx= _g165243_ 3)
                   (apply _%$%opt-lambda165033165068%_ _g165242_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#prelude-context:::init!
                    _g165242_)))))))
    (bind-method! gx#prelude-context::t ':init! gx#prelude-context:::init! '#f)
    (define gx#import-export-expander-init!
      (lambda (_%self164909%_ _%e164910%_)
        (struct-instance-init!
         _%self164909%_
         _%e164910%_
         (gx#current-expander-context)
         (fx1- (gx#current-expander-phi)))))
    (define gx#import-expander:::init! gx#import-export-expander-init!)
    (bind-method! gx#import-expander::t ':init! gx#import-expander:::init! '#f)
    (define gx#export-expander:::init! gx#import-export-expander-init!)
    (bind-method! gx#export-expander::t ':init! gx#export-expander:::init! '#f)
    (define gx#import-export-expander:::init! gx#import-export-expander-init!)
    (bind-method!
     gx#import-export-expander::t
     ':init!
     gx#import-export-expander:::init!
     '#f)
    (define gx#import-expander::apply-import-expander
      (lambda (_%$%g164535164538%_ _%$%g164536164540%_)
        (gx#core-apply-user-expander
         _%$%g164535164538%_
         _%$%g164536164540%_
         'apply-import-expander)))
    (bind-method!
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_%$%g164406164409%_ _%$%g164407164411%_)
        (gx#core-apply-user-expander
         _%$%g164406164409%_
         _%$%g164407164411%_
         'apply-export-expander)))
    (bind-method!
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_%ctx164277%_)
        (let* ((_%path164279%_ (gx#module-context-path _%ctx164277%_))
               (_%path164281%_
                (if (pair? _%path164279%_)
                    (last _%path164279%_)
                    _%path164279%_)))
          (if (string? _%path164281%_) _%path164281%_ '#f))))
    (define gx#import-module
      (let ((_%$%opt-lambda164251164259%_
             (lambda (_%path164253%_ _%reload?164254%_ _%eval?164255%_)
               (let ((_%ctx164257%_
                      ((gx#current-expander-module-import)
                       _%path164253%_
                       _%reload?164254%_)))
                 (if (and _%ctx164257%_ _%eval?164255%_)
                     (gx#eval-module _%ctx164257%_)
                     '#!void)
                 _%ctx164257%_))))
        (lambda _g165244_
          (let ((_g165245_ (##length _g165244_)))
            (cond ((##fx= _g165245_ 1)
                   (apply (lambda (_%path164262%_)
                            (let* ((_%reload?164264%_ '#f)
                                   (_%eval?164266%_ '#f))
                              (_%$%opt-lambda164251164259%_
                               _%path164262%_
                               _%reload?164264%_
                               _%eval?164266%_)))
                          _g165244_))
                  ((##fx= _g165245_ 2)
                   (apply (lambda (_%path164268%_ _%reload?164269%_)
                            (let ((_%eval?164271%_ '#f))
                              (_%$%opt-lambda164251164259%_
                               _%path164268%_
                               _%reload?164269%_
                               _%eval?164271%_)))
                          _g165244_))
                  ((##fx= _g165245_ 3)
                   (apply _%$%opt-lambda164251164259%_ _g165244_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#import-module
                    _g165244_)))))))
    (define gx#eval-module
      (lambda (_%mod164250%_)
        ((gx#current-expander-module-eval) _%mod164250%_)))
    (define gx#core-eval-module
      (lambda (_%obj164229%_)
        (letrec ((_%force-e164231%_
                  (lambda (_%getf164245%_ _%e164246%_)
                    (call-with-parameters
                     (lambda ()
                       (call-with-parameters
                        (lambda () (force (_%getf164245%_ _%e164246%_)))
                        gx#current-expander-phi
                        '0))
                     gx#current-expander-context
                     _%e164246%_))))
          (let _%recur164233%_ ((_%e164235%_ _%obj164229%_))
            (if (gx#module-context? _%e164235%_)
                (let ()
                  (let ((_%$e164238%_ (gx#core-context-prelude _%e164235%_)))
                    (if _%$e164238%_ (_%recur164233%_ _%$e164238%_) '#!void))
                  (_%force-e164231%_ gx#module-context-e _%e164235%_))
                (if (gx#prelude-context? _%e164235%_)
                    (_%force-e164231%_ gx#prelude-context-e _%e164235%_)
                    (if (gx#stx-string? _%e164235%_)
                        (_%recur164233%_
                         (gx#import-module
                          (gx#core-resolve-module-path _%e164235%_)))
                        (if (gx#core-library-module-path? _%e164235%_)
                            (_%recur164233%_
                             (gx#import-module
                              (gx#core-resolve-library-module-path
                               _%e164235%_)))
                            (error '"cannot eval module" _%obj164229%_)))))))))
    (define gx#core-context-prelude
      (let ((_%$%opt-lambda164207164221%_
             (lambda (_%ctx164209%_)
               (let _%lp164211%_ ((_%e164213%_ _%ctx164209%_))
                 (if (or (gx#module-context? _%e164213%_)
                         (gx#local-context? _%e164213%_))
                     (_%lp164211%_ (gx#&phi-context-super _%e164213%_))
                     (if (gx#prelude-context? _%e164213%_)
                         _%e164213%_
                         '#f))))))
        (lambda _g165246_
          (let ((_g165247_ (##length _g165246_)))
            (cond ((##fx= _g165247_ 0)
                   (apply (lambda ()
                            (let ((_%ctx164225%_
                                   (gx#current-expander-context)))
                              (_%$%opt-lambda164207164221%_ _%ctx164225%_)))
                          _g165246_))
                  ((##fx= _g165247_ 1)
                   (apply _%$%opt-lambda164207164221%_ _g165246_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-prelude
                    _g165246_)))))))
    (define gx#core-module->prelude-context
      (lambda (_%ctx164200%_)
        (let ((_%$e164202%_ (hash-get gx#__module-registry _%ctx164200%_)))
          (if _%$e164202%_
              _%$e164202%_
              (let ((_%pre164206%_ (gx#make-prelude-context _%ctx164200%_)))
                (hash-put! gx#__module-registry _%ctx164200%_ _%pre164206%_)
                _%pre164206%_)))))
    (define gx#core-import-module
      (let ((_%$%opt-lambda164066164190%_
             (lambda (_%rpath164068%_ _%reload?164069%_)
               (letrec ((_%import-source164071%_
                         (lambda (_%path164159%_)
                           (if (member _%path164159%_
                                       (gx#current-expander-path))
                               (error '"Cyclic expansion" _%path164159%_)
                               '#!void)
                           (call-with-parameters
                            (lambda ()
                              (call-with-parameters
                               (lambda ()
                                 (call-with-parameters
                                  (lambda ()
                                    (call-with-parameters
                                     (lambda ()
                                       (call-with-parameters
                                        (lambda ()
                                          (call-with-parameters
                                           (lambda ()
                                             (let ((_g165248_
                                                    (gx#core-read-module
                                                     _%path164159%_)))
                                               (begin
                                                 (let ((_g165249_
                                                        (if (##values?
                                                             _g165248_)
                                                            (##values-length
                                                             _g165248_)
                                                            1)))
                                                   (if (not (##fx= _g165249_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           4))
               (error "Context expects 4 values" _g165249_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%pre164167%_
                                                        (##values-ref
                                                         _g165248_
                                                         0))
                                                       (_%id164168%_
                                                        (##values-ref
                                                         _g165248_
                                                         1))
                                                       (_%ns164169%_
                                                        (##values-ref
                                                         _g165248_
                                                         2))
                                                       (_%body164170%_
                                                        (##values-ref
                                                         _g165248_
                                                         3)))
                                                   (let* ((_%prelude164180%_
                                                           (if (gx#prelude-context?
                                                                _%pre164167%_)
                                                               _%pre164167%_
                                                               (if (gx#module-context?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%pre164167%_)
                           (gx#core-module->prelude-context _%pre164167%_)
                           (if (string? _%pre164167%_)
                               (gx#core-module->prelude-context
                                (gx#core-import-module _%pre164167%_))
                               (if (not _%pre164167%_)
                                   (let ((_%$e164176%_
                                          (gx#current-expander-module-prelude)))
                                     (if _%$e164176%_
                                         _%$e164176%_
                                         (gx#make-prelude-context '#f)))
                                   (error '"cannot import module; unknown prelude"
                                          _%rpath164068%_
                                          _%pre164167%_))))))
                  (_%ctx164182%_
                   (gx#make-module-context
                    _%id164168%_
                    _%prelude164180%_
                    _%ns164169%_
                    _%path164159%_))
                  (_%body164184%_
                   (gx#core-expand-module-begin _%body164170%_ _%ctx164182%_))
                  (_%body164186%_
                   (gx#core-quote-syntax
                    (gx#core-cons '%#begin _%body164184%_)
                    _%path164159%_
                    _%ctx164182%_
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (gx#&module-context-e-set!
                                                      _%ctx164182%_
                                                      (make-atomic-promise
                                                       (lambda ()
                                                         (gx#eval-syntax*
                                                          _%body164186%_))))
                                                     (gx#&module-context-code-set!
                                                      _%ctx164182%_
                                                      _%body164186%_)
                                                     (hash-put!
                                                      gx#__module-registry
                                                      _%path164159%_
                                                      _%ctx164182%_)
                                                     (hash-put!
                                                      gx#__module-registry
                                                      _%id164168%_
                                                      _%ctx164182%_)
                                                     _%ctx164182%_)))))
                                           gx#current-export-expander-phi
                                           '#f))
                                        gx#current-import-expander-phi
                                        '#f))
                                     gx#current-expander-path
                                     (cons _%path164159%_
                                           (gx#current-expander-path))))
                                  gx#current-expander-phi
                                  '0))
                               gx#current-expander-marks
                               '()))
                            gx#current-expander-context
                            (gx#core-context-root))))
                        (_%import-submodule164072%_
                         (lambda (_%rpath164088%_)
                           (let* ((_%$%rpath164089164096%_ _%rpath164088%_)
                                  (_%$%E164091164099%_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _%$%rpath164089164096%_
                                            '([origin . refs]))
                                     (void)))
                                  (_%$%K164092164147%_
                                   (lambda (_%refs164102%_ _%origin164103%_)
                                     (let ((_%ctx164105%_
                                            (if _%origin164103%_
                                                (gx#core-import-module
                                                 _%origin164103%_
                                                 _%reload?164069%_)
                                                (gx#current-expander-context))))
                                       (let _%lp164107%_ ((_%rest164109%_
                                                           _%refs164102%_)
                                                          (_%ctx164110%_
                                                           _%ctx164105%_))
                                         (let* ((_%$%rest164111164119%_
                                                 _%rest164109%_)
                                                (_%$%E164114164123%_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _%$%rest164111164119%_
                                                          '([id . rest])
                                                          'else)
                                                   (void)))
                                                (_%$%else164113164127%_
                                                 (lambda () _%ctx164110%_))
                                                (_%$%K164115164135%_
                                                 (lambda (_%rest164130%_
                                                          _%id164131%_)
                                                   (let ((_%bind164133%_
                                                          (gx#resolve-identifier
                                                           _%id164131%_
                                                           '0
                                                           _%ctx164110%_)))
                                                     (if (and (gx#syntax-binding?
                                                               _%bind164133%_)
                                                              (gx#module-context?
                                                               (gx#&syntax-binding-e
                                                                _%bind164133%_)))
                                                         (_%lp164107%_
                                                          _%rest164130%_
                                                          (gx#&syntax-binding-e
                                                           _%bind164133%_))
                                                         (error '"cannot import submodule; not bound as a module"
                                                                _%rpath164088%_
                                                                _%id164131%_
                                                                _%bind164133%_))))))
                                           (if (pair? _%$%rest164111164119%_)
                                               (let ((_%$%hd164116164138%_
                                                      (##car _%$%rest164111164119%_))
                                                     (_%$%tl164117164140%_
                                                      (##cdr _%$%rest164111164119%_)))
                                                 (let* ((_%id164143%_
                                                         _%$%hd164116164138%_)
                                                        (_%rest164145%_
                                                         _%$%tl164117164140%_))
                                                   (_%$%K164115164135%_
                                                    _%rest164145%_
                                                    _%id164143%_)))
                                               (_%$%else164113164127%_))))))))
                             (if (pair? _%$%rpath164089164096%_)
                                 (let ((_%$%hd164093164150%_
                                        (##car _%$%rpath164089164096%_))
                                       (_%$%tl164094164152%_
                                        (##cdr _%$%rpath164089164096%_)))
                                   (let* ((_%origin164155%_
                                           _%$%hd164093164150%_)
                                          (_%refs164157%_
                                           _%$%tl164094164152%_))
                                     (_%$%K164092164147%_
                                      _%refs164157%_
                                      _%origin164155%_)))
                                 (_%$%E164091164099%_))))))
                 (let ((_%$e164074%_
                        (if (not _%reload?164069%_)
                            (hash-get gx#__module-registry _%rpath164068%_)
                            '#f)))
                   (if _%$e164074%_
                       _%$e164074%_
                       (if (list? _%rpath164068%_)
                           (_%import-submodule164072%_ _%rpath164068%_)
                           (if (gx#core-library-module-path? _%rpath164068%_)
                               (let ((_%ctx164079%_
                                      (gx#core-import-module
                                       (gx#core-resolve-library-module-path
                                        _%rpath164068%_)
                                       _%reload?164069%_)))
                                 (hash-put!
                                  gx#__module-registry
                                  _%rpath164068%_
                                  _%ctx164079%_)
                                 _%ctx164079%_)
                               (let* ((_%npath164082%_
                                       (path-normalize _%rpath164068%_))
                                      (_%$e164084%_
                                       (if (not _%reload?164069%_)
                                           (hash-get
                                            gx#__module-registry
                                            _%npath164082%_)
                                           '#f)))
                                 (if _%$e164084%_
                                     _%$e164084%_
                                     (_%import-source164071%_
                                      _%npath164082%_)))))))))))
        (lambda _g165250_
          (let ((_g165251_ (##length _g165250_)))
            (cond ((##fx= _g165251_ 1)
                   (apply (lambda (_%rpath164193%_)
                            (let ((_%reload?164195%_ '#f))
                              (_%$%opt-lambda164066164190%_
                               _%rpath164193%_
                               _%reload?164195%_)))
                          _g165250_))
                  ((##fx= _g165251_ 2)
                   (apply _%$%opt-lambda164066164190%_ _g165250_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-import-module
                    _g165250_)))))))
    (define gx#core-read-module
      (lambda (_%path164050%_)
        (with-catch
         (lambda (_%exn164052%_)
           (if (datum-parsing-exception? _%exn164052%_)
               (let ((_%pos164054%_
                      (datum-parsing-exception-filepos _%exn164052%_)))
                 (if (= _%pos164054%_ '0)
                     (gx#core-read-module/lang _%path164050%_)
                     (gx#raise-syntax-error
                      'read-module
                      '"error reading module"
                      _%path164050%_
                      (call-with-parameters
                       (lambda ()
                         (call-with-output-string
                          '""
                          (lambda (_%$%g164056164058%_)
                            (display-exception
                             _%exn164052%_
                             _%$%g164056164058%_))))
                       dump-stack-trace?
                       '#f)
                      (cons 'line:
                            (cons (##filepos-line _%pos164054%_)
                                  (cons 'col:
                                        (cons (##filepos-col _%pos164054%_)
                                              '())))))))
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _%path164050%_
                (call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_%$%g164061164063%_)
                      (display-exception _%exn164052%_ _%$%g164061164063%_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _%path164050%_)))))
    (define gx#core-read-module/sexp
      (lambda (_%path163902%_)
        (let _%lp163904%_ ((_%body163906%_
                            (read-syntax-from-file _%path163902%_))
                           (_%pre163907%_ '#f)
                           (_%ns163908%_ '#f)
                           (_%pkg163909%_ '#f))
          (let* ((_%$%e163910163934%_ _%body163906%_)
                 (_%$%E163926163960%_
                  (lambda ()
                    (let ((_g165252_
                           (if _%pkg163909%_
                               (values _%pre163907%_
                                       _%ns163908%_
                                       _%pkg163909%_)
                               (gx#core-read-module-package
                                _%path163902%_
                                _%pre163907%_
                                _%ns163908%_))))
                      (begin
                        (let ((_g165253_
                               (if (##values? _g165252_)
                                   (##values-length _g165252_)
                                   1)))
                          (if (not (##fx= _g165253_ 3))
                              (error "Context expects 3 values" _g165253_)))
                        (let ((_%pre163938%_ (##values-ref _g165252_ 0))
                              (_%ns163939%_ (##values-ref _g165252_ 1))
                              (_%pkg163940%_ (##values-ref _g165252_ 2)))
                          (let* ((_%prelude163946%_
                                  (if (gx#core-bound-module-prelude?
                                       _%pre163938%_)
                                      (gx#syntax-local-e _%pre163938%_)
                                      (if (gx#core-library-module-path?
                                           _%pre163938%_)
                                          (gx#core-resolve-library-module-path
                                           _%pre163938%_)
                                          (if (gx#stx-string? _%pre163938%_)
                                              (gx#core-resolve-module-path
                                               _%pre163938%_
                                               _%path163902%_)
                                              (gx#stx-e _%pre163938%_)))))
                                 (_%path-id163948%_
                                  (gx#core-module-path->namespace
                                   _%path163902%_))
                                 (_%pkg-id163950%_
                                  (if _%pkg163940%_
                                      (string-append
                                       _%pkg163940%_
                                       '"/"
                                       _%path-id163948%_)
                                      _%path-id163948%_))
                                 (_%module-id163952%_
                                  (string->symbol _%pkg-id163950%_))
                                 (_%module-ns163957%_
                                  (if (void? _%ns163939%_)
                                      '#f
                                      (let ((_%$e163954%_ _%ns163939%_))
                                        (if _%$e163954%_
                                            _%$e163954%_
                                            _%pkg-id163950%_)))))
                            (values _%prelude163946%_
                                    _%module-id163952%_
                                    _%module-ns163957%_
                                    _%body163906%_)))))))
                 (_%$%E163919163992%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e163910163934%_)
                        (let ((_%$%e163927163964%_
                               (gx#syntax-e _%$%e163910163934%_)))
                          (let ((_%$%hd163928163967%_
                                 (##car _%$%e163927163964%_))
                                (_%$%tl163929163969%_
                                 (##cdr _%$%e163927163964%_)))
                            (if (eq? (gx#stx-e _%$%hd163928163967%_) 'package:)
                                (if (gx#stx-pair? _%$%tl163929163969%_)
                                    (let ((_%$%e163930163972%_
                                           (gx#syntax-e _%$%tl163929163969%_)))
                                      (let ((_%$%hd163931163975%_
                                             (##car _%$%e163930163972%_))
                                            (_%$%tl163932163977%_
                                             (##cdr _%$%e163930163972%_)))
                                        (let* ((_%pkg163980%_
                                                _%$%hd163931163975%_)
                                               (_%rest163982%_
                                                _%$%tl163932163977%_))
                                          (if '#t
                                              (let ((_%pkg163990%_
                                                     (if (gx#identifier?
                                                          _%pkg163980%_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _%pkg163980%_))
                                                         (if (or (gx#stx-string?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%pkg163980%_)
                         (gx#stx-false? _%pkg163980%_))
                     (gx#stx-e _%pkg163980%_)
                     (gx#raise-syntax-error
                      'import
                      '"Bad syntax; Illegal package name"
                      _%pkg163980%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%lp163904%_
                                                 _%rest163982%_
                                                 _%pre163907%_
                                                 _%ns163908%_
                                                 _%pkg163990%_))
                                              (_%$%E163926163960%_)))))
                                    (_%$%E163926163960%_))
                                (_%$%E163926163960%_))))
                        (_%$%E163926163960%_))))
                 (_%$%E163912164022%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e163910163934%_)
                        (let ((_%$%e163920163996%_
                               (gx#syntax-e _%$%e163910163934%_)))
                          (let ((_%$%hd163921163999%_
                                 (##car _%$%e163920163996%_))
                                (_%$%tl163922164001%_
                                 (##cdr _%$%e163920163996%_)))
                            (if (eq? (gx#stx-e _%$%hd163921163999%_)
                                     'namespace:)
                                (if (gx#stx-pair? _%$%tl163922164001%_)
                                    (let ((_%$%e163923164004%_
                                           (gx#syntax-e _%$%tl163922164001%_)))
                                      (let ((_%$%hd163924164007%_
                                             (##car _%$%e163923164004%_))
                                            (_%$%tl163925164009%_
                                             (##cdr _%$%e163923164004%_)))
                                        (let* ((_%ns164012%_
                                                _%$%hd163924164007%_)
                                               (_%rest164014%_
                                                _%$%tl163925164009%_))
                                          (if '#t
                                              (let ((_%ns164020%_
                                                     (if (gx#identifier?
                                                          _%ns164012%_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _%ns164012%_))
                                                         (if (gx#stx-string?
                                                              _%ns164012%_)
                                                             (gx#stx-e
                                                              _%ns164012%_)
                                                             (if (gx#stx-false?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%ns164012%_)
                         '#!void
                         (gx#raise-syntax-error
                          'import
                          '"Bad syntax; illegal namespace"
                          _%ns164012%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%lp163904%_
                                                 _%rest164014%_
                                                 _%pre163907%_
                                                 _%ns164020%_
                                                 _%pkg163909%_))
                                              (_%$%E163919163992%_)))))
                                    (_%$%E163919163992%_))
                                (_%$%E163919163992%_))))
                        (_%$%E163919163992%_))))
                 (_%$%E163911164046%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e163910163934%_)
                        (let ((_%$%e163913164026%_
                               (gx#syntax-e _%$%e163910163934%_)))
                          (let ((_%$%hd163914164029%_
                                 (##car _%$%e163913164026%_))
                                (_%$%tl163915164031%_
                                 (##cdr _%$%e163913164026%_)))
                            (if (eq? (gx#stx-e _%$%hd163914164029%_) 'prelude:)
                                (if (gx#stx-pair? _%$%tl163915164031%_)
                                    (let ((_%$%e163916164034%_
                                           (gx#syntax-e _%$%tl163915164031%_)))
                                      (let ((_%$%hd163917164037%_
                                             (##car _%$%e163916164034%_))
                                            (_%$%tl163918164039%_
                                             (##cdr _%$%e163916164034%_)))
                                        (let* ((_%prelude164042%_
                                                _%$%hd163917164037%_)
                                               (_%rest164044%_
                                                _%$%tl163918164039%_))
                                          (if '#t
                                              (_%lp163904%_
                                               _%rest164044%_
                                               _%prelude164042%_
                                               _%ns163908%_
                                               _%pkg163909%_)
                                              (_%$%E163912164022%_)))))
                                    (_%$%E163912164022%_))
                                (_%$%E163912164022%_))))
                        (_%$%E163912164022%_)))))
            (_%$%E163911164046%_)))))
    (define gx#core-read-module/lang
      (lambda (_%path163723%_)
        (letrec ((_%default-read-module-body163725%_
                  (lambda (_%inp163894%_)
                    (let _%lp163896%_ ((_%body163898%_ '()))
                      (let ((_%next163900%_ (read-syntax _%inp163894%_)))
                        (if (eof-object? _%next163900%_)
                            (reverse _%body163898%_)
                            (_%lp163896%_
                             (cons _%next163900%_ _%body163898%_)))))))
                 (_%read-body163726%_
                  (lambda (_%inp163811%_
                           _%pre163812%_
                           _%ns163813%_
                           _%pkg163814%_
                           _%args163815%_)
                    (let ((_g165254_
                           (if _%pkg163814%_
                               (values _%pre163812%_
                                       _%ns163813%_
                                       _%pkg163814%_)
                               (gx#core-read-module-package
                                _%path163723%_
                                _%pre163812%_
                                _%ns163813%_))))
                      (begin
                        (let ((_g165255_
                               (if (##values? _g165254_)
                                   (##values-length _g165254_)
                                   1)))
                          (if (not (##fx= _g165255_ 3))
                              (error "Context expects 3 values" _g165255_)))
                        (let ((_%pre163817%_ (##values-ref _g165254_ 0))
                              (_%ns163818%_ (##values-ref _g165254_ 1))
                              (_%pkg163819%_ (##values-ref _g165254_ 2)))
                          (let* ((_%prelude163821%_
                                  (gx#import-module _%pre163817%_))
                                 (_%read-module-body163876%_
                                  (let ((_%$e163867%_
                                         (find (lambda (_%$%e163822163824%_)
                                                 (let* ((_%$%$%e163822163826163836%_
                                                         _%$%e163822163824%_)
                                                        (_%$%E163829163840%_
                                                         (lambda ()
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%$%e163822163826163836%_
                          '((module-export _ _ 1 (eq? 'read-module-body)))
                          'else)
                   (void)))
                (_%$%else163828163844%_ (lambda () '#f))
                (_%$%K163830163848%_ (lambda () '#t)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#module-export?
                                                        _%$%$%e163822163826163836%_)
                                                       (let* ((_%$%e163831163851%_
                                                               (gx#&module-export-context
                                                                _%$%$%e163822163826163836%_))
                                                              (_%$%e163832163854%_
                                                               (gx#&module-export-key
                                                                _%$%$%e163822163826163836%_))
                                                              (_%$%e163833163857%_
                                                               (gx#&module-export-phi
                                                                _%$%$%e163822163826163836%_)))
                                                         (if (##eq? _%$%e163833163857%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)
                     (let ((_%$%e163834163860%_
                            (gx#&module-export-name
                             _%$%$%e163822163826163836%_)))
                       (if ((lambda (_%$%g163862163864%_)
                              (eq? _%$%g163862163864%_ 'read-module-body))
                            _%$%e163834163860%_)
                           (_%$%K163830163848%_)
                           (_%$%else163828163844%_)))
                     (_%$%else163828163844%_)))
               (_%$%else163828163844%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (gx#&module-context-export
                                                _%prelude163821%_))))
                                    (if _%$e163867%_
                                        ((lambda (_%xport163870%_)
                                           (let ((_%proc163873%_
                                                  (with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax
                                                      (gx#binding-id
                                                       (gx#core-resolve-module-export
                                                        _%xport163870%_)))))))
                                             (if (procedure? _%proc163873%_)
                                                 _%proc163873%_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _%path163723%_
                                                  _%pre163817%_
                                                  _%proc163873%_))))
                                         _%$e163867%_)
                                        _%default-read-module-body163725%_)))
                                 (_%path-id163878%_
                                  (gx#core-module-path->namespace
                                   _%path163723%_))
                                 (_%pkg-id163880%_
                                  (if _%pkg163819%_
                                      (string-append
                                       _%pkg163819%_
                                       '"/"
                                       _%path-id163878%_)
                                      _%path-id163878%_))
                                 (_%module-id163882%_
                                  (string->symbol _%pkg-id163880%_))
                                 (_%module-ns163887%_
                                  (let ((_%$e163884%_ _%ns163818%_))
                                    (if _%$e163884%_
                                        _%$e163884%_
                                        _%pkg-id163880%_)))
                                 (_%body163891%_
                                  (call-with-parameters
                                   (lambda ()
                                     (call-with-parameters
                                      (lambda ()
                                        (_%read-module-body163876%_
                                         _%inp163811%_))
                                      gx#current-module-reader-args
                                      _%args163815%_))
                                   gx#current-module-reader-path
                                   _%path163723%_)))
                            (values _%prelude163821%_
                                    _%module-id163882%_
                                    _%module-ns163887%_
                                    _%body163891%_)))))))
                 (_%string-e163727%_
                  (lambda (_%obj163805%_ _%what163806%_)
                    (if (string? _%obj163805%_)
                        _%obj163805%_
                        (if (symbol? _%obj163805%_)
                            (symbol->string _%obj163805%_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _%what163806%_)
                             _%path163723%_
                             _%obj163805%_)))))
                 (_%read-lang-args163728%_
                  (lambda (_%inp163760%_ _%args163761%_)
                    (let* ((_%$%args163762163770%_ _%args163761%_)
                           (_%$%E163765163774%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%$%args163762163770%_
                                     '([prelude . args])
                                     'else)
                              (void)))
                           (_%$%else163764163778%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _%path163723%_)))
                           (_%$%K163766163793%_
                            (lambda (_%args163781%_ _%prelude163782%_)
                              (let* ((_%pkg163784%_
                                      (pgetq 'package: _%args163781%_))
                                     (_%pkg163786%_
                                      (if _%pkg163784%_
                                          (_%string-e163727%_
                                           _%pkg163784%_
                                           '"package")
                                          '#f))
                                     (_%ns163788%_
                                      (pgetq 'namespace: _%args163781%_))
                                     (_%ns163790%_
                                      (if _%ns163788%_
                                          (_%string-e163727%_
                                           _%ns163788%_
                                           '"namespace")
                                          '#f)))
                                (_%read-body163726%_
                                 _%inp163760%_
                                 _%prelude163782%_
                                 _%ns163790%_
                                 _%pkg163786%_
                                 _%args163781%_)))))
                      (if (pair? _%$%args163762163770%_)
                          (let ((_%$%hd163767163796%_
                                 (##car _%$%args163762163770%_))
                                (_%$%tl163768163798%_
                                 (##cdr _%$%args163762163770%_)))
                            (let* ((_%prelude163801%_ _%$%hd163767163796%_)
                                   (_%args163803%_ _%$%tl163768163798%_))
                              (_%$%K163766163793%_
                               _%args163803%_
                               _%prelude163801%_)))
                          (_%$%else163764163778%_)))))
                 (_%read-lang163729%_
                  (lambda (_%inp163734%_)
                    (let* ((_%head163736%_ (read-line _%inp163734%_))
                           (_%$e163738%_
                            (string-index _%head163736%_ '#\space)))
                      (if _%$e163738%_
                          ((lambda (_%ix163741%_)
                             (let ((_%lang163743%_
                                    (substring
                                     _%head163736%_
                                     '0
                                     _%ix163741%_)))
                               (if (equal? _%lang163743%_ '"#lang")
                                   (let* ((_%rest163745%_
                                           (substring
                                            _%head163736%_
                                            (fx1+ _%ix163741%_)
                                            (string-length _%head163736%_)))
                                          (_%args163756%_
                                           (with-catch
                                            (lambda (_%$%g163746163748%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _%path163723%_
                                               _%$%g163746163748%_))
                                            (lambda ()
                                              (call-with-input-string
                                               _%rest163745%_
                                               (lambda (_%$%g163751163753%_)
                                                 (read-all
                                                  _%$%g163751163753%_
                                                  read)))))))
                                     (_%read-lang-args163728%_
                                      _%inp163734%_
                                      _%args163756%_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _%path163723%_))))
                           _%$e163738%_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _%path163723%_)))))
                 (_%read-e163730%_
                  (lambda (_%inp163732%_)
                    (if (eq? (peek-char _%inp163732%_) '#\#)
                        (_%read-lang163729%_ _%inp163732%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _%path163723%_)))))
          (gx#call-with-input-source-file _%path163723%_ _%read-e163730%_))))
    (define gx#core-read-module-package
      (lambda (_%path163671%_ _%pre163672%_ _%ns163673%_)
        (letrec ((_%string-e163675%_
                  (lambda (_%e163718%_)
                    (if (symbol? _%e163718%_)
                        (symbol->string _%e163718%_)
                        (if (string? _%e163718%_)
                            _%e163718%_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%e163718%_))))))
          (let _%lp163677%_ ((_%dir163679%_ (path-directory _%path163671%_))
                             (_%pkg-path163680%_ '()))
            (let ((_%gerbil.pkg163682%_
                   (path-expand '"gerbil.pkg" _%dir163679%_)))
              (if (file-exists? _%gerbil.pkg163682%_)
                  (let ((_%plist163684%_
                         (gx#core-library-package-plist _%dir163679%_ '#t)))
                    (if (null? _%plist163684%_)
                        (let ((_%pkg163687%_
                               (if (not (null? _%pkg-path163680%_))
                                   (string-join _%pkg-path163680%_ '"/")
                                   '#f)))
                          (values _%pre163672%_ _%ns163673%_ _%pkg163687%_))
                        (if (list? _%plist163684%_)
                            (let* ((_%root163690%_
                                    (pgetq 'package: _%plist163684%_))
                                   (_%pkg163694%_
                                    (let ((_%pkg-path163692%_
                                           (if _%root163690%_
                                               (cons (_%string-e163675%_
                                                      _%root163690%_)
                                                     _%pkg-path163680%_)
                                               _%pkg-path163680%_)))
                                      (if (not (null? _%pkg-path163692%_))
                                          (string-join _%pkg-path163692%_ '"/")
                                          '#f)))
                                   (_%ns163701%_
                                    (let ((_%ns163699%_
                                           (let ((_%$e163696%_ _%ns163673%_))
                                             (if _%$e163696%_
                                                 _%$e163696%_
                                                 (pgetq 'namespace:
                                                        _%plist163684%_)))))
                                      (if _%ns163699%_
                                          (_%string-e163675%_ _%ns163699%_)
                                          '#f)))
                                   (_%pre163706%_
                                    (let ((_%$e163703%_ _%pre163672%_))
                                      (if _%$e163703%_
                                          _%$e163703%_
                                          (pgetq 'prelude: _%plist163684%_)))))
                              (values _%pre163706%_
                                      _%ns163701%_
                                      _%pkg163694%_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%plist163684%_))))
                  (let ((_%dir*163710%_
                         (path-strip-trailing-directory-separator
                          _%dir163679%_)))
                    (if (or (string-empty? _%dir*163710%_)
                            (equal? _%dir163679%_ _%dir*163710%_))
                        (values _%pre163672%_ _%ns163673%_ '#f)
                        (let ((_%xpath163715%_
                               (path-strip-directory _%dir*163710%_))
                              (_%xdir163716%_ (path-directory _%dir*163710%_)))
                          (_%lp163677%_
                           _%xdir163716%_
                           (cons _%xpath163715%_ _%pkg-path163680%_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_%path163669%_)
        (path-strip-extension (path-strip-directory _%path163669%_))))
    (define gx#core-module-path->id
      (lambda (_%path163667%_)
        (string->symbol (gx#core-module-path->namespace _%path163667%_))))
    (define gx#core-resolve-module-path
      (let ((_%$%opt-lambda163644163657%_
             (lambda (_%stx-path163646%_ _%rel163647%_)
               (let* ((_%path163649%_ (gx#stx-e _%stx-path163646%_))
                      (_%path163651%_
                       (if (string-empty? (path-extension _%path163649%_))
                           (string-append _%path163649%_ '".ss")
                           _%path163649%_)))
                 (gx#core-resolve-path
                  _%path163651%_
                  (let ((_%$e163654%_ (gx#stx-source _%stx-path163646%_)))
                    (if _%$e163654%_ _%$e163654%_ _%rel163647%_)))))))
        (lambda _g165256_
          (let ((_g165257_ (##length _g165256_)))
            (cond ((##fx= _g165257_ 1)
                   (apply (lambda (_%stx-path163660%_)
                            (let ((_%rel163662%_ '#f))
                              (_%$%opt-lambda163644163657%_
                               _%stx-path163660%_
                               _%rel163662%_)))
                          _g165256_))
                  ((##fx= _g165257_ 2)
                   (apply _%$%opt-lambda163644163657%_ _g165256_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-resolve-module-path
                    _g165256_)))))))
    (define gx#core-resolve-library-module-path
      (lambda (_%libpath163531%_)
        (let* ((_%spath163533%_ (symbol->string (gx#stx-e _%libpath163531%_)))
               (_%spath163535%_
                (substring _%spath163533%_ '1 (string-length _%spath163533%_)))
               (_%ext163537%_ (path-extension _%spath163535%_))
               (_%ssi163539%_
                (if (string-empty? _%ext163537%_)
                    (string-append _%spath163535%_ '".ssi")
                    (string-append
                     (path-strip-extension _%spath163535%_)
                     '".ssi")))
               (_%srcs163543%_
                (if (string-empty? _%ext163537%_)
                    (map (lambda (_%ext163541%_)
                           (string-append _%spath163535%_ _%ext163541%_))
                         '(".ss" ".sld" ".scm"))
                    (cons _%spath163535%_ '()))))
          (let _%lp163546%_ ((_%rest163548%_ (load-path)))
            (let* ((_%$%rest163549163558%_ _%rest163548%_)
                   (_%$%E163552163562%_
                    (lambda ()
                      (error '"No clause matching"
                             _%$%rest163549163558%_
                             '([dir . rest])
                             '([]))
                      (void)))
                   (_%$%try-match163551163570%_
                    (lambda ()
                      (let ((_%$%K163553163567%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"cannot find library module"
                                _%libpath163531%_))))
                        (if (null? _%$%rest163549163558%_)
                            (_%$%K163553163567%_)
                            (_%$%E163552163562%_)))))
                   (_%$%K163554163633%_
                    (lambda (_%rest163573%_ _%dir163574%_)
                      (letrec ((_%resolve163576%_
                                (lambda (_%ssi163589%_ _%srcs163590%_)
                                  (let ((_%compiled-path163592%_
                                         (path-expand
                                          _%ssi163589%_
                                          _%dir163574%_)))
                                    (if (file-exists? _%compiled-path163592%_)
                                        (path-normalize
                                         _%compiled-path163592%_)
                                        (let _%lpr163594%_ ((_%rest-src163596%_
                                                             _%srcs163590%_))
                                          (let* ((_%$%rest-src163597163605%_
                                                  _%rest-src163596%_)
                                                 (_%$%E163600163609%_
                                                  (lambda ()
                                                    (error '"No clause matching"
                                                           _%$%rest-src163597163605%_
                                                           '([src . rest-src])
                                                           'else)
                                                    (void)))
                                                 (_%$%else163599163613%_
                                                  (lambda ()
                                                    (_%lp163546%_
                                                     _%rest163573%_)))
                                                 (_%$%K163601163621%_
                                                  (lambda (_%rest-src163616%_
                                                           _%src163617%_)
                                                    (let ((_%src-path163619%_
                                                           (path-expand
                                                            _%src163617%_
                                                            _%dir163574%_)))
                                                      (if (file-exists?
                                                           _%src-path163619%_)
                                                          (path-normalize
                                                           _%src-path163619%_)
                                                          (_%lpr163594%_
                                                           _%rest-src163616%_))))))
                                            (if (pair? _%$%rest-src163597163605%_)
                                                (let ((_%$%hd163602163624%_
                                                       (##car _%$%rest-src163597163605%_))
                                                      (_%$%tl163603163626%_
                                                       (##cdr _%$%rest-src163597163605%_)))
                                                  (let* ((_%src163629%_
                                                          _%$%hd163602163624%_)
                                                         (_%rest-src163631%_
                                                          _%$%tl163603163626%_))
                                                    (_%$%K163601163621%_
                                                     _%rest-src163631%_
                                                     _%src163629%_)))
                                                (_%$%else163599163613%_)))))))))
                        (let ((_%$e163578%_
                               (gx#core-library-package-path-prefix
                                _%dir163574%_)))
                          (if _%$e163578%_
                              ((lambda (_%prefix163581%_)
                                 (if (string-prefix?
                                      _%prefix163581%_
                                      _%spath163535%_)
                                     (let ((_%ssi163585%_
                                            (substring
                                             _%ssi163539%_
                                             (string-length _%prefix163581%_)
                                             (string-length _%ssi163539%_)))
                                           (_%srcs163586%_
                                            (map (lambda (_%src163583%_)
                                                   (substring
                                                    _%src163583%_
                                                    (string-length
                                                     _%prefix163581%_)
                                                    (string-length
                                                     _%src163583%_)))
                                                 _%srcs163543%_)))
                                       (_%resolve163576%_
                                        _%ssi163585%_
                                        _%srcs163586%_))
                                     (_%lp163546%_ _%rest163573%_)))
                               _%$e163578%_)
                              (_%resolve163576%_
                               _%ssi163539%_
                               _%srcs163543%_)))))))
              (if (pair? _%$%rest163549163558%_)
                  (let ((_%$%hd163555163636%_ (##car _%$%rest163549163558%_))
                        (_%$%tl163556163638%_ (##cdr _%$%rest163549163558%_)))
                    (let* ((_%dir163641%_ _%$%hd163555163636%_)
                           (_%rest163643%_ _%$%tl163556163638%_))
                      (_%$%K163554163633%_ _%rest163643%_ _%dir163641%_)))
                  (_%$%try-match163551163570%_)))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_%modpath163499%_)
        (letrec ((_%resolve163501%_
                  (lambda (_%path163522%_ _%base163523%_)
                    (let ((_%$e163525%_ (string-rindex _%base163523%_ '#\/)))
                      (if _%$e163525%_
                          ((lambda (_%idx163528%_)
                             (gx#core-resolve-library-module-path
                              (string->symbol
                               (string-append
                                '":"
                                (substring _%base163523%_ '0 _%idx163528%_)
                                '"/"
                                _%path163522%_))))
                           _%$e163525%_)
                          (gx#core-resolve-library-module-path
                           (string->symbol
                            (string-append '":" _%path163522%_))))))))
          (let ((_%spath163503%_ (symbol->string (gx#stx-e _%modpath163499%_)))
                (_%mod163504%_
                 (gx#core-context-top
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _%mod163504%_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"cannot resolve relative module path; not in module context"
                 _%modpath163499%_))
            (let ((_%mpath163506%_
                   (symbol->string (gx#expander-context-id _%mod163504%_))))
              (let _%lp163508%_ ((_%spath163510%_ _%spath163503%_)
                                 (_%mpath163511%_ _%mpath163506%_))
                (if (string-prefix? '"../" _%spath163510%_)
                    (let ((_%$e163514%_ (string-rindex _%mpath163511%_ '#\/)))
                      (if _%$e163514%_
                          ((lambda (_%idx163517%_)
                             (_%lp163508%_
                              (substring
                               _%spath163510%_
                               '3
                               (string-length _%spath163510%_))
                              (substring _%mpath163511%_ '0 _%idx163517%_)))
                           _%$e163514%_)
                          (gx#raise-syntax-error
                           '#f
                           '"cannot resolve relative module path; illegal traversal"
                           _%modpath163499%_)))
                    (if (string-prefix? '"./" _%spath163510%_)
                        (_%lp163508%_
                         (substring
                          _%spath163510%_
                          '2
                          (string-length _%spath163510%_))
                         _%mpath163511%_)
                        (_%resolve163501%_
                         _%spath163510%_
                         _%mpath163511%_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_%dir163491%_)
        (let ((_%$e163493%_
               (pgetq 'package:
                      (gx#core-library-package-plist _%dir163491%_))))
          (if _%$e163493%_
              ((lambda (_%pkg163496%_)
                 (string-append (symbol->string _%pkg163496%_) '"/"))
               _%$e163493%_)
              '#f))))
    (define gx#core-library-package-plist
      (let ((_%$%opt-lambda163459163481%_
             (lambda (_%dir163461%_ _%exists?163462%_)
               (let ((_%$e163464%_
                      (hash-get gx#__module-pkg-cache _%dir163461%_)))
                 (if _%$e163464%_
                     _%$e163464%_
                     (let* ((_%gerbil.pkg163468%_
                             (path-expand '"gerbil.pkg" _%dir163461%_))
                            (_%plist163478%_
                             (if (or _%exists?163462%_
                                     (file-exists? _%gerbil.pkg163468%_))
                                 (let ((_%e163473%_
                                        (gx#call-with-input-source-file
                                         _%gerbil.pkg163468%_
                                         read)))
                                   (if (eof-object? _%e163473%_)
                                       '()
                                       (if (list? _%e163473%_)
                                           _%e163473%_
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Malformed package info; unexpected datum"
                                            _%gerbil.pkg163468%_
                                            _%e163473%_))))
                                 '())))
                       (hash-put!
                        gx#__module-pkg-cache
                        _%dir163461%_
                        _%plist163478%_)
                       _%plist163478%_))))))
        (lambda _g165258_
          (let ((_g165259_ (##length _g165258_)))
            (cond ((##fx= _g165259_ 1)
                   (apply (lambda (_%dir163484%_)
                            (let ((_%exists?163486%_ '#f))
                              (_%$%opt-lambda163459163481%_
                               _%dir163484%_
                               _%exists?163486%_)))
                          _g165258_))
                  ((##fx= _g165259_ 2)
                   (apply _%$%opt-lambda163459163481%_ _g165258_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-library-package-plist
                    _g165258_)))))))
    (define gx#core-library-module-path?
      (lambda (_%stx163458%_)
        (gx#core-special-module-path? _%stx163458%_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_%stx163456%_)
        (gx#core-special-module-path? _%stx163456%_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_%stx163451%_ _%char163452%_)
        (if (gx#identifier? _%stx163451%_)
            (if (interned-symbol? (gx#stx-e _%stx163451%_))
                (let ((_%str163454%_
                       (symbol->string (gx#stx-e _%stx163451%_))))
                  (if (fx> (string-length _%str163454%_) '1)
                      (eq? (string-ref _%str163454%_ '0) _%char163452%_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_%stx163445%_)
        (gx#core-bound-identifier?
         _%stx163445%_
         (lambda (_%$%g163446163448%_)
           (gx#expander-binding? _%$%g163446163448%_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_%stx163439%_)
        (gx#core-bound-identifier?
         _%stx163439%_
         (lambda (_%$%g163440163442%_)
           (gx#expander-binding? _%$%g163440163442%_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_%stx163426%_)
        (letrec ((_%module-prelude?163428%_
                  (lambda (_%e163434%_)
                    (let ((_%$e163436%_ (gx#module-context? _%e163434%_)))
                      (if _%$e163436%_
                          _%$e163436%_
                          (gx#prelude-context? _%e163434%_))))))
          (gx#core-bound-identifier?
           _%stx163426%_
           (lambda (_%$%g163429163431%_)
             (gx#expander-binding?
              _%$%g163429163431%_
              _%module-prelude?163428%_))))))
    (define gx#core-bind-import!
      (let ((_%$%opt-lambda163355163408%_
             (lambda (_%in163357%_ _%ctx163358%_ _%force-weak?163359%_)
               (let* ((_%$%in163360163369%_ _%in163357%_)
                      (_%$%E163362163372%_
                       (lambda ()
                         (error '"No clause matching"
                                _%$%in163360163369%_
                                '((module-import source key phi weak?)))
                         (void)))
                      (_%$%K163363163385%_
                       (lambda (_%weak?163375%_
                                _%phi163376%_
                                _%key163377%_
                                _%source163378%_)
                         (gx#core-bind!
                          _%key163377%_
                          (let ((_%e163380%_
                                 (gx#core-resolve-module-export
                                  _%source163378%_)))
                            (gx#make-import-binding
                             (gx#&binding-id _%e163380%_)
                             _%key163377%_
                             _%phi163376%_
                             _%e163380%_
                             (gx#&module-export-context _%source163378%_)
                             (let ((_%$e163382%_ _%force-weak?163359%_))
                               (if _%$e163382%_
                                   _%$e163382%_
                                   _%weak?163375%_))))
                          gx#core-context-rebind?
                          _%phi163376%_
                          _%ctx163358%_))))
                 (if (gx#module-import? _%$%in163360163369%_)
                     (let* ((_%$%e163364163388%_
                             (gx#&module-import-source _%$%in163360163369%_))
                            (_%source163391%_ _%$%e163364163388%_)
                            (_%$%e163365163393%_
                             (gx#&module-import-name _%$%in163360163369%_))
                            (_%key163396%_ _%$%e163365163393%_)
                            (_%$%e163366163398%_
                             (gx#&module-import-phi _%$%in163360163369%_))
                            (_%phi163401%_ _%$%e163366163398%_)
                            (_%$%e163367163403%_
                             (gx#&module-import-weak? _%$%in163360163369%_))
                            (_%weak?163406%_ _%$%e163367163403%_))
                       (_%$%K163363163385%_
                        _%weak?163406%_
                        _%phi163401%_
                        _%key163396%_
                        _%source163391%_))
                     (_%$%E163362163372%_))))))
        (lambda _g165260_
          (let ((_g165261_ (##length _g165260_)))
            (cond ((##fx= _g165261_ 1)
                   (apply (lambda (_%in163411%_)
                            (let* ((_%ctx163413%_
                                    (gx#current-expander-context))
                                   (_%force-weak?163415%_ '#f))
                              (_%$%opt-lambda163355163408%_
                               _%in163411%_
                               _%ctx163413%_
                               _%force-weak?163415%_)))
                          _g165260_))
                  ((##fx= _g165261_ 2)
                   (apply (lambda (_%in163417%_ _%ctx163418%_)
                            (let ((_%force-weak?163420%_ '#f))
                              (_%$%opt-lambda163355163408%_
                               _%in163417%_
                               _%ctx163418%_
                               _%force-weak?163420%_)))
                          _g165260_))
                  ((##fx= _g165261_ 3)
                   (apply _%$%opt-lambda163355163408%_ _g165260_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-import!
                    _g165260_)))))))
    (define gx#core-bind-weak-import!
      (let ((_%$%opt-lambda163341163346%_
             (lambda (_%in163343%_ _%ctx163344%_)
               (gx#core-bind-import! _%in163343%_ _%ctx163344%_ '#t))))
        (lambda _g165262_
          (let ((_g165263_ (##length _g165262_)))
            (cond ((##fx= _g165263_ 1)
                   (apply (lambda (_%in163349%_)
                            (let ((_%ctx163351%_
                                   (gx#current-expander-context)))
                              (_%$%opt-lambda163341163346%_
                               _%in163349%_
                               _%ctx163351%_)))
                          _g165262_))
                  ((##fx= _g165263_ 2)
                   (apply _%$%opt-lambda163341163346%_ _g165262_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-weak-import!
                    _g165262_)))))))
    (define gx#core-resolve-module-export
      (lambda (_%out163236%_)
        (letrec ((_%subst163238%_
                  (lambda (_%key163283%_)
                    (let* ((_%$%key163284163292%_ _%key163283%_)
                           (_%$%E163287163296%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%$%key163284163292%_
                                     '([id . mark])
                                     'else)
                              (void)))
                           (_%$%else163286163300%_ (lambda () _%key163283%_))
                           (_%$%K163288163330%_
                            (lambda (_%mark163303%_ _%id163304%_)
                              (let* ((_%$%mark163305163311%_ _%mark163303%_)
                                     (_%$%E163307163314%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%$%mark163305163311%_
                                               '((expander-mark subst)))
                                        (void)))
                                     (_%$%K163308163322%_
                                      (lambda (_%subst163317%_)
                                        (let ((_%$e163319%_
                                               (if _%subst163317%_
                                                   (hash-get
                                                    _%subst163317%_
                                                    _%id163304%_)
                                                   '#f)))
                                          (if _%$e163319%_
                                              _%$e163319%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _%key163283%_))))))
                                (if (gx#expander-mark? _%$%mark163305163311%_)
                                    (let* ((_%$%e163309163325%_
                                            (gx#&expander-mark-subst
                                             _%$%mark163305163311%_))
                                           (_%subst163328%_
                                            _%$%e163309163325%_))
                                      (_%$%K163308163322%_ _%subst163328%_))
                                    (_%$%E163307163314%_))))))
                      (if (pair? _%$%key163284163292%_)
                          (let ((_%$%hd163289163333%_
                                 (##car _%$%key163284163292%_))
                                (_%$%tl163290163335%_
                                 (##cdr _%$%key163284163292%_)))
                            (let* ((_%id163338%_ _%$%hd163289163333%_)
                                   (_%mark163340%_ _%$%tl163290163335%_))
                              (_%$%K163288163330%_
                               _%mark163340%_
                               _%id163338%_)))
                          (_%$%else163286163300%_))))))
          (let* ((_%$%out163239163249%_ _%out163236%_)
                 (_%$%E163241163252%_
                  (lambda ()
                    (error '"No clause matching"
                           _%$%out163239163249%_
                           '((module-export ctx key phi _ _)))
                    (void)))
                 (_%$%K163242163259%_
                  (lambda (_%phi163255%_ _%key163256%_ _%ctx163257%_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _%ctx163257%_ _%phi163255%_)
                     (_%subst163238%_ _%key163256%_)))))
            (if (gx#module-export? _%$%out163239163249%_)
                (let* ((_%$%e163243163262%_
                        (gx#&module-export-context _%$%out163239163249%_))
                       (_%ctx163265%_ _%$%e163243163262%_)
                       (_%$%e163244163267%_
                        (gx#&module-export-key _%$%out163239163249%_))
                       (_%key163270%_ _%$%e163244163267%_)
                       (_%$%e163245163272%_
                        (gx#&module-export-phi _%$%out163239163249%_))
                       (_%phi163275%_ _%$%e163245163272%_)
                       (_%$%e163246163277%_
                        (gx#&module-export-name _%$%out163239163249%_))
                       (_%$%e163247163280%_
                        (gx#&module-export-weak? _%$%out163239163249%_)))
                  (_%$%K163242163259%_
                   _%phi163275%_
                   _%key163270%_
                   _%ctx163265%_))
                (_%$%E163241163252%_))))))
    (define gx#core-module-export->import
      (let ((_%$%opt-lambda163160163218%_
             (lambda (_%out163162%_ _%rename163163%_ _%dphi163164%_)
               (let* ((_%$%out163165163175%_ _%out163162%_)
                      (_%$%E163167163178%_
                       (lambda ()
                         (error '"No clause matching"
                                _%$%out163165163175%_
                                '((module-export ctx key phi name weak?)))
                         (void)))
                      (_%$%K163168163190%_
                       (lambda (_%weak?163181%_
                                _%name163182%_
                                _%phi163183%_
                                _%key163184%_
                                _%ctx163185%_)
                         (gx#make-module-import
                          _%out163162%_
                          (let ((_%$e163187%_ _%rename163163%_))
                            (if _%$e163187%_ _%$e163187%_ _%name163182%_))
                          (fx+ _%phi163183%_ _%dphi163164%_)
                          _%weak?163181%_))))
                 (if (gx#module-export? _%$%out163165163175%_)
                     (let* ((_%$%e163169163193%_
                             (gx#&module-export-context _%$%out163165163175%_))
                            (_%ctx163196%_ _%$%e163169163193%_)
                            (_%$%e163170163198%_
                             (gx#&module-export-key _%$%out163165163175%_))
                            (_%key163201%_ _%$%e163170163198%_)
                            (_%$%e163171163203%_
                             (gx#&module-export-phi _%$%out163165163175%_))
                            (_%phi163206%_ _%$%e163171163203%_)
                            (_%$%e163172163208%_
                             (gx#&module-export-name _%$%out163165163175%_))
                            (_%name163211%_ _%$%e163172163208%_)
                            (_%$%e163173163213%_
                             (gx#&module-export-weak? _%$%out163165163175%_))
                            (_%weak?163216%_ _%$%e163173163213%_))
                       (_%$%K163168163190%_
                        _%weak?163216%_
                        _%name163211%_
                        _%phi163206%_
                        _%key163201%_
                        _%ctx163196%_))
                     (_%$%E163167163178%_))))))
        (lambda _g165264_
          (let ((_g165265_ (##length _g165264_)))
            (cond ((##fx= _g165265_ 1)
                   (apply (lambda (_%out163221%_)
                            (let* ((_%rename163223%_ '#f) (_%dphi163225%_ '0))
                              (_%$%opt-lambda163160163218%_
                               _%out163221%_
                               _%rename163223%_
                               _%dphi163225%_)))
                          _g165264_))
                  ((##fx= _g165265_ 2)
                   (apply (lambda (_%out163227%_ _%rename163228%_)
                            (let ((_%dphi163230%_ '0))
                              (_%$%opt-lambda163160163218%_
                               _%out163227%_
                               _%rename163228%_
                               _%dphi163230%_)))
                          _g165264_))
                  ((##fx= _g165265_ 3)
                   (apply _%$%opt-lambda163160163218%_ _g165264_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-module-export->import
                    _g165264_)))))))
    (define gx#core-expand-module%
      (lambda (_%stx163061%_)
        (letrec ((_%make-context163063%_
                  (lambda (_%id163140%_)
                    (let* ((_%super163142%_ (gx#current-expander-context))
                           (_%bind-id163144%_ (gx#stx-e _%id163140%_))
                           (_%mod-id163146%_
                            (if (gx#module-context? _%super163142%_)
                                (make-symbol
                                 (gx#expander-context-id _%super163142%_)
                                 '"~"
                                 _%bind-id163144%_)
                                _%bind-id163144%_))
                           (_%ns163148%_ (symbol->string _%mod-id163146%_))
                           (_%path163158%_
                            (if (gx#module-context? _%super163142%_)
                                (let ((_%path163150%_
                                       (gx#&module-context-path
                                        _%super163142%_)))
                                  (if (or (pair? _%path163150%_)
                                          (null? _%path163150%_))
                                      (cons _%bind-id163144%_ _%path163150%_)
                                      (if (not _%path163150%_)
                                          _%bind-id163144%_
                                          (cons _%bind-id163144%_
                                                (cons _%path163150%_ '())))))
                                _%bind-id163144%_)))
                      (gx#make-module-context
                       _%mod-id163146%_
                       _%super163142%_
                       _%ns163148%_
                       _%path163158%_))))
                 (_%valid-module-id?163064%_
                  (lambda (_%id163115%_)
                    (let* ((_%str163117%_ (symbol->string _%id163115%_))
                           (_%len163119%_ (string-length _%str163117%_)))
                      (if (fx>= _%len163119%_ '1)
                          (let _%loop163122%_ ((_%index163124%_
                                                (fx- (string-length
                                                      _%str163117%_)
                                                     '1)))
                            (if (fx>= _%index163124%_ '0)
                                (let ((_%c163126%_
                                       (string-ref
                                        _%str163117%_
                                        _%index163124%_)))
                                  (if (or (and (char>=? _%c163126%_ '#\a)
                                               (char<=? _%c163126%_ '#\z))
                                          (and (char>=? _%c163126%_ '#\A)
                                               (char<=? _%c163126%_ '#\Z))
                                          (and (char>=? _%c163126%_ '#\0)
                                               (char<=? _%c163126%_ '#\9))
                                          (char=? _%c163126%_ '#\_)
                                          (char=? _%c163126%_ '#\-))
                                      (_%loop163122%_ (fx- _%index163124%_ '1))
                                      '#f))
                                '#t))
                          '#f)))))
          (let* ((_%$%e163065163075%_ _%stx163061%_)
                 (_%$%E163067163079%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%$%e163065163075%_)))
                 (_%$%E163066163111%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e163065163075%_)
                        (let ((_%$%e163068163083%_
                               (gx#syntax-e _%$%e163065163075%_)))
                          (let ((_%$%hd163069163086%_
                                 (##car _%$%e163068163083%_))
                                (_%$%tl163070163088%_
                                 (##cdr _%$%e163068163083%_)))
                            (if (gx#stx-pair? _%$%tl163070163088%_)
                                (let ((_%$%e163071163091%_
                                       (gx#syntax-e _%$%tl163070163088%_)))
                                  (let ((_%$%hd163072163094%_
                                         (##car _%$%e163071163091%_))
                                        (_%$%tl163073163096%_
                                         (##cdr _%$%e163071163091%_)))
                                    (let* ((_%id163099%_ _%$%hd163072163094%_)
                                           (_%body163101%_
                                            _%$%tl163073163096%_))
                                      (if (and (gx#identifier? _%id163099%_)
                                               (gx#stx-list? _%body163101%_))
                                          (if (_%valid-module-id?163064%_
                                               (gx#stx-e
                                                (gx#datum->syntax '#f 'id)))
                                              (let* ((_%ctx163103%_
                                                      (_%make-context163063%_
                                                       _%id163099%_))
                                                     (_%body163105%_
                                                      (gx#core-expand-module-begin
                                                       _%body163101%_
                                                       _%ctx163103%_))
                                                     (_%body163107%_
                                                      (gx#core-quote-syntax
                                                       (gx#core-cons
                                                        '%#begin
                                                        _%body163105%_)
                                                       (gx#stx-source
                                                        _%stx163061%_))))
                                                (gx#&module-context-e-set!
                                                 _%ctx163103%_
                                                 (make-atomic-promise
                                                  (lambda ()
                                                    (gx#eval-syntax*
                                                     _%body163107%_))))
                                                (gx#&module-context-code-set!
                                                 _%ctx163103%_
                                                 _%body163107%_)
                                                (gx#core-bind-syntax!
                                                 _%id163099%_
                                                 _%ctx163103%_)
                                                (gx#core-quote-syntax
                                                 (gx#core-list
                                                  '%#module
                                                  (gx#core-quote-syntax
                                                   _%id163099%_)
                                                  _%body163107%_)
                                                 (gx#stx-source
                                                  _%stx163061%_)))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"invalid module id; allowed characters are A-Z,a-z,0-9,_,-"
                                               _%stx163061%_
                                               (gx#datum->syntax '#f 'id)))
                                          (_%$%E163067163079%_)))))
                                (_%$%E163067163079%_))))
                        (_%$%E163067163079%_)))))
            (_%$%E163066163111%_)))))
    (define gx#core-expand-module-begin
      (lambda (_%body163026%_ _%ctx163027%_)
        (call-with-parameters
         (lambda ()
           (call-with-parameters
            (lambda ()
              (gx#core-bind-feature! 'gerbil-module '#t)
              (let* ((_%stx163031%_
                      (gx#core-expand-head
                       (cons '%%begin-module _%body163026%_)))
                     (_%$%e163032163039%_ _%stx163031%_)
                     (_%$%E163034163043%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module body expansion"
                         _%stx163031%_)))
                     (_%$%E163033163057%_
                      (lambda ()
                        (if (gx#stx-pair? _%$%e163032163039%_)
                            (let ((_%$%e163035163047%_
                                   (gx#syntax-e _%$%e163032163039%_)))
                              (let ((_%$%hd163036163050%_
                                     (##car _%$%e163035163047%_))
                                    (_%$%tl163037163052%_
                                     (##cdr _%$%e163035163047%_)))
                                (if (and (gx#identifier? _%$%hd163036163050%_)
                                         (gx#core-identifier=?
                                          _%$%hd163036163050%_
                                          '%#begin-module))
                                    (let ((_%body163055%_
                                           _%$%tl163037163052%_))
                                      (if '#t
                                          (if (gx#sealed-syntax? _%stx163031%_)
                                              _%body163055%_
                                              (gx#core-expand-module-body
                                               _%body163055%_))
                                          (_%$%E163034163043%_)))
                                    (_%$%E163034163043%_))))
                            (_%$%E163034163043%_)))))
                (_%$%E163033163057%_)))
            gx#current-expander-phi
            '0))
         gx#current-expander-context
         _%ctx163027%_)))
    (define gx#core-expand-module-body
      (lambda (_%body162723%_)
        (letrec ((_%expand-special162725%_
                  (lambda (_%hd162854%_ _%K162855%_ _%rest162856%_ _%r162857%_)
                    (let* ((_%$%e162858162898%_ _%hd162854%_)
                           (_%$%E162893162902%_
                            (lambda ()
                              (_%K162855%_
                               _%rest162856%_
                               (cons (gx#core-expand-top _%hd162854%_)
                                     _%r162857%_))))
                           (_%$%E162880162914%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e162858162898%_)
                                  (let ((_%$%e162894162906%_
                                         (gx#syntax-e _%$%e162858162898%_)))
                                    (let ((_%$%hd162895162909%_
                                           (##car _%$%e162894162906%_))
                                          (_%$%tl162896162911%_
                                           (##cdr _%$%e162894162906%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd162895162909%_)
                                               (gx#core-identifier=?
                                                _%$%hd162895162909%_
                                                '%#export))
                                          (if '#t
                                              (_%K162855%_
                                               _%rest162856%_
                                               (cons _%hd162854%_ _%r162857%_))
                                              (_%$%E162893162902%_))
                                          (_%$%E162893162902%_))))
                                  (_%$%E162893162902%_))))
                           (_%$%E162870162956%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e162858162898%_)
                                  (let ((_%$%e162881162918%_
                                         (gx#syntax-e _%$%e162858162898%_)))
                                    (let ((_%$%hd162882162921%_
                                           (##car _%$%e162881162918%_))
                                          (_%$%tl162883162923%_
                                           (##cdr _%$%e162881162918%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd162882162921%_)
                                               (gx#core-identifier=?
                                                _%$%hd162882162921%_
                                                '%#bind-runtime-properties!))
                                          (if (gx#stx-pair?
                                               _%$%tl162883162923%_)
                                              (let ((_%$%e162884162926%_
                                                     (gx#syntax-e
                                                      _%$%tl162883162923%_)))
                                                (let ((_%$%hd162885162929%_
                                                       (##car _%$%e162884162926%_))
                                                      (_%$%tl162886162931%_
                                                       (##cdr _%$%e162884162926%_)))
                                                  (if (gx#stx-pair?
                                                       _%$%hd162885162929%_)
                                                      (let ((_%$%e162890162934%_
                                                             (gx#syntax-e
                                                              _%$%hd162885162929%_)))
                                                        (let ((_%$%hd162891162937%_
                                                               (##car _%$%e162890162934%_))
                                                              (_%$%tl162892162939%_
                                                               (##cdr _%$%e162890162934%_)))
                                                          (let ((_%id162942%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%hd162891162937%_))
                    (if (gx#stx-null? _%$%tl162892162939%_)
                        (if (gx#stx-pair? _%$%tl162886162931%_)
                            (let ((_%$%e162887162944%_
                                   (gx#syntax-e _%$%tl162886162931%_)))
                              (let ((_%$%hd162888162947%_
                                     (##car _%$%e162887162944%_))
                                    (_%$%tl162889162949%_
                                     (##cdr _%$%e162887162944%_)))
                                (let ((_%props162952%_ _%$%hd162888162947%_))
                                  (if (gx#stx-null? _%$%tl162889162949%_)
                                      (if '#t
                                          (let ((_%bind162954%_
                                                 (gx#resolve-identifier
                                                  _%id162942%_)))
                                            (gx#core-bind-runtime-properties!
                                             _%bind162954%_
                                             _%props162952%_)
                                            (_%K162855%_
                                             _%rest162856%_
                                             _%r162857%_))
                                          (_%$%E162880162914%_))
                                      (_%$%E162880162914%_)))))
                            (_%$%E162880162914%_))
                        (_%$%E162880162914%_)))))
              (_%$%E162880162914%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E162880162914%_))
                                          (_%$%E162880162914%_))))
                                  (_%$%E162880162914%_))))
                           (_%$%E162860162988%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e162858162898%_)
                                  (let ((_%$%e162871162960%_
                                         (gx#syntax-e _%$%e162858162898%_)))
                                    (let ((_%$%hd162872162963%_
                                           (##car _%$%e162871162960%_))
                                          (_%$%tl162873162965%_
                                           (##cdr _%$%e162871162960%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd162872162963%_)
                                               (gx#core-identifier=?
                                                _%$%hd162872162963%_
                                                '%#define-values))
                                          (if (gx#stx-pair?
                                               _%$%tl162873162965%_)
                                              (let ((_%$%e162874162968%_
                                                     (gx#syntax-e
                                                      _%$%tl162873162965%_)))
                                                (let ((_%$%hd162875162971%_
                                                       (##car _%$%e162874162968%_))
                                                      (_%$%tl162876162973%_
                                                       (##cdr _%$%e162874162968%_)))
                                                  (let ((_%hd-bind162976%_
                                                         _%$%hd162875162971%_))
                                                    (if (gx#stx-pair?
                                                         _%$%tl162876162973%_)
                                                        (let ((_%$%e162877162978%_
                                                               (gx#syntax-e
                                                                _%$%tl162876162973%_)))
                                                          (let ((_%$%hd162878162981%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%$%e162877162978%_))
                        (_%$%tl162879162983%_ (##cdr _%$%e162877162978%_)))
                    (let ((_%expr162986%_ _%$%hd162878162981%_))
                      (if (gx#stx-null? _%$%tl162879162983%_)
                          (if (gx#core-bind-values? _%hd-bind162976%_)
                              (begin
                                (gx#core-bind-values! _%hd-bind162976%_)
                                (_%K162855%_
                                 _%rest162856%_
                                 (cons _%hd162854%_ _%r162857%_)))
                              (_%$%E162870162956%_))
                          (_%$%E162870162956%_)))))
                (_%$%E162870162956%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E162870162956%_))
                                          (_%$%E162870162956%_))))
                                  (_%$%E162870162956%_))))
                           (_%$%E162859163022%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e162858162898%_)
                                  (let ((_%$%e162861162992%_
                                         (gx#syntax-e _%$%e162858162898%_)))
                                    (let ((_%$%hd162862162995%_
                                           (##car _%$%e162861162992%_))
                                          (_%$%tl162863162997%_
                                           (##cdr _%$%e162861162992%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd162862162995%_)
                                               (gx#core-identifier=?
                                                _%$%hd162862162995%_
                                                '%#define-values))
                                          (if (gx#stx-pair?
                                               _%$%tl162863162997%_)
                                              (let ((_%$%e162864163000%_
                                                     (gx#syntax-e
                                                      _%$%tl162863162997%_)))
                                                (let ((_%$%hd162865163003%_
                                                       (##car _%$%e162864163000%_))
                                                      (_%$%tl162866163005%_
                                                       (##cdr _%$%e162864163000%_)))
                                                  (let ((_%hd-bind163008%_
                                                         _%$%hd162865163003%_))
                                                    (if (gx#stx-pair?
                                                         _%$%tl162866163005%_)
                                                        (let ((_%$%e162867163010%_
                                                               (gx#syntax-e
                                                                _%$%tl162866163005%_)))
                                                          (let ((_%$%hd162868163013%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%$%e162867163010%_))
                        (_%$%tl162869163015%_ (##cdr _%$%e162867163010%_)))
                    (let* ((_%expr163018%_ _%$%hd162868163013%_)
                           (_%props163020%_ _%$%tl162869163015%_))
                      (if (and (gx#core-bind-values? _%hd-bind163008%_)
                               (gx#stx-list? _%props163020%_)
                               (not (gx#stx-null? _%props163020%_)))
                          (begin
                            (gx#core-bind-values! _%hd-bind163008%_)
                            (_%K162855%_
                             (cons (gx#core-cons
                                    '%#bind-runtime-properties!
                                    (cons _%hd-bind163008%_
                                          (cons _%props163020%_ '())))
                                   _%rest162856%_)
                             (cons (gx#core-cons
                                    '%#define-values
                                    (cons _%hd-bind163008%_
                                          (cons _%expr163018%_ '())))
                                   _%r162857%_)))
                          (_%$%E162860162988%_)))))
                (_%$%E162860162988%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E162860162988%_))
                                          (_%$%E162860162988%_))))
                                  (_%$%E162860162988%_)))))
                      (_%$%E162859163022%_))))
                 (_%expand-body162726%_
                  (lambda (_%rbody162728%_)
                    (let _%lp162730%_ ((_%rest162732%_ _%rbody162728%_)
                                       (_%body162733%_ '()))
                      (let* ((_%$%rest162734162742%_ _%rest162732%_)
                             (_%$%E162737162746%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%$%rest162734162742%_
                                       '([hd . rest])
                                       'else)
                                (void)))
                             (_%$%else162736162750%_
                              (lambda () _%body162733%_))
                             (_%$%K162738162842%_
                              (lambda (_%rest162753%_ _%hd162754%_)
                                (let* ((_%$%e162755162776%_ _%hd162754%_)
                                       (_%$%E162771162780%_
                                        (lambda ()
                                          (_%lp162730%_
                                           _%rest162753%_
                                           (cons (gx#core-expand-expression
                                                  _%hd162754%_)
                                                 _%body162733%_))))
                                       (_%$%E162767162794%_
                                        (lambda ()
                                          (if (gx#stx-pair?
                                               _%$%e162755162776%_)
                                              (let ((_%$%e162772162784%_
                                                     (gx#syntax-e
                                                      _%$%e162755162776%_)))
                                                (let ((_%$%hd162773162787%_
                                                       (##car _%$%e162772162784%_))
                                                      (_%$%tl162774162789%_
                                                       (##cdr _%$%e162772162784%_)))
                                                  (let ((_%form162792%_
                                                         _%$%hd162773162787%_))
                                                    (if (gx#core-bound-identifier?
                                                         _%form162792%_
                                                         gx#special-form-binding?)
                                                        (_%lp162730%_
                                                         _%rest162753%_
                                                         (cons _%hd162754%_
                                                               _%body162733%_))
                                                        (_%$%E162771162780%_)))))
                                              (_%$%E162771162780%_))))
                                       (_%$%E162757162806%_
                                        (lambda ()
                                          (if (gx#stx-pair?
                                               _%$%e162755162776%_)
                                              (let ((_%$%e162768162798%_
                                                     (gx#syntax-e
                                                      _%$%e162755162776%_)))
                                                (let ((_%$%hd162769162801%_
                                                       (##car _%$%e162768162798%_))
                                                      (_%$%tl162770162803%_
                                                       (##cdr _%$%e162768162798%_)))
                                                  (if (and (gx#identifier?
                                                            _%$%hd162769162801%_)
                                                           (gx#core-identifier=?
                                                            _%$%hd162769162801%_
                                                            '%#export))
                                                      (if '#t
                                                          (_%lp162730%_
                                                           _%rest162753%_
                                                           (cons (gx#core-expand-export%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%hd162754%_)
                         _%body162733%_))
                  (_%$%E162767162794%_))
              (_%$%E162767162794%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E162767162794%_))))
                                       (_%$%E162756162838%_
                                        (lambda ()
                                          (if (gx#stx-pair?
                                               _%$%e162755162776%_)
                                              (let ((_%$%e162758162810%_
                                                     (gx#syntax-e
                                                      _%$%e162755162776%_)))
                                                (let ((_%$%hd162759162813%_
                                                       (##car _%$%e162758162810%_))
                                                      (_%$%tl162760162815%_
                                                       (##cdr _%$%e162758162810%_)))
                                                  (if (and (gx#identifier?
                                                            _%$%hd162759162813%_)
                                                           (gx#core-identifier=?
                                                            _%$%hd162759162813%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%$%tl162760162815%_)
                                                          (let ((_%$%e162761162818%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl162760162815%_)))
                    (let ((_%$%hd162762162821%_ (##car _%$%e162761162818%_))
                          (_%$%tl162763162823%_ (##cdr _%$%e162761162818%_)))
                      (let ((_%hd-bind162826%_ _%$%hd162762162821%_))
                        (if (gx#stx-pair? _%$%tl162763162823%_)
                            (let ((_%$%e162764162828%_
                                   (gx#syntax-e _%$%tl162763162823%_)))
                              (let ((_%$%hd162765162831%_
                                     (##car _%$%e162764162828%_))
                                    (_%$%tl162766162833%_
                                     (##cdr _%$%e162764162828%_)))
                                (let ((_%expr162836%_ _%$%hd162765162831%_))
                                  (if (gx#stx-null? _%$%tl162766162833%_)
                                      (if '#t
                                          (_%lp162730%_
                                           _%rest162753%_
                                           (cons (gx#core-quote-syntax
                                                  (gx#core-list
                                                   '%#define-values
                                                   (gx#core-quote-bind-values
                                                    _%hd-bind162826%_)
                                                   (gx#core-expand-expression
                                                    _%expr162836%_))
                                                  (gx#stx-source _%hd162754%_))
                                                 _%body162733%_))
                                          (_%$%E162757162806%_))
                                      (_%$%E162757162806%_)))))
                            (_%$%E162757162806%_)))))
                  (_%$%E162757162806%_))
              (_%$%E162757162806%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E162757162806%_)))))
                                  (_%$%E162756162838%_)))))
                        (if (pair? _%$%rest162734162742%_)
                            (let ((_%$%hd162739162845%_
                                   (##car _%$%rest162734162742%_))
                                  (_%$%tl162740162847%_
                                   (##cdr _%$%rest162734162742%_)))
                              (let* ((_%hd162850%_ _%$%hd162739162845%_)
                                     (_%rest162852%_ _%$%tl162740162847%_))
                                (_%$%K162738162842%_
                                 _%rest162852%_
                                 _%hd162850%_)))
                            (_%$%else162736162750%_)))))))
          (_%expand-body162726%_
           (gx#core-expand-block
            (cons '%#begin-module _%body162723%_)
            _%expand-special162725%_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_%stx162564%_
               _%expanded?162565%_
               _%method162566%_
               _%current-phi162567%_
               _%expand1162568%_)
        (letrec ((_%K162570%_
                  (lambda (_%rest162690%_ _%r162691%_)
                    (let* ((_%$%e162692162699%_ _%rest162690%_)
                           (_%$%E162694162703%_ (lambda () _%r162691%_))
                           (_%$%E162693162719%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e162692162699%_)
                                  (let ((_%$%e162695162707%_
                                         (gx#syntax-e _%$%e162692162699%_)))
                                    (let ((_%$%hd162696162710%_
                                           (##car _%$%e162695162707%_))
                                          (_%$%tl162697162712%_
                                           (##cdr _%$%e162695162707%_)))
                                      (let* ((_%hd162715%_
                                              _%$%hd162696162710%_)
                                             (_%rest162717%_
                                              _%$%tl162697162712%_))
                                        (if '#t
                                            (_%step162571%_
                                             _%hd162715%_
                                             _%rest162717%_
                                             _%r162691%_)
                                            (_%$%E162694162703%_)))))
                                  (_%$%E162694162703%_)))))
                      (_%$%E162693162719%_))))
                 (_%step162571%_
                  (lambda (_%hd162604%_ _%rest162605%_ _%r162606%_)
                    (let* ((_%$%e162607162625%_ _%hd162604%_)
                           (_%$%E162620162629%_
                            (lambda ()
                              (if (_%expanded?162565%_ (gx#stx-e _%hd162604%_))
                                  (_%K162570%_
                                   _%rest162605%_
                                   (cons (gx#stx-e _%hd162604%_) _%r162606%_))
                                  (_%expand1162568%_
                                   _%hd162604%_
                                   _%K162570%_
                                   _%rest162605%_
                                   _%r162606%_))))
                           (_%$%E162616162645%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e162607162625%_)
                                  (let ((_%$%e162621162633%_
                                         (gx#syntax-e _%$%e162607162625%_)))
                                    (let ((_%$%hd162622162636%_
                                           (##car _%$%e162621162633%_))
                                          (_%$%tl162623162638%_
                                           (##cdr _%$%e162621162633%_)))
                                      (let* ((_%macro162641%_
                                              _%$%hd162622162636%_)
                                             (_%body162643%_
                                              _%$%tl162623162638%_))
                                        (if (gx#core-bound-identifier?
                                             _%macro162641%_
                                             gx#syntax-binding?)
                                            (_%K162570%_
                                             (cons (gx#core-apply-expander
                                                    (gx#syntax-local-e
                                                     _%macro162641%_)
                                                    _%hd162604%_
                                                    _%method162566%_)
                                                   _%rest162605%_)
                                             _%r162606%_)
                                            (_%$%E162620162629%_)))))
                                  (_%$%E162620162629%_))))
                           (_%$%E162609162659%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e162607162625%_)
                                  (let ((_%$%e162617162649%_
                                         (gx#syntax-e _%$%e162607162625%_)))
                                    (let ((_%$%hd162618162652%_
                                           (##car _%$%e162617162649%_))
                                          (_%$%tl162619162654%_
                                           (##cdr _%$%e162617162649%_)))
                                      (if (eq? (gx#stx-e _%$%hd162618162652%_)
                                               'begin:)
                                          (let ((_%body162657%_
                                                 _%$%tl162619162654%_))
                                            (if '#t
                                                (_%K162570%_
                                                 (gx#stx-foldr
                                                  cons
                                                  _%rest162605%_
                                                  _%body162657%_)
                                                 _%r162606%_)
                                                (_%$%E162616162645%_)))
                                          (_%$%E162616162645%_))))
                                  (_%$%E162616162645%_))))
                           (_%$%E162608162686%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e162607162625%_)
                                  (let ((_%$%e162610162663%_
                                         (gx#syntax-e _%$%e162607162625%_)))
                                    (let ((_%$%hd162611162666%_
                                           (##car _%$%e162610162663%_))
                                          (_%$%tl162612162668%_
                                           (##cdr _%$%e162610162663%_)))
                                      (if (eq? (gx#stx-e _%$%hd162611162666%_)
                                               'phi:)
                                          (if (gx#stx-pair?
                                               _%$%tl162612162668%_)
                                              (let ((_%$%e162613162671%_
                                                     (gx#syntax-e
                                                      _%$%tl162612162668%_)))
                                                (let ((_%$%hd162614162674%_
                                                       (##car _%$%e162613162671%_))
                                                      (_%$%tl162615162676%_
                                                       (##cdr _%$%e162613162671%_)))
                                                  (let* ((_%dphi162679%_
                                                          _%$%hd162614162674%_)
                                                         (_%body162681%_
                                                          _%$%tl162615162676%_))
                                                    (if (gx#stx-fixnum?
                                                         _%dphi162679%_)
                                                        (let ((_%rbody162684%_
                                                               (call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%K162570%_ _%body162681%_ '()))
                        _%current-phi162567%_
                        (fx+ (gx#stx-e _%dphi162679%_)
                             (_%current-phi162567%_)))))
                  (_%K162570%_
                   _%rest162605%_
                   (foldr cons _%r162606%_ _%rbody162684%_)))
                (_%$%E162609162659%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E162609162659%_))
                                          (_%$%E162609162659%_))))
                                  (_%$%E162609162659%_)))))
                      (_%$%E162608162686%_)))))
          (let* ((_%$%e162572162579%_ _%stx162564%_)
                 (_%$%E162574162583%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%$%e162572162579%_)))
                 (_%$%E162573162600%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e162572162579%_)
                        (let ((_%$%e162575162587%_
                               (gx#syntax-e _%$%e162572162579%_)))
                          (let ((_%$%hd162576162590%_
                                 (##car _%$%e162575162587%_))
                                (_%$%tl162577162592%_
                                 (##cdr _%$%e162575162587%_)))
                            (let ((_%body162595%_ _%$%tl162577162592%_))
                              (if '#t
                                  (if (_%current-phi162567%_)
                                      (_%K162570%_ _%body162595%_ '())
                                      (call-with-parameters
                                       (lambda ()
                                         (_%K162570%_ _%body162595%_ '()))
                                       _%current-phi162567%_
                                       (gx#current-expander-phi)))
                                  (_%$%E162574162583%_)))))
                        (_%$%E162574162583%_)))))
            (_%$%E162573162600%_)))))
    (define gx#core-expand-import%
      (let ((_%$%opt-lambda162216162554%_
             (lambda (_%stx162218%_ _%internal-expand?162219%_)
               (letrec ((_%expand1162221%_
                         (lambda (_%hd162536%_
                                  _%K162537%_
                                  _%rest162538%_
                                  _%r162539%_)
                           (if (gx#core-bound-module? _%hd162536%_)
                               (_%import1162222%_
                                (gx#syntax-local-e _%hd162536%_)
                                _%K162537%_
                                _%rest162538%_
                                _%r162539%_)
                               (if (gx#core-library-module-path? _%hd162536%_)
                                   (_%import1162222%_
                                    (gx#import-module
                                     (gx#core-resolve-library-module-path
                                      _%hd162536%_))
                                    _%K162537%_
                                    _%rest162538%_
                                    _%r162539%_)
                                   (if (gx#core-library-relative-module-path?
                                        _%hd162536%_)
                                       (_%import1162222%_
                                        (gx#import-module
                                         (gx#core-resolve-library-relative-module-path
                                          _%hd162536%_))
                                        _%K162537%_
                                        _%rest162538%_
                                        _%r162539%_)
                                       (let ((_%e162545%_
                                              (gx#stx-e _%hd162536%_)))
                                         (if (pair? _%e162545%_)
                                             (let ((_%$e162548%_
                                                    (gx#stx-e
                                                     (car _%e162545%_))))
                                               (if (eq? 'spec: _%$e162548%_)
                                                   (_%import-spec162225%_
                                                    _%hd162536%_
                                                    _%K162537%_
                                                    _%rest162538%_
                                                    _%r162539%_)
                                                   (if (eq? 'in: _%$e162548%_)
                                                       (_%import-submodule162223%_
                                                        _%hd162536%_
                                                        _%K162537%_
                                                        _%rest162538%_
                                                        _%r162539%_)
                                                       (if (eq? 'runtime:
                                                                _%$e162548%_)
                                                           (_%import-runtime162224%_
                                                            _%hd162536%_
                                                            _%K162537%_
                                                            _%rest162538%_
                                                            _%r162539%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; illegal import"
                                                            _%stx162218%_
                                                            _%hd162536%_)))))
                                             (if (string? _%e162545%_)
                                                 (_%import1162222%_
                                                  (gx#import-module
                                                   (gx#core-resolve-module-path
                                                    _%hd162536%_
                                                    (gx#stx-source
                                                     _%stx162218%_)))
                                                  _%K162537%_
                                                  _%rest162538%_
                                                  _%r162539%_)
                                                 (if (gx#module-context?
                                                      _%e162545%_)
                                                     (_%K162537%_
                                                      _%rest162538%_
                                                      (cons _%e162545%_
                                                            _%r162539%_))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; illegal import"
                                                      _%stx162218%_
                                                      _%hd162536%_))))))))))
                        (_%import1162222%_
                         (lambda (_%ctx162525%_
                                  _%K162526%_
                                  _%rest162527%_
                                  _%r162528%_)
                           (let ((_%dphi162530%_
                                  (fx- (gx#current-import-expander-phi)
                                       (gx#current-expander-phi))))
                             (_%K162526%_
                              _%rest162527%_
                              (cons (gx#make-import-set
                                     _%ctx162525%_
                                     _%dphi162530%_
                                     (map (lambda (_%$%g162531162533%_)
                                            (gx#core-module-export->import
                                             _%$%g162531162533%_
                                             '#f
                                             _%dphi162530%_))
                                          (gx#&module-context-export
                                           _%ctx162525%_)))
                                    _%r162528%_)))))
                        (_%import-submodule162223%_
                         (lambda (_%hd162492%_
                                  _%K162493%_
                                  _%rest162494%_
                                  _%r162495%_)
                           (let* ((_%$%e162496162503%_ _%hd162492%_)
                                  (_%$%E162498162507%_
                                   (lambda ()
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid syntax-case clause"
                                      _%$%e162496162503%_)))
                                  (_%$%E162497162521%_
                                   (lambda ()
                                     (if (gx#stx-pair? _%$%e162496162503%_)
                                         (let ((_%$%e162499162511%_
                                                (gx#syntax-e
                                                 _%$%e162496162503%_)))
                                           (let ((_%$%hd162500162514%_
                                                  (##car _%$%e162499162511%_))
                                                 (_%$%tl162501162516%_
                                                  (##cdr _%$%e162499162511%_)))
                                             (let ((_%spath162519%_
                                                    _%$%tl162501162516%_))
                                               (if '#t
                                                   (_%import1162222%_
                                                    (_%import-spec-source162226%_
                                                     _%spath162519%_)
                                                    _%K162493%_
                                                    _%rest162494%_
                                                    _%r162495%_)
                                                   (_%$%E162498162507%_)))))
                                         (_%$%E162498162507%_)))))
                             (_%$%E162497162521%_))))
                        (_%import-runtime162224%_
                         (lambda (_%hd162459%_
                                  _%K162460%_
                                  _%rest162461%_
                                  _%r162462%_)
                           (let* ((_%$%e162463162470%_ _%hd162459%_)
                                  (_%$%E162465162474%_
                                   (lambda ()
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid syntax-case clause"
                                      _%$%e162463162470%_)))
                                  (_%$%E162464162488%_
                                   (lambda ()
                                     (if (gx#stx-pair? _%$%e162463162470%_)
                                         (let ((_%$%e162466162478%_
                                                (gx#syntax-e
                                                 _%$%e162463162470%_)))
                                           (let ((_%$%hd162467162481%_
                                                  (##car _%$%e162466162478%_))
                                                 (_%$%tl162468162483%_
                                                  (##cdr _%$%e162466162478%_)))
                                             (let ((_%spath162486%_
                                                    _%$%tl162468162483%_))
                                               (if '#t
                                                   (_%K162460%_
                                                    _%rest162461%_
                                                    (cons (_%import-spec-source162226%_
                                                           _%spath162486%_)
                                                          _%r162462%_))
                                                   (_%$%E162465162474%_)))))
                                         (_%$%E162465162474%_)))))
                             (_%$%E162464162488%_))))
                        (_%import-spec162225%_
                         (lambda (_%hd162297%_
                                  _%K162298%_
                                  _%rest162299%_
                                  _%r162300%_)
                           (let* ((_%$%e162301162318%_ _%hd162297%_)
                                  (_%$%E162310162322%_
                                   (lambda ()
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid syntax-case clause"
                                      _%$%e162301162318%_)))
                                  (_%$%E162303162433%_
                                   (lambda ()
                                     (if (gx#stx-pair? _%$%e162301162318%_)
                                         (let ((_%$%e162311162326%_
                                                (gx#syntax-e
                                                 _%$%e162301162318%_)))
                                           (let ((_%$%hd162312162329%_
                                                  (##car _%$%e162311162326%_))
                                                 (_%$%tl162313162331%_
                                                  (##cdr _%$%e162311162326%_)))
                                             (if (gx#stx-pair?
                                                  _%$%tl162313162331%_)
                                                 (let ((_%$%e162314162334%_
                                                        (gx#syntax-e
                                                         _%$%tl162313162331%_)))
                                                   (let ((_%$%hd162315162337%_
                                                          (##car _%$%e162314162334%_))
                                                         (_%$%tl162316162339%_
                                                          (##cdr _%$%e162314162334%_)))
                                                     (let* ((_%path162342%_
                                                             _%$%hd162315162337%_)
                                                            (_%specs162344%_
                                                             _%$%tl162316162339%_))
                                                       (if '#t
                                                           (let ((_%src-ctx162346%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%import-spec-source162226%_ _%path162342%_))
                         (_%exports162347%_ (make-hash-table))
                         (_%specs162348%_ (gx#syntax->list _%specs162344%_)))
                     (for-each
                      (lambda (_%out162350%_)
                        (hash-put!
                         _%exports162347%_
                         (cons (gx#&module-export-phi _%out162350%_)
                               (gx#&module-export-name _%out162350%_))
                         _%out162350%_))
                      (gx#&module-context-export _%src-ctx162346%_))
                     (_%K162298%_
                      _%rest162299%_
                      (foldl (lambda (_%spec162352%_ _%r162353%_)
                               (let* ((_%$%e162354162370%_ _%spec162352%_)
                                      (_%$%E162356162374%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid syntax-case clause"
                                          _%$%e162354162370%_)))
                                      (_%$%E162355162429%_
                                       (lambda ()
                                         (if (gx#stx-pair? _%$%e162354162370%_)
                                             (let ((_%$%e162357162378%_
                                                    (gx#syntax-e
                                                     _%$%e162354162370%_)))
                                               (let ((_%$%hd162358162381%_
                                                      (##car _%$%e162357162378%_))
                                                     (_%$%tl162359162383%_
                                                      (##cdr _%$%e162357162378%_)))
                                                 (let ((_%phi162386%_
                                                        _%$%hd162358162381%_))
                                                   (if (gx#stx-pair?
                                                        _%$%tl162359162383%_)
                                                       (let ((_%$%e162360162388%_
                                                              (gx#syntax-e
                                                               _%$%tl162359162383%_)))
                                                         (let ((_%$%hd162361162391%_
                                                                (##car _%$%e162360162388%_))
                                                               (_%$%tl162362162393%_
                                                                (##cdr _%$%e162360162388%_)))
                                                           (let ((_%name162396%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%hd162361162391%_))
                     (if (gx#stx-pair? _%$%tl162362162393%_)
                         (let ((_%$%e162363162398%_
                                (gx#syntax-e _%$%tl162362162393%_)))
                           (let ((_%$%hd162364162401%_
                                  (##car _%$%e162363162398%_))
                                 (_%$%tl162365162403%_
                                  (##cdr _%$%e162363162398%_)))
                             (let ((_%src-phi162406%_ _%$%hd162364162401%_))
                               (if (gx#stx-pair? _%$%tl162365162403%_)
                                   (let ((_%$%e162366162408%_
                                          (gx#syntax-e _%$%tl162365162403%_)))
                                     (let ((_%$%hd162367162411%_
                                            (##car _%$%e162366162408%_))
                                           (_%$%tl162368162413%_
                                            (##cdr _%$%e162366162408%_)))
                                       (let ((_%src-name162416%_
                                              _%$%hd162367162411%_))
                                         (if (gx#stx-null?
                                              _%$%tl162368162413%_)
                                             (if (and (gx#stx-fixnum?
                                                       _%src-phi162406%_)
                                                      (gx#identifier?
                                                       _%src-name162416%_)
                                                      (gx#stx-fixnum?
                                                       _%phi162386%_)
                                                      (gx#identifier?
                                                       _%name162396%_))
                                                 (let ((_%src-phi162418%_
                                                        (gx#stx-e
                                                         _%src-phi162406%_))
                                                       (_%src-name162419%_
                                                        (gx#core-identifier-key
                                                         _%src-name162416%_))
                                                       (_%phi162420%_
                                                        (gx#stx-e
                                                         _%phi162386%_))
                                                       (_%name162421%_
                                                        (gx#core-identifier-key
                                                         _%name162396%_)))
                                                   (let ((_%$e162423%_
                                                          (hash-get
                                                           _%exports162347%_
                                                           (cons _%src-phi162418%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%src-name162419%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e162423%_
                                                         ((lambda (_%out162426%_)
                                                            (cons (gx#core-module-export->import
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%out162426%_
                           _%name162421%_
                           (fx- _%phi162420%_ _%src-phi162418%_))
                          _%r162353%_))
                  _%$e162423%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; no matching export"
                  _%stx162218%_
                  _%hd162297%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%E162356162374%_))
                                             (_%$%E162356162374%_)))))
                                   (_%$%E162356162374%_)))))
                         (_%$%E162356162374%_)))))
               (_%$%E162356162374%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%$%E162356162374%_)))))
                                 (_%$%E162355162429%_)))
                             _%r162300%_
                             _%specs162348%_)))
                   (_%$%E162310162322%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%E162310162322%_))))
                                         (_%$%E162310162322%_))))
                                  (_%$%E162302162455%_
                                   (lambda ()
                                     (if (gx#stx-pair? _%$%e162301162318%_)
                                         (let ((_%$%e162304162437%_
                                                (gx#syntax-e
                                                 _%$%e162301162318%_)))
                                           (let ((_%$%hd162305162440%_
                                                  (##car _%$%e162304162437%_))
                                                 (_%$%tl162306162442%_
                                                  (##cdr _%$%e162304162437%_)))
                                             (if (gx#stx-pair?
                                                  _%$%tl162306162442%_)
                                                 (let ((_%$%e162307162445%_
                                                        (gx#syntax-e
                                                         _%$%tl162306162442%_)))
                                                   (let ((_%$%hd162308162448%_
                                                          (##car _%$%e162307162445%_))
                                                         (_%$%tl162309162450%_
                                                          (##cdr _%$%e162307162445%_)))
                                                     (let ((_%path162453%_
                                                            _%$%hd162308162448%_))
                                                       (if (gx#stx-null?
                                                            _%$%tl162309162450%_)
                                                           (if '#t
                                                               (_%K162298%_
                                                                _%rest162299%_
                                                                (cons (_%import-spec-source162226%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%path162453%_)
                              _%r162300%_))
                       (_%$%E162303162433%_))
                   (_%$%E162303162433%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%E162303162433%_))))
                                         (_%$%E162303162433%_)))))
                             (_%$%E162302162455%_))))
                        (_%import-spec-source162226%_
                         (lambda (_%spath162295%_)
                           (gx#core-import-nested-module
                            _%spath162295%_
                            _%stx162218%_)))
                        (_%import!162227%_
                         (lambda (_%rbody162240%_)
                           (letrec* ((_%current-ctx162242%_
                                      (gx#current-expander-context))
                                     (_%deps162243%_ (make-hash-table-eq))
                                     (_%bind!162244%_
                                      (lambda (_%hd162293%_)
                                        (gx#core-bind-import!
                                         _%hd162293%_
                                         _%current-ctx162242%_))))
                             (let _%lp162246%_ ((_%rest162248%_
                                                 _%rbody162240%_)
                                                (_%body162249%_ '()))
                               (let* ((_%$%rest162250162258%_ _%rest162248%_)
                                      (_%$%E162253162262%_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _%$%rest162250162258%_
                                                '([hd . rest])
                                                'else)
                                         (void)))
                                      (_%$%else162252162269%_
                                       (lambda ()
                                         (if (gx#module-context?
                                              _%current-ctx162242%_)
                                             (gx#&module-context-import-set!
                                              _%current-ctx162242%_
                                              (foldl cons
                                                     (gx#&module-context-import
                                                      _%current-ctx162242%_)
                                                     _%body162249%_))
                                             '#!void)
                                         (hash-for-each
                                          (lambda (_%ctx162266%_ _%_162267%_)
                                            (gx#eval-module _%ctx162266%_))
                                          _%deps162243%_)
                                         _%body162249%_))
                                      (_%$%K162254162281%_
                                       (lambda (_%rest162272%_ _%hd162273%_)
                                         (if (gx#module-import? _%hd162273%_)
                                             (let ()
                                               (_%bind!162244%_ _%hd162273%_)
                                               (if (and (fxpositive?
                                                         (gx#&module-import-phi
                                                          _%hd162273%_))
                                                        (fxzero? (gx#&module-export-phi
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#&module-import-source _%hd162273%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (hash-put!
                                                    _%deps162243%_
                                                    (gx#&module-export-context
                                                     (gx#&module-import-source
                                                      _%hd162273%_))
                                                    '#t)
                                                   '#!void))
                                             (if (gx#import-set? _%hd162273%_)
                                                 (let ()
                                                   (for-each
                                                    _%bind!162244%_
                                                    (gx#&import-set-imports
                                                     _%hd162273%_))
                                                   (if (fxpositive?
                                                        (gx#&import-set-phi
                                                         _%hd162273%_))
                                                       (hash-put!
                                                        _%deps162243%_
                                                        (gx#&import-set-source
                                                         _%hd162273%_)
                                                        '#t)
                                                       '#!void))
                                                 (let ((_%$e162277%_
                                                        (gx#module-context?
                                                         _%hd162273%_)))
                                                   (if _%$e162277%_
                                                       _%$e162277%_
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Unexpected import"
                                                        _%stx162218%_
                                                        _%hd162273%_)))))
                                         (_%lp162246%_
                                          _%rest162272%_
                                          (cons _%hd162273%_
                                                _%body162249%_)))))
                                 (if (pair? _%$%rest162250162258%_)
                                     (let ((_%$%hd162255162284%_
                                            (##car _%$%rest162250162258%_))
                                           (_%$%tl162256162286%_
                                            (##cdr _%$%rest162250162258%_)))
                                       (let* ((_%hd162289%_
                                               _%$%hd162255162284%_)
                                              (_%rest162291%_
                                               _%$%tl162256162286%_))
                                         (_%$%K162254162281%_
                                          _%rest162291%_
                                          _%hd162289%_)))
                                     (_%$%else162252162269%_)))))))
                        (_%expanded-import?162228%_
                         (lambda (_%e162232%_)
                           (let ((_%$e162234%_ (gx#import-set? _%e162232%_)))
                             (if _%$e162234%_
                                 _%$e162234%_
                                 (let ((_%$e162237%_
                                        (gx#module-import? _%e162232%_)))
                                   (if _%$e162237%_
                                       _%$e162237%_
                                       (gx#module-context? _%e162232%_))))))))
                 (let ((_%rbody162230%_
                        (gx#core-expand-import/export
                         _%stx162218%_
                         _%expanded-import?162228%_
                         'apply-import-expander
                         gx#current-import-expander-phi
                         _%expand1162221%_)))
                   (if _%internal-expand?162219%_
                       (reverse _%rbody162230%_)
                       (gx#core-quote-syntax
                        (gx#core-cons
                         '%#import
                         (_%import!162227%_ _%rbody162230%_))
                        (gx#stx-source _%stx162218%_))))))))
        (lambda _g165266_
          (let ((_g165267_ (##length _g165266_)))
            (cond ((##fx= _g165267_ 1)
                   (apply (lambda (_%stx162557%_)
                            (let ((_%internal-expand?162559%_ '#f))
                              (_%$%opt-lambda162216162554%_
                               _%stx162557%_
                               _%internal-expand?162559%_)))
                          _g165266_))
                  ((##fx= _g165267_ 2)
                   (apply _%$%opt-lambda162216162554%_ _g165266_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-import%
                    _g165266_)))))))
    (define gx#core-import-nested-module
      (lambda (_%spath162145%_ _%where162146%_)
        (let* ((_%$%e162147162154%_ _%spath162145%_)
               (_%$%E162149162158%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e162147162154%_)))
               (_%$%E162148162213%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e162147162154%_)
                      (let ((_%$%e162150162162%_
                             (gx#syntax-e _%$%e162147162154%_)))
                        (let ((_%$%hd162151162165%_
                               (##car _%$%e162150162162%_))
                              (_%$%tl162152162167%_
                               (##cdr _%$%e162150162162%_)))
                          (let* ((_%origin162170%_ _%$%hd162151162165%_)
                                 (_%sub162172%_ _%$%tl162152162167%_))
                            (if '#t
                                (let ((_%origin-ctx162174%_
                                       (if (gx#stx-false? _%origin162170%_)
                                           (gx#current-expander-context)
                                           (gx#import-module
                                            _%origin162170%_))))
                                  (let _%lp162176%_ ((_%rest162178%_
                                                      _%sub162172%_)
                                                     (_%ctx162179%_
                                                      _%origin-ctx162174%_))
                                    (let* ((_%$%e162180162187%_ _%rest162178%_)
                                           (_%$%E162182162191%_
                                            (lambda () _%ctx162179%_))
                                           (_%$%E162181162209%_
                                            (lambda ()
                                              (if (gx#stx-pair?
                                                   _%$%e162180162187%_)
                                                  (let ((_%$%e162183162195%_
                                                         (gx#syntax-e
                                                          _%$%e162180162187%_)))
                                                    (let ((_%$%hd162184162198%_
                                                           (##car _%$%e162183162195%_))
                                                          (_%$%tl162185162200%_
                                                           (##cdr _%$%e162183162195%_)))
                                                      (let* ((_%id162203%_
                                                              _%$%hd162184162198%_)
                                                             (_%rest162205%_
                                                              _%$%tl162185162200%_))
                                                        (if '#t
                                                            (let ((_%bind162207%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#resolve-identifier
                            _%id162203%_
                            '0
                            _%ctx162179%_)))
                      (if (and (gx#syntax-binding? _%bind162207%_)
                               (gx#module-context?
                                (gx#&syntax-binding-e _%bind162207%_)))
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _%where162146%_
                           _%spath162145%_
                           _%id162203%_))
                      (_%lp162176%_
                       _%rest162205%_
                       (gx#&syntax-binding-e _%bind162207%_)))
                    (_%$%E162182162191%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E162182162191%_)))))
                                      (_%$%E162181162209%_))))
                                (_%$%E162149162158%_)))))
                      (_%$%E162149162158%_)))))
          (_%$%E162148162213%_))))
    (define gx#core-expand-import-source
      (lambda (_%hd162143%_)
        (gx#core-expand-import%
         (cons 'import-internal% (cons _%hd162143%_ '()))
         '#t)))
    (define gx#core-expand-export%
      (let ((_%$%opt-lambda161636162133%_
             (lambda (_%stx161638%_ _%internal-expand?161639%_)
               (letrec* ((_%make-export161641%_
                          (let ((_%$%opt-lambda162089162104%_
                                 (lambda (_%bind162091%_
                                          _%phi162092%_
                                          _%ctx162093%_
                                          _%name162094%_)
                                   (let* ((_%key162096%_
                                           (gx#&binding-key _%bind162091%_))
                                          (_%export-key162098%_
                                           (if _%name162094%_
                                               (gx#core-identifier-key
                                                _%name162094%_)
                                               _%key162096%_)))
                                     (gx#make-module-export
                                      _%ctx162093%_
                                      _%key162096%_
                                      _%phi162092%_
                                      _%export-key162098%_
                                      (let ((_%$e162101%_
                                             (gx#extern-binding?
                                              _%bind162091%_)))
                                        (if _%$e162101%_
                                            _%$e162101%_
                                            (gx#import-binding?
                                             _%bind162091%_))))))))
                            (lambda _g165268_
                              (let ((_g165269_ (##length _g165268_)))
                                (cond ((##fx= _g165269_ 1)
                                       (apply (lambda (_%bind162107%_)
                                                (let* ((_%phi162109%_
                                                        (gx#current-export-expander-phi))
                                                       (_%ctx162111%_
                                                        (gx#current-expander-context))
                                                       (_%name162113%_ '#f))
                                                  (_%$%opt-lambda162089162104%_
                                                   _%bind162107%_
                                                   _%phi162109%_
                                                   _%ctx162111%_
                                                   _%name162113%_)))
                                              _g165268_))
                                      ((##fx= _g165269_ 2)
                                       (apply (lambda (_%bind162115%_
                                                       _%phi162116%_)
                                                (let* ((_%ctx162118%_
                                                        (gx#current-expander-context))
                                                       (_%name162120%_ '#f))
                                                  (_%$%opt-lambda162089162104%_
                                                   _%bind162115%_
                                                   _%phi162116%_
                                                   _%ctx162118%_
                                                   _%name162120%_)))
                                              _g165268_))
                                      ((##fx= _g165269_ 3)
                                       (apply (lambda (_%bind162122%_
                                                       _%phi162123%_
                                                       _%ctx162124%_)
                                                (let ((_%name162126%_ '#f))
                                                  (_%$%opt-lambda162089162104%_
                                                   _%bind162122%_
                                                   _%phi162123%_
                                                   _%ctx162124%_
                                                   _%name162126%_)))
                                              _g165268_))
                                      ((##fx= _g165269_ 4)
                                       (apply _%$%opt-lambda162089162104%_
                                              _g165268_))
                                      (else
                                       (##raise-wrong-number-of-arguments-exception
                                        'case-lambda-dispatch
                                        _g165268_)))))))
                         (_%expand1161642%_
                          (lambda (_%hd161796%_
                                   _%K161797%_
                                   _%rest161798%_
                                   _%r161799%_)
                            (let* ((_%$%e161800161832%_ _%hd161796%_)
                                   (_%$%E161827161836%_
                                    (lambda ()
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; illegal export"
                                       _%stx161638%_
                                       _%hd161796%_)))
                                   (_%$%E161817161920%_
                                    (lambda ()
                                      (if (gx#stx-pair? _%$%e161800161832%_)
                                          (let ((_%$%e161828161840%_
                                                 (gx#syntax-e
                                                  _%$%e161800161832%_)))
                                            (let ((_%$%hd161829161843%_
                                                   (##car _%$%e161828161840%_))
                                                  (_%$%tl161830161845%_
                                                   (##cdr _%$%e161828161840%_)))
                                              (if (eq? (gx#stx-e
                                                        _%$%hd161829161843%_)
                                                       'import:)
                                                  (let ((_%in161848%_
                                                         _%$%tl161830161845%_))
                                                    (if (gx#stx-list?
                                                         _%in161848%_)
                                                        (let _%lp161850%_ ((_%in-rest161852%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _%in161848%_)
                                   (_%r161853%_ _%r161799%_))
                  (let* ((_%$%e161854161861%_ _%in-rest161852%_)
                         (_%$%E161856161865%_
                          (lambda () (_%K161797%_ _%rest161798%_ _%r161853%_)))
                         (_%$%E161855161916%_
                          (lambda ()
                            (if (gx#stx-pair? _%$%e161854161861%_)
                                (let ((_%$%e161857161869%_
                                       (gx#syntax-e _%$%e161854161861%_)))
                                  (let ((_%$%hd161858161872%_
                                         (##car _%$%e161857161869%_))
                                        (_%$%tl161859161874%_
                                         (##cdr _%$%e161857161869%_)))
                                    (let* ((_%hd161877%_ _%$%hd161858161872%_)
                                           (_%in-rest161879%_
                                            _%$%tl161859161874%_))
                                      (if '#t
                                          (let ((_%src161914%_
                                                 (if (gx#core-bound-module?
                                                      _%hd161877%_)
                                                     (gx#syntax-local-e
                                                      _%hd161877%_)
                                                     (if (gx#core-library-module-path?
                                                          _%hd161877%_)
                                                         (gx#import-module
                                                          (gx#core-resolve-library-module-path
                                                           _%hd161877%_))
                                                         (if (gx#core-library-relative-module-path?
                                                              _%hd161877%_)
                                                             (gx#import-module
                                                              (gx#core-resolve-library-relative-module-path
                                                               _%hd161877%_))
                                                             (if (gx#stx-string?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%hd161877%_)
                         (gx#import-module
                          (gx#core-resolve-module-path
                           _%hd161877%_
                           (gx#stx-source _%stx161638%_)))
                         (let* ((_%$%e161885161892%_ _%hd161877%_)
                                (_%$%E161887161896%_
                                 (lambda ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; illegal re-export"
                                    _%stx161638%_
                                    _%hd161877%_)))
                                (_%$%E161886161910%_
                                 (lambda ()
                                   (if (gx#stx-pair? _%$%e161885161892%_)
                                       (let ((_%$%e161888161900%_
                                              (gx#syntax-e
                                               _%$%e161885161892%_)))
                                         (let ((_%$%hd161889161903%_
                                                (##car _%$%e161888161900%_))
                                               (_%$%tl161890161905%_
                                                (##cdr _%$%e161888161900%_)))
                                           (if (eq? (gx#stx-e
                                                     _%$%hd161889161903%_)
                                                    'in:)
                                               (let ((_%spath161908%_
                                                      _%$%tl161890161905%_))
                                                 (if '#t
                                                     (gx#core-import-nested-module
                                                      _%spath161908%_
                                                      _%stx161638%_)
                                                     (_%$%E161887161896%_)))
                                               (_%$%E161887161896%_))))
                                       (_%$%E161887161896%_)))))
                           (_%$%E161886161910%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%lp161850%_
                                             _%in-rest161879%_
                                             (_%export-imports161643%_
                                              _%src161914%_
                                              _%r161853%_)))
                                          (_%$%E161856161865%_)))))
                                (_%$%E161856161865%_)))))
                    (_%$%E161855161916%_)))
                (_%$%E161827161836%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E161827161836%_))))
                                          (_%$%E161827161836%_))))
                                   (_%$%E161804161960%_
                                    (lambda ()
                                      (if (gx#stx-pair? _%$%e161800161832%_)
                                          (let ((_%$%e161818161924%_
                                                 (gx#syntax-e
                                                  _%$%e161800161832%_)))
                                            (let ((_%$%hd161819161927%_
                                                   (##car _%$%e161818161924%_))
                                                  (_%$%tl161820161929%_
                                                   (##cdr _%$%e161818161924%_)))
                                              (if (eq? (gx#stx-e
                                                        _%$%hd161819161927%_)
                                                       'rename:)
                                                  (if (gx#stx-pair?
                                                       _%$%tl161820161929%_)
                                                      (let ((_%$%e161821161932%_
                                                             (gx#syntax-e
                                                              _%$%tl161820161929%_)))
                                                        (let ((_%$%hd161822161935%_
                                                               (##car _%$%e161821161932%_))
                                                              (_%$%tl161823161937%_
                                                               (##cdr _%$%e161821161932%_)))
                                                          (let ((_%id161940%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%hd161822161935%_))
                    (if (gx#stx-pair? _%$%tl161823161937%_)
                        (let ((_%$%e161824161942%_
                               (gx#syntax-e _%$%tl161823161937%_)))
                          (let ((_%$%hd161825161945%_
                                 (##car _%$%e161824161942%_))
                                (_%$%tl161826161947%_
                                 (##cdr _%$%e161824161942%_)))
                            (let ((_%name161950%_ _%$%hd161825161945%_))
                              (if (gx#stx-null? _%$%tl161826161947%_)
                                  (if '#t
                                      (let* ((_%phi161952%_
                                              (gx#current-export-expander-phi))
                                             (_%$e161954%_
                                              (gx#core-resolve-identifier
                                               _%id161940%_
                                               _%phi161952%_)))
                                        (if _%$e161954%_
                                            ((lambda (_%bind161957%_)
                                               (_%K161797%_
                                                _%rest161798%_
                                                (cons (_%make-export161641%_
                                                       _%bind161957%_
                                                       _%phi161952%_
                                                       (gx#current-expander-context)
                                                       _%name161950%_)
                                                      _%r161799%_)))
                                             _%$e161954%_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Reference to unbound identifier"
                                             _%stx161638%_
                                             _%hd161796%_
                                             _%id161940%_)))
                                      (_%$%E161817161920%_))
                                  (_%$%E161817161920%_)))))
                        (_%$%E161817161920%_)))))
              (_%$%E161817161920%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E161817161920%_))))
                                          (_%$%E161817161920%_))))
                                   (_%$%E161803162010%_
                                    (lambda ()
                                      (if (gx#stx-pair? _%$%e161800161832%_)
                                          (let ((_%$%e161805161964%_
                                                 (gx#syntax-e
                                                  _%$%e161800161832%_)))
                                            (let ((_%$%hd161806161967%_
                                                   (##car _%$%e161805161964%_))
                                                  (_%$%tl161807161969%_
                                                   (##cdr _%$%e161805161964%_)))
                                              (if (eq? (gx#stx-e
                                                        _%$%hd161806161967%_)
                                                       'spec:)
                                                  (if (gx#stx-pair?
                                                       _%$%tl161807161969%_)
                                                      (let ((_%$%e161808161972%_
                                                             (gx#syntax-e
                                                              _%$%tl161807161969%_)))
                                                        (let ((_%$%hd161809161975%_
                                                               (##car _%$%e161808161972%_))
                                                              (_%$%tl161810161977%_
                                                               (##cdr _%$%e161808161972%_)))
                                                          (let ((_%phi161980%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%hd161809161975%_))
                    (if (gx#stx-pair? _%$%tl161810161977%_)
                        (let ((_%$%e161811161982%_
                               (gx#syntax-e _%$%tl161810161977%_)))
                          (let ((_%$%hd161812161985%_
                                 (##car _%$%e161811161982%_))
                                (_%$%tl161813161987%_
                                 (##cdr _%$%e161811161982%_)))
                            (let ((_%id161990%_ _%$%hd161812161985%_))
                              (if (gx#stx-pair? _%$%tl161813161987%_)
                                  (let ((_%$%e161814161992%_
                                         (gx#syntax-e _%$%tl161813161987%_)))
                                    (let ((_%$%hd161815161995%_
                                           (##car _%$%e161814161992%_))
                                          (_%$%tl161816161997%_
                                           (##cdr _%$%e161814161992%_)))
                                      (let ((_%name162000%_
                                             _%$%hd161815161995%_))
                                        (if (gx#stx-null? _%$%tl161816161997%_)
                                            (if (and (gx#stx-fixnum?
                                                      _%phi161980%_)
                                                     (gx#identifier?
                                                      _%id161990%_)
                                                     (gx#identifier?
                                                      _%name162000%_))
                                                (let* ((_%phi162002%_
                                                        (gx#stx-e
                                                         _%phi161980%_))
                                                       (_%$e162004%_
                                                        (gx#core-resolve-identifier
                                                         _%id161990%_
                                                         _%phi162002%_)))
                                                  (if _%$e162004%_
                                                      ((lambda (_%bind162007%_)
                                                         (_%K161797%_
                                                          _%rest161798%_
                                                          (cons (_%make-export161641%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%bind162007%_
                         _%phi162002%_
                         (gx#current-expander-context)
                         _%name162000%_)
                        _%r161799%_)))
               _%$e162004%_)
              (gx#raise-syntax-error
               '#f
               '"Reference to unbound identifier"
               _%stx161638%_
               _%hd161796%_
               _%id161990%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%E161804161960%_))
                                            (_%$%E161804161960%_)))))
                                  (_%$%E161804161960%_)))))
                        (_%$%E161804161960%_)))))
              (_%$%E161804161960%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E161804161960%_))))
                                          (_%$%E161804161960%_))))
                                   (_%$%E161802162022%_
                                    (lambda ()
                                      (let ((_%id162014%_ _%$%e161800161832%_))
                                        (if (gx#identifier? _%id162014%_)
                                            (let ((_%$e162016%_
                                                   (gx#core-resolve-identifier
                                                    _%id162014%_
                                                    (gx#current-export-expander-phi))))
                                              (if _%$e162016%_
                                                  ((lambda (_%bind162019%_)
                                                     (_%K161797%_
                                                      _%rest161798%_
                                                      (cons (_%make-export161641%_
                                                             _%bind162019%_)
                                                            _%r161799%_)))
                                                   _%$e162016%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Reference to unbound identifier"
                                                   _%stx161638%_
                                                   _%hd161796%_)))
                                            (_%$%E161803162010%_)))))
                                   (_%$%E161801162086%_
                                    (lambda ()
                                      (if (eq? (gx#stx-e _%$%e161800161832%_)
                                               '#t)
                                          (if '#t
                                              (let* ((_%current-ctx162026%_
                                                      (gx#current-expander-context))
                                                     (_%current-phi162028%_
                                                      (gx#current-export-expander-phi))
                                                     (_%phi-ctx162030%_
                                                      (gx#core-context-shift
                                                       _%current-ctx162026%_
                                                       _%current-phi162028%_))
                                                     (_%phi-bind162032%_
                                                      (hash->list
                                                       (gx#&expander-context-table
                                                        _%phi-ctx162030%_))))
                                                (let _%lp162035%_ ((_%bind-rest162037%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%phi-bind162032%_)
                           (_%set162038%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_%$%bind-rest162039162049%_
                                                          _%bind-rest162037%_)
                                                         (_%$%E162042162053%_
                                                          (lambda ()
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%bind-rest162039162049%_
                           '([[key . bind] . bind-rest])
                           'else)
                    (void)))
                 (_%$%else162041162057%_
                  (lambda ()
                    (_%K161797%_
                     _%rest161798%_
                     (cons (gx#make-export-set
                            '#f
                            _%current-phi162028%_
                            _%set162038%_)
                           _%r161799%_))))
                 (_%$%K162043162067%_
                  (lambda (_%bind-rest162060%_ _%bind162061%_ _%key162062%_)
                    (if (or (gx#import-binding? _%bind162061%_)
                            (gx#private-feature-binding? _%bind162061%_))
                        (_%lp162035%_ _%bind-rest162060%_ _%set162038%_)
                        (_%lp162035%_
                         _%bind-rest162060%_
                         (cons (_%make-export161641%_
                                _%bind162061%_
                                _%current-phi162028%_
                                _%current-ctx162026%_)
                               _%set162038%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (pair? _%$%bind-rest162039162049%_)
                                                        (let ((_%$%hd162044162070%_
                                                               (##car _%$%bind-rest162039162049%_))
                                                              (_%$%tl162045162072%_
                                                               (##cdr _%$%bind-rest162039162049%_)))
                                                          (if (pair? _%$%hd162044162070%_)
                                                              (let ((_%$%hd162046162075%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##car _%$%hd162044162070%_))
                            (_%$%tl162047162077%_
                             (##cdr _%$%hd162044162070%_)))
                        (let* ((_%key162080%_ _%$%hd162046162075%_)
                               (_%bind162082%_ _%$%tl162047162077%_)
                               (_%bind-rest162084%_ _%$%tl162045162072%_))
                          (_%$%K162043162067%_
                           _%bind-rest162084%_
                           _%bind162082%_
                           _%key162080%_)))
                      (_%$%else162041162057%_)))
                (_%$%else162041162057%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E161802162022%_))
                                          (_%$%E161802162022%_)))))
                              (_%$%E161801162086%_))))
                         (_%export-imports161643%_
                          (lambda (_%src161673%_ _%r161674%_)
                            (letrec* ((_%current-ctx161676%_
                                       (gx#current-expander-context))
                                      (_%current-phi161677%_
                                       (gx#current-export-expander-phi))
                                      (_%import->export161678%_
                                       (lambda (_%in161759%_)
                                         (let* ((_%$%in161760161768%_
                                                 _%in161759%_)
                                                (_%$%E161762161771%_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _%$%in161760161768%_
                                                          '((module-import
                                                             out
                                                             key
                                                             phi)))
                                                   (void)))
                                                (_%$%K161763161778%_
                                                 (lambda (_%phi161774%_
                                                          _%key161775%_
                                                          _%out161776%_)
                                                   (gx#make-module-export
                                                    _%current-ctx161676%_
                                                    _%key161775%_
                                                    _%phi161774%_
                                                    _%key161775%_
                                                    '#t))))
                                           (if (gx#module-import?
                                                _%$%in161760161768%_)
                                               (let* ((_%$%e161764161781%_
                                                       (gx#&module-import-source
                                                        _%$%in161760161768%_))
                                                      (_%out161784%_
                                                       _%$%e161764161781%_)
                                                      (_%$%e161765161786%_
                                                       (gx#&module-import-name
                                                        _%$%in161760161768%_))
                                                      (_%key161789%_
                                                       _%$%e161765161786%_)
                                                      (_%$%e161766161791%_
                                                       (gx#&module-import-phi
                                                        _%$%in161760161768%_))
                                                      (_%phi161794%_
                                                       _%$%e161766161791%_))
                                                 (_%$%K161763161778%_
                                                  _%phi161794%_
                                                  _%key161789%_
                                                  _%out161784%_))
                                               (_%$%E161762161771%_)))))
                                      (_%fold-e161679%_
                                       (lambda (_%in161681%_ _%r161682%_)
                                         (let* ((_%$%in161683161697%_
                                                 _%in161681%_)
                                                (_%$%E161687161701%_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _%$%in161683161697%_
                                                          '((module-import
                                                             out
                                                             key
                                                             phi))
                                                          '((import-set
                                                             ctx
                                                             phi
                                                             imports))
                                                          'else)
                                                   (void)))
                                                (_%$%else161686161705%_
                                                 (lambda () _%r161682%_))
                                                (_%$%try-match161685161734%_
                                                 (lambda ()
                                                   (let ((_%$%K161688161716%_
                                                          (lambda (_%imports161709%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%phi161710%_
                           _%ctx161711%_)
                    (if (and (fx= _%phi161710%_ _%current-phi161677%_)
                             (eq? _%src161673%_ _%ctx161711%_))
                        (foldl (lambda (_%in161713%_ _%r161714%_)
                                 (cons (_%import->export161678%_ _%in161713%_)
                                       _%r161714%_))
                               _%r161682%_
                               _%imports161709%_)
                        _%r161682%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#import-set?
                                                          _%$%in161683161697%_)
                                                         (let* ((_%$%e161689161719%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#&import-set-source _%$%in161683161697%_))
                        (_%ctx161722%_ _%$%e161689161719%_)
                        (_%$%e161690161724%_
                         (gx#&import-set-phi _%$%in161683161697%_))
                        (_%phi161727%_ _%$%e161690161724%_)
                        (_%$%e161691161729%_
                         (gx#&import-set-imports _%$%in161683161697%_))
                        (_%imports161732%_ _%$%e161691161729%_))
                   (_%$%K161688161716%_
                    _%imports161732%_
                    _%phi161727%_
                    _%ctx161722%_))
                 (_%$%else161686161705%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%K161692161741%_
                                                 (lambda (_%phi161737%_
                                                          _%key161738%_
                                                          _%out161739%_)
                                                   (if (and (fx= _%phi161737%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%current-phi161677%_)
                    (eq? _%src161673%_
                         (gx#&module-export-context _%out161739%_)))
               (cons (_%import->export161678%_ _%in161681%_) _%r161682%_)
               _%r161682%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (gx#module-import?
                                                _%$%in161683161697%_)
                                               (let* ((_%$%e161693161744%_
                                                       (gx#&module-import-source
                                                        _%$%in161683161697%_))
                                                      (_%out161747%_
                                                       _%$%e161693161744%_)
                                                      (_%$%e161694161749%_
                                                       (gx#&module-import-name
                                                        _%$%in161683161697%_))
                                                      (_%key161752%_
                                                       _%$%e161694161749%_)
                                                      (_%$%e161695161754%_
                                                       (gx#&module-import-phi
                                                        _%$%in161683161697%_))
                                                      (_%phi161757%_
                                                       _%$%e161695161754%_))
                                                 (_%$%K161692161741%_
                                                  _%phi161757%_
                                                  _%key161752%_
                                                  _%out161747%_))
                                               (_%$%try-match161685161734%_))))))
                              (cons (gx#make-export-set
                                     _%src161673%_
                                     _%current-phi161677%_
                                     (foldl _%fold-e161679%_
                                            '()
                                            (gx#&module-context-import
                                             _%current-ctx161676%_)))
                                    _%r161674%_))))
                         (_%export!161644%_
                          (lambda (_%rbody161660%_)
                            (letrec* ((_%current-ctx161662%_
                                       (gx#current-expander-context))
                                      (_%fold-e161663%_
                                       (lambda (_%out161667%_ _%r161668%_)
                                         (if (gx#module-export? _%out161667%_)
                                             (cons _%out161667%_ _%r161668%_)
                                             (if (gx#export-set? _%out161667%_)
                                                 (foldl cons
                                                        _%r161668%_
                                                        (gx#&export-set-exports
                                                         _%out161667%_))
                                                 _%r161668%_)))))
                              (let ((_%body161665%_ (reverse _%rbody161660%_)))
                                (gx#&module-context-export-set!
                                 _%current-ctx161662%_
                                 (foldl _%fold-e161663%_
                                        (gx#&module-context-export
                                         _%current-ctx161662%_)
                                        _%body161665%_))
                                _%body161665%_))))
                         (_%expanded-export?161645%_
                          (lambda (_%e161655%_)
                            (let ((_%$e161657%_
                                   (gx#module-export? _%e161655%_)))
                              (if _%$e161657%_
                                  _%$e161657%_
                                  (gx#export-set? _%e161655%_))))))
                 (if (or (gx#module-context? (gx#current-expander-context))
                         _%internal-expand?161639%_)
                     (let ((_%rbody161651%_
                            (gx#core-expand-import/export
                             _%stx161638%_
                             _%expanded-export?161645%_
                             'apply-export-expander
                             gx#current-export-expander-phi
                             _%expand1161642%_)))
                       (if _%internal-expand?161639%_
                           (reverse _%rbody161651%_)
                           (gx#core-quote-syntax
                            (gx#core-cons
                             '%#export
                             (_%export!161644%_ _%rbody161651%_))
                            (gx#stx-source _%stx161638%_))))
                     (if (gx#top-context? (gx#current-expander-context))
                         (gx#core-quote-syntax
                          (gx#core-cons '%#begin '())
                          (gx#stx-source _%stx161638%_))
                         (gx#raise-syntax-error
                          '#f
                          '"Illegal context"
                          _%stx161638%_)))))))
        (lambda _g165270_
          (let ((_g165271_ (##length _g165270_)))
            (cond ((##fx= _g165271_ 1)
                   (apply (lambda (_%stx162136%_)
                            (let ((_%internal-expand?162138%_ '#f))
                              (_%$%opt-lambda161636162133%_
                               _%stx162136%_
                               _%internal-expand?162138%_)))
                          _g165270_))
                  ((##fx= _g165271_ 2)
                   (apply _%$%opt-lambda161636162133%_ _g165270_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-export%
                    _g165270_)))))))
    (define gx#core-expand-export-source
      (lambda (_%hd161635%_)
        (gx#core-expand-export%
         (cons 'export-macro% (cons _%hd161635%_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_%stx161605%_)
        (let* ((_%$%e161606161613%_ _%stx161605%_)
               (_%$%E161608161617%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e161606161613%_)))
               (_%$%E161607161631%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e161606161613%_)
                      (let ((_%$%e161609161621%_
                             (gx#syntax-e _%$%e161606161613%_)))
                        (let ((_%$%hd161610161624%_
                               (##car _%$%e161609161621%_))
                              (_%$%tl161611161626%_
                               (##cdr _%$%e161609161621%_)))
                          (let ((_%body161629%_ _%$%tl161611161626%_))
                            (if (gx#identifier-list? _%body161629%_)
                                (begin
                                  (gx#stx-for-each
                                   gx#core-bind-feature!
                                   _%body161629%_)
                                  (gx#core-quote-syntax
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map
                                     gx#core-quote-syntax
                                     _%body161629%_))
                                   (gx#stx-source _%stx161605%_)))
                                (_%$%E161608161617%_)))))
                      (_%$%E161608161617%_)))))
          (_%$%E161607161631%_))))
    (define gx#core-bind-feature!
      (let ((_%$%opt-lambda161569161576%_
             (lambda (_%id161571%_
                      _%private?161572%_
                      _%phi161573%_
                      _%ctx161574%_)
               (gx#core-bind-syntax!
                _%id161571%_
                ((if _%private?161572%_
                     gx#make-private-feature-expander
                     gx#make-feature-expander)
                 (gx#stx-e _%id161571%_))
                _%private?161572%_
                _%phi161573%_
                _%ctx161574%_))))
        (lambda _g165272_
          (let ((_g165273_ (##length _g165272_)))
            (cond ((##fx= _g165273_ 1)
                   (apply (lambda (_%id161579%_)
                            (let* ((_%private?161581%_ '#f)
                                   (_%phi161583%_ (gx#current-expander-phi))
                                   (_%ctx161585%_
                                    (gx#current-expander-context)))
                              (_%$%opt-lambda161569161576%_
                               _%id161579%_
                               _%private?161581%_
                               _%phi161583%_
                               _%ctx161585%_)))
                          _g165272_))
                  ((##fx= _g165273_ 2)
                   (apply (lambda (_%id161587%_ _%private?161588%_)
                            (let* ((_%phi161590%_ (gx#current-expander-phi))
                                   (_%ctx161592%_
                                    (gx#current-expander-context)))
                              (_%$%opt-lambda161569161576%_
                               _%id161587%_
                               _%private?161588%_
                               _%phi161590%_
                               _%ctx161592%_)))
                          _g165272_))
                  ((##fx= _g165273_ 3)
                   (apply (lambda (_%id161594%_
                                   _%private?161595%_
                                   _%phi161596%_)
                            (let ((_%ctx161598%_
                                   (gx#current-expander-context)))
                              (_%$%opt-lambda161569161576%_
                               _%id161594%_
                               _%private?161595%_
                               _%phi161596%_
                               _%ctx161598%_)))
                          _g165272_))
                  ((##fx= _g165273_ 4)
                   (apply _%$%opt-lambda161569161576%_ _g165272_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-feature!
                    _g165272_)))))))))
