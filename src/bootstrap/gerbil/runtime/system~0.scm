(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1712246554)
  (begin
    (define gerbil-version-string (lambda () '"v0.18.1-167-ge5e34b7e"))
    (define gerbil-system-manifest
      (cons (cons '"Gerbil"
                  (let () (declare (not safe)) (gerbil-version-string)))
            (cons (cons '"Gambit" (system-version-string)) '())))
    (define build-manifest gerbil-system-manifest)
    (set! build-manifest build-manifest)
    (define display-build-manifest__%
      (lambda (_%manifest91101%_ _%port91102%_)
        (let ((_%p91108%_
               (lambda (_%g9110391105%_)
                 (display _%g9110391105%_ _%port91102%_)))
              (_%l91109%_ (length _%manifest91101%_))
              (_%i91110%_ '0))
          (for-each
           (lambda (_%layer91112%_)
             (if (zero? _%i91110%_)
                 (let () '#!void)
                 (if (= _%i91110%_ '1)
                     (let () (declare (not safe)) (_%p91108%_ '" on "))
                     (let () (declare (not safe)) (_%p91108%_ '", "))))
             (let* ((_%layer9111691123%_ _%layer91112%_)
                    (_%E9111891127%_
                     (lambda ()
                       (error '"No clause matching"
                              _%layer9111691123%_
                              '([name . version]))
                       '#!void))
                    (_%K9111991133%_
                     (lambda (_%version91130%_ _%name91131%_)
                       (let () (declare (not safe)) (_%p91108%_ _%name91131%_))
                       (let () (declare (not safe)) (_%p91108%_ '" "))
                       (let ()
                         (declare (not safe))
                         (_%p91108%_ _%version91130%_)))))
               (if (let () (declare (not safe)) (##pair? _%layer9111691123%_))
                   (let ((_%hd9112091136%_
                          (let ()
                            (declare (not safe))
                            (##car _%layer9111691123%_)))
                         (_%tl9112191138%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%layer9111691123%_))))
                     (let* ((_%name91141%_ _%hd9112091136%_)
                            (_%version91143%_ _%tl9112191138%_))
                       (declare (not safe))
                       (_%K9111991133%_ _%version91143%_ _%name91141%_)))
                   (let () (declare (not safe)) (_%E9111891127%_))))
             (set! _%i91110%_ (+ _%i91110%_ '1)))
           _%manifest91101%_))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_%manifest91149%_ build-manifest)
               (_%port91151%_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _%manifest91149%_ _%port91151%_))))
    (define display-build-manifest__1
      (lambda (_%manifest91153%_)
        (let ((_%port91155%_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _%manifest91153%_ _%port91155%_))))
    (define display-build-manifest
      (lambda _g91161_
        (let ((_g91160_ (let () (declare (not safe)) (##length _g91161_))))
          (cond ((let () (declare (not safe)) (##fx= _g91160_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__0)))
                        _g91161_))
                ((let () (declare (not safe)) (##fx= _g91160_ 1))
                 (apply (lambda (_%manifest91153%_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__1 _%manifest91153%_)))
                        _g91161_))
                ((let () (declare (not safe)) (##fx= _g91160_ 2))
                 (apply (lambda (_%manifest91157%_ _%port91158%_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__%
                             _%manifest91157%_
                             _%port91158%_)))
                        _g91161_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g91161_))))))
    (define build-manifest/layer
      (lambda (_%layer91096%_)
        (let ((_%l91098%_ (assoc _%layer91096%_ build-manifest)))
          (if _%l91098%_ (cons _%l91098%_ '()) '()))))
    (define build-manifest/head
      (lambda ()
        (cons (let () (declare (not safe)) (##car build-manifest)) '())))
    (define build-manifest-string__%
      (lambda (_%manifest91083%_)
        (call-with-output-string
         '()
         (lambda (_%p91085%_)
           (let ()
             (declare (not safe))
             (display-build-manifest__% _%manifest91083%_ _%p91085%_))))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_%manifest91091%_ build-manifest))
          (declare (not safe))
          (build-manifest-string__% _%manifest91091%_))))
    (define build-manifest-string
      (lambda _g91163_
        (let ((_g91162_ (let () (declare (not safe)) (##length _g91163_))))
          (cond ((let () (declare (not safe)) (##fx= _g91162_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__0)))
                        _g91163_))
                ((let () (declare (not safe)) (##fx= _g91162_ 1))
                 (apply (lambda (_%manifest91093%_)
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__% _%manifest91093%_)))
                        _g91163_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g91163_))))))
    (define gerbil-system-version-string
      (lambda ()
        (let ()
          (declare (not safe))
          (build-manifest-string__% gerbil-system-manifest))))
    (define gerbil-greeting
      (let () (declare (not safe)) (gerbil-system-version-string)))
    (set! gerbil-greeting gerbil-greeting)
    (define gerbil-system (lambda () 'gerbil-gambit))
    (define gerbil-home
      (lambda ()
        (let ((_%$e91077%_
               (let () (declare (not safe)) (##getenv '"GERBIL_HOME" '#f))))
          (if _%$e91077%_ _%$e91077%_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_%$e91073%_
               (let () (declare (not safe)) (##getenv '"GERBIL_PATH" '#f))))
          (if _%$e91073%_ _%$e91073%_ (path-expand '"~/.gerbil")))))
    (define __smp? '#!void)
    (define gerbil-runtime-smp?
      (lambda ()
        (if (let () (declare (not safe)) (eq? __smp? '#!void))
            (set! __smp?
                  (if (let ((__tmp91164
                             (let ((__tmp91165 (configure-command-string)))
                               (declare (not safe))
                               (__string-split __tmp91165 '#\'))))
                        (declare (not safe))
                        (##member '"--enable-smp" __tmp91164))
                      '#t
                      '#f))
            '#!void)
        __smp?))))
