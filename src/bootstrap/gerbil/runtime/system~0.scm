(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1712256085)
  (begin
    (define gerbil-version-string (lambda () '"v0.18.1-173-g0dde9616"))
    (define gerbil-system-manifest
      (cons (cons '"Gerbil"
                  (let () (declare (not safe)) (gerbil-version-string)))
            (cons (cons '"Gambit" (system-version-string)) '())))
    (define build-manifest gerbil-system-manifest)
    (set! build-manifest build-manifest)
    (define display-build-manifest__%
      (lambda (_%manifest91078%_ _%port91079%_)
        (let ((_%p91085%_
               (lambda (_%g9108091082%_)
                 (display _%g9108091082%_ _%port91079%_)))
              (_%l91086%_ (length _%manifest91078%_))
              (_%i91087%_ '0))
          (for-each
           (lambda (_%layer91089%_)
             (if (zero? _%i91087%_)
                 (let () '#!void)
                 (if (= _%i91087%_ '1)
                     (let () (declare (not safe)) (_%p91085%_ '" on "))
                     (let () (declare (not safe)) (_%p91085%_ '", "))))
             (let* ((_%layer9109391100%_ _%layer91089%_)
                    (_%E9109591104%_
                     (lambda ()
                       (error '"No clause matching"
                              _%layer9109391100%_
                              '([name . version]))
                       '#!void))
                    (_%K9109691110%_
                     (lambda (_%version91107%_ _%name91108%_)
                       (let () (declare (not safe)) (_%p91085%_ _%name91108%_))
                       (let () (declare (not safe)) (_%p91085%_ '" "))
                       (let ()
                         (declare (not safe))
                         (_%p91085%_ _%version91107%_)))))
               (if (let () (declare (not safe)) (##pair? _%layer9109391100%_))
                   (let ((_%hd9109791113%_
                          (let ()
                            (declare (not safe))
                            (##car _%layer9109391100%_)))
                         (_%tl9109891115%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%layer9109391100%_))))
                     (let* ((_%name91118%_ _%hd9109791113%_)
                            (_%version91120%_ _%tl9109891115%_))
                       (declare (not safe))
                       (_%K9109691110%_ _%version91120%_ _%name91118%_)))
                   (let () (declare (not safe)) (_%E9109591104%_))))
             (set! _%i91087%_ (+ _%i91087%_ '1)))
           _%manifest91078%_))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_%manifest91126%_ build-manifest)
               (_%port91128%_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _%manifest91126%_ _%port91128%_))))
    (define display-build-manifest__1
      (lambda (_%manifest91130%_)
        (let ((_%port91132%_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _%manifest91130%_ _%port91132%_))))
    (define display-build-manifest
      (lambda _g91138_
        (let ((_g91137_ (let () (declare (not safe)) (##length _g91138_))))
          (cond ((let () (declare (not safe)) (##fx= _g91137_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__0)))
                        _g91138_))
                ((let () (declare (not safe)) (##fx= _g91137_ 1))
                 (apply (lambda (_%manifest91130%_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__1 _%manifest91130%_)))
                        _g91138_))
                ((let () (declare (not safe)) (##fx= _g91137_ 2))
                 (apply (lambda (_%manifest91134%_ _%port91135%_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__%
                             _%manifest91134%_
                             _%port91135%_)))
                        _g91138_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g91138_))))))
    (define build-manifest/layer
      (lambda (_%layer91073%_)
        (let ((_%l91075%_ (assoc _%layer91073%_ build-manifest)))
          (if _%l91075%_ (cons _%l91075%_ '()) '()))))
    (define build-manifest/head
      (lambda ()
        (cons (let () (declare (not safe)) (##car build-manifest)) '())))
    (define build-manifest-string__%
      (lambda (_%manifest91060%_)
        (call-with-output-string
         '()
         (lambda (_%p91062%_)
           (let ()
             (declare (not safe))
             (display-build-manifest__% _%manifest91060%_ _%p91062%_))))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_%manifest91068%_ build-manifest))
          (declare (not safe))
          (build-manifest-string__% _%manifest91068%_))))
    (define build-manifest-string
      (lambda _g91140_
        (let ((_g91139_ (let () (declare (not safe)) (##length _g91140_))))
          (cond ((let () (declare (not safe)) (##fx= _g91139_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__0)))
                        _g91140_))
                ((let () (declare (not safe)) (##fx= _g91139_ 1))
                 (apply (lambda (_%manifest91070%_)
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__% _%manifest91070%_)))
                        _g91140_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g91140_))))))
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
        (let ((_%$e91054%_
               (let () (declare (not safe)) (##getenv '"GERBIL_HOME" '#f))))
          (if _%$e91054%_ _%$e91054%_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_%$e91050%_
               (let () (declare (not safe)) (##getenv '"GERBIL_PATH" '#f))))
          (if _%$e91050%_ _%$e91050%_ (path-expand '"~/.gerbil")))))
    (define __smp? '#!void)
    (define gerbil-runtime-smp?
      (lambda ()
        (if (let () (declare (not safe)) (eq? __smp? '#!void))
            (set! __smp?
                  (if (let ((__tmp91141
                             (let ((__tmp91142 (configure-command-string)))
                               (declare (not safe))
                               (__string-split __tmp91142 '#\'))))
                        (declare (not safe))
                        (##member '"--enable-smp" __tmp91141))
                      '#t
                      '#f))
            '#!void)
        __smp?))))
