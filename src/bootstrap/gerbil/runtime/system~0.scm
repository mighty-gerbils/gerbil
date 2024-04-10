(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1712786277)
  (begin
    (define gerbil-version-string (lambda () '"v0.18.1-97-ga6de8aeb8"))
    (define gerbil-system-manifest
      (cons (cons '"Gerbil" (gerbil-version-string))
            (cons (cons '"Gambit" (system-version-string)) '())))
    (define build-manifest gerbil-system-manifest)
    (set! build-manifest build-manifest)
    (define display-build-manifest__%
      (lambda (_%manifest92575%_ _%port92576%_)
        (let ((_%p92582%_
               (lambda (_%g9257792579%_)
                 (display _%g9257792579%_ _%port92576%_)))
              (_%l92583%_ (length _%manifest92575%_))
              (_%i92584%_ '0))
          (for-each
           (lambda (_%layer92586%_)
             (if (zero? _%i92584%_)
                 '#!void
                 (if (= _%i92584%_ '1)
                     (_%p92582%_ '" on ")
                     (_%p92582%_ '", ")))
             (let* ((_%layer9259092597%_ _%layer92586%_)
                    (_%E9259292601%_
                     (lambda ()
                       (error '"No clause matching"
                              _%layer9259092597%_
                              '([name . version]))
                       '#!void))
                    (_%K9259392607%_
                     (lambda (_%version92604%_ _%name92605%_)
                       (_%p92582%_ _%name92605%_)
                       (_%p92582%_ '" ")
                       (_%p92582%_ _%version92604%_))))
               (if (let () (declare (not safe)) (##pair? _%layer9259092597%_))
                   (let ((_%hd9259492610%_
                          (let ()
                            (declare (not safe))
                            (##car _%layer9259092597%_)))
                         (_%tl9259592612%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%layer9259092597%_))))
                     (let* ((_%name92615%_ _%hd9259492610%_)
                            (_%version92617%_ _%tl9259592612%_))
                       (_%K9259392607%_ _%version92617%_ _%name92615%_)))
                   (_%E9259292601%_)))
             (set! _%i92584%_ (+ _%i92584%_ '1)))
           _%manifest92575%_))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_%manifest92623%_ build-manifest)
               (_%port92625%_ (current-output-port)))
          (display-build-manifest__% _%manifest92623%_ _%port92625%_))))
    (define display-build-manifest__1
      (lambda (_%manifest92627%_)
        (let ((_%port92629%_ (current-output-port)))
          (display-build-manifest__% _%manifest92627%_ _%port92629%_))))
    (define display-build-manifest
      (lambda _g92635_
        (let ((_g92634_ (let () (declare (not safe)) (##length _g92635_))))
          (cond ((let () (declare (not safe)) (##fx= _g92634_ 0))
                 (apply display-build-manifest__0 _g92635_))
                ((let () (declare (not safe)) (##fx= _g92634_ 1))
                 (apply display-build-manifest__1 _g92635_))
                ((let () (declare (not safe)) (##fx= _g92634_ 2))
                 (apply display-build-manifest__% _g92635_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g92635_))))))
    (define build-manifest/layer
      (lambda (_%layer92570%_)
        (let ((_%l92572%_ (assoc _%layer92570%_ build-manifest)))
          (if _%l92572%_ (cons _%l92572%_ '()) '()))))
    (define build-manifest/head
      (lambda ()
        (cons (let () (declare (not safe)) (##car build-manifest)) '())))
    (define build-manifest-string__%
      (lambda (_%manifest92557%_)
        (call-with-output-string
         '()
         (lambda (_%p92559%_)
           (display-build-manifest__% _%manifest92557%_ _%p92559%_)))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_%manifest92565%_ build-manifest))
          (build-manifest-string__% _%manifest92565%_))))
    (define build-manifest-string
      (lambda _g92637_
        (let ((_g92636_ (let () (declare (not safe)) (##length _g92637_))))
          (cond ((let () (declare (not safe)) (##fx= _g92636_ 0))
                 (apply build-manifest-string__0 _g92637_))
                ((let () (declare (not safe)) (##fx= _g92636_ 1))
                 (apply build-manifest-string__% _g92637_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g92637_))))))
    (define gerbil-system-version-string
      (lambda () (build-manifest-string__% gerbil-system-manifest)))
    (define gerbil-greeting (gerbil-system-version-string))
    (set! gerbil-greeting gerbil-greeting)
    (define gerbil-system (lambda () 'gerbil-gambit))
    (define gerbil-home
      (lambda ()
        (let ((_%$e92551%_
               (let () (declare (not safe)) (##getenv '"GERBIL_HOME" '#f))))
          (if _%$e92551%_ _%$e92551%_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_%$e92547%_
               (let () (declare (not safe)) (##getenv '"GERBIL_PATH" '#f))))
          (if _%$e92547%_ _%$e92547%_ (path-expand '"~/.gerbil")))))
    (define __smp? '#!void)
    (define gerbil-runtime-smp?
      (lambda ()
        (if (eq? __smp? '#!void)
            (set! __smp?
                  (if (let ((__tmp92638
                             (let ((__tmp92639 (configure-command-string)))
                               (declare (not safe))
                               (__string-split __tmp92639 '#\'))))
                        (declare (not safe))
                        (##member '"--enable-smp" __tmp92638))
                      '#t
                      '#f))
            '#!void)
        __smp?))))
