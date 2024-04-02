(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1712084084)
  (begin
    (define gerbil-version-string (lambda () '"v0.18.1-135-gabb46541"))
    (define gerbil-system-manifest
      (cons (cons '"Gerbil"
                  (let () (declare (not safe)) (gerbil-version-string)))
            (cons (cons '"Gambit" (system-version-string)) '())))
    (define build-manifest gerbil-system-manifest)
    (set! build-manifest build-manifest)
    (define display-build-manifest__%
      (lambda (_%manifest90374%_ _%port90375%_)
        (let ((_%p90381%_
               (lambda (_%g9037690378%_)
                 (display _%g9037690378%_ _%port90375%_)))
              (_%l90382%_ (length _%manifest90374%_))
              (_%i90383%_ '0))
          (for-each
           (lambda (_%layer90385%_)
             (if (zero? _%i90383%_)
                 (let () '#!void)
                 (if (= _%i90383%_ '1)
                     (let ()
                       (let () (declare (not safe)) (_%p90381%_ '" on ")))
                     (let ()
                       (let () (declare (not safe)) (_%p90381%_ '", ")))))
             (let* ((_%layer9038990396%_ _%layer90385%_)
                    (_%E9039190400%_
                     (lambda ()
                       (error '"No clause matching"
                              _%layer9038990396%_
                              '([name . version]))
                       '#!void))
                    (_%K9039290406%_
                     (lambda (_%version90403%_ _%name90404%_)
                       (let () (declare (not safe)) (_%p90381%_ _%name90404%_))
                       (let () (declare (not safe)) (_%p90381%_ '" "))
                       (let ()
                         (declare (not safe))
                         (_%p90381%_ _%version90403%_)))))
               (if (let () (declare (not safe)) (##pair? _%layer9038990396%_))
                   (let ((_%hd9039390409%_
                          (let ()
                            (declare (not safe))
                            (##car _%layer9038990396%_)))
                         (_%tl9039490411%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%layer9038990396%_))))
                     (let* ((_%name90414%_ _%hd9039390409%_)
                            (_%version90416%_ _%tl9039490411%_))
                       (declare (not safe))
                       (_%K9039290406%_ _%version90416%_ _%name90414%_)))
                   (let () (declare (not safe)) (_%E9039190400%_))))
             (set! _%i90383%_ (+ _%i90383%_ '1)))
           _%manifest90374%_))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_%manifest90422%_ build-manifest)
               (_%port90424%_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _%manifest90422%_ _%port90424%_))))
    (define display-build-manifest__1
      (lambda (_%manifest90426%_)
        (let ((_%port90428%_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _%manifest90426%_ _%port90428%_))))
    (define display-build-manifest
      (lambda _g90434_
        (let ((_g90433_ (let () (declare (not safe)) (##length _g90434_))))
          (cond ((let () (declare (not safe)) (##fx= _g90433_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__0)))
                        _g90434_))
                ((let () (declare (not safe)) (##fx= _g90433_ 1))
                 (apply (lambda (_%manifest90426%_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__1 _%manifest90426%_)))
                        _g90434_))
                ((let () (declare (not safe)) (##fx= _g90433_ 2))
                 (apply (lambda (_%manifest90430%_ _%port90431%_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__%
                             _%manifest90430%_
                             _%port90431%_)))
                        _g90434_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g90434_))))))
    (define build-manifest/layer
      (lambda (_%layer90369%_)
        (let ((_%l90371%_ (assoc _%layer90369%_ build-manifest)))
          (if _%l90371%_ (cons _%l90371%_ '()) '()))))
    (define build-manifest/head
      (lambda ()
        (cons (let () (declare (not safe)) (##car build-manifest)) '())))
    (define build-manifest-string__%
      (lambda (_%manifest90356%_)
        (call-with-output-string
         '()
         (lambda (_%p90358%_)
           (let ()
             (declare (not safe))
             (display-build-manifest__% _%manifest90356%_ _%p90358%_))))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_%manifest90364%_ build-manifest))
          (declare (not safe))
          (build-manifest-string__% _%manifest90364%_))))
    (define build-manifest-string
      (lambda _g90436_
        (let ((_g90435_ (let () (declare (not safe)) (##length _g90436_))))
          (cond ((let () (declare (not safe)) (##fx= _g90435_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__0)))
                        _g90436_))
                ((let () (declare (not safe)) (##fx= _g90435_ 1))
                 (apply (lambda (_%manifest90366%_)
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__% _%manifest90366%_)))
                        _g90436_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g90436_))))))
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
        (let ((_%$e90350%_
               (let () (declare (not safe)) (##getenv '"GERBIL_HOME" '#f))))
          (if _%$e90350%_ _%$e90350%_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_%$e90346%_
               (let () (declare (not safe)) (##getenv '"GERBIL_PATH" '#f))))
          (if _%$e90346%_ _%$e90346%_ (path-expand '"~/.gerbil")))))
    (define __smp? '#!void)
    (define gerbil-runtime-smp?
      (lambda ()
        (if (let () (declare (not safe)) (eq? __smp? '#!void))
            (set! __smp?
                  (if (let ((__tmp90437
                             (let ((__tmp90438 (configure-command-string)))
                               (declare (not safe))
                               (__string-split __tmp90438 '#\'))))
                        (declare (not safe))
                        (##member '"--enable-smp" __tmp90437))
                      '#t
                      '#f))
            '#!void)
        __smp?))))
