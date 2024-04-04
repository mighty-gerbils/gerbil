(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1712269044)
  (begin
    (define gerbil-version-string (lambda () '"v0.18.1-189-gb06e989e"))
    (define gerbil-system-manifest
      (cons (cons '"Gerbil"
                  (let () (declare (not safe)) (gerbil-version-string)))
            (cons (cons '"Gambit" (system-version-string)) '())))
    (define build-manifest gerbil-system-manifest)
    (set! build-manifest build-manifest)
    (define display-build-manifest__%
      (lambda (_%manifest91016%_ _%port91017%_)
        (let ((_%p91023%_
               (lambda (_%g9101891020%_)
                 (display _%g9101891020%_ _%port91017%_)))
              (_%l91024%_ (length _%manifest91016%_))
              (_%i91025%_ '0))
          (for-each
           (lambda (_%layer91027%_)
             (if (zero? _%i91025%_)
                 (let () '#!void)
                 (if (= _%i91025%_ '1)
                     (let () (declare (not safe)) (_%p91023%_ '" on "))
                     (let () (declare (not safe)) (_%p91023%_ '", "))))
             (let* ((_%layer9103191038%_ _%layer91027%_)
                    (_%E9103391042%_
                     (lambda ()
                       (error '"No clause matching"
                              _%layer9103191038%_
                              '([name . version]))
                       '#!void))
                    (_%K9103491048%_
                     (lambda (_%version91045%_ _%name91046%_)
                       (let () (declare (not safe)) (_%p91023%_ _%name91046%_))
                       (let () (declare (not safe)) (_%p91023%_ '" "))
                       (let ()
                         (declare (not safe))
                         (_%p91023%_ _%version91045%_)))))
               (if (let () (declare (not safe)) (##pair? _%layer9103191038%_))
                   (let ((_%hd9103591051%_
                          (let ()
                            (declare (not safe))
                            (##car _%layer9103191038%_)))
                         (_%tl9103691053%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%layer9103191038%_))))
                     (let* ((_%name91056%_ _%hd9103591051%_)
                            (_%version91058%_ _%tl9103691053%_))
                       (declare (not safe))
                       (_%K9103491048%_ _%version91058%_ _%name91056%_)))
                   (let () (declare (not safe)) (_%E9103391042%_))))
             (set! _%i91025%_ (+ _%i91025%_ '1)))
           _%manifest91016%_))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_%manifest91064%_ build-manifest)
               (_%port91066%_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _%manifest91064%_ _%port91066%_))))
    (define display-build-manifest__1
      (lambda (_%manifest91068%_)
        (let ((_%port91070%_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _%manifest91068%_ _%port91070%_))))
    (define display-build-manifest
      (lambda _g91076_
        (let ((_g91075_ (let () (declare (not safe)) (##length _g91076_))))
          (cond ((let () (declare (not safe)) (##fx= _g91075_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__0)))
                        _g91076_))
                ((let () (declare (not safe)) (##fx= _g91075_ 1))
                 (apply (lambda (_%manifest91068%_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__1 _%manifest91068%_)))
                        _g91076_))
                ((let () (declare (not safe)) (##fx= _g91075_ 2))
                 (apply (lambda (_%manifest91072%_ _%port91073%_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__%
                             _%manifest91072%_
                             _%port91073%_)))
                        _g91076_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g91076_))))))
    (define build-manifest/layer
      (lambda (_%layer91011%_)
        (let ((_%l91013%_ (assoc _%layer91011%_ build-manifest)))
          (if _%l91013%_ (cons _%l91013%_ '()) '()))))
    (define build-manifest/head
      (lambda ()
        (cons (let () (declare (not safe)) (##car build-manifest)) '())))
    (define build-manifest-string__%
      (lambda (_%manifest90998%_)
        (call-with-output-string
         '()
         (lambda (_%p91000%_)
           (let ()
             (declare (not safe))
             (display-build-manifest__% _%manifest90998%_ _%p91000%_))))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_%manifest91006%_ build-manifest))
          (declare (not safe))
          (build-manifest-string__% _%manifest91006%_))))
    (define build-manifest-string
      (lambda _g91078_
        (let ((_g91077_ (let () (declare (not safe)) (##length _g91078_))))
          (cond ((let () (declare (not safe)) (##fx= _g91077_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__0)))
                        _g91078_))
                ((let () (declare (not safe)) (##fx= _g91077_ 1))
                 (apply (lambda (_%manifest91008%_)
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__% _%manifest91008%_)))
                        _g91078_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g91078_))))))
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
        (let ((_%$e90992%_
               (let () (declare (not safe)) (##getenv '"GERBIL_HOME" '#f))))
          (if _%$e90992%_ _%$e90992%_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_%$e90988%_
               (let () (declare (not safe)) (##getenv '"GERBIL_PATH" '#f))))
          (if _%$e90988%_ _%$e90988%_ (path-expand '"~/.gerbil")))))
    (define __smp? '#!void)
    (define gerbil-runtime-smp?
      (lambda ()
        (if (let () (declare (not safe)) (eq? __smp? '#!void))
            (set! __smp?
                  (if (let ((__tmp91079
                             (let ((__tmp91080 (configure-command-string)))
                               (declare (not safe))
                               (__string-split __tmp91080 '#\'))))
                        (declare (not safe))
                        (##member '"--enable-smp" __tmp91079))
                      '#t
                      '#f))
            '#!void)
        __smp?))))
