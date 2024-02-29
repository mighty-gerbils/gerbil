(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1709213449)
  (begin
    (define gerbil-version-string (lambda () '"v0.18.1-54-gfa878098"))
    (define gerbil-system-manifest
      (let ((__tmp61560
             (let ((__tmp61561
                    (let () (declare (not safe)) (gerbil-version-string))))
               (declare (not safe))
               (cons '"Gerbil" __tmp61561)))
            (__tmp61557
             (let ((__tmp61558
                    (let ((__tmp61559 (system-version-string)))
                      (declare (not safe))
                      (cons '"Gambit" __tmp61559))))
               (declare (not safe))
               (cons __tmp61558 '()))))
        (declare (not safe))
        (cons __tmp61560 __tmp61557)))
    (define build-manifest gerbil-system-manifest)
    (set! build-manifest build-manifest)
    (define display-build-manifest__%
      (lambda (_manifest61501_ _port61502_)
        (let ((_p61508_
               (lambda (_g6150361505_) (display _g6150361505_ _port61502_)))
              (_l61509_ (length _manifest61501_))
              (_i61510_ '0))
          (for-each
           (lambda (_layer61512_)
             (if (let () (declare (not safe)) (zero? _i61510_))
                 '#!void
                 (if (= _i61510_ '1)
                     (let () (declare (not safe)) (_p61508_ '" on "))
                     (let () (declare (not safe)) (_p61508_ '", "))))
             (let* ((_layer6151361520_ _layer61512_)
                    (_E6151561524_
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (error '"No clause matching" _layer6151361520_))))
                    (_K6151661530_
                     (lambda (_version61527_ _name61528_)
                       (let () (declare (not safe)) (_p61508_ _name61528_))
                       (let () (declare (not safe)) (_p61508_ '" "))
                       (let ()
                         (declare (not safe))
                         (_p61508_ _version61527_)))))
               (if (let () (declare (not safe)) (##pair? _layer6151361520_))
                   (let ((_hd6151761533_
                          (let ()
                            (declare (not safe))
                            (##car _layer6151361520_)))
                         (_tl6151861535_
                          (let ()
                            (declare (not safe))
                            (##cdr _layer6151361520_))))
                     (let* ((_name61538_ _hd6151761533_)
                            (_version61540_ _tl6151861535_))
                       (declare (not safe))
                       (_K6151661530_ _version61540_ _name61538_)))
                   (let () (declare (not safe)) (_E6151561524_))))
             (set! _i61510_ (+ _i61510_ '1)))
           _manifest61501_))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_manifest61546_ build-manifest)
               (_port61548_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _manifest61546_ _port61548_))))
    (define display-build-manifest__1
      (lambda (_manifest61550_)
        (let ((_port61552_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _manifest61550_ _port61552_))))
    (define display-build-manifest
      (lambda _g61563_
        (let ((_g61562_ (let () (declare (not safe)) (##length _g61563_))))
          (cond ((let () (declare (not safe)) (##fx= _g61562_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__0)))
                        _g61563_))
                ((let () (declare (not safe)) (##fx= _g61562_ 1))
                 (apply (lambda (_manifest61550_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__1 _manifest61550_)))
                        _g61563_))
                ((let () (declare (not safe)) (##fx= _g61562_ 2))
                 (apply (lambda (_manifest61554_ _port61555_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__%
                             _manifest61554_
                             _port61555_)))
                        _g61563_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g61563_))))))
    (define build-manifest/layer
      (lambda (_layer61496_)
        (let ((_l61498_ (assoc _layer61496_ build-manifest)))
          (if _l61498_
              (let () (declare (not safe)) (cons _l61498_ '()))
              '()))))
    (define build-manifest/head
      (lambda ()
        (let ((__tmp61564 (car build-manifest)))
          (declare (not safe))
          (cons __tmp61564 '()))))
    (define build-manifest-string__%
      (lambda (_manifest61483_)
        (call-with-output-string
         '()
         (lambda (_p61485_)
           (let ()
             (declare (not safe))
             (display-build-manifest__% _manifest61483_ _p61485_))))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_manifest61491_ build-manifest))
          (declare (not safe))
          (build-manifest-string__% _manifest61491_))))
    (define build-manifest-string
      (lambda _g61566_
        (let ((_g61565_ (let () (declare (not safe)) (##length _g61566_))))
          (cond ((let () (declare (not safe)) (##fx= _g61565_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__0)))
                        _g61566_))
                ((let () (declare (not safe)) (##fx= _g61565_ 1))
                 (apply (lambda (_manifest61493_)
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__% _manifest61493_)))
                        _g61566_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g61566_))))))
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
        (let ((_$e61477_ (getenv '"GERBIL_HOME" '#f)))
          (if _$e61477_ _$e61477_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_$e61473_ (getenv '"GERBIL_PATH" '#f)))
          (if _$e61473_ _$e61473_ (path-expand '"~/.gerbil")))))
    (define gerbil-runtime-smp?
      (lambda ()
        (member '"--enable-smp"
                (let ((__tmp61567 (configure-command-string)))
                  (declare (not safe))
                  (string-split __tmp61567 '#\')))))))
