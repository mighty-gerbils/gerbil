(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1701718632)
  (begin
    (define current-module-library-path (make-parameter '#f))
    (define current-module-registry (make-parameter '#f))
    (define __reload-module (make-parameter '#f))
    (define load-module__%
      (lambda (_modpath6881_ _reload?6882_)
        (let ((_$e6884_
               (if (let () (declare (not safe)) (not _reload?6882_))
                   (let ((__tmp6903 (current-module-registry)))
                     (declare (not safe))
                     (table-ref __tmp6903 _modpath6881_ '#f))
                   '#f)))
          (if _$e6884_
              _$e6884_
              (let ((_$e6887_
                     (let ()
                       (declare (not safe))
                       (find-library-module _modpath6881_))))
                (if _$e6887_
                    ((lambda (_path6890_)
                       (let ((_lpath6892_ (load _path6890_)))
                         (let ((__tmp6904 (current-module-registry)))
                           (declare (not safe))
                           (table-set! __tmp6904 _modpath6881_ _lpath6892_))
                         _lpath6892_))
                     _$e6887_)
                    (error '"module not found" _modpath6881_)))))))
    (define load-module__0
      (lambda (_modpath6897_)
        (let ((_reload?6899_ (__reload-module)))
          (declare (not safe))
          (load-module__% _modpath6897_ _reload?6899_))))
    (define load-module
      (lambda _g6906_
        (let ((_g6905_ (let () (declare (not safe)) (##length _g6906_))))
          (cond ((let () (declare (not safe)) (##fx= _g6905_ 1))
                 (apply (lambda (_modpath6897_)
                          (let ()
                            (declare (not safe))
                            (load-module__0 _modpath6897_)))
                        _g6906_))
                ((let () (declare (not safe)) (##fx= _g6905_ 2))
                 (apply (lambda (_modpath6901_ _reload?6902_)
                          (let ()
                            (declare (not safe))
                            (load-module__% _modpath6901_ _reload?6902_)))
                        _g6906_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  load-module
                  _g6906_))))))
    (define find-library-module
      (lambda (_modpath6815_)
        (letrec ((_find-compiled-file6817_
                  (lambda (_npath6869_)
                    (let ((_basepath6871_
                           (let ()
                             (declare (not safe))
                             (##string-append _npath6869_ '".o"))))
                      (let _lp6873_ ((_current6875_ '#f) (_n6876_ '1))
                        (let ((_next6878_
                               (let ((__tmp6907 (number->string _n6876_)))
                                 (declare (not safe))
                                 (##string-append _basepath6871_ __tmp6907))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _next6878_))
                              (let ((__tmp6908
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _n6876_ '1))))
                                (declare (not safe))
                                (_lp6873_ _next6878_ __tmp6908))
                              _current6875_))))))
                 (_find-source-file6818_
                  (lambda (_npath6865_)
                    (let ((_spath6867_ (string-append _npath6865_ '".scm")))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _spath6867_))
                          _spath6867_
                          '#f)))))
          (let _lp6820_ ((_rest6822_ (current-module-library-path)))
            (let* ((_rest68236831_ _rest6822_)
                   (_else68256839_ (lambda () '#f))
                   (_K68276853_
                    (lambda (_rest6842_ _dir6843_)
                      (let* ((_npath6845_
                              (path-expand
                               _modpath6815_
                               (path-expand _dir6843_)))
                             (_$e6847_
                              (let ()
                                (declare (not safe))
                                (_find-compiled-file6817_ _npath6845_))))
                        (if _$e6847_
                            (path-normalize _$e6847_)
                            (let ((_$e6850_
                                   (let ()
                                     (declare (not safe))
                                     (_find-source-file6818_ _npath6845_))))
                              (if _$e6850_
                                  (path-normalize _$e6850_)
                                  (let ()
                                    (declare (not safe))
                                    (_lp6820_ _rest6842_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest68236831_))
                  (let ((_hd68286856_
                         (let () (declare (not safe)) (##car _rest68236831_)))
                        (_tl68296858_
                         (let () (declare (not safe)) (##cdr _rest68236831_))))
                    (let* ((_dir6861_ _hd68286856_) (_rest6863_ _tl68296858_))
                      (declare (not safe))
                      (_K68276853_ _rest6863_ _dir6861_)))
                  (let () (declare (not safe)) (_else68256839_))))))))))
