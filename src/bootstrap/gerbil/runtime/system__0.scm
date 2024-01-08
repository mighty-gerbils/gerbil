(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1704735467)
  (begin
    (define gerbil-version-string (lambda () '"v0.18.1-20-gadca0cfb"))
    (define gerbil-system-manifest
      (let ((__tmp8809
             (let ((__tmp8810
                    (let () (declare (not safe)) (gerbil-version-string))))
               (declare (not safe))
               (cons '"Gerbil" __tmp8810)))
            (__tmp8806
             (let ((__tmp8807
                    (let ((__tmp8808 (system-version-string)))
                      (declare (not safe))
                      (cons '"Gambit" __tmp8808))))
               (declare (not safe))
               (cons __tmp8807 '()))))
        (declare (not safe))
        (cons __tmp8809 __tmp8806)))
    (define build-manifest gerbil-system-manifest)
    (set! build-manifest build-manifest)
    (define display-build-manifest__%
      (lambda (_manifest8750_ _port8751_)
        (let ((_p8757_ (lambda (_g87528754_) (display _g87528754_ _port8751_)))
              (_l8758_ (length _manifest8750_))
              (_i8759_ '0))
          (for-each
           (lambda (_layer8761_)
             (if (let () (declare (not safe)) (zero? _i8759_))
                 '#!void
                 (if (= _i8759_ '1)
                     (let () (declare (not safe)) (_p8757_ '" on "))
                     (let () (declare (not safe)) (_p8757_ '", "))))
             (let* ((_layer87628769_ _layer8761_)
                    (_E87648773_
                     (lambda () (error '"No clause matching" _layer87628769_)))
                    (_K87658779_
                     (lambda (_version8776_ _name8777_)
                       (let () (declare (not safe)) (_p8757_ _name8777_))
                       (let () (declare (not safe)) (_p8757_ '" "))
                       (let () (declare (not safe)) (_p8757_ _version8776_)))))
               (if (let () (declare (not safe)) (##pair? _layer87628769_))
                   (let ((_hd87668782_
                          (let ()
                            (declare (not safe))
                            (##car _layer87628769_)))
                         (_tl87678784_
                          (let ()
                            (declare (not safe))
                            (##cdr _layer87628769_))))
                     (let* ((_name8787_ _hd87668782_)
                            (_version8789_ _tl87678784_))
                       (declare (not safe))
                       (_K87658779_ _version8789_ _name8787_)))
                   (let () (declare (not safe)) (_E87648773_))))
             (set! _i8759_ (+ _i8759_ '1)))
           _manifest8750_))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_manifest8795_ build-manifest)
               (_port8797_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _manifest8795_ _port8797_))))
    (define display-build-manifest__1
      (lambda (_manifest8799_)
        (let ((_port8801_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _manifest8799_ _port8801_))))
    (define display-build-manifest
      (lambda _g8812_
        (let ((_g8811_ (let () (declare (not safe)) (##length _g8812_))))
          (cond ((let () (declare (not safe)) (##fx= _g8811_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__0)))
                        _g8812_))
                ((let () (declare (not safe)) (##fx= _g8811_ 1))
                 (apply (lambda (_manifest8799_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__1 _manifest8799_)))
                        _g8812_))
                ((let () (declare (not safe)) (##fx= _g8811_ 2))
                 (apply (lambda (_manifest8803_ _port8804_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__%
                             _manifest8803_
                             _port8804_)))
                        _g8812_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g8812_))))))
    (define build-manifest/layer
      (lambda (_layer8745_)
        (let ((_l8747_ (assoc _layer8745_ build-manifest)))
          (if _l8747_ (let () (declare (not safe)) (cons _l8747_ '())) '()))))
    (define build-manifest/head
      (lambda ()
        (let ((__tmp8813 (car build-manifest)))
          (declare (not safe))
          (cons __tmp8813 '()))))
    (define build-manifest-string__%
      (lambda (_manifest8732_)
        (call-with-output-string
         '()
         (lambda (_p8734_)
           (let ()
             (declare (not safe))
             (display-build-manifest__% _manifest8732_ _p8734_))))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_manifest8740_ build-manifest))
          (declare (not safe))
          (build-manifest-string__% _manifest8740_))))
    (define build-manifest-string
      (lambda _g8815_
        (let ((_g8814_ (let () (declare (not safe)) (##length _g8815_))))
          (cond ((let () (declare (not safe)) (##fx= _g8814_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__0)))
                        _g8815_))
                ((let () (declare (not safe)) (##fx= _g8814_ 1))
                 (apply (lambda (_manifest8742_)
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__% _manifest8742_)))
                        _g8815_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g8815_))))))
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
        (let ((_$e8726_ (getenv '"GERBIL_HOME" '#f)))
          (if _$e8726_ _$e8726_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_$e8722_ (getenv '"GERBIL_PATH" '#f)))
          (if _$e8722_ _$e8722_ (path-expand '"~/.gerbil")))))
    (define gerbil-runtime-smp?
      (lambda ()
        (member '"--enable-smp"
                (let ((__tmp8816 (configure-command-string)))
                  (declare (not safe))
                  (string-split __tmp8816 '#\')))))))
