(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1708510100)
  (begin
    (define gerbil-version-string (lambda () '"v0.18.1-38-gc48ad9ce"))
    (define gerbil-system-manifest
      (let ((__tmp61181
             (let ((__tmp61182
                    (let () (declare (not safe)) (gerbil-version-string))))
               (declare (not safe))
               (cons '"Gerbil" __tmp61182)))
            (__tmp61178
             (let ((__tmp61179
                    (let ((__tmp61180 (system-version-string)))
                      (declare (not safe))
                      (cons '"Gambit" __tmp61180))))
               (declare (not safe))
               (cons __tmp61179 '()))))
        (declare (not safe))
        (cons __tmp61181 __tmp61178)))
    (define build-manifest gerbil-system-manifest)
    (set! build-manifest build-manifest)
    (define display-build-manifest__%
      (lambda (_manifest61122_ _port61123_)
        (let ((_p61129_
               (lambda (_g6112461126_) (display _g6112461126_ _port61123_)))
              (_l61130_ (length _manifest61122_))
              (_i61131_ '0))
          (for-each
           (lambda (_layer61133_)
             (if (let () (declare (not safe)) (zero? _i61131_))
                 '#!void
                 (if (= _i61131_ '1)
                     (let () (declare (not safe)) (_p61129_ '" on "))
                     (let () (declare (not safe)) (_p61129_ '", "))))
             (let* ((_layer6113461141_ _layer61133_)
                    (_E6113661145_
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (error '"No clause matching" _layer6113461141_))))
                    (_K6113761151_
                     (lambda (_version61148_ _name61149_)
                       (let () (declare (not safe)) (_p61129_ _name61149_))
                       (let () (declare (not safe)) (_p61129_ '" "))
                       (let ()
                         (declare (not safe))
                         (_p61129_ _version61148_)))))
               (if (let () (declare (not safe)) (##pair? _layer6113461141_))
                   (let ((_hd6113861154_
                          (let ()
                            (declare (not safe))
                            (##car _layer6113461141_)))
                         (_tl6113961156_
                          (let ()
                            (declare (not safe))
                            (##cdr _layer6113461141_))))
                     (let* ((_name61159_ _hd6113861154_)
                            (_version61161_ _tl6113961156_))
                       (declare (not safe))
                       (_K6113761151_ _version61161_ _name61159_)))
                   (let () (declare (not safe)) (_E6113661145_))))
             (set! _i61131_ (+ _i61131_ '1)))
           _manifest61122_))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_manifest61167_ build-manifest)
               (_port61169_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _manifest61167_ _port61169_))))
    (define display-build-manifest__1
      (lambda (_manifest61171_)
        (let ((_port61173_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _manifest61171_ _port61173_))))
    (define display-build-manifest
      (lambda _g61184_
        (let ((_g61183_ (let () (declare (not safe)) (##length _g61184_))))
          (cond ((let () (declare (not safe)) (##fx= _g61183_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__0)))
                        _g61184_))
                ((let () (declare (not safe)) (##fx= _g61183_ 1))
                 (apply (lambda (_manifest61171_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__1 _manifest61171_)))
                        _g61184_))
                ((let () (declare (not safe)) (##fx= _g61183_ 2))
                 (apply (lambda (_manifest61175_ _port61176_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__%
                             _manifest61175_
                             _port61176_)))
                        _g61184_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g61184_))))))
    (define build-manifest/layer
      (lambda (_layer61117_)
        (let ((_l61119_ (assoc _layer61117_ build-manifest)))
          (if _l61119_
              (let () (declare (not safe)) (cons _l61119_ '()))
              '()))))
    (define build-manifest/head
      (lambda ()
        (let ((__tmp61185 (car build-manifest)))
          (declare (not safe))
          (cons __tmp61185 '()))))
    (define build-manifest-string__%
      (lambda (_manifest61104_)
        (call-with-output-string
         '()
         (lambda (_p61106_)
           (let ()
             (declare (not safe))
             (display-build-manifest__% _manifest61104_ _p61106_))))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_manifest61112_ build-manifest))
          (declare (not safe))
          (build-manifest-string__% _manifest61112_))))
    (define build-manifest-string
      (lambda _g61187_
        (let ((_g61186_ (let () (declare (not safe)) (##length _g61187_))))
          (cond ((let () (declare (not safe)) (##fx= _g61186_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__0)))
                        _g61187_))
                ((let () (declare (not safe)) (##fx= _g61186_ 1))
                 (apply (lambda (_manifest61114_)
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__% _manifest61114_)))
                        _g61187_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g61187_))))))
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
        (let ((_$e61098_ (getenv '"GERBIL_HOME" '#f)))
          (if _$e61098_ _$e61098_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_$e61094_ (getenv '"GERBIL_PATH" '#f)))
          (if _$e61094_ _$e61094_ (path-expand '"~/.gerbil")))))
    (define gerbil-runtime-smp?
      (lambda ()
        (member '"--enable-smp"
                (let ((__tmp61188 (configure-command-string)))
                  (declare (not safe))
                  (string-split __tmp61188 '#\')))))))
