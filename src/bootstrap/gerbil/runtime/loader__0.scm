(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1707740665)
  (begin
    (define current-module-library-path (make-parameter '#f))
    (define current-module-registry (make-parameter '#f))
    (define __reload-module (make-parameter '#f))
    (define load-module__%
      (lambda (_modpath69537_ _reload?69538_)
        (let ((_$e69540_
               (if (let () (declare (not safe)) (not _reload?69538_))
                   (let ((__tmp74127 (current-module-registry)))
                     (declare (not safe))
                     (table-ref __tmp74127 _modpath69537_ '#f))
                   '#f)))
          (if _$e69540_
              _$e69540_
              (let ((_$e69543_
                     (let ()
                       (declare (not safe))
                       (find-library-module _modpath69537_))))
                (if _$e69543_
                    ((lambda (_path69546_)
                       (let ((_lpath69548_ (load _path69546_)))
                         (let ((__tmp74128 (current-module-registry)))
                           (declare (not safe))
                           (table-set! __tmp74128 _modpath69537_ _lpath69548_))
                         _lpath69548_))
                     _$e69543_)
                    (error '"module not found" _modpath69537_)))))))
    (define load-module__0
      (lambda (_modpath69553_)
        (let ((_reload?69555_ (__reload-module)))
          (declare (not safe))
          (load-module__% _modpath69553_ _reload?69555_))))
    (define load-module
      (lambda _g74130_
        (let ((_g74129_ (let () (declare (not safe)) (##length _g74130_))))
          (cond ((let () (declare (not safe)) (##fx= _g74129_ 1))
                 (apply (lambda (_modpath69553_)
                          (let ()
                            (declare (not safe))
                            (load-module__0 _modpath69553_)))
                        _g74130_))
                ((let () (declare (not safe)) (##fx= _g74129_ 2))
                 (apply (lambda (_modpath69557_ _reload?69558_)
                          (let ()
                            (declare (not safe))
                            (load-module__% _modpath69557_ _reload?69558_)))
                        _g74130_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  load-module
                  _g74130_))))))
    (define find-library-module
      (lambda (_modpath69471_)
        (letrec ((_find-compiled-file69473_
                  (lambda (_npath69525_)
                    (let ((_basepath69527_
                           (let ()
                             (declare (not safe))
                             (##string-append _npath69525_ '".o"))))
                      (let _lp69529_ ((_current69531_ '#f) (_n69532_ '1))
                        (let ((_next69534_
                               (let ((__tmp74131 (number->string _n69532_)))
                                 (declare (not safe))
                                 (##string-append
                                  _basepath69527_
                                  __tmp74131))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _next69534_))
                              (let ((__tmp74132
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _n69532_ '1))))
                                (declare (not safe))
                                (_lp69529_ _next69534_ __tmp74132))
                              _current69531_))))))
                 (_find-source-file69474_
                  (lambda (_npath69521_)
                    (let ((_spath69523_ (string-append _npath69521_ '".scm")))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _spath69523_))
                          _spath69523_
                          '#f)))))
          (let _lp69476_ ((_rest69478_ (current-module-library-path)))
            (let* ((_rest6947969487_ _rest69478_)
                   (_else6948169495_ (lambda () '#f))
                   (_K6948369509_
                    (lambda (_rest69498_ _dir69499_)
                      (let* ((_npath69501_
                              (path-expand
                               _modpath69471_
                               (path-expand _dir69499_)))
                             (_$e69503_
                              (let ()
                                (declare (not safe))
                                (_find-compiled-file69473_ _npath69501_))))
                        (if _$e69503_
                            (path-normalize _$e69503_)
                            (let ((_$e69506_
                                   (let ()
                                     (declare (not safe))
                                     (_find-source-file69474_ _npath69501_))))
                              (if _$e69506_
                                  (path-normalize _$e69506_)
                                  (let ()
                                    (declare (not safe))
                                    (_lp69476_ _rest69498_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest6947969487_))
                  (let ((_hd6948469512_
                         (let ()
                           (declare (not safe))
                           (##car _rest6947969487_)))
                        (_tl6948569514_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6947969487_))))
                    (let* ((_dir69517_ _hd6948469512_)
                           (_rest69519_ _tl6948569514_))
                      (declare (not safe))
                      (_K6948369509_ _rest69519_ _dir69517_)))
                  (let () (declare (not safe)) (_else6948169495_))))))))))
