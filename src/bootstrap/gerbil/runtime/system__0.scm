(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1707734700)
  (begin
    (define gerbil-version-string (lambda () '"v0.18.1-30-g54a6e6e1"))
    (define gerbil-system-manifest
      (let ((__tmp69448
             (let ((__tmp69449
                    (let () (declare (not safe)) (gerbil-version-string))))
               (declare (not safe))
               (cons '"Gerbil" __tmp69449)))
            (__tmp69445
             (let ((__tmp69446
                    (let ((__tmp69447 (system-version-string)))
                      (declare (not safe))
                      (cons '"Gambit" __tmp69447))))
               (declare (not safe))
               (cons __tmp69446 '()))))
        (declare (not safe))
        (cons __tmp69448 __tmp69445)))
    (define build-manifest gerbil-system-manifest)
    (set! build-manifest build-manifest)
    (define display-build-manifest__%
      (lambda (_manifest64821_ _port64822_)
        (let ((_p64828_
               (lambda (_g6482364825_) (display _g6482364825_ _port64822_)))
              (_l64829_ (length _manifest64821_))
              (_i64830_ '0))
          (for-each
           (lambda (_layer64832_)
             (if (let () (declare (not safe)) (zero? _i64830_))
                 '#!void
                 (if (= _i64830_ '1)
                     (let () (declare (not safe)) (_p64828_ '" on "))
                     (let () (declare (not safe)) (_p64828_ '", "))))
             (let* ((_layer6483364840_ _layer64832_)
                    (_E6483564844_
                     (lambda ()
                       (error '"No clause matching" _layer6483364840_)))
                    (_K6483664850_
                     (lambda (_version64847_ _name64848_)
                       (let () (declare (not safe)) (_p64828_ _name64848_))
                       (let () (declare (not safe)) (_p64828_ '" "))
                       (let ()
                         (declare (not safe))
                         (_p64828_ _version64847_)))))
               (if (let () (declare (not safe)) (##pair? _layer6483364840_))
                   (let ((_hd6483764853_
                          (let ()
                            (declare (not safe))
                            (##car _layer6483364840_)))
                         (_tl6483864855_
                          (let ()
                            (declare (not safe))
                            (##cdr _layer6483364840_))))
                     (let* ((_name64858_ _hd6483764853_)
                            (_version64860_ _tl6483864855_))
                       (declare (not safe))
                       (_K6483664850_ _version64860_ _name64858_)))
                   (let () (declare (not safe)) (_E6483564844_))))
             (set! _i64830_ (+ _i64830_ '1)))
           _manifest64821_))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_manifest64866_ build-manifest)
               (_port64868_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _manifest64866_ _port64868_))))
    (define display-build-manifest__1
      (lambda (_manifest64870_)
        (let ((_port64872_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _manifest64870_ _port64872_))))
    (define display-build-manifest
      (lambda _g69451_
        (let ((_g69450_ (let () (declare (not safe)) (##length _g69451_))))
          (cond ((let () (declare (not safe)) (##fx= _g69450_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__0)))
                        _g69451_))
                ((let () (declare (not safe)) (##fx= _g69450_ 1))
                 (apply (lambda (_manifest64870_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__1 _manifest64870_)))
                        _g69451_))
                ((let () (declare (not safe)) (##fx= _g69450_ 2))
                 (apply (lambda (_manifest64874_ _port64875_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__%
                             _manifest64874_
                             _port64875_)))
                        _g69451_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g69451_))))))
    (define build-manifest/layer
      (lambda (_layer64816_)
        (let ((_l64818_ (assoc _layer64816_ build-manifest)))
          (if _l64818_
              (let () (declare (not safe)) (cons _l64818_ '()))
              '()))))
    (define build-manifest/head
      (lambda ()
        (let ((__tmp69452 (car build-manifest)))
          (declare (not safe))
          (cons __tmp69452 '()))))
    (define build-manifest-string__%
      (lambda (_manifest64803_)
        (call-with-output-string
         '()
         (lambda (_p64805_)
           (let ()
             (declare (not safe))
             (display-build-manifest__% _manifest64803_ _p64805_))))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_manifest64811_ build-manifest))
          (declare (not safe))
          (build-manifest-string__% _manifest64811_))))
    (define build-manifest-string
      (lambda _g69454_
        (let ((_g69453_ (let () (declare (not safe)) (##length _g69454_))))
          (cond ((let () (declare (not safe)) (##fx= _g69453_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__0)))
                        _g69454_))
                ((let () (declare (not safe)) (##fx= _g69453_ 1))
                 (apply (lambda (_manifest64813_)
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__% _manifest64813_)))
                        _g69454_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g69454_))))))
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
        (let ((_$e64797_ (getenv '"GERBIL_HOME" '#f)))
          (if _$e64797_ _$e64797_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_$e64793_ (getenv '"GERBIL_PATH" '#f)))
          (if _$e64793_ _$e64793_ (path-expand '"~/.gerbil")))))
    (define gerbil-runtime-smp?
      (lambda ()
        (member '"--enable-smp"
                (let ((__tmp69455 (configure-command-string)))
                  (declare (not safe))
                  (string-split __tmp69455 '#\')))))))
