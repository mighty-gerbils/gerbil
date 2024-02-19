(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1708352923)
  (begin
    (define gerbil-version-string (lambda () '"v0.18.1-83-g51ff05c6"))
    (define gerbil-system-manifest
      (let ((__tmp60959
             (let ((__tmp60960
                    (let () (declare (not safe)) (gerbil-version-string))))
               (declare (not safe))
               (cons '"Gerbil" __tmp60960)))
            (__tmp60956
             (let ((__tmp60957
                    (let ((__tmp60958 (system-version-string)))
                      (declare (not safe))
                      (cons '"Gambit" __tmp60958))))
               (declare (not safe))
               (cons __tmp60957 '()))))
        (declare (not safe))
        (cons __tmp60959 __tmp60956)))
    (define build-manifest gerbil-system-manifest)
    (set! build-manifest build-manifest)
    (define display-build-manifest__%
      (lambda (_manifest60900_ _port60901_)
        (let ((_p60907_
               (lambda (_g6090260904_) (display _g6090260904_ _port60901_)))
              (_l60908_ (length _manifest60900_))
              (_i60909_ '0))
          (for-each
           (lambda (_layer60911_)
             (if (let () (declare (not safe)) (zero? _i60909_))
                 '#!void
                 (if (= _i60909_ '1)
                     (let () (declare (not safe)) (_p60907_ '" on "))
                     (let () (declare (not safe)) (_p60907_ '", "))))
             (let* ((_layer6091260919_ _layer60911_)
                    (_E6091460923_
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (error '"No clause matching" _layer6091260919_))))
                    (_K6091560929_
                     (lambda (_version60926_ _name60927_)
                       (let () (declare (not safe)) (_p60907_ _name60927_))
                       (let () (declare (not safe)) (_p60907_ '" "))
                       (let ()
                         (declare (not safe))
                         (_p60907_ _version60926_)))))
               (if (let () (declare (not safe)) (##pair? _layer6091260919_))
                   (let ((_hd6091660932_
                          (let ()
                            (declare (not safe))
                            (##car _layer6091260919_)))
                         (_tl6091760934_
                          (let ()
                            (declare (not safe))
                            (##cdr _layer6091260919_))))
                     (let* ((_name60937_ _hd6091660932_)
                            (_version60939_ _tl6091760934_))
                       (declare (not safe))
                       (_K6091560929_ _version60939_ _name60937_)))
                   (let () (declare (not safe)) (_E6091460923_))))
             (set! _i60909_ (+ _i60909_ '1)))
           _manifest60900_))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_manifest60945_ build-manifest)
               (_port60947_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _manifest60945_ _port60947_))))
    (define display-build-manifest__1
      (lambda (_manifest60949_)
        (let ((_port60951_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _manifest60949_ _port60951_))))
    (define display-build-manifest
      (lambda _g60962_
        (let ((_g60961_ (let () (declare (not safe)) (##length _g60962_))))
          (cond ((let () (declare (not safe)) (##fx= _g60961_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__0)))
                        _g60962_))
                ((let () (declare (not safe)) (##fx= _g60961_ 1))
                 (apply (lambda (_manifest60949_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__1 _manifest60949_)))
                        _g60962_))
                ((let () (declare (not safe)) (##fx= _g60961_ 2))
                 (apply (lambda (_manifest60953_ _port60954_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__%
                             _manifest60953_
                             _port60954_)))
                        _g60962_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g60962_))))))
    (define build-manifest/layer
      (lambda (_layer60895_)
        (let ((_l60897_ (assoc _layer60895_ build-manifest)))
          (if _l60897_
              (let () (declare (not safe)) (cons _l60897_ '()))
              '()))))
    (define build-manifest/head
      (lambda ()
        (let ((__tmp60963 (car build-manifest)))
          (declare (not safe))
          (cons __tmp60963 '()))))
    (define build-manifest-string__%
      (lambda (_manifest60882_)
        (call-with-output-string
         '()
         (lambda (_p60884_)
           (let ()
             (declare (not safe))
             (display-build-manifest__% _manifest60882_ _p60884_))))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_manifest60890_ build-manifest))
          (declare (not safe))
          (build-manifest-string__% _manifest60890_))))
    (define build-manifest-string
      (lambda _g60965_
        (let ((_g60964_ (let () (declare (not safe)) (##length _g60965_))))
          (cond ((let () (declare (not safe)) (##fx= _g60964_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__0)))
                        _g60965_))
                ((let () (declare (not safe)) (##fx= _g60964_ 1))
                 (apply (lambda (_manifest60892_)
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__% _manifest60892_)))
                        _g60965_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g60965_))))))
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
        (let ((_$e60876_ (getenv '"GERBIL_HOME" '#f)))
          (if _$e60876_ _$e60876_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_$e60872_ (getenv '"GERBIL_PATH" '#f)))
          (if _$e60872_ _$e60872_ (path-expand '"~/.gerbil")))))
    (define gerbil-runtime-smp?
      (lambda ()
        (member '"--enable-smp"
                (let ((__tmp60966 (configure-command-string)))
                  (declare (not safe))
                  (string-split __tmp60966 '#\')))))))
