(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1712784664)
  (begin
    (define gerbil-version-string (lambda () '"v0.18.1-94-g765cbfe48"))
    (define gerbil-system-manifest
      (cons (cons '"Gerbil" (gerbil-version-string))
            (cons (cons '"Gambit" (system-version-string)) '())))
    (define build-manifest gerbil-system-manifest)
    (set! build-manifest build-manifest)
    (define display-build-manifest__%
      (lambda (_%manifest91857%_ _%port91858%_)
        (let ((_%p91864%_
               (lambda (_%g9185991861%_)
                 (display _%g9185991861%_ _%port91858%_)))
              (_%l91865%_ (length _%manifest91857%_))
              (_%i91866%_ '0))
          (for-each
           (lambda (_%layer91868%_)
             (if (zero? _%i91866%_)
                 '#!void
                 (if (= _%i91866%_ '1)
                     (_%p91864%_ '" on ")
                     (_%p91864%_ '", ")))
             (let* ((_%layer9187291879%_ _%layer91868%_)
                    (_%E9187491883%_
                     (lambda ()
                       (error '"No clause matching"
                              _%layer9187291879%_
                              '([name . version]))
                       '#!void))
                    (_%K9187591889%_
                     (lambda (_%version91886%_ _%name91887%_)
                       (_%p91864%_ _%name91887%_)
                       (_%p91864%_ '" ")
                       (_%p91864%_ _%version91886%_))))
               (if (let () (declare (not safe)) (##pair? _%layer9187291879%_))
                   (let ((_%hd9187691892%_
                          (let ()
                            (declare (not safe))
                            (##car _%layer9187291879%_)))
                         (_%tl9187791894%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%layer9187291879%_))))
                     (let* ((_%name91897%_ _%hd9187691892%_)
                            (_%version91899%_ _%tl9187791894%_))
                       (_%K9187591889%_ _%version91899%_ _%name91897%_)))
                   (_%E9187491883%_)))
             (set! _%i91866%_ (+ _%i91866%_ '1)))
           _%manifest91857%_))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_%manifest91905%_ build-manifest)
               (_%port91907%_ (current-output-port)))
          (display-build-manifest__% _%manifest91905%_ _%port91907%_))))
    (define display-build-manifest__1
      (lambda (_%manifest91909%_)
        (let ((_%port91911%_ (current-output-port)))
          (display-build-manifest__% _%manifest91909%_ _%port91911%_))))
    (define display-build-manifest
      (lambda _g91917_
        (let ((_g91916_ (let () (declare (not safe)) (##length _g91917_))))
          (cond ((let () (declare (not safe)) (##fx= _g91916_ 0))
                 (apply display-build-manifest__0 _g91917_))
                ((let () (declare (not safe)) (##fx= _g91916_ 1))
                 (apply display-build-manifest__1 _g91917_))
                ((let () (declare (not safe)) (##fx= _g91916_ 2))
                 (apply display-build-manifest__% _g91917_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g91917_))))))
    (define build-manifest/layer
      (lambda (_%layer91852%_)
        (let ((_%l91854%_ (assoc _%layer91852%_ build-manifest)))
          (if _%l91854%_ (cons _%l91854%_ '()) '()))))
    (define build-manifest/head
      (lambda ()
        (cons (let () (declare (not safe)) (##car build-manifest)) '())))
    (define build-manifest-string__%
      (lambda (_%manifest91839%_)
        (call-with-output-string
         '()
         (lambda (_%p91841%_)
           (display-build-manifest__% _%manifest91839%_ _%p91841%_)))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_%manifest91847%_ build-manifest))
          (build-manifest-string__% _%manifest91847%_))))
    (define build-manifest-string
      (lambda _g91919_
        (let ((_g91918_ (let () (declare (not safe)) (##length _g91919_))))
          (cond ((let () (declare (not safe)) (##fx= _g91918_ 0))
                 (apply build-manifest-string__0 _g91919_))
                ((let () (declare (not safe)) (##fx= _g91918_ 1))
                 (apply build-manifest-string__% _g91919_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g91919_))))))
    (define gerbil-system-version-string
      (lambda () (build-manifest-string__% gerbil-system-manifest)))
    (define gerbil-greeting (gerbil-system-version-string))
    (set! gerbil-greeting gerbil-greeting)
    (define gerbil-system (lambda () 'gerbil-gambit))
    (define gerbil-home
      (lambda ()
        (let ((_%$e91833%_
               (let () (declare (not safe)) (##getenv '"GERBIL_HOME" '#f))))
          (if _%$e91833%_ _%$e91833%_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_%$e91829%_
               (let () (declare (not safe)) (##getenv '"GERBIL_PATH" '#f))))
          (if _%$e91829%_ _%$e91829%_ (path-expand '"~/.gerbil")))))
    (define __smp? '#!void)
    (define gerbil-runtime-smp?
      (lambda ()
        (if (eq? __smp? '#!void)
            (set! __smp?
                  (if (let ((__tmp91920
                             (let ((__tmp91921 (configure-command-string)))
                               (declare (not safe))
                               (__string-split __tmp91921 '#\'))))
                        (declare (not safe))
                        (##member '"--enable-smp" __tmp91920))
                      '#t
                      '#f))
            '#!void)
        __smp?))))
