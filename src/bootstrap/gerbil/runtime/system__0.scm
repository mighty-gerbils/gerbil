(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1706585167)
  (begin
    (define gerbil-version-string (lambda () '"v0.18.1-34-g69cd461b"))
    (define gerbil-system-manifest
      (let ((__tmp8952
             (let ((__tmp8953
                    (let () (declare (not safe)) (gerbil-version-string))))
               (declare (not safe))
               (cons '"Gerbil" __tmp8953)))
            (__tmp8949
             (let ((__tmp8950
                    (let ((__tmp8951 (system-version-string)))
                      (declare (not safe))
                      (cons '"Gambit" __tmp8951))))
               (declare (not safe))
               (cons __tmp8950 '()))))
        (declare (not safe))
        (cons __tmp8952 __tmp8949)))
    (define build-manifest gerbil-system-manifest)
    (set! build-manifest build-manifest)
    (define display-build-manifest__%
      (lambda (_manifest8893_ _port8894_)
        (let ((_p8900_ (lambda (_g88958897_) (display _g88958897_ _port8894_)))
              (_l8901_ (length _manifest8893_))
              (_i8902_ '0))
          (for-each
           (lambda (_layer8904_)
             (if (let () (declare (not safe)) (zero? _i8902_))
                 '#!void
                 (if (= _i8902_ '1)
                     (let () (declare (not safe)) (_p8900_ '" on "))
                     (let () (declare (not safe)) (_p8900_ '", "))))
             (let* ((_layer89058912_ _layer8904_)
                    (_E89078916_
                     (lambda () (error '"No clause matching" _layer89058912_)))
                    (_K89088922_
                     (lambda (_version8919_ _name8920_)
                       (let () (declare (not safe)) (_p8900_ _name8920_))
                       (let () (declare (not safe)) (_p8900_ '" "))
                       (let () (declare (not safe)) (_p8900_ _version8919_)))))
               (if (let () (declare (not safe)) (##pair? _layer89058912_))
                   (let ((_hd89098925_
                          (let ()
                            (declare (not safe))
                            (##car _layer89058912_)))
                         (_tl89108927_
                          (let ()
                            (declare (not safe))
                            (##cdr _layer89058912_))))
                     (let* ((_name8930_ _hd89098925_)
                            (_version8932_ _tl89108927_))
                       (declare (not safe))
                       (_K89088922_ _version8932_ _name8930_)))
                   (let () (declare (not safe)) (_E89078916_))))
             (set! _i8902_ (+ _i8902_ '1)))
           _manifest8893_))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_manifest8938_ build-manifest)
               (_port8940_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _manifest8938_ _port8940_))))
    (define display-build-manifest__1
      (lambda (_manifest8942_)
        (let ((_port8944_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _manifest8942_ _port8944_))))
    (define display-build-manifest
      (lambda _g8955_
        (let ((_g8954_ (let () (declare (not safe)) (##length _g8955_))))
          (cond ((let () (declare (not safe)) (##fx= _g8954_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__0)))
                        _g8955_))
                ((let () (declare (not safe)) (##fx= _g8954_ 1))
                 (apply (lambda (_manifest8942_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__1 _manifest8942_)))
                        _g8955_))
                ((let () (declare (not safe)) (##fx= _g8954_ 2))
                 (apply (lambda (_manifest8946_ _port8947_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__%
                             _manifest8946_
                             _port8947_)))
                        _g8955_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g8955_))))))
    (define build-manifest/layer
      (lambda (_layer8888_)
        (let ((_l8890_ (assoc _layer8888_ build-manifest)))
          (if _l8890_ (let () (declare (not safe)) (cons _l8890_ '())) '()))))
    (define build-manifest/head
      (lambda ()
        (let ((__tmp8956 (car build-manifest)))
          (declare (not safe))
          (cons __tmp8956 '()))))
    (define build-manifest-string__%
      (lambda (_manifest8875_)
        (call-with-output-string
         '()
         (lambda (_p8877_)
           (let ()
             (declare (not safe))
             (display-build-manifest__% _manifest8875_ _p8877_))))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_manifest8883_ build-manifest))
          (declare (not safe))
          (build-manifest-string__% _manifest8883_))))
    (define build-manifest-string
      (lambda _g8958_
        (let ((_g8957_ (let () (declare (not safe)) (##length _g8958_))))
          (cond ((let () (declare (not safe)) (##fx= _g8957_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__0)))
                        _g8958_))
                ((let () (declare (not safe)) (##fx= _g8957_ 1))
                 (apply (lambda (_manifest8885_)
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__% _manifest8885_)))
                        _g8958_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g8958_))))))
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
        (let ((_$e8869_ (getenv '"GERBIL_HOME" '#f)))
          (if _$e8869_ _$e8869_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_$e8865_ (getenv '"GERBIL_PATH" '#f)))
          (if _$e8865_ _$e8865_ (path-expand '"~/.gerbil")))))
    (define gerbil-runtime-smp?
      (lambda ()
        (member '"--enable-smp"
                (let ((__tmp8959 (configure-command-string)))
                  (declare (not safe))
                  (string-split __tmp8959 '#\')))))))
