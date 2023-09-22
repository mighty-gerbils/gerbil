(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1695392652)
  (begin
    (define current-module-library-path (make-parameter '#f))
    (define current-module-registry (make-parameter '#f))
    (define __reload-module (make-parameter '#f))
    (define load-module__%
      (lambda (_modpath8904_ _reload?8905_)
        (let ((_$e8907_
               (if (let () (declare (not safe)) (not _reload?8905_))
                   (let ((__tmp8926 (current-module-registry)))
                     (declare (not safe))
                     (table-ref __tmp8926 _modpath8904_ '#f))
                   '#f)))
          (if _$e8907_
              _$e8907_
              (let ((_$e8910_
                     (let ()
                       (declare (not safe))
                       (find-library-module _modpath8904_))))
                (if _$e8910_
                    ((lambda (_path8913_)
                       (let ((_lpath8915_ (load _path8913_)))
                         (let ((__tmp8927 (current-module-registry)))
                           (declare (not safe))
                           (table-set! __tmp8927 _modpath8904_ _lpath8915_))
                         _lpath8915_))
                     _$e8910_)
                    (error '"module not found" _modpath8904_)))))))
    (define load-module__0
      (lambda (_modpath8920_)
        (let ((_reload?8922_ (__reload-module)))
          (declare (not safe))
          (load-module__% _modpath8920_ _reload?8922_))))
    (define load-module
      (lambda _g8929_
        (let ((_g8928_ (let () (declare (not safe)) (##length _g8929_))))
          (cond ((let () (declare (not safe)) (##fx= _g8928_ 1))
                 (apply (lambda (_modpath8920_)
                          (let ()
                            (declare (not safe))
                            (load-module__0 _modpath8920_)))
                        _g8929_))
                ((let () (declare (not safe)) (##fx= _g8928_ 2))
                 (apply (lambda (_modpath8924_ _reload?8925_)
                          (let ()
                            (declare (not safe))
                            (load-module__% _modpath8924_ _reload?8925_)))
                        _g8929_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  load-module
                  _g8929_))))))
    (define find-library-module
      (lambda (_modpath8838_)
        (letrec ((_find-compiled-file8840_
                  (lambda (_npath8892_)
                    (let ((_basepath8894_
                           (let ()
                             (declare (not safe))
                             (##string-append _npath8892_ '".o"))))
                      (let _lp8896_ ((_current8898_ '#f) (_n8899_ '1))
                        (let ((_next8901_
                               (let ((__tmp8930 (number->string _n8899_)))
                                 (declare (not safe))
                                 (##string-append _basepath8894_ __tmp8930))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _next8901_))
                              (let ((__tmp8931
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _n8899_ '1))))
                                (declare (not safe))
                                (_lp8896_ _next8901_ __tmp8931))
                              _current8898_))))))
                 (_find-source-file8841_
                  (lambda (_npath8888_)
                    (let ((_spath8890_ (string-append _npath8888_ '".scm")))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _spath8890_))
                          _spath8890_
                          '#f)))))
          (let _lp8843_ ((_rest8845_ (current-module-library-path)))
            (let* ((_rest88468854_ _rest8845_)
                   (_else88488862_ (lambda () '#f))
                   (_K88508876_
                    (lambda (_rest8865_ _dir8866_)
                      (let* ((_npath8868_
                              (path-expand
                               _modpath8838_
                               (path-expand _dir8866_)))
                             (_$e8870_
                              (let ()
                                (declare (not safe))
                                (_find-compiled-file8840_ _npath8868_))))
                        (if _$e8870_
                            (path-normalize _$e8870_)
                            (let ((_$e8873_
                                   (let ()
                                     (declare (not safe))
                                     (_find-source-file8841_ _npath8868_))))
                              (if _$e8873_
                                  (path-normalize _$e8873_)
                                  (let ()
                                    (declare (not safe))
                                    (_lp8843_ _rest8865_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest88468854_))
                  (let ((_hd88518879_
                         (let () (declare (not safe)) (##car _rest88468854_)))
                        (_tl88528881_
                         (let () (declare (not safe)) (##cdr _rest88468854_))))
                    (let* ((_dir8884_ _hd88518879_) (_rest8886_ _tl88528881_))
                      (declare (not safe))
                      (_K88508876_ _rest8886_ _dir8884_)))
                  (let () (declare (not safe)) (_else88488862_))))))))))
