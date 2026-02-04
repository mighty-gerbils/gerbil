(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1770243148)
  (begin
    (define gerbil-version-string (lambda () '"v0.19-dev-19-g9b09de8ce"))
    (define gerbil-system-manifest
      (cons (cons '"Gerbil" (gerbil-version-string))
            (cons (cons '"Gambit" (system-version-string)) '())))
    (define __build-manifest gerbil-system-manifest)
    (define build-manifest (lambda () __build-manifest))
    (define build-manifest-set!
      (lambda (_%new-value109305%_)
        (if (list? _%new-value109305%_)
            (let ((_%new-value109309%_ _%new-value109305%_))
              (__build-manifest-set! _%new-value109309%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/system
               'contract:
               'list?
               'value:
               _%new-value109305%_)
              '#!void))))
    (define __build-manifest-set!
      (lambda (_%new-value109292%_)
        (let ((_%new-value109296%_ _%new-value109292%_))
          (set! __build-manifest _%new-value109296%_))))
    (define display-build-manifest__%
      (lambda (_%manifest109252%_ _%port109253%_)
        (if (list? _%manifest109252%_)
            (let ((_%manifest109257%_ _%manifest109252%_))
              (if (port? _%port109253%_)
                  (let ((_%port109267%_ _%port109253%_))
                    (__display-build-manifest__%
                     _%manifest109257%_
                     _%port109267%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/system.ss\"@19.31-19.35"
                     'contract:
                     'port?
                     'value:
                     _%port109253%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/system.ss\"@18.31-18.39"
               'contract:
               'list?
               'value:
               _%manifest109252%_)
              '#!void))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_%manifest109281%_ __build-manifest)
               (_%port109283%_ (current-output-port)))
          (__display-build-manifest__% _%manifest109281%_ _%port109283%_))))
    (define display-build-manifest__1
      (lambda (_%manifest109285%_)
        (let ((_%port109287%_ (current-output-port)))
          (display-build-manifest__% _%manifest109285%_ _%port109287%_))))
    (define display-build-manifest
      (lambda _g109320_
        (let ((_g109321_ (let () (declare (not safe)) (##length _g109320_))))
          (cond ((let () (declare (not safe)) (##fx= _g109321_ 0))
                 (apply display-build-manifest__0 _g109320_))
                ((let () (declare (not safe)) (##fx= _g109321_ 1))
                 (apply display-build-manifest__1 _g109320_))
                ((let () (declare (not safe)) (##fx= _g109321_ 2))
                 (apply display-build-manifest__% _g109320_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g109320_))))))
    (define __display-build-manifest__%
      (lambda (_%manifest109174%_ _%port109175%_)
        (let* ((_%manifest109178%_ _%manifest109174%_)
               (_%port109186%_ _%port109175%_))
          (let ((_%p109199%_
                 (lambda (_%g109194109196%_)
                   (display _%g109194109196%_ _%port109186%_)))
                (_%l109200%_
                 (let () (declare (not safe)) (##length _%manifest109178%_)))
                (_%i109201%_ '0))
            (let ((__tmp109322
                   (lambda (_%layer109203%_)
                     (if (zero? _%i109201%_)
                         '#!void
                         (if (= _%i109201%_ '1)
                             (_%p109199%_ '" on ")
                             (_%p109199%_ '", ")))
                     (let* ((_%layer109207109214%_ _%layer109203%_)
                            (_%E109209109218%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%layer109207109214%_
                                      '([name . version]))
                               '#!void))
                            (_%K109210109224%_
                             (lambda (_%version109221%_ _%name109222%_)
                               (_%p109199%_ _%name109222%_)
                               (_%p109199%_ '" ")
                               (_%p109199%_ _%version109221%_))))
                       (if (pair? _%layer109207109214%_)
                           (let ((_%hd109211109227%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%layer109207109214%_)))
                                 (_%tl109212109229%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%layer109207109214%_))))
                             (let* ((_%name109232%_ _%hd109211109227%_)
                                    (_%version109234%_ _%tl109212109229%_))
                               (_%K109210109224%_
                                _%version109234%_
                                _%name109232%_)))
                           (_%E109209109218%_)))
                     (set! _%i109201%_ (+ _%i109201%_ '1)))))
              (declare (not safe))
              (##for-each __tmp109322 _%manifest109178%_))))))
    (define __display-build-manifest__0
      (lambda ()
        (let* ((_%manifest109240%_ __build-manifest)
               (_%port109242%_ (current-output-port)))
          (__display-build-manifest__% _%manifest109240%_ _%port109242%_))))
    (define __display-build-manifest__1
      (lambda (_%manifest109244%_)
        (let ((_%port109246%_ (current-output-port)))
          (__display-build-manifest__% _%manifest109244%_ _%port109246%_))))
    (define __display-build-manifest
      (lambda _g109323_
        (let ((_g109324_ (let () (declare (not safe)) (##length _g109323_))))
          (cond ((let () (declare (not safe)) (##fx= _g109324_ 0))
                 (apply __display-build-manifest__0 _g109323_))
                ((let () (declare (not safe)) (##fx= _g109324_ 1))
                 (apply __display-build-manifest__1 _g109323_))
                ((let () (declare (not safe)) (##fx= _g109324_ 2))
                 (apply __display-build-manifest__% _g109323_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __display-build-manifest
                  _g109323_))))))
    (define build-manifest/layer
      (lambda (_%layer109169%_)
        (let ((_%l109171%_ (assoc _%layer109169%_ __build-manifest)))
          (if _%l109171%_ (cons _%l109171%_ '()) '()))))
    (define build-manifest/head (lambda () (cons (car __build-manifest) '())))
    (define build-manifest-string__%
      (lambda (_%manifest109146%_)
        (if (list? _%manifest109146%_)
            (let ((_%manifest109150%_ _%manifest109146%_))
              (__build-manifest-string__% _%manifest109150%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/system.ss\"@40.30-40.38"
               'contract:
               'list?
               'value:
               _%manifest109146%_)
              '#!void))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_%manifest109164%_ __build-manifest))
          (__build-manifest-string__% _%manifest109164%_))))
    (define build-manifest-string
      (lambda _g109325_
        (let ((_g109326_ (let () (declare (not safe)) (##length _g109325_))))
          (cond ((let () (declare (not safe)) (##fx= _g109326_ 0))
                 (apply build-manifest-string__0 _g109325_))
                ((let () (declare (not safe)) (##fx= _g109326_ 1))
                 (apply build-manifest-string__% _g109325_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g109325_))))))
    (define __build-manifest-string__%
      (lambda (_%manifest109123%_)
        (let ((_%manifest109126%_ _%manifest109123%_))
          (call-with-output-string
           '()
           (lambda (_%p109135%_)
             (display-build-manifest__% _%manifest109126%_ _%p109135%_))))))
    (define __build-manifest-string__0
      (lambda ()
        (let ((_%manifest109141%_ __build-manifest))
          (__build-manifest-string__% _%manifest109141%_))))
    (define __build-manifest-string
      (lambda _g109327_
        (let ((_g109328_ (let () (declare (not safe)) (##length _g109327_))))
          (cond ((let () (declare (not safe)) (##fx= _g109328_ 0))
                 (apply __build-manifest-string__0 _g109327_))
                ((let () (declare (not safe)) (##fx= _g109328_ 1))
                 (apply __build-manifest-string__% _g109327_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __build-manifest-string
                  _g109327_))))))
    (define gerbil-system-version-string
      (lambda () (__build-manifest-string__% gerbil-system-manifest)))
    (define __gerbil-greeting (gerbil-system-version-string))
    (define gerbil-greeting (lambda () __gerbil-greeting))
    (define gerbil-greeting-set!
      (lambda (_%new-value109105%_)
        (if (string? _%new-value109105%_)
            (let ((_%new-value109109%_ _%new-value109105%_))
              (__gerbil-greeting-set! _%new-value109109%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/system
               'contract:
               'string?
               'value:
               _%new-value109105%_)
              '#!void))))
    (define __gerbil-greeting-set!
      (lambda (_%new-value109091%_)
        (let ((_%new-value109095%_ _%new-value109091%_))
          (set! __gerbil-greeting _%new-value109095%_))))
    (define gerbil-system (lambda () 'gerbil-gambit))
    (define gerbil-home
      (lambda ()
        (let ((_%$e109087%_
               (let () (declare (not safe)) (##getenv '"GERBIL_HOME" '#f))))
          (if _%$e109087%_ _%$e109087%_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_%$e109083%_
               (let () (declare (not safe)) (##getenv '"GERBIL_PATH" '#f))))
          (if _%$e109083%_ _%$e109083%_ (path-expand '"~/.gerbil")))))
    (define __smp?
      (let ((__tmp109329
             (lambda ()
               (if (let ((__tmp109330
                          (let ((__tmp109331 (configure-command-string)))
                            (declare (not safe))
                            (__string-split __tmp109331 '#\'))))
                     (declare (not safe))
                     (##member '"--enable-smp" __tmp109330))
                   '#t
                   '#f))))
        (declare (not safe))
        (__make-atomic-promise __tmp109329)))
    (define gerbil-runtime-smp? (lambda () (force __smp?)))
    (define __DEBUG
      (let () (declare (not safe)) (##getenv '"GERBIL_DEBUG" '#f)))))
