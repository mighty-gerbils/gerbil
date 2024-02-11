(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1707659877)
  (begin
    (define current-module-library-path (make-parameter '#f))
    (define current-module-registry (make-parameter '#f))
    (define __reload-module (make-parameter '#f))
    (define load-module__%
      (lambda (_modpath69132_ _reload?69133_)
        (let ((_$e69135_
               (if (let () (declare (not safe)) (not _reload?69133_))
                   (let ((__tmp73622 (current-module-registry)))
                     (declare (not safe))
                     (table-ref __tmp73622 _modpath69132_ '#f))
                   '#f)))
          (if _$e69135_
              _$e69135_
              (let ((_$e69138_
                     (let ()
                       (declare (not safe))
                       (find-library-module _modpath69132_))))
                (if _$e69138_
                    ((lambda (_path69141_)
                       (let ((_lpath69143_ (load _path69141_)))
                         (let ((__tmp73623 (current-module-registry)))
                           (declare (not safe))
                           (table-set! __tmp73623 _modpath69132_ _lpath69143_))
                         _lpath69143_))
                     _$e69138_)
                    (error '"module not found" _modpath69132_)))))))
    (define load-module__0
      (lambda (_modpath69148_)
        (let ((_reload?69150_ (__reload-module)))
          (declare (not safe))
          (load-module__% _modpath69148_ _reload?69150_))))
    (define load-module
      (lambda _g73625_
        (let ((_g73624_ (let () (declare (not safe)) (##length _g73625_))))
          (cond ((let () (declare (not safe)) (##fx= _g73624_ 1))
                 (apply (lambda (_modpath69148_)
                          (let ()
                            (declare (not safe))
                            (load-module__0 _modpath69148_)))
                        _g73625_))
                ((let () (declare (not safe)) (##fx= _g73624_ 2))
                 (apply (lambda (_modpath69152_ _reload?69153_)
                          (let ()
                            (declare (not safe))
                            (load-module__% _modpath69152_ _reload?69153_)))
                        _g73625_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  load-module
                  _g73625_))))))
    (define find-library-module
      (lambda (_modpath69066_)
        (letrec ((_find-compiled-file69068_
                  (lambda (_npath69120_)
                    (let ((_basepath69122_
                           (let ()
                             (declare (not safe))
                             (##string-append _npath69120_ '".o"))))
                      (let _lp69124_ ((_current69126_ '#f) (_n69127_ '1))
                        (let ((_next69129_
                               (let ((__tmp73626 (number->string _n69127_)))
                                 (declare (not safe))
                                 (##string-append
                                  _basepath69122_
                                  __tmp73626))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _next69129_))
                              (let ((__tmp73627
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _n69127_ '1))))
                                (declare (not safe))
                                (_lp69124_ _next69129_ __tmp73627))
                              _current69126_))))))
                 (_find-source-file69069_
                  (lambda (_npath69116_)
                    (let ((_spath69118_ (string-append _npath69116_ '".scm")))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _spath69118_))
                          _spath69118_
                          '#f)))))
          (let _lp69071_ ((_rest69073_ (current-module-library-path)))
            (let* ((_rest6907469082_ _rest69073_)
                   (_else6907669090_ (lambda () '#f))
                   (_K6907869104_
                    (lambda (_rest69093_ _dir69094_)
                      (let* ((_npath69096_
                              (path-expand
                               _modpath69066_
                               (path-expand _dir69094_)))
                             (_$e69098_
                              (let ()
                                (declare (not safe))
                                (_find-compiled-file69068_ _npath69096_))))
                        (if _$e69098_
                            (path-normalize _$e69098_)
                            (let ((_$e69101_
                                   (let ()
                                     (declare (not safe))
                                     (_find-source-file69069_ _npath69096_))))
                              (if _$e69101_
                                  (path-normalize _$e69101_)
                                  (let ()
                                    (declare (not safe))
                                    (_lp69071_ _rest69093_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest6907469082_))
                  (let ((_hd6907969107_
                         (let ()
                           (declare (not safe))
                           (##car _rest6907469082_)))
                        (_tl6908069109_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6907469082_))))
                    (let* ((_dir69112_ _hd6907969107_)
                           (_rest69114_ _tl6908069109_))
                      (declare (not safe))
                      (_K6907869104_ _rest69114_ _dir69112_)))
                  (let () (declare (not safe)) (_else6907669090_))))))))))
