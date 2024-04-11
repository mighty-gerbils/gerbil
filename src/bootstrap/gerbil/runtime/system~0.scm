(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1712823025)
  (begin
    (define gerbil-version-string (lambda () '"v0.18.1-95-g96dd34b0a"))
    (define gerbil-system-manifest
      (cons (cons '"Gerbil" (gerbil-version-string))
            (cons (cons '"Gambit" (system-version-string)) '())))
    (define build-manifest gerbil-system-manifest)
    (set! build-manifest build-manifest)
    (define display-build-manifest__%
      (lambda (_%manifest92574%_ _%port92575%_)
        (let ((_%p92581%_
               (lambda (_%g9257692578%_)
                 (display _%g9257692578%_ _%port92575%_)))
              (_%l92582%_ (length _%manifest92574%_))
              (_%i92583%_ '0))
          (for-each
           (lambda (_%layer92585%_)
             (if (zero? _%i92583%_)
                 '#!void
                 (if (= _%i92583%_ '1)
                     (_%p92581%_ '" on ")
                     (_%p92581%_ '", ")))
             (let* ((_%layer9258992596%_ _%layer92585%_)
                    (_%E9259192600%_
                     (lambda ()
                       (error '"No clause matching"
                              _%layer9258992596%_
                              '([name . version]))
                       '#!void))
                    (_%K9259292606%_
                     (lambda (_%version92603%_ _%name92604%_)
                       (_%p92581%_ _%name92604%_)
                       (_%p92581%_ '" ")
                       (_%p92581%_ _%version92603%_))))
               (if (let () (declare (not safe)) (##pair? _%layer9258992596%_))
                   (let ((_%hd9259392609%_
                          (let ()
                            (declare (not safe))
                            (##car _%layer9258992596%_)))
                         (_%tl9259492611%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%layer9258992596%_))))
                     (let* ((_%name92614%_ _%hd9259392609%_)
                            (_%version92616%_ _%tl9259492611%_))
                       (_%K9259292606%_ _%version92616%_ _%name92614%_)))
                   (_%E9259192600%_)))
             (set! _%i92583%_ (+ _%i92583%_ '1)))
           _%manifest92574%_))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_%manifest92622%_ build-manifest)
               (_%port92624%_ (current-output-port)))
          (display-build-manifest__% _%manifest92622%_ _%port92624%_))))
    (define display-build-manifest__1
      (lambda (_%manifest92626%_)
        (let ((_%port92628%_ (current-output-port)))
          (display-build-manifest__% _%manifest92626%_ _%port92628%_))))
    (define display-build-manifest
      (lambda _g92634_
        (let ((_g92633_ (let () (declare (not safe)) (##length _g92634_))))
          (cond ((let () (declare (not safe)) (##fx= _g92633_ 0))
                 (apply display-build-manifest__0 _g92634_))
                ((let () (declare (not safe)) (##fx= _g92633_ 1))
                 (apply display-build-manifest__1 _g92634_))
                ((let () (declare (not safe)) (##fx= _g92633_ 2))
                 (apply display-build-manifest__% _g92634_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g92634_))))))
    (define build-manifest/layer
      (lambda (_%layer92569%_)
        (let ((_%l92571%_ (assoc _%layer92569%_ build-manifest)))
          (if _%l92571%_ (cons _%l92571%_ '()) '()))))
    (define build-manifest/head
      (lambda ()
        (cons (let () (declare (not safe)) (##car build-manifest)) '())))
    (define build-manifest-string__%
      (lambda (_%manifest92556%_)
        (call-with-output-string
         '()
         (lambda (_%p92558%_)
           (display-build-manifest__% _%manifest92556%_ _%p92558%_)))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_%manifest92564%_ build-manifest))
          (build-manifest-string__% _%manifest92564%_))))
    (define build-manifest-string
      (lambda _g92636_
        (let ((_g92635_ (let () (declare (not safe)) (##length _g92636_))))
          (cond ((let () (declare (not safe)) (##fx= _g92635_ 0))
                 (apply build-manifest-string__0 _g92636_))
                ((let () (declare (not safe)) (##fx= _g92635_ 1))
                 (apply build-manifest-string__% _g92636_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g92636_))))))
    (define gerbil-system-version-string
      (lambda () (build-manifest-string__% gerbil-system-manifest)))
    (define gerbil-greeting (gerbil-system-version-string))
    (set! gerbil-greeting gerbil-greeting)
    (define gerbil-system (lambda () 'gerbil-gambit))
    (define gerbil-home
      (lambda ()
        (let ((_%$e92550%_
               (let () (declare (not safe)) (##getenv '"GERBIL_HOME" '#f))))
          (if _%$e92550%_ _%$e92550%_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_%$e92546%_
               (let () (declare (not safe)) (##getenv '"GERBIL_PATH" '#f))))
          (if _%$e92546%_ _%$e92546%_ (path-expand '"~/.gerbil")))))
    (define __smp? '#!void)
    (define gerbil-runtime-smp?
      (lambda ()
        (if (eq? __smp? '#!void)
            (set! __smp?
                  (if (let ((__tmp92637
                             (let ((__tmp92638 (configure-command-string)))
                               (declare (not safe))
                               (__string-split __tmp92638 '#\'))))
                        (declare (not safe))
                        (##member '"--enable-smp" __tmp92637))
                      '#t
                      '#f))
            '#!void)
        __smp?))))
