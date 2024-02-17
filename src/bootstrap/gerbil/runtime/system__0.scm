(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1708168067)
  (begin
    (define gerbil-version-string (lambda () '"v0.18.1-36-g9a7986a6"))
    (define gerbil-system-manifest
      (let ((__tmp85606
             (let ((__tmp85607
                    (let () (declare (not safe)) (gerbil-version-string))))
               (declare (not safe))
               (cons '"Gerbil" __tmp85607)))
            (__tmp85603
             (let ((__tmp85604
                    (let ((__tmp85605 (system-version-string)))
                      (declare (not safe))
                      (cons '"Gambit" __tmp85605))))
               (declare (not safe))
               (cons __tmp85604 '()))))
        (declare (not safe))
        (cons __tmp85606 __tmp85603)))
    (define build-manifest gerbil-system-manifest)
    (set! build-manifest build-manifest)
    (define display-build-manifest__%
      (lambda (_manifest80979_ _port80980_)
        (let ((_p80986_
               (lambda (_g8098180983_) (display _g8098180983_ _port80980_)))
              (_l80987_ (length _manifest80979_))
              (_i80988_ '0))
          (for-each
           (lambda (_layer80990_)
             (if (let () (declare (not safe)) (zero? _i80988_))
                 '#!void
                 (if (= _i80988_ '1)
                     (let () (declare (not safe)) (_p80986_ '" on "))
                     (let () (declare (not safe)) (_p80986_ '", "))))
             (let* ((_layer8099180998_ _layer80990_)
                    (_E8099381002_
                     (lambda ()
                       (error '"No clause matching" _layer8099180998_)))
                    (_K8099481008_
                     (lambda (_version81005_ _name81006_)
                       (let () (declare (not safe)) (_p80986_ _name81006_))
                       (let () (declare (not safe)) (_p80986_ '" "))
                       (let ()
                         (declare (not safe))
                         (_p80986_ _version81005_)))))
               (if (let () (declare (not safe)) (##pair? _layer8099180998_))
                   (let ((_hd8099581011_
                          (let ()
                            (declare (not safe))
                            (##car _layer8099180998_)))
                         (_tl8099681013_
                          (let ()
                            (declare (not safe))
                            (##cdr _layer8099180998_))))
                     (let* ((_name81016_ _hd8099581011_)
                            (_version81018_ _tl8099681013_))
                       (declare (not safe))
                       (_K8099481008_ _version81018_ _name81016_)))
                   (let () (declare (not safe)) (_E8099381002_))))
             (set! _i80988_ (+ _i80988_ '1)))
           _manifest80979_))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_manifest81024_ build-manifest)
               (_port81026_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _manifest81024_ _port81026_))))
    (define display-build-manifest__1
      (lambda (_manifest81028_)
        (let ((_port81030_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _manifest81028_ _port81030_))))
    (define display-build-manifest
      (lambda _g85609_
        (let ((_g85608_ (let () (declare (not safe)) (##length _g85609_))))
          (cond ((let () (declare (not safe)) (##fx= _g85608_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__0)))
                        _g85609_))
                ((let () (declare (not safe)) (##fx= _g85608_ 1))
                 (apply (lambda (_manifest81028_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__1 _manifest81028_)))
                        _g85609_))
                ((let () (declare (not safe)) (##fx= _g85608_ 2))
                 (apply (lambda (_manifest81032_ _port81033_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__%
                             _manifest81032_
                             _port81033_)))
                        _g85609_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g85609_))))))
    (define build-manifest/layer
      (lambda (_layer80974_)
        (let ((_l80976_ (assoc _layer80974_ build-manifest)))
          (if _l80976_
              (let () (declare (not safe)) (cons _l80976_ '()))
              '()))))
    (define build-manifest/head
      (lambda ()
        (let ((__tmp85610 (car build-manifest)))
          (declare (not safe))
          (cons __tmp85610 '()))))
    (define build-manifest-string__%
      (lambda (_manifest80961_)
        (call-with-output-string
         '()
         (lambda (_p80963_)
           (let ()
             (declare (not safe))
             (display-build-manifest__% _manifest80961_ _p80963_))))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_manifest80969_ build-manifest))
          (declare (not safe))
          (build-manifest-string__% _manifest80969_))))
    (define build-manifest-string
      (lambda _g85612_
        (let ((_g85611_ (let () (declare (not safe)) (##length _g85612_))))
          (cond ((let () (declare (not safe)) (##fx= _g85611_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__0)))
                        _g85612_))
                ((let () (declare (not safe)) (##fx= _g85611_ 1))
                 (apply (lambda (_manifest80971_)
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__% _manifest80971_)))
                        _g85612_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g85612_))))))
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
        (let ((_$e80955_ (getenv '"GERBIL_HOME" '#f)))
          (if _$e80955_ _$e80955_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_$e80951_ (getenv '"GERBIL_PATH" '#f)))
          (if _$e80951_ _$e80951_ (path-expand '"~/.gerbil")))))
    (define gerbil-runtime-smp?
      (lambda ()
        (member '"--enable-smp"
                (let ((__tmp85613 (configure-command-string)))
                  (declare (not safe))
                  (string-split __tmp85613 '#\')))))))
