(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1710237310)
  (begin
    (define gerbil-version-string (lambda () '"v0.18.1-63-g6b553a94"))
    (define gerbil-system-manifest
      (let ((__tmp61133
             (let ((__tmp61134
                    (let () (declare (not safe)) (gerbil-version-string))))
               (declare (not safe))
               (cons '"Gerbil" __tmp61134)))
            (__tmp61130
             (let ((__tmp61131
                    (let ((__tmp61132 (system-version-string)))
                      (declare (not safe))
                      (cons '"Gambit" __tmp61132))))
               (declare (not safe))
               (cons __tmp61131 '()))))
        (declare (not safe))
        (cons __tmp61133 __tmp61130)))
    (define build-manifest gerbil-system-manifest)
    (set! build-manifest build-manifest)
    (define display-build-manifest__%
      (lambda (_manifest61074_ _port61075_)
        (let ((_p61081_
               (lambda (_g6107661078_) (display _g6107661078_ _port61075_)))
              (_l61082_ (length _manifest61074_))
              (_i61083_ '0))
          (for-each
           (lambda (_layer61085_)
             (if (let () (declare (not safe)) (zero? _i61083_))
                 '#!void
                 (if (= _i61083_ '1)
                     (let () (declare (not safe)) (_p61081_ '" on "))
                     (let () (declare (not safe)) (_p61081_ '", "))))
             (let* ((_layer6108661093_ _layer61085_)
                    (_E6108861097_
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (error '"No clause matching" _layer6108661093_))))
                    (_K6108961103_
                     (lambda (_version61100_ _name61101_)
                       (let () (declare (not safe)) (_p61081_ _name61101_))
                       (let () (declare (not safe)) (_p61081_ '" "))
                       (let ()
                         (declare (not safe))
                         (_p61081_ _version61100_)))))
               (if (let () (declare (not safe)) (##pair? _layer6108661093_))
                   (let ((_hd6109061106_
                          (let ()
                            (declare (not safe))
                            (##car _layer6108661093_)))
                         (_tl6109161108_
                          (let ()
                            (declare (not safe))
                            (##cdr _layer6108661093_))))
                     (let* ((_name61111_ _hd6109061106_)
                            (_version61113_ _tl6109161108_))
                       (declare (not safe))
                       (_K6108961103_ _version61113_ _name61111_)))
                   (let () (declare (not safe)) (_E6108861097_))))
             (set! _i61083_ (+ _i61083_ '1)))
           _manifest61074_))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_manifest61119_ build-manifest)
               (_port61121_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _manifest61119_ _port61121_))))
    (define display-build-manifest__1
      (lambda (_manifest61123_)
        (let ((_port61125_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _manifest61123_ _port61125_))))
    (define display-build-manifest
      (lambda _g61136_
        (let ((_g61135_ (let () (declare (not safe)) (##length _g61136_))))
          (cond ((let () (declare (not safe)) (##fx= _g61135_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__0)))
                        _g61136_))
                ((let () (declare (not safe)) (##fx= _g61135_ 1))
                 (apply (lambda (_manifest61123_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__1 _manifest61123_)))
                        _g61136_))
                ((let () (declare (not safe)) (##fx= _g61135_ 2))
                 (apply (lambda (_manifest61127_ _port61128_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__%
                             _manifest61127_
                             _port61128_)))
                        _g61136_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g61136_))))))
    (define build-manifest/layer
      (lambda (_layer61069_)
        (let ((_l61071_ (assoc _layer61069_ build-manifest)))
          (if _l61071_
              (let () (declare (not safe)) (cons _l61071_ '()))
              '()))))
    (define build-manifest/head
      (lambda ()
        (let ((__tmp61137 (car build-manifest)))
          (declare (not safe))
          (cons __tmp61137 '()))))
    (define build-manifest-string__%
      (lambda (_manifest61056_)
        (call-with-output-string
         '()
         (lambda (_p61058_)
           (let ()
             (declare (not safe))
             (display-build-manifest__% _manifest61056_ _p61058_))))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_manifest61064_ build-manifest))
          (declare (not safe))
          (build-manifest-string__% _manifest61064_))))
    (define build-manifest-string
      (lambda _g61139_
        (let ((_g61138_ (let () (declare (not safe)) (##length _g61139_))))
          (cond ((let () (declare (not safe)) (##fx= _g61138_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__0)))
                        _g61139_))
                ((let () (declare (not safe)) (##fx= _g61138_ 1))
                 (apply (lambda (_manifest61066_)
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__% _manifest61066_)))
                        _g61139_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g61139_))))))
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
        (let ((_$e61050_ (getenv '"GERBIL_HOME" '#f)))
          (if _$e61050_ _$e61050_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_$e61046_ (getenv '"GERBIL_PATH" '#f)))
          (if _$e61046_ _$e61046_ (path-expand '"~/.gerbil")))))
    (define __smp? '#!void)
    (define gerbil-runtime-smp?
      (lambda ()
        (if (let () (declare (not safe)) (eq? __smp? '#!void))
            (set! __smp?
                  (member '"--enable-smp"
                          (let ((__tmp61140 (configure-command-string)))
                            (declare (not safe))
                            (string-split __tmp61140 '#\'))))
            '#!void)
        __smp?))))
