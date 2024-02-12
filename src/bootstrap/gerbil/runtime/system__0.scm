(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1707773067)
  (begin
    (define gerbil-version-string (lambda () '"v0.18.1-48-ge0b2f611"))
    (define gerbil-system-manifest
      (let ((__tmp69453
             (let ((__tmp69454
                    (let () (declare (not safe)) (gerbil-version-string))))
               (declare (not safe))
               (cons '"Gerbil" __tmp69454)))
            (__tmp69450
             (let ((__tmp69451
                    (let ((__tmp69452 (system-version-string)))
                      (declare (not safe))
                      (cons '"Gambit" __tmp69452))))
               (declare (not safe))
               (cons __tmp69451 '()))))
        (declare (not safe))
        (cons __tmp69453 __tmp69450)))
    (define build-manifest gerbil-system-manifest)
    (set! build-manifest build-manifest)
    (define display-build-manifest__%
      (lambda (_manifest64826_ _port64827_)
        (let ((_p64833_
               (lambda (_g6482864830_) (display _g6482864830_ _port64827_)))
              (_l64834_ (length _manifest64826_))
              (_i64835_ '0))
          (for-each
           (lambda (_layer64837_)
             (if (let () (declare (not safe)) (zero? _i64835_))
                 '#!void
                 (if (= _i64835_ '1)
                     (let () (declare (not safe)) (_p64833_ '" on "))
                     (let () (declare (not safe)) (_p64833_ '", "))))
             (let* ((_layer6483864845_ _layer64837_)
                    (_E6484064849_
                     (lambda ()
                       (error '"No clause matching" _layer6483864845_)))
                    (_K6484164855_
                     (lambda (_version64852_ _name64853_)
                       (let () (declare (not safe)) (_p64833_ _name64853_))
                       (let () (declare (not safe)) (_p64833_ '" "))
                       (let ()
                         (declare (not safe))
                         (_p64833_ _version64852_)))))
               (if (let () (declare (not safe)) (##pair? _layer6483864845_))
                   (let ((_hd6484264858_
                          (let ()
                            (declare (not safe))
                            (##car _layer6483864845_)))
                         (_tl6484364860_
                          (let ()
                            (declare (not safe))
                            (##cdr _layer6483864845_))))
                     (let* ((_name64863_ _hd6484264858_)
                            (_version64865_ _tl6484364860_))
                       (declare (not safe))
                       (_K6484164855_ _version64865_ _name64863_)))
                   (let () (declare (not safe)) (_E6484064849_))))
             (set! _i64835_ (+ _i64835_ '1)))
           _manifest64826_))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_manifest64871_ build-manifest)
               (_port64873_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _manifest64871_ _port64873_))))
    (define display-build-manifest__1
      (lambda (_manifest64875_)
        (let ((_port64877_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _manifest64875_ _port64877_))))
    (define display-build-manifest
      (lambda _g69456_
        (let ((_g69455_ (let () (declare (not safe)) (##length _g69456_))))
          (cond ((let () (declare (not safe)) (##fx= _g69455_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__0)))
                        _g69456_))
                ((let () (declare (not safe)) (##fx= _g69455_ 1))
                 (apply (lambda (_manifest64875_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__1 _manifest64875_)))
                        _g69456_))
                ((let () (declare (not safe)) (##fx= _g69455_ 2))
                 (apply (lambda (_manifest64879_ _port64880_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__%
                             _manifest64879_
                             _port64880_)))
                        _g69456_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g69456_))))))
    (define build-manifest/layer
      (lambda (_layer64821_)
        (let ((_l64823_ (assoc _layer64821_ build-manifest)))
          (if _l64823_
              (let () (declare (not safe)) (cons _l64823_ '()))
              '()))))
    (define build-manifest/head
      (lambda ()
        (let ((__tmp69457 (car build-manifest)))
          (declare (not safe))
          (cons __tmp69457 '()))))
    (define build-manifest-string__%
      (lambda (_manifest64808_)
        (call-with-output-string
         '()
         (lambda (_p64810_)
           (let ()
             (declare (not safe))
             (display-build-manifest__% _manifest64808_ _p64810_))))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_manifest64816_ build-manifest))
          (declare (not safe))
          (build-manifest-string__% _manifest64816_))))
    (define build-manifest-string
      (lambda _g69459_
        (let ((_g69458_ (let () (declare (not safe)) (##length _g69459_))))
          (cond ((let () (declare (not safe)) (##fx= _g69458_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__0)))
                        _g69459_))
                ((let () (declare (not safe)) (##fx= _g69458_ 1))
                 (apply (lambda (_manifest64818_)
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__% _manifest64818_)))
                        _g69459_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g69459_))))))
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
        (let ((_$e64802_ (getenv '"GERBIL_HOME" '#f)))
          (if _$e64802_ _$e64802_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_$e64798_ (getenv '"GERBIL_PATH" '#f)))
          (if _$e64798_ _$e64798_ (path-expand '"~/.gerbil")))))
    (define gerbil-runtime-smp?
      (lambda ()
        (member '"--enable-smp"
                (let ((__tmp69460 (configure-command-string)))
                  (declare (not safe))
                  (string-split __tmp69460 '#\')))))))
