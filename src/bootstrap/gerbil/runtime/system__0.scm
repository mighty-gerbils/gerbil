(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1710694201)
  (begin
    (define gerbil-version-string (lambda () '"v0.18.1-88-gd50e53cf"))
    (define gerbil-system-manifest
      (let ((__tmp59292
             (let ((__tmp59293
                    (let () (declare (not safe)) (gerbil-version-string))))
               (declare (not safe))
               (cons '"Gerbil" __tmp59293)))
            (__tmp59289
             (let ((__tmp59290
                    (let ((__tmp59291 (system-version-string)))
                      (declare (not safe))
                      (cons '"Gambit" __tmp59291))))
               (declare (not safe))
               (cons __tmp59290 '()))))
        (declare (not safe))
        (cons __tmp59292 __tmp59289)))
    (define build-manifest gerbil-system-manifest)
    (set! build-manifest build-manifest)
    (define display-build-manifest__%
      (lambda (_manifest59233_ _port59234_)
        (let ((_p59240_
               (lambda (_g5923559237_) (display _g5923559237_ _port59234_)))
              (_l59241_ (length _manifest59233_))
              (_i59242_ '0))
          (for-each
           (lambda (_layer59244_)
             (if (let () (declare (not safe)) (zero? _i59242_))
                 '#!void
                 (if (= _i59242_ '1)
                     (let () (declare (not safe)) (_p59240_ '" on "))
                     (let () (declare (not safe)) (_p59240_ '", "))))
             (let* ((_layer5924559252_ _layer59244_)
                    (_E5924759256_
                     (lambda ()
                       (error '"No clause matching" _layer5924559252_)))
                    (_K5924859262_
                     (lambda (_version59259_ _name59260_)
                       (let () (declare (not safe)) (_p59240_ _name59260_))
                       (let () (declare (not safe)) (_p59240_ '" "))
                       (let ()
                         (declare (not safe))
                         (_p59240_ _version59259_)))))
               (if (let () (declare (not safe)) (##pair? _layer5924559252_))
                   (let ((_hd5924959265_
                          (let ()
                            (declare (not safe))
                            (##car _layer5924559252_)))
                         (_tl5925059267_
                          (let ()
                            (declare (not safe))
                            (##cdr _layer5924559252_))))
                     (let* ((_name59270_ _hd5924959265_)
                            (_version59272_ _tl5925059267_))
                       (declare (not safe))
                       (_K5924859262_ _version59272_ _name59270_)))
                   (let () (declare (not safe)) (_E5924759256_))))
             (set! _i59242_ (+ _i59242_ '1)))
           _manifest59233_))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_manifest59278_ build-manifest)
               (_port59280_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _manifest59278_ _port59280_))))
    (define display-build-manifest__1
      (lambda (_manifest59282_)
        (let ((_port59284_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _manifest59282_ _port59284_))))
    (define display-build-manifest
      (lambda _g59295_
        (let ((_g59294_ (let () (declare (not safe)) (##length _g59295_))))
          (cond ((let () (declare (not safe)) (##fx= _g59294_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__0)))
                        _g59295_))
                ((let () (declare (not safe)) (##fx= _g59294_ 1))
                 (apply (lambda (_manifest59282_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__1 _manifest59282_)))
                        _g59295_))
                ((let () (declare (not safe)) (##fx= _g59294_ 2))
                 (apply (lambda (_manifest59286_ _port59287_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__%
                             _manifest59286_
                             _port59287_)))
                        _g59295_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g59295_))))))
    (define build-manifest/layer
      (lambda (_layer59228_)
        (let ((_l59230_ (assoc _layer59228_ build-manifest)))
          (if _l59230_
              (let () (declare (not safe)) (cons _l59230_ '()))
              '()))))
    (define build-manifest/head
      (lambda ()
        (let ((__tmp59296 (car build-manifest)))
          (declare (not safe))
          (cons __tmp59296 '()))))
    (define build-manifest-string__%
      (lambda (_manifest59215_)
        (call-with-output-string
         '()
         (lambda (_p59217_)
           (let ()
             (declare (not safe))
             (display-build-manifest__% _manifest59215_ _p59217_))))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_manifest59223_ build-manifest))
          (declare (not safe))
          (build-manifest-string__% _manifest59223_))))
    (define build-manifest-string
      (lambda _g59298_
        (let ((_g59297_ (let () (declare (not safe)) (##length _g59298_))))
          (cond ((let () (declare (not safe)) (##fx= _g59297_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__0)))
                        _g59298_))
                ((let () (declare (not safe)) (##fx= _g59297_ 1))
                 (apply (lambda (_manifest59225_)
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__% _manifest59225_)))
                        _g59298_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g59298_))))))
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
        (let ((_$e59209_ (getenv '"GERBIL_HOME" '#f)))
          (if _$e59209_ _$e59209_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_$e59205_ (getenv '"GERBIL_PATH" '#f)))
          (if _$e59205_ _$e59205_ (path-expand '"~/.gerbil")))))
    (define __smp? '#!void)
    (define gerbil-runtime-smp?
      (lambda ()
        (if (let () (declare (not safe)) (eq? __smp? '#!void))
            (set! __smp?
                  (member '"--enable-smp"
                          (let ((__tmp59299 (configure-command-string)))
                            (declare (not safe))
                            (string-split __tmp59299 '#\'))))
            '#!void)
        __smp?))))
