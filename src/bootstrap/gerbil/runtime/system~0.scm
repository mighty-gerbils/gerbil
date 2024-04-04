(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1712251110)
  (begin
    (define gerbil-version-string (lambda () '"v0.18.1-171-gb7de7795"))
    (define gerbil-system-manifest
      (cons (cons '"Gerbil"
                  (let () (declare (not safe)) (gerbil-version-string)))
            (cons (cons '"Gambit" (system-version-string)) '())))
    (define build-manifest gerbil-system-manifest)
    (set! build-manifest build-manifest)
    (define display-build-manifest__%
      (lambda (_%manifest91070%_ _%port91071%_)
        (let ((_%p91077%_
               (lambda (_%g9107291074%_)
                 (display _%g9107291074%_ _%port91071%_)))
              (_%l91078%_ (length _%manifest91070%_))
              (_%i91079%_ '0))
          (for-each
           (lambda (_%layer91081%_)
             (if (zero? _%i91079%_)
                 (let () '#!void)
                 (if (= _%i91079%_ '1)
                     (let () (declare (not safe)) (_%p91077%_ '" on "))
                     (let () (declare (not safe)) (_%p91077%_ '", "))))
             (let* ((_%layer9108591092%_ _%layer91081%_)
                    (_%E9108791096%_
                     (lambda ()
                       (error '"No clause matching"
                              _%layer9108591092%_
                              '([name . version]))
                       '#!void))
                    (_%K9108891102%_
                     (lambda (_%version91099%_ _%name91100%_)
                       (let () (declare (not safe)) (_%p91077%_ _%name91100%_))
                       (let () (declare (not safe)) (_%p91077%_ '" "))
                       (let ()
                         (declare (not safe))
                         (_%p91077%_ _%version91099%_)))))
               (if (let () (declare (not safe)) (##pair? _%layer9108591092%_))
                   (let ((_%hd9108991105%_
                          (let ()
                            (declare (not safe))
                            (##car _%layer9108591092%_)))
                         (_%tl9109091107%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%layer9108591092%_))))
                     (let* ((_%name91110%_ _%hd9108991105%_)
                            (_%version91112%_ _%tl9109091107%_))
                       (declare (not safe))
                       (_%K9108891102%_ _%version91112%_ _%name91110%_)))
                   (let () (declare (not safe)) (_%E9108791096%_))))
             (set! _%i91079%_ (+ _%i91079%_ '1)))
           _%manifest91070%_))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_%manifest91118%_ build-manifest)
               (_%port91120%_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _%manifest91118%_ _%port91120%_))))
    (define display-build-manifest__1
      (lambda (_%manifest91122%_)
        (let ((_%port91124%_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _%manifest91122%_ _%port91124%_))))
    (define display-build-manifest
      (lambda _g91130_
        (let ((_g91129_ (let () (declare (not safe)) (##length _g91130_))))
          (cond ((let () (declare (not safe)) (##fx= _g91129_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__0)))
                        _g91130_))
                ((let () (declare (not safe)) (##fx= _g91129_ 1))
                 (apply (lambda (_%manifest91122%_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__1 _%manifest91122%_)))
                        _g91130_))
                ((let () (declare (not safe)) (##fx= _g91129_ 2))
                 (apply (lambda (_%manifest91126%_ _%port91127%_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__%
                             _%manifest91126%_
                             _%port91127%_)))
                        _g91130_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g91130_))))))
    (define build-manifest/layer
      (lambda (_%layer91065%_)
        (let ((_%l91067%_ (assoc _%layer91065%_ build-manifest)))
          (if _%l91067%_ (cons _%l91067%_ '()) '()))))
    (define build-manifest/head
      (lambda ()
        (cons (let () (declare (not safe)) (##car build-manifest)) '())))
    (define build-manifest-string__%
      (lambda (_%manifest91052%_)
        (call-with-output-string
         '()
         (lambda (_%p91054%_)
           (let ()
             (declare (not safe))
             (display-build-manifest__% _%manifest91052%_ _%p91054%_))))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_%manifest91060%_ build-manifest))
          (declare (not safe))
          (build-manifest-string__% _%manifest91060%_))))
    (define build-manifest-string
      (lambda _g91132_
        (let ((_g91131_ (let () (declare (not safe)) (##length _g91132_))))
          (cond ((let () (declare (not safe)) (##fx= _g91131_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__0)))
                        _g91132_))
                ((let () (declare (not safe)) (##fx= _g91131_ 1))
                 (apply (lambda (_%manifest91062%_)
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__% _%manifest91062%_)))
                        _g91132_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g91132_))))))
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
        (let ((_%$e91046%_
               (let () (declare (not safe)) (##getenv '"GERBIL_HOME" '#f))))
          (if _%$e91046%_ _%$e91046%_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_%$e91042%_
               (let () (declare (not safe)) (##getenv '"GERBIL_PATH" '#f))))
          (if _%$e91042%_ _%$e91042%_ (path-expand '"~/.gerbil")))))
    (define __smp? '#!void)
    (define gerbil-runtime-smp?
      (lambda ()
        (if (let () (declare (not safe)) (eq? __smp? '#!void))
            (set! __smp?
                  (if (let ((__tmp91133
                             (let ((__tmp91134 (configure-command-string)))
                               (declare (not safe))
                               (__string-split __tmp91134 '#\'))))
                        (declare (not safe))
                        (##member '"--enable-smp" __tmp91133))
                      '#t
                      '#f))
            '#!void)
        __smp?))))
