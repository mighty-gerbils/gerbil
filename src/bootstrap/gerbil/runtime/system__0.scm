(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1709111635)
  (begin
    (define gerbil-version-string (lambda () '"v0.18.1-47-g00dc4b16"))
    (define gerbil-system-manifest
      (let ((__tmp61185
             (let ((__tmp61186
                    (let () (declare (not safe)) (gerbil-version-string))))
               (declare (not safe))
               (cons '"Gerbil" __tmp61186)))
            (__tmp61182
             (let ((__tmp61183
                    (let ((__tmp61184 (system-version-string)))
                      (declare (not safe))
                      (cons '"Gambit" __tmp61184))))
               (declare (not safe))
               (cons __tmp61183 '()))))
        (declare (not safe))
        (cons __tmp61185 __tmp61182)))
    (define build-manifest gerbil-system-manifest)
    (set! build-manifest build-manifest)
    (define display-build-manifest__%
      (lambda (_manifest61126_ _port61127_)
        (let ((_p61133_
               (lambda (_g6112861130_) (display _g6112861130_ _port61127_)))
              (_l61134_ (length _manifest61126_))
              (_i61135_ '0))
          (for-each
           (lambda (_layer61137_)
             (if (let () (declare (not safe)) (zero? _i61135_))
                 '#!void
                 (if (= _i61135_ '1)
                     (let () (declare (not safe)) (_p61133_ '" on "))
                     (let () (declare (not safe)) (_p61133_ '", "))))
             (let* ((_layer6113861145_ _layer61137_)
                    (_E6114061149_
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (error '"No clause matching" _layer6113861145_))))
                    (_K6114161155_
                     (lambda (_version61152_ _name61153_)
                       (let () (declare (not safe)) (_p61133_ _name61153_))
                       (let () (declare (not safe)) (_p61133_ '" "))
                       (let ()
                         (declare (not safe))
                         (_p61133_ _version61152_)))))
               (if (let () (declare (not safe)) (##pair? _layer6113861145_))
                   (let ((_hd6114261158_
                          (let ()
                            (declare (not safe))
                            (##car _layer6113861145_)))
                         (_tl6114361160_
                          (let ()
                            (declare (not safe))
                            (##cdr _layer6113861145_))))
                     (let* ((_name61163_ _hd6114261158_)
                            (_version61165_ _tl6114361160_))
                       (declare (not safe))
                       (_K6114161155_ _version61165_ _name61163_)))
                   (let () (declare (not safe)) (_E6114061149_))))
             (set! _i61135_ (+ _i61135_ '1)))
           _manifest61126_))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_manifest61171_ build-manifest)
               (_port61173_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _manifest61171_ _port61173_))))
    (define display-build-manifest__1
      (lambda (_manifest61175_)
        (let ((_port61177_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _manifest61175_ _port61177_))))
    (define display-build-manifest
      (lambda _g61188_
        (let ((_g61187_ (let () (declare (not safe)) (##length _g61188_))))
          (cond ((let () (declare (not safe)) (##fx= _g61187_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__0)))
                        _g61188_))
                ((let () (declare (not safe)) (##fx= _g61187_ 1))
                 (apply (lambda (_manifest61175_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__1 _manifest61175_)))
                        _g61188_))
                ((let () (declare (not safe)) (##fx= _g61187_ 2))
                 (apply (lambda (_manifest61179_ _port61180_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__%
                             _manifest61179_
                             _port61180_)))
                        _g61188_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g61188_))))))
    (define build-manifest/layer
      (lambda (_layer61121_)
        (let ((_l61123_ (assoc _layer61121_ build-manifest)))
          (if _l61123_
              (let () (declare (not safe)) (cons _l61123_ '()))
              '()))))
    (define build-manifest/head
      (lambda ()
        (let ((__tmp61189 (car build-manifest)))
          (declare (not safe))
          (cons __tmp61189 '()))))
    (define build-manifest-string__%
      (lambda (_manifest61108_)
        (call-with-output-string
         '()
         (lambda (_p61110_)
           (let ()
             (declare (not safe))
             (display-build-manifest__% _manifest61108_ _p61110_))))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_manifest61116_ build-manifest))
          (declare (not safe))
          (build-manifest-string__% _manifest61116_))))
    (define build-manifest-string
      (lambda _g61191_
        (let ((_g61190_ (let () (declare (not safe)) (##length _g61191_))))
          (cond ((let () (declare (not safe)) (##fx= _g61190_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__0)))
                        _g61191_))
                ((let () (declare (not safe)) (##fx= _g61190_ 1))
                 (apply (lambda (_manifest61118_)
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__% _manifest61118_)))
                        _g61191_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g61191_))))))
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
        (let ((_$e61102_ (getenv '"GERBIL_HOME" '#f)))
          (if _$e61102_ _$e61102_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_$e61098_ (getenv '"GERBIL_PATH" '#f)))
          (if _$e61098_ _$e61098_ (path-expand '"~/.gerbil")))))
    (define gerbil-runtime-smp?
      (lambda ()
        (member '"--enable-smp"
                (let ((__tmp61192 (configure-command-string)))
                  (declare (not safe))
                  (string-split __tmp61192 '#\')))))))
