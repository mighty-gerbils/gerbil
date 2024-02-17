(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1708194417)
  (begin
    (define gerbil-version-string (lambda () '"v0.18.1-44-gf09c6c58"))
    (define gerbil-system-manifest
      (let ((__tmp77859
             (let ((__tmp77860
                    (let () (declare (not safe)) (gerbil-version-string))))
               (declare (not safe))
               (cons '"Gerbil" __tmp77860)))
            (__tmp77856
             (let ((__tmp77857
                    (let ((__tmp77858 (system-version-string)))
                      (declare (not safe))
                      (cons '"Gambit" __tmp77858))))
               (declare (not safe))
               (cons __tmp77857 '()))))
        (declare (not safe))
        (cons __tmp77859 __tmp77856)))
    (define build-manifest gerbil-system-manifest)
    (set! build-manifest build-manifest)
    (define display-build-manifest__%
      (lambda (_manifest73733_ _port73734_)
        (let ((_p73740_
               (lambda (_g7373573737_) (display _g7373573737_ _port73734_)))
              (_l73741_ (length _manifest73733_))
              (_i73742_ '0))
          (for-each
           (lambda (_layer73744_)
             (if (let () (declare (not safe)) (zero? _i73742_))
                 '#!void
                 (if (= _i73742_ '1)
                     (let () (declare (not safe)) (_p73740_ '" on "))
                     (let () (declare (not safe)) (_p73740_ '", "))))
             (let* ((_layer7374573752_ _layer73744_)
                    (_E7374773756_
                     (lambda ()
                       (error '"No clause matching" _layer7374573752_)))
                    (_K7374873762_
                     (lambda (_version73759_ _name73760_)
                       (let () (declare (not safe)) (_p73740_ _name73760_))
                       (let () (declare (not safe)) (_p73740_ '" "))
                       (let ()
                         (declare (not safe))
                         (_p73740_ _version73759_)))))
               (if (let () (declare (not safe)) (##pair? _layer7374573752_))
                   (let ((_hd7374973765_
                          (let ()
                            (declare (not safe))
                            (##car _layer7374573752_)))
                         (_tl7375073767_
                          (let ()
                            (declare (not safe))
                            (##cdr _layer7374573752_))))
                     (let* ((_name73770_ _hd7374973765_)
                            (_version73772_ _tl7375073767_))
                       (declare (not safe))
                       (_K7374873762_ _version73772_ _name73770_)))
                   (let () (declare (not safe)) (_E7374773756_))))
             (set! _i73742_ (+ _i73742_ '1)))
           _manifest73733_))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_manifest73778_ build-manifest)
               (_port73780_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _manifest73778_ _port73780_))))
    (define display-build-manifest__1
      (lambda (_manifest73782_)
        (let ((_port73784_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _manifest73782_ _port73784_))))
    (define display-build-manifest
      (lambda _g77862_
        (let ((_g77861_ (let () (declare (not safe)) (##length _g77862_))))
          (cond ((let () (declare (not safe)) (##fx= _g77861_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__0)))
                        _g77862_))
                ((let () (declare (not safe)) (##fx= _g77861_ 1))
                 (apply (lambda (_manifest73782_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__1 _manifest73782_)))
                        _g77862_))
                ((let () (declare (not safe)) (##fx= _g77861_ 2))
                 (apply (lambda (_manifest73786_ _port73787_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__%
                             _manifest73786_
                             _port73787_)))
                        _g77862_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g77862_))))))
    (define build-manifest/layer
      (lambda (_layer73728_)
        (let ((_l73730_ (assoc _layer73728_ build-manifest)))
          (if _l73730_
              (let () (declare (not safe)) (cons _l73730_ '()))
              '()))))
    (define build-manifest/head
      (lambda ()
        (let ((__tmp77863 (car build-manifest)))
          (declare (not safe))
          (cons __tmp77863 '()))))
    (define build-manifest-string__%
      (lambda (_manifest73715_)
        (call-with-output-string
         '()
         (lambda (_p73717_)
           (let ()
             (declare (not safe))
             (display-build-manifest__% _manifest73715_ _p73717_))))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_manifest73723_ build-manifest))
          (declare (not safe))
          (build-manifest-string__% _manifest73723_))))
    (define build-manifest-string
      (lambda _g77865_
        (let ((_g77864_ (let () (declare (not safe)) (##length _g77865_))))
          (cond ((let () (declare (not safe)) (##fx= _g77864_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__0)))
                        _g77865_))
                ((let () (declare (not safe)) (##fx= _g77864_ 1))
                 (apply (lambda (_manifest73725_)
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__% _manifest73725_)))
                        _g77865_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g77865_))))))
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
        (let ((_$e73709_ (getenv '"GERBIL_HOME" '#f)))
          (if _$e73709_ _$e73709_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_$e73705_ (getenv '"GERBIL_PATH" '#f)))
          (if _$e73705_ _$e73705_ (path-expand '"~/.gerbil")))))
    (define gerbil-runtime-smp?
      (lambda ()
        (member '"--enable-smp"
                (let ((__tmp77866 (configure-command-string)))
                  (declare (not safe))
                  (string-split __tmp77866 '#\')))))))
