(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1707601714)
  (begin
    (define gerbil-version-string (lambda () '"v0.18.1-30-g0268f7a3"))
    (define gerbil-system-manifest
      (let ((__tmp69375
             (let ((__tmp69376
                    (let () (declare (not safe)) (gerbil-version-string))))
               (declare (not safe))
               (cons '"Gerbil" __tmp69376)))
            (__tmp69372
             (let ((__tmp69373
                    (let ((__tmp69374 (system-version-string)))
                      (declare (not safe))
                      (cons '"Gambit" __tmp69374))))
               (declare (not safe))
               (cons __tmp69373 '()))))
        (declare (not safe))
        (cons __tmp69375 __tmp69372)))
    (define build-manifest gerbil-system-manifest)
    (set! build-manifest build-manifest)
    (define display-build-manifest__%
      (lambda (_manifest64848_ _port64849_)
        (let ((_p64855_
               (lambda (_g6485064852_) (display _g6485064852_ _port64849_)))
              (_l64856_ (length _manifest64848_))
              (_i64857_ '0))
          (for-each
           (lambda (_layer64859_)
             (if (let () (declare (not safe)) (zero? _i64857_))
                 '#!void
                 (if (= _i64857_ '1)
                     (let () (declare (not safe)) (_p64855_ '" on "))
                     (let () (declare (not safe)) (_p64855_ '", "))))
             (let* ((_layer6486064867_ _layer64859_)
                    (_E6486264871_
                     (lambda ()
                       (error '"No clause matching" _layer6486064867_)))
                    (_K6486364877_
                     (lambda (_version64874_ _name64875_)
                       (let () (declare (not safe)) (_p64855_ _name64875_))
                       (let () (declare (not safe)) (_p64855_ '" "))
                       (let ()
                         (declare (not safe))
                         (_p64855_ _version64874_)))))
               (if (let () (declare (not safe)) (##pair? _layer6486064867_))
                   (let ((_hd6486464880_
                          (let ()
                            (declare (not safe))
                            (##car _layer6486064867_)))
                         (_tl6486564882_
                          (let ()
                            (declare (not safe))
                            (##cdr _layer6486064867_))))
                     (let* ((_name64885_ _hd6486464880_)
                            (_version64887_ _tl6486564882_))
                       (declare (not safe))
                       (_K6486364877_ _version64887_ _name64885_)))
                   (let () (declare (not safe)) (_E6486264871_))))
             (set! _i64857_ (+ _i64857_ '1)))
           _manifest64848_))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_manifest64893_ build-manifest)
               (_port64895_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _manifest64893_ _port64895_))))
    (define display-build-manifest__1
      (lambda (_manifest64897_)
        (let ((_port64899_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _manifest64897_ _port64899_))))
    (define display-build-manifest
      (lambda _g69378_
        (let ((_g69377_ (let () (declare (not safe)) (##length _g69378_))))
          (cond ((let () (declare (not safe)) (##fx= _g69377_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__0)))
                        _g69378_))
                ((let () (declare (not safe)) (##fx= _g69377_ 1))
                 (apply (lambda (_manifest64897_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__1 _manifest64897_)))
                        _g69378_))
                ((let () (declare (not safe)) (##fx= _g69377_ 2))
                 (apply (lambda (_manifest64901_ _port64902_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__%
                             _manifest64901_
                             _port64902_)))
                        _g69378_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g69378_))))))
    (define build-manifest/layer
      (lambda (_layer64843_)
        (let ((_l64845_ (assoc _layer64843_ build-manifest)))
          (if _l64845_
              (let () (declare (not safe)) (cons _l64845_ '()))
              '()))))
    (define build-manifest/head
      (lambda ()
        (let ((__tmp69379 (car build-manifest)))
          (declare (not safe))
          (cons __tmp69379 '()))))
    (define build-manifest-string__%
      (lambda (_manifest64830_)
        (call-with-output-string
         '()
         (lambda (_p64832_)
           (let ()
             (declare (not safe))
             (display-build-manifest__% _manifest64830_ _p64832_))))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_manifest64838_ build-manifest))
          (declare (not safe))
          (build-manifest-string__% _manifest64838_))))
    (define build-manifest-string
      (lambda _g69381_
        (let ((_g69380_ (let () (declare (not safe)) (##length _g69381_))))
          (cond ((let () (declare (not safe)) (##fx= _g69380_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__0)))
                        _g69381_))
                ((let () (declare (not safe)) (##fx= _g69380_ 1))
                 (apply (lambda (_manifest64840_)
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__% _manifest64840_)))
                        _g69381_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g69381_))))))
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
        (let ((_$e64824_ (getenv '"GERBIL_HOME" '#f)))
          (if _$e64824_ _$e64824_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_$e64820_ (getenv '"GERBIL_PATH" '#f)))
          (if _$e64820_ _$e64820_ (path-expand '"~/.gerbil")))))
    (define gerbil-runtime-smp?
      (lambda ()
        (member '"--enable-smp"
                (let ((__tmp69382 (configure-command-string)))
                  (declare (not safe))
                  (string-split __tmp69382 '#\')))))))
