(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1707647931)
  (begin
    (define current-module-library-path (make-parameter '#f))
    (define current-module-registry (make-parameter '#f))
    (define __reload-module (make-parameter '#f))
    (define load-module__%
      (lambda (_modpath69226_ _reload?69227_)
        (let ((_$e69229_
               (if (let () (declare (not safe)) (not _reload?69227_))
                   (let ((__tmp73716 (current-module-registry)))
                     (declare (not safe))
                     (table-ref __tmp73716 _modpath69226_ '#f))
                   '#f)))
          (if _$e69229_
              _$e69229_
              (let ((_$e69232_
                     (let ()
                       (declare (not safe))
                       (find-library-module _modpath69226_))))
                (if _$e69232_
                    ((lambda (_path69235_)
                       (let ((_lpath69237_ (load _path69235_)))
                         (let ((__tmp73717 (current-module-registry)))
                           (declare (not safe))
                           (table-set! __tmp73717 _modpath69226_ _lpath69237_))
                         _lpath69237_))
                     _$e69232_)
                    (error '"module not found" _modpath69226_)))))))
    (define load-module__0
      (lambda (_modpath69242_)
        (let ((_reload?69244_ (__reload-module)))
          (declare (not safe))
          (load-module__% _modpath69242_ _reload?69244_))))
    (define load-module
      (lambda _g73719_
        (let ((_g73718_ (let () (declare (not safe)) (##length _g73719_))))
          (cond ((let () (declare (not safe)) (##fx= _g73718_ 1))
                 (apply (lambda (_modpath69242_)
                          (let ()
                            (declare (not safe))
                            (load-module__0 _modpath69242_)))
                        _g73719_))
                ((let () (declare (not safe)) (##fx= _g73718_ 2))
                 (apply (lambda (_modpath69246_ _reload?69247_)
                          (let ()
                            (declare (not safe))
                            (load-module__% _modpath69246_ _reload?69247_)))
                        _g73719_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  load-module
                  _g73719_))))))
    (define find-library-module
      (lambda (_modpath69160_)
        (letrec ((_find-compiled-file69162_
                  (lambda (_npath69214_)
                    (let ((_basepath69216_
                           (let ()
                             (declare (not safe))
                             (##string-append _npath69214_ '".o"))))
                      (let _lp69218_ ((_current69220_ '#f) (_n69221_ '1))
                        (let ((_next69223_
                               (let ((__tmp73720 (number->string _n69221_)))
                                 (declare (not safe))
                                 (##string-append
                                  _basepath69216_
                                  __tmp73720))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _next69223_))
                              (let ((__tmp73721
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _n69221_ '1))))
                                (declare (not safe))
                                (_lp69218_ _next69223_ __tmp73721))
                              _current69220_))))))
                 (_find-source-file69163_
                  (lambda (_npath69210_)
                    (let ((_spath69212_ (string-append _npath69210_ '".scm")))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _spath69212_))
                          _spath69212_
                          '#f)))))
          (let _lp69165_ ((_rest69167_ (current-module-library-path)))
            (let* ((_rest6916869176_ _rest69167_)
                   (_else6917069184_ (lambda () '#f))
                   (_K6917269198_
                    (lambda (_rest69187_ _dir69188_)
                      (let* ((_npath69190_
                              (path-expand
                               _modpath69160_
                               (path-expand _dir69188_)))
                             (_$e69192_
                              (let ()
                                (declare (not safe))
                                (_find-compiled-file69162_ _npath69190_))))
                        (if _$e69192_
                            (path-normalize _$e69192_)
                            (let ((_$e69195_
                                   (let ()
                                     (declare (not safe))
                                     (_find-source-file69163_ _npath69190_))))
                              (if _$e69195_
                                  (path-normalize _$e69195_)
                                  (let ()
                                    (declare (not safe))
                                    (_lp69165_ _rest69187_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest6916869176_))
                  (let ((_hd6917369201_
                         (let ()
                           (declare (not safe))
                           (##car _rest6916869176_)))
                        (_tl6917469203_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6916869176_))))
                    (let* ((_dir69206_ _hd6917369201_)
                           (_rest69208_ _tl6917469203_))
                      (declare (not safe))
                      (_K6917269198_ _rest69208_ _dir69206_)))
                  (let () (declare (not safe)) (_else6917069184_))))))))))
