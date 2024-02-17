(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1708165428)
  (begin
    (define gerbil-version-string (lambda () '"v0.18.1-33-g18e60a9d"))
    (define gerbil-system-manifest
      (let ((__tmp85165
             (let ((__tmp85166
                    (let () (declare (not safe)) (gerbil-version-string))))
               (declare (not safe))
               (cons '"Gerbil" __tmp85166)))
            (__tmp85162
             (let ((__tmp85163
                    (let ((__tmp85164 (system-version-string)))
                      (declare (not safe))
                      (cons '"Gambit" __tmp85164))))
               (declare (not safe))
               (cons __tmp85163 '()))))
        (declare (not safe))
        (cons __tmp85165 __tmp85162)))
    (define build-manifest gerbil-system-manifest)
    (set! build-manifest build-manifest)
    (define display-build-manifest__%
      (lambda (_manifest80538_ _port80539_)
        (let ((_p80545_
               (lambda (_g8054080542_) (display _g8054080542_ _port80539_)))
              (_l80546_ (length _manifest80538_))
              (_i80547_ '0))
          (for-each
           (lambda (_layer80549_)
             (if (let () (declare (not safe)) (zero? _i80547_))
                 '#!void
                 (if (= _i80547_ '1)
                     (let () (declare (not safe)) (_p80545_ '" on "))
                     (let () (declare (not safe)) (_p80545_ '", "))))
             (let* ((_layer8055080557_ _layer80549_)
                    (_E8055280561_
                     (lambda ()
                       (error '"No clause matching" _layer8055080557_)))
                    (_K8055380567_
                     (lambda (_version80564_ _name80565_)
                       (let () (declare (not safe)) (_p80545_ _name80565_))
                       (let () (declare (not safe)) (_p80545_ '" "))
                       (let ()
                         (declare (not safe))
                         (_p80545_ _version80564_)))))
               (if (let () (declare (not safe)) (##pair? _layer8055080557_))
                   (let ((_hd8055480570_
                          (let ()
                            (declare (not safe))
                            (##car _layer8055080557_)))
                         (_tl8055580572_
                          (let ()
                            (declare (not safe))
                            (##cdr _layer8055080557_))))
                     (let* ((_name80575_ _hd8055480570_)
                            (_version80577_ _tl8055580572_))
                       (declare (not safe))
                       (_K8055380567_ _version80577_ _name80575_)))
                   (let () (declare (not safe)) (_E8055280561_))))
             (set! _i80547_ (+ _i80547_ '1)))
           _manifest80538_))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_manifest80583_ build-manifest)
               (_port80585_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _manifest80583_ _port80585_))))
    (define display-build-manifest__1
      (lambda (_manifest80587_)
        (let ((_port80589_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _manifest80587_ _port80589_))))
    (define display-build-manifest
      (lambda _g85168_
        (let ((_g85167_ (let () (declare (not safe)) (##length _g85168_))))
          (cond ((let () (declare (not safe)) (##fx= _g85167_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__0)))
                        _g85168_))
                ((let () (declare (not safe)) (##fx= _g85167_ 1))
                 (apply (lambda (_manifest80587_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__1 _manifest80587_)))
                        _g85168_))
                ((let () (declare (not safe)) (##fx= _g85167_ 2))
                 (apply (lambda (_manifest80591_ _port80592_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__%
                             _manifest80591_
                             _port80592_)))
                        _g85168_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g85168_))))))
    (define build-manifest/layer
      (lambda (_layer80533_)
        (let ((_l80535_ (assoc _layer80533_ build-manifest)))
          (if _l80535_
              (let () (declare (not safe)) (cons _l80535_ '()))
              '()))))
    (define build-manifest/head
      (lambda ()
        (let ((__tmp85169 (car build-manifest)))
          (declare (not safe))
          (cons __tmp85169 '()))))
    (define build-manifest-string__%
      (lambda (_manifest80520_)
        (call-with-output-string
         '()
         (lambda (_p80522_)
           (let ()
             (declare (not safe))
             (display-build-manifest__% _manifest80520_ _p80522_))))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_manifest80528_ build-manifest))
          (declare (not safe))
          (build-manifest-string__% _manifest80528_))))
    (define build-manifest-string
      (lambda _g85171_
        (let ((_g85170_ (let () (declare (not safe)) (##length _g85171_))))
          (cond ((let () (declare (not safe)) (##fx= _g85170_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__0)))
                        _g85171_))
                ((let () (declare (not safe)) (##fx= _g85170_ 1))
                 (apply (lambda (_manifest80530_)
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__% _manifest80530_)))
                        _g85171_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g85171_))))))
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
        (let ((_$e80514_ (getenv '"GERBIL_HOME" '#f)))
          (if _$e80514_ _$e80514_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_$e80510_ (getenv '"GERBIL_PATH" '#f)))
          (if _$e80510_ _$e80510_ (path-expand '"~/.gerbil")))))
    (define gerbil-runtime-smp?
      (lambda ()
        (member '"--enable-smp"
                (let ((__tmp85172 (configure-command-string)))
                  (declare (not safe))
                  (string-split __tmp85172 '#\')))))))
