(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1713000276)
  (begin
    (define gerbil-version-string (lambda () '"v0.18.1-108-g0fee84b24"))
    (define gerbil-system-manifest
      (cons (cons '"Gerbil" (gerbil-version-string))
            (cons (cons '"Gambit" (system-version-string)) '())))
    (define __build-manifest gerbil-system-manifest)
    (define build-manifest-set!
      (lambda (_%new-value93420%_)
        (if (list? _%new-value93420%_)
            (let ((_%new-value93424%_ _%new-value93420%_))
              (__build-manifest-set! _%new-value93424%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/system
               'contract:
               'list?
               'value:
               _%new-value93420%_)
              '#!void))))
    (define __build-manifest-set!
      (lambda (_%new-value93408%_)
        (let ((_%new-value93411%_ _%new-value93408%_))
          (set! __build-manifest _%new-value93411%_))))
    (define display-build-manifest__%
      (lambda (_%manifest93349%_ _%port93350%_)
        (let ((_%p93356%_
               (lambda (_%g9335193353%_)
                 (display _%g9335193353%_ _%port93350%_)))
              (_%l93357%_ (length _%manifest93349%_))
              (_%i93358%_ '0))
          (for-each
           (lambda (_%layer93360%_)
             (if (zero? _%i93358%_)
                 '#!void
                 (if (= _%i93358%_ '1)
                     (_%p93356%_ '" on ")
                     (_%p93356%_ '", ")))
             (let* ((_%layer9336493371%_ _%layer93360%_)
                    (_%E9336693375%_
                     (lambda ()
                       (error '"No clause matching"
                              _%layer9336493371%_
                              '([name . version]))
                       '#!void))
                    (_%K9336793381%_
                     (lambda (_%version93378%_ _%name93379%_)
                       (_%p93356%_ _%name93379%_)
                       (_%p93356%_ '" ")
                       (_%p93356%_ _%version93378%_))))
               (if (let () (declare (not safe)) (##pair? _%layer9336493371%_))
                   (let ((_%hd9336893384%_
                          (let ()
                            (declare (not safe))
                            (##car _%layer9336493371%_)))
                         (_%tl9336993386%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%layer9336493371%_))))
                     (let* ((_%name93389%_ _%hd9336893384%_)
                            (_%version93391%_ _%tl9336993386%_))
                       (_%K9336793381%_ _%version93391%_ _%name93389%_)))
                   (_%E9336693375%_)))
             (set! _%i93358%_ (+ _%i93358%_ '1)))
           _%manifest93349%_))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_%manifest93397%_ __build-manifest)
               (_%port93399%_ (current-output-port)))
          (display-build-manifest__% _%manifest93397%_ _%port93399%_))))
    (define display-build-manifest__1
      (lambda (_%manifest93401%_)
        (let ((_%port93403%_ (current-output-port)))
          (display-build-manifest__% _%manifest93401%_ _%port93403%_))))
    (define display-build-manifest
      (lambda _g93593_
        (let ((_g93592_ (let () (declare (not safe)) (##length _g93593_))))
          (cond ((let () (declare (not safe)) (##fx= _g93592_ 0))
                 (apply display-build-manifest__0 _g93593_))
                ((let () (declare (not safe)) (##fx= _g93592_ 1))
                 (apply display-build-manifest__1 _g93593_))
                ((let () (declare (not safe)) (##fx= _g93592_ 2))
                 (apply display-build-manifest__% _g93593_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g93593_))))))
    (define build-manifest/layer
      (lambda (_%layer93344%_)
        (let ((_%l93346%_ (assoc _%layer93344%_ __build-manifest)))
          (if _%l93346%_ (cons _%l93346%_ '()) '()))))
    (define build-manifest/head (lambda () (cons (car __build-manifest) '())))
    (define build-manifest-string__%
      (lambda (_%manifest93331%_)
        (call-with-output-string
         '()
         (lambda (_%p93333%_)
           (display-build-manifest__% _%manifest93331%_ _%p93333%_)))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_%manifest93339%_ __build-manifest))
          (build-manifest-string__% _%manifest93339%_))))
    (define build-manifest-string
      (lambda _g93595_
        (let ((_g93594_ (let () (declare (not safe)) (##length _g93595_))))
          (cond ((let () (declare (not safe)) (##fx= _g93594_ 0))
                 (apply build-manifest-string__0 _g93595_))
                ((let () (declare (not safe)) (##fx= _g93594_ 1))
                 (apply build-manifest-string__% _g93595_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g93595_))))))
    (define gerbil-system-version-string
      (lambda () (build-manifest-string__% gerbil-system-manifest)))
    (define __gerbil-greeting (gerbil-system-version-string))
    (define gerbil-greeting-set!
      (lambda (_%new-value93315%_)
        (if (string? _%new-value93315%_)
            (let ((_%new-value93319%_ _%new-value93315%_))
              (__gerbil-greeting-set! _%new-value93319%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/system
               'contract:
               'string?
               'value:
               _%new-value93315%_)
              '#!void))))
    (define __gerbil-greeting-set!
      (lambda (_%new-value93303%_)
        (let ((_%new-value93306%_ _%new-value93303%_))
          (set! __gerbil-greeting _%new-value93306%_))))
    (define gerbil-system (lambda () 'gerbil-gambit))
    (define gerbil-home
      (lambda ()
        (let ((_%$e93299%_
               (let () (declare (not safe)) (##getenv '"GERBIL_HOME" '#f))))
          (if _%$e93299%_ _%$e93299%_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_%$e93295%_
               (let () (declare (not safe)) (##getenv '"GERBIL_PATH" '#f))))
          (if _%$e93295%_ _%$e93295%_ (path-expand '"~/.gerbil")))))
    (define __smp? '#!void)
    (define gerbil-runtime-smp?
      (lambda ()
        (if (eq? __smp? '#!void)
            (set! __smp?
                  (if (let ((__tmp93596
                             (let ((__tmp93597 (configure-command-string)))
                               (declare (not safe))
                               (__string-split __tmp93597 '#\'))))
                        (declare (not safe))
                        (##member '"--enable-smp" __tmp93596))
                      '#t
                      '#f))
            '#!void)
        __smp?))))
