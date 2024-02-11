(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1707651231)
  (begin
    (define current-module-library-path (make-parameter '#f))
    (define current-module-registry (make-parameter '#f))
    (define __reload-module (make-parameter '#f))
    (define load-module__%
      (lambda (_modpath69130_ _reload?69131_)
        (let ((_$e69133_
               (if (let () (declare (not safe)) (not _reload?69131_))
                   (let ((__tmp73620 (current-module-registry)))
                     (declare (not safe))
                     (table-ref __tmp73620 _modpath69130_ '#f))
                   '#f)))
          (if _$e69133_
              _$e69133_
              (let ((_$e69136_
                     (let ()
                       (declare (not safe))
                       (find-library-module _modpath69130_))))
                (if _$e69136_
                    ((lambda (_path69139_)
                       (let ((_lpath69141_ (load _path69139_)))
                         (let ((__tmp73621 (current-module-registry)))
                           (declare (not safe))
                           (table-set! __tmp73621 _modpath69130_ _lpath69141_))
                         _lpath69141_))
                     _$e69136_)
                    (error '"module not found" _modpath69130_)))))))
    (define load-module__0
      (lambda (_modpath69146_)
        (let ((_reload?69148_ (__reload-module)))
          (declare (not safe))
          (load-module__% _modpath69146_ _reload?69148_))))
    (define load-module
      (lambda _g73623_
        (let ((_g73622_ (let () (declare (not safe)) (##length _g73623_))))
          (cond ((let () (declare (not safe)) (##fx= _g73622_ 1))
                 (apply (lambda (_modpath69146_)
                          (let ()
                            (declare (not safe))
                            (load-module__0 _modpath69146_)))
                        _g73623_))
                ((let () (declare (not safe)) (##fx= _g73622_ 2))
                 (apply (lambda (_modpath69150_ _reload?69151_)
                          (let ()
                            (declare (not safe))
                            (load-module__% _modpath69150_ _reload?69151_)))
                        _g73623_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  load-module
                  _g73623_))))))
    (define find-library-module
      (lambda (_modpath69064_)
        (letrec ((_find-compiled-file69066_
                  (lambda (_npath69118_)
                    (let ((_basepath69120_
                           (let ()
                             (declare (not safe))
                             (##string-append _npath69118_ '".o"))))
                      (let _lp69122_ ((_current69124_ '#f) (_n69125_ '1))
                        (let ((_next69127_
                               (let ((__tmp73624 (number->string _n69125_)))
                                 (declare (not safe))
                                 (##string-append
                                  _basepath69120_
                                  __tmp73624))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _next69127_))
                              (let ((__tmp73625
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _n69125_ '1))))
                                (declare (not safe))
                                (_lp69122_ _next69127_ __tmp73625))
                              _current69124_))))))
                 (_find-source-file69067_
                  (lambda (_npath69114_)
                    (let ((_spath69116_ (string-append _npath69114_ '".scm")))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _spath69116_))
                          _spath69116_
                          '#f)))))
          (let _lp69069_ ((_rest69071_ (current-module-library-path)))
            (let* ((_rest6907269080_ _rest69071_)
                   (_else6907469088_ (lambda () '#f))
                   (_K6907669102_
                    (lambda (_rest69091_ _dir69092_)
                      (let* ((_npath69094_
                              (path-expand
                               _modpath69064_
                               (path-expand _dir69092_)))
                             (_$e69096_
                              (let ()
                                (declare (not safe))
                                (_find-compiled-file69066_ _npath69094_))))
                        (if _$e69096_
                            (path-normalize _$e69096_)
                            (let ((_$e69099_
                                   (let ()
                                     (declare (not safe))
                                     (_find-source-file69067_ _npath69094_))))
                              (if _$e69099_
                                  (path-normalize _$e69099_)
                                  (let ()
                                    (declare (not safe))
                                    (_lp69069_ _rest69091_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest6907269080_))
                  (let ((_hd6907769105_
                         (let ()
                           (declare (not safe))
                           (##car _rest6907269080_)))
                        (_tl6907869107_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6907269080_))))
                    (let* ((_dir69110_ _hd6907769105_)
                           (_rest69112_ _tl6907869107_))
                      (declare (not safe))
                      (_K6907669102_ _rest69112_ _dir69110_)))
                  (let () (declare (not safe)) (_else6907469088_))))))))))
