(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1712757953)
  (begin
    (define gerbil-version-string (lambda () '"v0.18.1-96-g75a8241d4"))
    (define gerbil-system-manifest
      (cons (cons '"Gerbil" (gerbil-version-string))
            (cons (cons '"Gambit" (system-version-string)) '())))
    (define build-manifest gerbil-system-manifest)
    (set! build-manifest build-manifest)
    (define display-build-manifest__%
      (lambda (_%manifest91173%_ _%port91174%_)
        (let ((_%p91180%_
               (lambda (_%g9117591177%_)
                 (display _%g9117591177%_ _%port91174%_)))
              (_%l91181%_ (length _%manifest91173%_))
              (_%i91182%_ '0))
          (for-each
           (lambda (_%layer91184%_)
             (if (zero? _%i91182%_)
                 '#!void
                 (if (= _%i91182%_ '1)
                     (_%p91180%_ '" on ")
                     (_%p91180%_ '", ")))
             (let* ((_%layer9118891195%_ _%layer91184%_)
                    (_%E9119091199%_
                     (lambda ()
                       (error '"No clause matching"
                              _%layer9118891195%_
                              '([name . version]))
                       '#!void))
                    (_%K9119191205%_
                     (lambda (_%version91202%_ _%name91203%_)
                       (_%p91180%_ _%name91203%_)
                       (_%p91180%_ '" ")
                       (_%p91180%_ _%version91202%_))))
               (if (let () (declare (not safe)) (##pair? _%layer9118891195%_))
                   (let ((_%hd9119291208%_
                          (let ()
                            (declare (not safe))
                            (##car _%layer9118891195%_)))
                         (_%tl9119391210%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%layer9118891195%_))))
                     (let* ((_%name91213%_ _%hd9119291208%_)
                            (_%version91215%_ _%tl9119391210%_))
                       (_%K9119191205%_ _%version91215%_ _%name91213%_)))
                   (_%E9119091199%_)))
             (set! _%i91182%_ (+ _%i91182%_ '1)))
           _%manifest91173%_))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_%manifest91221%_ build-manifest)
               (_%port91223%_ (current-output-port)))
          (display-build-manifest__% _%manifest91221%_ _%port91223%_))))
    (define display-build-manifest__1
      (lambda (_%manifest91225%_)
        (let ((_%port91227%_ (current-output-port)))
          (display-build-manifest__% _%manifest91225%_ _%port91227%_))))
    (define display-build-manifest
      (lambda _g91233_
        (let ((_g91232_ (let () (declare (not safe)) (##length _g91233_))))
          (cond ((let () (declare (not safe)) (##fx= _g91232_ 0))
                 (apply display-build-manifest__0 _g91233_))
                ((let () (declare (not safe)) (##fx= _g91232_ 1))
                 (apply display-build-manifest__1 _g91233_))
                ((let () (declare (not safe)) (##fx= _g91232_ 2))
                 (apply display-build-manifest__% _g91233_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g91233_))))))
    (define build-manifest/layer
      (lambda (_%layer91168%_)
        (let ((_%l91170%_ (assoc _%layer91168%_ build-manifest)))
          (if _%l91170%_ (cons _%l91170%_ '()) '()))))
    (define build-manifest/head
      (lambda ()
        (cons (let () (declare (not safe)) (##car build-manifest)) '())))
    (define build-manifest-string__%
      (lambda (_%manifest91155%_)
        (call-with-output-string
         '()
         (lambda (_%p91157%_)
           (display-build-manifest__% _%manifest91155%_ _%p91157%_)))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_%manifest91163%_ build-manifest))
          (build-manifest-string__% _%manifest91163%_))))
    (define build-manifest-string
      (lambda _g91235_
        (let ((_g91234_ (let () (declare (not safe)) (##length _g91235_))))
          (cond ((let () (declare (not safe)) (##fx= _g91234_ 0))
                 (apply build-manifest-string__0 _g91235_))
                ((let () (declare (not safe)) (##fx= _g91234_ 1))
                 (apply build-manifest-string__% _g91235_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g91235_))))))
    (define gerbil-system-version-string
      (lambda () (build-manifest-string__% gerbil-system-manifest)))
    (define gerbil-greeting (gerbil-system-version-string))
    (set! gerbil-greeting gerbil-greeting)
    (define gerbil-system (lambda () 'gerbil-gambit))
    (define gerbil-home
      (lambda ()
        (let ((_%$e91149%_
               (let () (declare (not safe)) (##getenv '"GERBIL_HOME" '#f))))
          (if _%$e91149%_ _%$e91149%_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_%$e91145%_
               (let () (declare (not safe)) (##getenv '"GERBIL_PATH" '#f))))
          (if _%$e91145%_ _%$e91145%_ (path-expand '"~/.gerbil")))))
    (define __smp? '#!void)
    (define gerbil-runtime-smp?
      (lambda ()
        (if (eq? __smp? '#!void)
            (set! __smp?
                  (if (let ((__tmp91236
                             (let ((__tmp91237 (configure-command-string)))
                               (declare (not safe))
                               (__string-split __tmp91237 '#\'))))
                        (declare (not safe))
                        (##member '"--enable-smp" __tmp91236))
                      '#t
                      '#f))
            '#!void)
        __smp?))))
