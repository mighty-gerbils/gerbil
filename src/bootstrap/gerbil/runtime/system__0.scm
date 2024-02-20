(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1708451991)
  (begin
    (define gerbil-version-string (lambda () '"v0.18.1-43-gf17addf4"))
    (define gerbil-system-manifest
      (let ((__tmp58439
             (let ((__tmp58440
                    (let () (declare (not safe)) (gerbil-version-string))))
               (declare (not safe))
               (cons '"Gerbil" __tmp58440)))
            (__tmp58436
             (let ((__tmp58437
                    (let ((__tmp58438 (system-version-string)))
                      (declare (not safe))
                      (cons '"Gambit" __tmp58438))))
               (declare (not safe))
               (cons __tmp58437 '()))))
        (declare (not safe))
        (cons __tmp58439 __tmp58436)))
    (define build-manifest gerbil-system-manifest)
    (set! build-manifest build-manifest)
    (define display-build-manifest__%
      (lambda (_manifest58380_ _port58381_)
        (let ((_p58387_
               (lambda (_g5838258384_) (display _g5838258384_ _port58381_)))
              (_l58388_ (length _manifest58380_))
              (_i58389_ '0))
          (for-each
           (lambda (_layer58391_)
             (if (let () (declare (not safe)) (zero? _i58389_))
                 '#!void
                 (if (= _i58389_ '1)
                     (let () (declare (not safe)) (_p58387_ '" on "))
                     (let () (declare (not safe)) (_p58387_ '", "))))
             (let* ((_layer5839258399_ _layer58391_)
                    (_E5839458403_
                     (lambda ()
                       (error '"No clause matching" _layer5839258399_)))
                    (_K5839558409_
                     (lambda (_version58406_ _name58407_)
                       (let () (declare (not safe)) (_p58387_ _name58407_))
                       (let () (declare (not safe)) (_p58387_ '" "))
                       (let ()
                         (declare (not safe))
                         (_p58387_ _version58406_)))))
               (if (let () (declare (not safe)) (##pair? _layer5839258399_))
                   (let ((_hd5839658412_
                          (let ()
                            (declare (not safe))
                            (##car _layer5839258399_)))
                         (_tl5839758414_
                          (let ()
                            (declare (not safe))
                            (##cdr _layer5839258399_))))
                     (let* ((_name58417_ _hd5839658412_)
                            (_version58419_ _tl5839758414_))
                       (declare (not safe))
                       (_K5839558409_ _version58419_ _name58417_)))
                   (let () (declare (not safe)) (_E5839458403_))))
             (set! _i58389_ (+ _i58389_ '1)))
           _manifest58380_))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_manifest58425_ build-manifest)
               (_port58427_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _manifest58425_ _port58427_))))
    (define display-build-manifest__1
      (lambda (_manifest58429_)
        (let ((_port58431_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _manifest58429_ _port58431_))))
    (define display-build-manifest
      (lambda _g58442_
        (let ((_g58441_ (let () (declare (not safe)) (##length _g58442_))))
          (cond ((let () (declare (not safe)) (##fx= _g58441_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__0)))
                        _g58442_))
                ((let () (declare (not safe)) (##fx= _g58441_ 1))
                 (apply (lambda (_manifest58429_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__1 _manifest58429_)))
                        _g58442_))
                ((let () (declare (not safe)) (##fx= _g58441_ 2))
                 (apply (lambda (_manifest58433_ _port58434_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__%
                             _manifest58433_
                             _port58434_)))
                        _g58442_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g58442_))))))
    (define build-manifest/layer
      (lambda (_layer58375_)
        (let ((_l58377_ (assoc _layer58375_ build-manifest)))
          (if _l58377_
              (let () (declare (not safe)) (cons _l58377_ '()))
              '()))))
    (define build-manifest/head
      (lambda ()
        (let ((__tmp58443 (car build-manifest)))
          (declare (not safe))
          (cons __tmp58443 '()))))
    (define build-manifest-string__%
      (lambda (_manifest58362_)
        (call-with-output-string
         '()
         (lambda (_p58364_)
           (let ()
             (declare (not safe))
             (display-build-manifest__% _manifest58362_ _p58364_))))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_manifest58370_ build-manifest))
          (declare (not safe))
          (build-manifest-string__% _manifest58370_))))
    (define build-manifest-string
      (lambda _g58445_
        (let ((_g58444_ (let () (declare (not safe)) (##length _g58445_))))
          (cond ((let () (declare (not safe)) (##fx= _g58444_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__0)))
                        _g58445_))
                ((let () (declare (not safe)) (##fx= _g58444_ 1))
                 (apply (lambda (_manifest58372_)
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__% _manifest58372_)))
                        _g58445_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g58445_))))))
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
        (let ((_$e58356_ (getenv '"GERBIL_HOME" '#f)))
          (if _$e58356_ _$e58356_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_$e58352_ (getenv '"GERBIL_PATH" '#f)))
          (if _$e58352_ _$e58352_ (path-expand '"~/.gerbil")))))
    (define gerbil-runtime-smp?
      (lambda ()
        (member '"--enable-smp"
                (let ((__tmp58446 (configure-command-string)))
                  (declare (not safe))
                  (string-split __tmp58446 '#\')))))))
