(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1708418154)
  (begin
    (define gerbil-version-string (lambda () '"v0.18.1-35-gcc81df3c"))
    (define gerbil-system-manifest
      (let ((__tmp61139
             (let ((__tmp61140
                    (let () (declare (not safe)) (gerbil-version-string))))
               (declare (not safe))
               (cons '"Gerbil" __tmp61140)))
            (__tmp61136
             (let ((__tmp61137
                    (let ((__tmp61138 (system-version-string)))
                      (declare (not safe))
                      (cons '"Gambit" __tmp61138))))
               (declare (not safe))
               (cons __tmp61137 '()))))
        (declare (not safe))
        (cons __tmp61139 __tmp61136)))
    (define build-manifest gerbil-system-manifest)
    (set! build-manifest build-manifest)
    (define display-build-manifest__%
      (lambda (_manifest61080_ _port61081_)
        (let ((_p61087_
               (lambda (_g6108261084_) (display _g6108261084_ _port61081_)))
              (_l61088_ (length _manifest61080_))
              (_i61089_ '0))
          (for-each
           (lambda (_layer61091_)
             (if (let () (declare (not safe)) (zero? _i61089_))
                 '#!void
                 (if (= _i61089_ '1)
                     (let () (declare (not safe)) (_p61087_ '" on "))
                     (let () (declare (not safe)) (_p61087_ '", "))))
             (let* ((_layer6109261099_ _layer61091_)
                    (_E6109461103_
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (error '"No clause matching" _layer6109261099_))))
                    (_K6109561109_
                     (lambda (_version61106_ _name61107_)
                       (let () (declare (not safe)) (_p61087_ _name61107_))
                       (let () (declare (not safe)) (_p61087_ '" "))
                       (let ()
                         (declare (not safe))
                         (_p61087_ _version61106_)))))
               (if (let () (declare (not safe)) (##pair? _layer6109261099_))
                   (let ((_hd6109661112_
                          (let ()
                            (declare (not safe))
                            (##car _layer6109261099_)))
                         (_tl6109761114_
                          (let ()
                            (declare (not safe))
                            (##cdr _layer6109261099_))))
                     (let* ((_name61117_ _hd6109661112_)
                            (_version61119_ _tl6109761114_))
                       (declare (not safe))
                       (_K6109561109_ _version61119_ _name61117_)))
                   (let () (declare (not safe)) (_E6109461103_))))
             (set! _i61089_ (+ _i61089_ '1)))
           _manifest61080_))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_manifest61125_ build-manifest)
               (_port61127_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _manifest61125_ _port61127_))))
    (define display-build-manifest__1
      (lambda (_manifest61129_)
        (let ((_port61131_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _manifest61129_ _port61131_))))
    (define display-build-manifest
      (lambda _g61142_
        (let ((_g61141_ (let () (declare (not safe)) (##length _g61142_))))
          (cond ((let () (declare (not safe)) (##fx= _g61141_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__0)))
                        _g61142_))
                ((let () (declare (not safe)) (##fx= _g61141_ 1))
                 (apply (lambda (_manifest61129_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__1 _manifest61129_)))
                        _g61142_))
                ((let () (declare (not safe)) (##fx= _g61141_ 2))
                 (apply (lambda (_manifest61133_ _port61134_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__%
                             _manifest61133_
                             _port61134_)))
                        _g61142_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g61142_))))))
    (define build-manifest/layer
      (lambda (_layer61075_)
        (let ((_l61077_ (assoc _layer61075_ build-manifest)))
          (if _l61077_
              (let () (declare (not safe)) (cons _l61077_ '()))
              '()))))
    (define build-manifest/head
      (lambda ()
        (let ((__tmp61143 (car build-manifest)))
          (declare (not safe))
          (cons __tmp61143 '()))))
    (define build-manifest-string__%
      (lambda (_manifest61062_)
        (call-with-output-string
         '()
         (lambda (_p61064_)
           (let ()
             (declare (not safe))
             (display-build-manifest__% _manifest61062_ _p61064_))))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_manifest61070_ build-manifest))
          (declare (not safe))
          (build-manifest-string__% _manifest61070_))))
    (define build-manifest-string
      (lambda _g61145_
        (let ((_g61144_ (let () (declare (not safe)) (##length _g61145_))))
          (cond ((let () (declare (not safe)) (##fx= _g61144_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__0)))
                        _g61145_))
                ((let () (declare (not safe)) (##fx= _g61144_ 1))
                 (apply (lambda (_manifest61072_)
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__% _manifest61072_)))
                        _g61145_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g61145_))))))
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
        (let ((_$e61056_ (getenv '"GERBIL_HOME" '#f)))
          (if _$e61056_ _$e61056_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_$e61052_ (getenv '"GERBIL_PATH" '#f)))
          (if _$e61052_ _$e61052_ (path-expand '"~/.gerbil")))))
    (define gerbil-runtime-smp?
      (lambda ()
        (member '"--enable-smp"
                (let ((__tmp61146 (configure-command-string)))
                  (declare (not safe))
                  (string-split __tmp61146 '#\')))))))
