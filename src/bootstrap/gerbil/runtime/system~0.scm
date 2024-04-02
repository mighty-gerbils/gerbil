(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1712093475)
  (begin
    (define gerbil-version-string (lambda () '"v0.18.1-140-g4e8b404e"))
    (define gerbil-system-manifest
      (cons (cons '"Gerbil"
                  (let () (declare (not safe)) (gerbil-version-string)))
            (cons (cons '"Gambit" (system-version-string)) '())))
    (define build-manifest gerbil-system-manifest)
    (set! build-manifest build-manifest)
    (define display-build-manifest__%
      (lambda (_%manifest90454%_ _%port90455%_)
        (let ((_%p90461%_
               (lambda (_%g9045690458%_)
                 (display _%g9045690458%_ _%port90455%_)))
              (_%l90462%_ (length _%manifest90454%_))
              (_%i90463%_ '0))
          (for-each
           (lambda (_%layer90465%_)
             (if (zero? _%i90463%_)
                 (let () '#!void)
                 (if (= _%i90463%_ '1)
                     (let ()
                       (let () (declare (not safe)) (_%p90461%_ '" on ")))
                     (let ()
                       (let () (declare (not safe)) (_%p90461%_ '", ")))))
             (let* ((_%layer9046990476%_ _%layer90465%_)
                    (_%E9047190480%_
                     (lambda ()
                       (error '"No clause matching"
                              _%layer9046990476%_
                              '([name . version]))
                       '#!void))
                    (_%K9047290486%_
                     (lambda (_%version90483%_ _%name90484%_)
                       (let () (declare (not safe)) (_%p90461%_ _%name90484%_))
                       (let () (declare (not safe)) (_%p90461%_ '" "))
                       (let ()
                         (declare (not safe))
                         (_%p90461%_ _%version90483%_)))))
               (if (let () (declare (not safe)) (##pair? _%layer9046990476%_))
                   (let ((_%hd9047390489%_
                          (let ()
                            (declare (not safe))
                            (##car _%layer9046990476%_)))
                         (_%tl9047490491%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%layer9046990476%_))))
                     (let* ((_%name90494%_ _%hd9047390489%_)
                            (_%version90496%_ _%tl9047490491%_))
                       (declare (not safe))
                       (_%K9047290486%_ _%version90496%_ _%name90494%_)))
                   (let () (declare (not safe)) (_%E9047190480%_))))
             (set! _%i90463%_ (+ _%i90463%_ '1)))
           _%manifest90454%_))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_%manifest90502%_ build-manifest)
               (_%port90504%_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _%manifest90502%_ _%port90504%_))))
    (define display-build-manifest__1
      (lambda (_%manifest90506%_)
        (let ((_%port90508%_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _%manifest90506%_ _%port90508%_))))
    (define display-build-manifest
      (lambda _g90514_
        (let ((_g90513_ (let () (declare (not safe)) (##length _g90514_))))
          (cond ((let () (declare (not safe)) (##fx= _g90513_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__0)))
                        _g90514_))
                ((let () (declare (not safe)) (##fx= _g90513_ 1))
                 (apply (lambda (_%manifest90506%_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__1 _%manifest90506%_)))
                        _g90514_))
                ((let () (declare (not safe)) (##fx= _g90513_ 2))
                 (apply (lambda (_%manifest90510%_ _%port90511%_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__%
                             _%manifest90510%_
                             _%port90511%_)))
                        _g90514_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g90514_))))))
    (define build-manifest/layer
      (lambda (_%layer90449%_)
        (let ((_%l90451%_ (assoc _%layer90449%_ build-manifest)))
          (if _%l90451%_ (cons _%l90451%_ '()) '()))))
    (define build-manifest/head
      (lambda ()
        (cons (let () (declare (not safe)) (##car build-manifest)) '())))
    (define build-manifest-string__%
      (lambda (_%manifest90436%_)
        (call-with-output-string
         '()
         (lambda (_%p90438%_)
           (let ()
             (declare (not safe))
             (display-build-manifest__% _%manifest90436%_ _%p90438%_))))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_%manifest90444%_ build-manifest))
          (declare (not safe))
          (build-manifest-string__% _%manifest90444%_))))
    (define build-manifest-string
      (lambda _g90516_
        (let ((_g90515_ (let () (declare (not safe)) (##length _g90516_))))
          (cond ((let () (declare (not safe)) (##fx= _g90515_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__0)))
                        _g90516_))
                ((let () (declare (not safe)) (##fx= _g90515_ 1))
                 (apply (lambda (_%manifest90446%_)
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__% _%manifest90446%_)))
                        _g90516_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g90516_))))))
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
        (let ((_%$e90430%_
               (let () (declare (not safe)) (##getenv '"GERBIL_HOME" '#f))))
          (if _%$e90430%_ _%$e90430%_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_%$e90426%_
               (let () (declare (not safe)) (##getenv '"GERBIL_PATH" '#f))))
          (if _%$e90426%_ _%$e90426%_ (path-expand '"~/.gerbil")))))
    (define __smp? '#!void)
    (define gerbil-runtime-smp?
      (lambda ()
        (if (let () (declare (not safe)) (eq? __smp? '#!void))
            (set! __smp?
                  (if (let ((__tmp90517
                             (let ((__tmp90518 (configure-command-string)))
                               (declare (not safe))
                               (__string-split __tmp90518 '#\'))))
                        (declare (not safe))
                        (##member '"--enable-smp" __tmp90517))
                      '#t
                      '#f))
            '#!void)
        __smp?))))
