(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1712155160)
  (begin
    (define gerbil-version-string (lambda () '"v0.18.1-163-g867d8335"))
    (define gerbil-system-manifest
      (cons (cons '"Gerbil"
                  (let () (declare (not safe)) (gerbil-version-string)))
            (cons (cons '"Gambit" (system-version-string)) '())))
    (define build-manifest gerbil-system-manifest)
    (set! build-manifest build-manifest)
    (define display-build-manifest__%
      (lambda (_%manifest90505%_ _%port90506%_)
        (let ((_%p90512%_
               (lambda (_%g9050790509%_)
                 (display _%g9050790509%_ _%port90506%_)))
              (_%l90513%_ (length _%manifest90505%_))
              (_%i90514%_ '0))
          (for-each
           (lambda (_%layer90516%_)
             (if (zero? _%i90514%_)
                 (let () '#!void)
                 (if (= _%i90514%_ '1)
                     (let () (declare (not safe)) (_%p90512%_ '" on "))
                     (let () (declare (not safe)) (_%p90512%_ '", "))))
             (let* ((_%layer9052090527%_ _%layer90516%_)
                    (_%E9052290531%_
                     (lambda ()
                       (error '"No clause matching"
                              _%layer9052090527%_
                              '([name . version]))
                       '#!void))
                    (_%K9052390537%_
                     (lambda (_%version90534%_ _%name90535%_)
                       (let () (declare (not safe)) (_%p90512%_ _%name90535%_))
                       (let () (declare (not safe)) (_%p90512%_ '" "))
                       (let ()
                         (declare (not safe))
                         (_%p90512%_ _%version90534%_)))))
               (if (let () (declare (not safe)) (##pair? _%layer9052090527%_))
                   (let ((_%hd9052490540%_
                          (let ()
                            (declare (not safe))
                            (##car _%layer9052090527%_)))
                         (_%tl9052590542%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%layer9052090527%_))))
                     (let* ((_%name90545%_ _%hd9052490540%_)
                            (_%version90547%_ _%tl9052590542%_))
                       (declare (not safe))
                       (_%K9052390537%_ _%version90547%_ _%name90545%_)))
                   (let () (declare (not safe)) (_%E9052290531%_))))
             (set! _%i90514%_ (+ _%i90514%_ '1)))
           _%manifest90505%_))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_%manifest90553%_ build-manifest)
               (_%port90555%_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _%manifest90553%_ _%port90555%_))))
    (define display-build-manifest__1
      (lambda (_%manifest90557%_)
        (let ((_%port90559%_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _%manifest90557%_ _%port90559%_))))
    (define display-build-manifest
      (lambda _g90565_
        (let ((_g90564_ (let () (declare (not safe)) (##length _g90565_))))
          (cond ((let () (declare (not safe)) (##fx= _g90564_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__0)))
                        _g90565_))
                ((let () (declare (not safe)) (##fx= _g90564_ 1))
                 (apply (lambda (_%manifest90557%_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__1 _%manifest90557%_)))
                        _g90565_))
                ((let () (declare (not safe)) (##fx= _g90564_ 2))
                 (apply (lambda (_%manifest90561%_ _%port90562%_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__%
                             _%manifest90561%_
                             _%port90562%_)))
                        _g90565_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g90565_))))))
    (define build-manifest/layer
      (lambda (_%layer90500%_)
        (let ((_%l90502%_ (assoc _%layer90500%_ build-manifest)))
          (if _%l90502%_ (cons _%l90502%_ '()) '()))))
    (define build-manifest/head
      (lambda ()
        (cons (let () (declare (not safe)) (##car build-manifest)) '())))
    (define build-manifest-string__%
      (lambda (_%manifest90487%_)
        (call-with-output-string
         '()
         (lambda (_%p90489%_)
           (let ()
             (declare (not safe))
             (display-build-manifest__% _%manifest90487%_ _%p90489%_))))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_%manifest90495%_ build-manifest))
          (declare (not safe))
          (build-manifest-string__% _%manifest90495%_))))
    (define build-manifest-string
      (lambda _g90567_
        (let ((_g90566_ (let () (declare (not safe)) (##length _g90567_))))
          (cond ((let () (declare (not safe)) (##fx= _g90566_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__0)))
                        _g90567_))
                ((let () (declare (not safe)) (##fx= _g90566_ 1))
                 (apply (lambda (_%manifest90497%_)
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__% _%manifest90497%_)))
                        _g90567_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g90567_))))))
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
        (let ((_%$e90481%_
               (let () (declare (not safe)) (##getenv '"GERBIL_HOME" '#f))))
          (if _%$e90481%_ _%$e90481%_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_%$e90477%_
               (let () (declare (not safe)) (##getenv '"GERBIL_PATH" '#f))))
          (if _%$e90477%_ _%$e90477%_ (path-expand '"~/.gerbil")))))
    (define __smp? '#!void)
    (define gerbil-runtime-smp?
      (lambda ()
        (if (let () (declare (not safe)) (eq? __smp? '#!void))
            (set! __smp?
                  (if (let ((__tmp90568
                             (let ((__tmp90569 (configure-command-string)))
                               (declare (not safe))
                               (__string-split __tmp90569 '#\'))))
                        (declare (not safe))
                        (##member '"--enable-smp" __tmp90568))
                      '#t
                      '#f))
            '#!void)
        __smp?))))
