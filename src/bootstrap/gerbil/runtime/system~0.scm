(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1712773523)
  (begin
    (define gerbil-version-string (lambda () '"v0.18.1-100-gf676bb28c"))
    (define gerbil-system-manifest
      (cons (cons '"Gerbil" (gerbil-version-string))
            (cons (cons '"Gambit" (system-version-string)) '())))
    (define build-manifest gerbil-system-manifest)
    (set! build-manifest build-manifest)
    (define display-build-manifest__%
      (lambda (_%manifest91415%_ _%port91416%_)
        (let ((_%p91422%_
               (lambda (_%g9141791419%_)
                 (display _%g9141791419%_ _%port91416%_)))
              (_%l91423%_ (length _%manifest91415%_))
              (_%i91424%_ '0))
          (for-each
           (lambda (_%layer91426%_)
             (if (zero? _%i91424%_)
                 '#!void
                 (if (= _%i91424%_ '1)
                     (_%p91422%_ '" on ")
                     (_%p91422%_ '", ")))
             (let* ((_%layer9143091437%_ _%layer91426%_)
                    (_%E9143291441%_
                     (lambda ()
                       (error '"No clause matching"
                              _%layer9143091437%_
                              '([name . version]))
                       '#!void))
                    (_%K9143391447%_
                     (lambda (_%version91444%_ _%name91445%_)
                       (_%p91422%_ _%name91445%_)
                       (_%p91422%_ '" ")
                       (_%p91422%_ _%version91444%_))))
               (if (let () (declare (not safe)) (##pair? _%layer9143091437%_))
                   (let ((_%hd9143491450%_
                          (let ()
                            (declare (not safe))
                            (##car _%layer9143091437%_)))
                         (_%tl9143591452%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%layer9143091437%_))))
                     (let* ((_%name91455%_ _%hd9143491450%_)
                            (_%version91457%_ _%tl9143591452%_))
                       (_%K9143391447%_ _%version91457%_ _%name91455%_)))
                   (_%E9143291441%_)))
             (set! _%i91424%_ (+ _%i91424%_ '1)))
           _%manifest91415%_))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_%manifest91463%_ build-manifest)
               (_%port91465%_ (current-output-port)))
          (display-build-manifest__% _%manifest91463%_ _%port91465%_))))
    (define display-build-manifest__1
      (lambda (_%manifest91467%_)
        (let ((_%port91469%_ (current-output-port)))
          (display-build-manifest__% _%manifest91467%_ _%port91469%_))))
    (define display-build-manifest
      (lambda _g91475_
        (let ((_g91474_ (let () (declare (not safe)) (##length _g91475_))))
          (cond ((let () (declare (not safe)) (##fx= _g91474_ 0))
                 (apply display-build-manifest__0 _g91475_))
                ((let () (declare (not safe)) (##fx= _g91474_ 1))
                 (apply display-build-manifest__1 _g91475_))
                ((let () (declare (not safe)) (##fx= _g91474_ 2))
                 (apply display-build-manifest__% _g91475_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g91475_))))))
    (define build-manifest/layer
      (lambda (_%layer91410%_)
        (let ((_%l91412%_ (assoc _%layer91410%_ build-manifest)))
          (if _%l91412%_ (cons _%l91412%_ '()) '()))))
    (define build-manifest/head
      (lambda ()
        (cons (let () (declare (not safe)) (##car build-manifest)) '())))
    (define build-manifest-string__%
      (lambda (_%manifest91397%_)
        (call-with-output-string
         '()
         (lambda (_%p91399%_)
           (display-build-manifest__% _%manifest91397%_ _%p91399%_)))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_%manifest91405%_ build-manifest))
          (build-manifest-string__% _%manifest91405%_))))
    (define build-manifest-string
      (lambda _g91477_
        (let ((_g91476_ (let () (declare (not safe)) (##length _g91477_))))
          (cond ((let () (declare (not safe)) (##fx= _g91476_ 0))
                 (apply build-manifest-string__0 _g91477_))
                ((let () (declare (not safe)) (##fx= _g91476_ 1))
                 (apply build-manifest-string__% _g91477_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g91477_))))))
    (define gerbil-system-version-string
      (lambda () (build-manifest-string__% gerbil-system-manifest)))
    (define gerbil-greeting (gerbil-system-version-string))
    (set! gerbil-greeting gerbil-greeting)
    (define gerbil-system (lambda () 'gerbil-gambit))
    (define gerbil-home
      (lambda ()
        (let ((_%$e91391%_
               (let () (declare (not safe)) (##getenv '"GERBIL_HOME" '#f))))
          (if _%$e91391%_ _%$e91391%_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_%$e91387%_
               (let () (declare (not safe)) (##getenv '"GERBIL_PATH" '#f))))
          (if _%$e91387%_ _%$e91387%_ (path-expand '"~/.gerbil")))))
    (define __smp? '#!void)
    (define gerbil-runtime-smp?
      (lambda ()
        (if (eq? __smp? '#!void)
            (set! __smp?
                  (if (let ((__tmp91478
                             (let ((__tmp91479 (configure-command-string)))
                               (declare (not safe))
                               (__string-split __tmp91479 '#\'))))
                        (declare (not safe))
                        (##member '"--enable-smp" __tmp91478))
                      '#t
                      '#f))
            '#!void)
        __smp?))))
