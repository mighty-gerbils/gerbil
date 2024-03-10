(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1710064745)
  (begin
    (define gerbil-version-string (lambda () '"v0.18.1-64-gedca66d6"))
    (define gerbil-system-manifest
      (let ((__tmp58511
             (let ((__tmp58512
                    (let () (declare (not safe)) (gerbil-version-string))))
               (declare (not safe))
               (cons '"Gerbil" __tmp58512)))
            (__tmp58508
             (let ((__tmp58509
                    (let ((__tmp58510 (system-version-string)))
                      (declare (not safe))
                      (cons '"Gambit" __tmp58510))))
               (declare (not safe))
               (cons __tmp58509 '()))))
        (declare (not safe))
        (cons __tmp58511 __tmp58508)))
    (define build-manifest gerbil-system-manifest)
    (set! build-manifest build-manifest)
    (define display-build-manifest__%
      (lambda (_manifest58452_ _port58453_)
        (let ((_p58459_
               (lambda (_g5845458456_) (display _g5845458456_ _port58453_)))
              (_l58460_ (length _manifest58452_))
              (_i58461_ '0))
          (for-each
           (lambda (_layer58463_)
             (if (let () (declare (not safe)) (zero? _i58461_))
                 '#!void
                 (if (= _i58461_ '1)
                     (let () (declare (not safe)) (_p58459_ '" on "))
                     (let () (declare (not safe)) (_p58459_ '", "))))
             (let* ((_layer5846458471_ _layer58463_)
                    (_E5846658475_
                     (lambda ()
                       (error '"No clause matching" _layer5846458471_)))
                    (_K5846758481_
                     (lambda (_version58478_ _name58479_)
                       (let () (declare (not safe)) (_p58459_ _name58479_))
                       (let () (declare (not safe)) (_p58459_ '" "))
                       (let ()
                         (declare (not safe))
                         (_p58459_ _version58478_)))))
               (if (let () (declare (not safe)) (##pair? _layer5846458471_))
                   (let ((_hd5846858484_
                          (let ()
                            (declare (not safe))
                            (##car _layer5846458471_)))
                         (_tl5846958486_
                          (let ()
                            (declare (not safe))
                            (##cdr _layer5846458471_))))
                     (let* ((_name58489_ _hd5846858484_)
                            (_version58491_ _tl5846958486_))
                       (declare (not safe))
                       (_K5846758481_ _version58491_ _name58489_)))
                   (let () (declare (not safe)) (_E5846658475_))))
             (set! _i58461_ (+ _i58461_ '1)))
           _manifest58452_))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_manifest58497_ build-manifest)
               (_port58499_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _manifest58497_ _port58499_))))
    (define display-build-manifest__1
      (lambda (_manifest58501_)
        (let ((_port58503_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _manifest58501_ _port58503_))))
    (define display-build-manifest
      (lambda _g58514_
        (let ((_g58513_ (let () (declare (not safe)) (##length _g58514_))))
          (cond ((let () (declare (not safe)) (##fx= _g58513_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__0)))
                        _g58514_))
                ((let () (declare (not safe)) (##fx= _g58513_ 1))
                 (apply (lambda (_manifest58501_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__1 _manifest58501_)))
                        _g58514_))
                ((let () (declare (not safe)) (##fx= _g58513_ 2))
                 (apply (lambda (_manifest58505_ _port58506_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__%
                             _manifest58505_
                             _port58506_)))
                        _g58514_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g58514_))))))
    (define build-manifest/layer
      (lambda (_layer58447_)
        (let ((_l58449_ (assoc _layer58447_ build-manifest)))
          (if _l58449_
              (let () (declare (not safe)) (cons _l58449_ '()))
              '()))))
    (define build-manifest/head
      (lambda ()
        (let ((__tmp58515 (car build-manifest)))
          (declare (not safe))
          (cons __tmp58515 '()))))
    (define build-manifest-string__%
      (lambda (_manifest58434_)
        (call-with-output-string
         '()
         (lambda (_p58436_)
           (let ()
             (declare (not safe))
             (display-build-manifest__% _manifest58434_ _p58436_))))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_manifest58442_ build-manifest))
          (declare (not safe))
          (build-manifest-string__% _manifest58442_))))
    (define build-manifest-string
      (lambda _g58517_
        (let ((_g58516_ (let () (declare (not safe)) (##length _g58517_))))
          (cond ((let () (declare (not safe)) (##fx= _g58516_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__0)))
                        _g58517_))
                ((let () (declare (not safe)) (##fx= _g58516_ 1))
                 (apply (lambda (_manifest58444_)
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__% _manifest58444_)))
                        _g58517_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g58517_))))))
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
        (let ((_$e58428_ (getenv '"GERBIL_HOME" '#f)))
          (if _$e58428_ _$e58428_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_$e58424_ (getenv '"GERBIL_PATH" '#f)))
          (if _$e58424_ _$e58424_ (path-expand '"~/.gerbil")))))
    (define __smp? '#!void)
    (define gerbil-runtime-smp?
      (lambda ()
        (if (let () (declare (not safe)) (eq? __smp? '#!void))
            (set! __smp?
                  (member '"--enable-smp"
                          (let ((__tmp58518 (configure-command-string)))
                            (declare (not safe))
                            (string-split __tmp58518 '#\'))))
            '#!void)
        __smp?))))
