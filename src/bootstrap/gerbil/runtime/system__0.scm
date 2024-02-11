(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1707610211)
  (begin
    (define gerbil-version-string (lambda () '"v0.18.1-33-gad198c26"))
    (define gerbil-system-manifest
      (let ((__tmp69377
             (let ((__tmp69378
                    (let () (declare (not safe)) (gerbil-version-string))))
               (declare (not safe))
               (cons '"Gerbil" __tmp69378)))
            (__tmp69374
             (let ((__tmp69375
                    (let ((__tmp69376 (system-version-string)))
                      (declare (not safe))
                      (cons '"Gambit" __tmp69376))))
               (declare (not safe))
               (cons __tmp69375 '()))))
        (declare (not safe))
        (cons __tmp69377 __tmp69374)))
    (define build-manifest gerbil-system-manifest)
    (set! build-manifest build-manifest)
    (define display-build-manifest__%
      (lambda (_manifest64850_ _port64851_)
        (let ((_p64857_
               (lambda (_g6485264854_) (display _g6485264854_ _port64851_)))
              (_l64858_ (length _manifest64850_))
              (_i64859_ '0))
          (for-each
           (lambda (_layer64861_)
             (if (let () (declare (not safe)) (zero? _i64859_))
                 '#!void
                 (if (= _i64859_ '1)
                     (let () (declare (not safe)) (_p64857_ '" on "))
                     (let () (declare (not safe)) (_p64857_ '", "))))
             (let* ((_layer6486264869_ _layer64861_)
                    (_E6486464873_
                     (lambda ()
                       (error '"No clause matching" _layer6486264869_)))
                    (_K6486564879_
                     (lambda (_version64876_ _name64877_)
                       (let () (declare (not safe)) (_p64857_ _name64877_))
                       (let () (declare (not safe)) (_p64857_ '" "))
                       (let ()
                         (declare (not safe))
                         (_p64857_ _version64876_)))))
               (if (let () (declare (not safe)) (##pair? _layer6486264869_))
                   (let ((_hd6486664882_
                          (let ()
                            (declare (not safe))
                            (##car _layer6486264869_)))
                         (_tl6486764884_
                          (let ()
                            (declare (not safe))
                            (##cdr _layer6486264869_))))
                     (let* ((_name64887_ _hd6486664882_)
                            (_version64889_ _tl6486764884_))
                       (declare (not safe))
                       (_K6486564879_ _version64889_ _name64887_)))
                   (let () (declare (not safe)) (_E6486464873_))))
             (set! _i64859_ (+ _i64859_ '1)))
           _manifest64850_))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_manifest64895_ build-manifest)
               (_port64897_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _manifest64895_ _port64897_))))
    (define display-build-manifest__1
      (lambda (_manifest64899_)
        (let ((_port64901_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _manifest64899_ _port64901_))))
    (define display-build-manifest
      (lambda _g69380_
        (let ((_g69379_ (let () (declare (not safe)) (##length _g69380_))))
          (cond ((let () (declare (not safe)) (##fx= _g69379_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__0)))
                        _g69380_))
                ((let () (declare (not safe)) (##fx= _g69379_ 1))
                 (apply (lambda (_manifest64899_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__1 _manifest64899_)))
                        _g69380_))
                ((let () (declare (not safe)) (##fx= _g69379_ 2))
                 (apply (lambda (_manifest64903_ _port64904_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__%
                             _manifest64903_
                             _port64904_)))
                        _g69380_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g69380_))))))
    (define build-manifest/layer
      (lambda (_layer64845_)
        (let ((_l64847_ (assoc _layer64845_ build-manifest)))
          (if _l64847_
              (let () (declare (not safe)) (cons _l64847_ '()))
              '()))))
    (define build-manifest/head
      (lambda ()
        (let ((__tmp69381 (car build-manifest)))
          (declare (not safe))
          (cons __tmp69381 '()))))
    (define build-manifest-string__%
      (lambda (_manifest64832_)
        (call-with-output-string
         '()
         (lambda (_p64834_)
           (let ()
             (declare (not safe))
             (display-build-manifest__% _manifest64832_ _p64834_))))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_manifest64840_ build-manifest))
          (declare (not safe))
          (build-manifest-string__% _manifest64840_))))
    (define build-manifest-string
      (lambda _g69383_
        (let ((_g69382_ (let () (declare (not safe)) (##length _g69383_))))
          (cond ((let () (declare (not safe)) (##fx= _g69382_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__0)))
                        _g69383_))
                ((let () (declare (not safe)) (##fx= _g69382_ 1))
                 (apply (lambda (_manifest64842_)
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__% _manifest64842_)))
                        _g69383_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g69383_))))))
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
        (let ((_$e64826_ (getenv '"GERBIL_HOME" '#f)))
          (if _$e64826_ _$e64826_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_$e64822_ (getenv '"GERBIL_PATH" '#f)))
          (if _$e64822_ _$e64822_ (path-expand '"~/.gerbil")))))
    (define gerbil-runtime-smp?
      (lambda ()
        (member '"--enable-smp"
                (let ((__tmp69384 (configure-command-string)))
                  (declare (not safe))
                  (string-split __tmp69384 '#\')))))))
