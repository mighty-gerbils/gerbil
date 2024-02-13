(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1707846527)
  (begin
    (define gerbil-version-string (lambda () '"v0.18.1-47-g766fc73a"))
    (define gerbil-system-manifest
      (let ((__tmp69664
             (let ((__tmp69665
                    (let () (declare (not safe)) (gerbil-version-string))))
               (declare (not safe))
               (cons '"Gerbil" __tmp69665)))
            (__tmp69661
             (let ((__tmp69662
                    (let ((__tmp69663 (system-version-string)))
                      (declare (not safe))
                      (cons '"Gambit" __tmp69663))))
               (declare (not safe))
               (cons __tmp69662 '()))))
        (declare (not safe))
        (cons __tmp69664 __tmp69661)))
    (define build-manifest gerbil-system-manifest)
    (set! build-manifest build-manifest)
    (define display-build-manifest__%
      (lambda (_manifest65037_ _port65038_)
        (let ((_p65044_
               (lambda (_g6503965041_) (display _g6503965041_ _port65038_)))
              (_l65045_ (length _manifest65037_))
              (_i65046_ '0))
          (for-each
           (lambda (_layer65048_)
             (if (let () (declare (not safe)) (zero? _i65046_))
                 '#!void
                 (if (= _i65046_ '1)
                     (let () (declare (not safe)) (_p65044_ '" on "))
                     (let () (declare (not safe)) (_p65044_ '", "))))
             (let* ((_layer6504965056_ _layer65048_)
                    (_E6505165060_
                     (lambda ()
                       (error '"No clause matching" _layer6504965056_)))
                    (_K6505265066_
                     (lambda (_version65063_ _name65064_)
                       (let () (declare (not safe)) (_p65044_ _name65064_))
                       (let () (declare (not safe)) (_p65044_ '" "))
                       (let ()
                         (declare (not safe))
                         (_p65044_ _version65063_)))))
               (if (let () (declare (not safe)) (##pair? _layer6504965056_))
                   (let ((_hd6505365069_
                          (let ()
                            (declare (not safe))
                            (##car _layer6504965056_)))
                         (_tl6505465071_
                          (let ()
                            (declare (not safe))
                            (##cdr _layer6504965056_))))
                     (let* ((_name65074_ _hd6505365069_)
                            (_version65076_ _tl6505465071_))
                       (declare (not safe))
                       (_K6505265066_ _version65076_ _name65074_)))
                   (let () (declare (not safe)) (_E6505165060_))))
             (set! _i65046_ (+ _i65046_ '1)))
           _manifest65037_))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_manifest65082_ build-manifest)
               (_port65084_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _manifest65082_ _port65084_))))
    (define display-build-manifest__1
      (lambda (_manifest65086_)
        (let ((_port65088_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _manifest65086_ _port65088_))))
    (define display-build-manifest
      (lambda _g69667_
        (let ((_g69666_ (let () (declare (not safe)) (##length _g69667_))))
          (cond ((let () (declare (not safe)) (##fx= _g69666_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__0)))
                        _g69667_))
                ((let () (declare (not safe)) (##fx= _g69666_ 1))
                 (apply (lambda (_manifest65086_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__1 _manifest65086_)))
                        _g69667_))
                ((let () (declare (not safe)) (##fx= _g69666_ 2))
                 (apply (lambda (_manifest65090_ _port65091_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__%
                             _manifest65090_
                             _port65091_)))
                        _g69667_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g69667_))))))
    (define build-manifest/layer
      (lambda (_layer65032_)
        (let ((_l65034_ (assoc _layer65032_ build-manifest)))
          (if _l65034_
              (let () (declare (not safe)) (cons _l65034_ '()))
              '()))))
    (define build-manifest/head
      (lambda ()
        (let ((__tmp69668 (car build-manifest)))
          (declare (not safe))
          (cons __tmp69668 '()))))
    (define build-manifest-string__%
      (lambda (_manifest65019_)
        (call-with-output-string
         '()
         (lambda (_p65021_)
           (let ()
             (declare (not safe))
             (display-build-manifest__% _manifest65019_ _p65021_))))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_manifest65027_ build-manifest))
          (declare (not safe))
          (build-manifest-string__% _manifest65027_))))
    (define build-manifest-string
      (lambda _g69670_
        (let ((_g69669_ (let () (declare (not safe)) (##length _g69670_))))
          (cond ((let () (declare (not safe)) (##fx= _g69669_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__0)))
                        _g69670_))
                ((let () (declare (not safe)) (##fx= _g69669_ 1))
                 (apply (lambda (_manifest65029_)
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__% _manifest65029_)))
                        _g69670_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g69670_))))))
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
        (let ((_$e65013_ (getenv '"GERBIL_HOME" '#f)))
          (if _$e65013_ _$e65013_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_$e65009_ (getenv '"GERBIL_PATH" '#f)))
          (if _$e65009_ _$e65009_ (path-expand '"~/.gerbil")))))
    (define gerbil-runtime-smp?
      (lambda ()
        (member '"--enable-smp"
                (let ((__tmp69671 (configure-command-string)))
                  (declare (not safe))
                  (string-split __tmp69671 '#\')))))))
