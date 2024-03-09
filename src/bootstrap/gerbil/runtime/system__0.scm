(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1709994212)
  (begin
    (define gerbil-version-string (lambda () '"v0.18.1-55-g6c1651f0"))
    (define gerbil-system-manifest
      (let ((__tmp61809
             (let ((__tmp61810
                    (let () (declare (not safe)) (gerbil-version-string))))
               (declare (not safe))
               (cons '"Gerbil" __tmp61810)))
            (__tmp61806
             (let ((__tmp61807
                    (let ((__tmp61808 (system-version-string)))
                      (declare (not safe))
                      (cons '"Gambit" __tmp61808))))
               (declare (not safe))
               (cons __tmp61807 '()))))
        (declare (not safe))
        (cons __tmp61809 __tmp61806)))
    (define build-manifest gerbil-system-manifest)
    (set! build-manifest build-manifest)
    (define display-build-manifest__%
      (lambda (_manifest61750_ _port61751_)
        (let ((_p61757_
               (lambda (_g6175261754_) (display _g6175261754_ _port61751_)))
              (_l61758_ (length _manifest61750_))
              (_i61759_ '0))
          (for-each
           (lambda (_layer61761_)
             (if (let () (declare (not safe)) (zero? _i61759_))
                 '#!void
                 (if (= _i61759_ '1)
                     (let () (declare (not safe)) (_p61757_ '" on "))
                     (let () (declare (not safe)) (_p61757_ '", "))))
             (let* ((_layer6176261769_ _layer61761_)
                    (_E6176461773_
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (error '"No clause matching" _layer6176261769_))))
                    (_K6176561779_
                     (lambda (_version61776_ _name61777_)
                       (let () (declare (not safe)) (_p61757_ _name61777_))
                       (let () (declare (not safe)) (_p61757_ '" "))
                       (let ()
                         (declare (not safe))
                         (_p61757_ _version61776_)))))
               (if (let () (declare (not safe)) (##pair? _layer6176261769_))
                   (let ((_hd6176661782_
                          (let ()
                            (declare (not safe))
                            (##car _layer6176261769_)))
                         (_tl6176761784_
                          (let ()
                            (declare (not safe))
                            (##cdr _layer6176261769_))))
                     (let* ((_name61787_ _hd6176661782_)
                            (_version61789_ _tl6176761784_))
                       (declare (not safe))
                       (_K6176561779_ _version61789_ _name61787_)))
                   (let () (declare (not safe)) (_E6176461773_))))
             (set! _i61759_ (+ _i61759_ '1)))
           _manifest61750_))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_manifest61795_ build-manifest)
               (_port61797_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _manifest61795_ _port61797_))))
    (define display-build-manifest__1
      (lambda (_manifest61799_)
        (let ((_port61801_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _manifest61799_ _port61801_))))
    (define display-build-manifest
      (lambda _g61812_
        (let ((_g61811_ (let () (declare (not safe)) (##length _g61812_))))
          (cond ((let () (declare (not safe)) (##fx= _g61811_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__0)))
                        _g61812_))
                ((let () (declare (not safe)) (##fx= _g61811_ 1))
                 (apply (lambda (_manifest61799_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__1 _manifest61799_)))
                        _g61812_))
                ((let () (declare (not safe)) (##fx= _g61811_ 2))
                 (apply (lambda (_manifest61803_ _port61804_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__%
                             _manifest61803_
                             _port61804_)))
                        _g61812_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g61812_))))))
    (define build-manifest/layer
      (lambda (_layer61745_)
        (let ((_l61747_ (assoc _layer61745_ build-manifest)))
          (if _l61747_
              (let () (declare (not safe)) (cons _l61747_ '()))
              '()))))
    (define build-manifest/head
      (lambda ()
        (let ((__tmp61813 (car build-manifest)))
          (declare (not safe))
          (cons __tmp61813 '()))))
    (define build-manifest-string__%
      (lambda (_manifest61732_)
        (call-with-output-string
         '()
         (lambda (_p61734_)
           (let ()
             (declare (not safe))
             (display-build-manifest__% _manifest61732_ _p61734_))))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_manifest61740_ build-manifest))
          (declare (not safe))
          (build-manifest-string__% _manifest61740_))))
    (define build-manifest-string
      (lambda _g61815_
        (let ((_g61814_ (let () (declare (not safe)) (##length _g61815_))))
          (cond ((let () (declare (not safe)) (##fx= _g61814_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__0)))
                        _g61815_))
                ((let () (declare (not safe)) (##fx= _g61814_ 1))
                 (apply (lambda (_manifest61742_)
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__% _manifest61742_)))
                        _g61815_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g61815_))))))
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
        (let ((_$e61726_ (getenv '"GERBIL_HOME" '#f)))
          (if _$e61726_ _$e61726_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_$e61722_ (getenv '"GERBIL_PATH" '#f)))
          (if _$e61722_ _$e61722_ (path-expand '"~/.gerbil")))))
    (define gerbil-runtime-smp?
      (lambda ()
        (member '"--enable-smp"
                (let ((__tmp61816 (configure-command-string)))
                  (declare (not safe))
                  (string-split __tmp61816 '#\')))))))
