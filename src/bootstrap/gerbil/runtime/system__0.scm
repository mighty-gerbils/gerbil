(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1707618263)
  (begin
    (define gerbil-version-string (lambda () '"v0.18.1-35-g03eb3878"))
    (define gerbil-system-manifest
      (let ((__tmp69378
             (let ((__tmp69379
                    (let () (declare (not safe)) (gerbil-version-string))))
               (declare (not safe))
               (cons '"Gerbil" __tmp69379)))
            (__tmp69375
             (let ((__tmp69376
                    (let ((__tmp69377 (system-version-string)))
                      (declare (not safe))
                      (cons '"Gambit" __tmp69377))))
               (declare (not safe))
               (cons __tmp69376 '()))))
        (declare (not safe))
        (cons __tmp69378 __tmp69375)))
    (define build-manifest gerbil-system-manifest)
    (set! build-manifest build-manifest)
    (define display-build-manifest__%
      (lambda (_manifest64851_ _port64852_)
        (let ((_p64858_
               (lambda (_g6485364855_) (display _g6485364855_ _port64852_)))
              (_l64859_ (length _manifest64851_))
              (_i64860_ '0))
          (for-each
           (lambda (_layer64862_)
             (if (let () (declare (not safe)) (zero? _i64860_))
                 '#!void
                 (if (= _i64860_ '1)
                     (let () (declare (not safe)) (_p64858_ '" on "))
                     (let () (declare (not safe)) (_p64858_ '", "))))
             (let* ((_layer6486364870_ _layer64862_)
                    (_E6486564874_
                     (lambda ()
                       (error '"No clause matching" _layer6486364870_)))
                    (_K6486664880_
                     (lambda (_version64877_ _name64878_)
                       (let () (declare (not safe)) (_p64858_ _name64878_))
                       (let () (declare (not safe)) (_p64858_ '" "))
                       (let ()
                         (declare (not safe))
                         (_p64858_ _version64877_)))))
               (if (let () (declare (not safe)) (##pair? _layer6486364870_))
                   (let ((_hd6486764883_
                          (let ()
                            (declare (not safe))
                            (##car _layer6486364870_)))
                         (_tl6486864885_
                          (let ()
                            (declare (not safe))
                            (##cdr _layer6486364870_))))
                     (let* ((_name64888_ _hd6486764883_)
                            (_version64890_ _tl6486864885_))
                       (declare (not safe))
                       (_K6486664880_ _version64890_ _name64888_)))
                   (let () (declare (not safe)) (_E6486564874_))))
             (set! _i64860_ (+ _i64860_ '1)))
           _manifest64851_))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_manifest64896_ build-manifest)
               (_port64898_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _manifest64896_ _port64898_))))
    (define display-build-manifest__1
      (lambda (_manifest64900_)
        (let ((_port64902_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _manifest64900_ _port64902_))))
    (define display-build-manifest
      (lambda _g69381_
        (let ((_g69380_ (let () (declare (not safe)) (##length _g69381_))))
          (cond ((let () (declare (not safe)) (##fx= _g69380_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__0)))
                        _g69381_))
                ((let () (declare (not safe)) (##fx= _g69380_ 1))
                 (apply (lambda (_manifest64900_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__1 _manifest64900_)))
                        _g69381_))
                ((let () (declare (not safe)) (##fx= _g69380_ 2))
                 (apply (lambda (_manifest64904_ _port64905_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__%
                             _manifest64904_
                             _port64905_)))
                        _g69381_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g69381_))))))
    (define build-manifest/layer
      (lambda (_layer64846_)
        (let ((_l64848_ (assoc _layer64846_ build-manifest)))
          (if _l64848_
              (let () (declare (not safe)) (cons _l64848_ '()))
              '()))))
    (define build-manifest/head
      (lambda ()
        (let ((__tmp69382 (car build-manifest)))
          (declare (not safe))
          (cons __tmp69382 '()))))
    (define build-manifest-string__%
      (lambda (_manifest64833_)
        (call-with-output-string
         '()
         (lambda (_p64835_)
           (let ()
             (declare (not safe))
             (display-build-manifest__% _manifest64833_ _p64835_))))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_manifest64841_ build-manifest))
          (declare (not safe))
          (build-manifest-string__% _manifest64841_))))
    (define build-manifest-string
      (lambda _g69384_
        (let ((_g69383_ (let () (declare (not safe)) (##length _g69384_))))
          (cond ((let () (declare (not safe)) (##fx= _g69383_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__0)))
                        _g69384_))
                ((let () (declare (not safe)) (##fx= _g69383_ 1))
                 (apply (lambda (_manifest64843_)
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__% _manifest64843_)))
                        _g69384_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g69384_))))))
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
        (let ((_$e64827_ (getenv '"GERBIL_HOME" '#f)))
          (if _$e64827_ _$e64827_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_$e64823_ (getenv '"GERBIL_PATH" '#f)))
          (if _$e64823_ _$e64823_ (path-expand '"~/.gerbil")))))
    (define gerbil-runtime-smp?
      (lambda ()
        (member '"--enable-smp"
                (let ((__tmp69385 (configure-command-string)))
                  (declare (not safe))
                  (string-split __tmp69385 '#\')))))))
