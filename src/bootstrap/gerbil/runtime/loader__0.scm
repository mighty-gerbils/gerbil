(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1707573210)
  (begin
    (define current-module-library-path (make-parameter '#f))
    (define current-module-registry (make-parameter '#f))
    (define __reload-module (make-parameter '#f))
    (define load-module__%
      (lambda (_modpath69409_ _reload?69410_)
        (let ((_$e69412_
               (if (let () (declare (not safe)) (not _reload?69410_))
                   (let ((__tmp73899 (current-module-registry)))
                     (declare (not safe))
                     (table-ref __tmp73899 _modpath69409_ '#f))
                   '#f)))
          (if _$e69412_
              _$e69412_
              (let ((_$e69415_
                     (let ()
                       (declare (not safe))
                       (find-library-module _modpath69409_))))
                (if _$e69415_
                    ((lambda (_path69418_)
                       (let ((_lpath69420_ (load _path69418_)))
                         (let ((__tmp73900 (current-module-registry)))
                           (declare (not safe))
                           (table-set! __tmp73900 _modpath69409_ _lpath69420_))
                         _lpath69420_))
                     _$e69415_)
                    (error '"module not found" _modpath69409_)))))))
    (define load-module__0
      (lambda (_modpath69425_)
        (let ((_reload?69427_ (__reload-module)))
          (declare (not safe))
          (load-module__% _modpath69425_ _reload?69427_))))
    (define load-module
      (lambda _g73902_
        (let ((_g73901_ (let () (declare (not safe)) (##length _g73902_))))
          (cond ((let () (declare (not safe)) (##fx= _g73901_ 1))
                 (apply (lambda (_modpath69425_)
                          (let ()
                            (declare (not safe))
                            (load-module__0 _modpath69425_)))
                        _g73902_))
                ((let () (declare (not safe)) (##fx= _g73901_ 2))
                 (apply (lambda (_modpath69429_ _reload?69430_)
                          (let ()
                            (declare (not safe))
                            (load-module__% _modpath69429_ _reload?69430_)))
                        _g73902_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  load-module
                  _g73902_))))))
    (define find-library-module
      (lambda (_modpath69343_)
        (letrec ((_find-compiled-file69345_
                  (lambda (_npath69397_)
                    (let ((_basepath69399_
                           (let ()
                             (declare (not safe))
                             (##string-append _npath69397_ '".o"))))
                      (let _lp69401_ ((_current69403_ '#f) (_n69404_ '1))
                        (let ((_next69406_
                               (let ((__tmp73903 (number->string _n69404_)))
                                 (declare (not safe))
                                 (##string-append
                                  _basepath69399_
                                  __tmp73903))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _next69406_))
                              (let ((__tmp73904
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _n69404_ '1))))
                                (declare (not safe))
                                (_lp69401_ _next69406_ __tmp73904))
                              _current69403_))))))
                 (_find-source-file69346_
                  (lambda (_npath69393_)
                    (let ((_spath69395_ (string-append _npath69393_ '".scm")))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _spath69395_))
                          _spath69395_
                          '#f)))))
          (let _lp69348_ ((_rest69350_ (current-module-library-path)))
            (let* ((_rest6935169359_ _rest69350_)
                   (_else6935369367_ (lambda () '#f))
                   (_K6935569381_
                    (lambda (_rest69370_ _dir69371_)
                      (let* ((_npath69373_
                              (path-expand
                               _modpath69343_
                               (path-expand _dir69371_)))
                             (_$e69375_
                              (let ()
                                (declare (not safe))
                                (_find-compiled-file69345_ _npath69373_))))
                        (if _$e69375_
                            (path-normalize _$e69375_)
                            (let ((_$e69378_
                                   (let ()
                                     (declare (not safe))
                                     (_find-source-file69346_ _npath69373_))))
                              (if _$e69378_
                                  (path-normalize _$e69378_)
                                  (let ()
                                    (declare (not safe))
                                    (_lp69348_ _rest69370_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest6935169359_))
                  (let ((_hd6935669384_
                         (let ()
                           (declare (not safe))
                           (##car _rest6935169359_)))
                        (_tl6935769386_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6935169359_))))
                    (let* ((_dir69389_ _hd6935669384_)
                           (_rest69391_ _tl6935769386_))
                      (declare (not safe))
                      (_K6935569381_ _rest69391_ _dir69389_)))
                  (let () (declare (not safe)) (_else6935369367_))))))))))
