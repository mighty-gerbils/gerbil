(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1712846032)
  (begin
    (define gerbil-version-string (lambda () '"v0.18.1-102-g9e62e9cc8"))
    (define gerbil-system-manifest
      (cons (cons '"Gerbil" (gerbil-version-string))
            (cons (cons '"Gambit" (system-version-string)) '())))
    (define build-manifest gerbil-system-manifest)
    (set! build-manifest build-manifest)
    (define display-build-manifest__%
      (lambda (_%manifest92576%_ _%port92577%_)
        (let ((_%p92583%_
               (lambda (_%g9257892580%_)
                 (display _%g9257892580%_ _%port92577%_)))
              (_%l92584%_ (length _%manifest92576%_))
              (_%i92585%_ '0))
          (for-each
           (lambda (_%layer92587%_)
             (if (zero? _%i92585%_)
                 '#!void
                 (if (= _%i92585%_ '1)
                     (_%p92583%_ '" on ")
                     (_%p92583%_ '", ")))
             (let* ((_%layer9259192598%_ _%layer92587%_)
                    (_%E9259392602%_
                     (lambda ()
                       (error '"No clause matching"
                              _%layer9259192598%_
                              '([name . version]))
                       '#!void))
                    (_%K9259492608%_
                     (lambda (_%version92605%_ _%name92606%_)
                       (_%p92583%_ _%name92606%_)
                       (_%p92583%_ '" ")
                       (_%p92583%_ _%version92605%_))))
               (if (let () (declare (not safe)) (##pair? _%layer9259192598%_))
                   (let ((_%hd9259592611%_
                          (let ()
                            (declare (not safe))
                            (##car _%layer9259192598%_)))
                         (_%tl9259692613%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%layer9259192598%_))))
                     (let* ((_%name92616%_ _%hd9259592611%_)
                            (_%version92618%_ _%tl9259692613%_))
                       (_%K9259492608%_ _%version92618%_ _%name92616%_)))
                   (_%E9259392602%_)))
             (set! _%i92585%_ (+ _%i92585%_ '1)))
           _%manifest92576%_))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_%manifest92624%_ build-manifest)
               (_%port92626%_ (current-output-port)))
          (display-build-manifest__% _%manifest92624%_ _%port92626%_))))
    (define display-build-manifest__1
      (lambda (_%manifest92628%_)
        (let ((_%port92630%_ (current-output-port)))
          (display-build-manifest__% _%manifest92628%_ _%port92630%_))))
    (define display-build-manifest
      (lambda _g92636_
        (let ((_g92635_ (let () (declare (not safe)) (##length _g92636_))))
          (cond ((let () (declare (not safe)) (##fx= _g92635_ 0))
                 (apply display-build-manifest__0 _g92636_))
                ((let () (declare (not safe)) (##fx= _g92635_ 1))
                 (apply display-build-manifest__1 _g92636_))
                ((let () (declare (not safe)) (##fx= _g92635_ 2))
                 (apply display-build-manifest__% _g92636_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g92636_))))))
    (define build-manifest/layer
      (lambda (_%layer92571%_)
        (let ((_%l92573%_ (assoc _%layer92571%_ build-manifest)))
          (if _%l92573%_ (cons _%l92573%_ '()) '()))))
    (define build-manifest/head
      (lambda ()
        (cons (let () (declare (not safe)) (##car build-manifest)) '())))
    (define build-manifest-string__%
      (lambda (_%manifest92558%_)
        (call-with-output-string
         '()
         (lambda (_%p92560%_)
           (display-build-manifest__% _%manifest92558%_ _%p92560%_)))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_%manifest92566%_ build-manifest))
          (build-manifest-string__% _%manifest92566%_))))
    (define build-manifest-string
      (lambda _g92638_
        (let ((_g92637_ (let () (declare (not safe)) (##length _g92638_))))
          (cond ((let () (declare (not safe)) (##fx= _g92637_ 0))
                 (apply build-manifest-string__0 _g92638_))
                ((let () (declare (not safe)) (##fx= _g92637_ 1))
                 (apply build-manifest-string__% _g92638_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g92638_))))))
    (define gerbil-system-version-string
      (lambda () (build-manifest-string__% gerbil-system-manifest)))
    (define gerbil-greeting (gerbil-system-version-string))
    (set! gerbil-greeting gerbil-greeting)
    (define gerbil-system (lambda () 'gerbil-gambit))
    (define gerbil-home
      (lambda ()
        (let ((_%$e92552%_
               (let () (declare (not safe)) (##getenv '"GERBIL_HOME" '#f))))
          (if _%$e92552%_ _%$e92552%_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_%$e92548%_
               (let () (declare (not safe)) (##getenv '"GERBIL_PATH" '#f))))
          (if _%$e92548%_ _%$e92548%_ (path-expand '"~/.gerbil")))))
    (define __smp? '#!void)
    (define gerbil-runtime-smp?
      (lambda ()
        (if (eq? __smp? '#!void)
            (set! __smp?
                  (if (let ((__tmp92639
                             (let ((__tmp92640 (configure-command-string)))
                               (declare (not safe))
                               (__string-split __tmp92640 '#\'))))
                        (declare (not safe))
                        (##member '"--enable-smp" __tmp92639))
                      '#t
                      '#f))
            '#!void)
        __smp?))))
