(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1708168067)
  (begin
    (define current-module-library-path (make-parameter '#f))
    (define current-module-registry (make-parameter '#f))
    (define __reload-module (make-parameter '#f))
    (define load-module__%
      (lambda (_modpath71508_ _reload?71509_)
        (let ((_$e71511_
               (if (let () (declare (not safe)) (not _reload?71509_))
                   (let ((__tmp76098 (current-module-registry)))
                     (declare (not safe))
                     (table-ref __tmp76098 _modpath71508_ '#f))
                   '#f)))
          (if _$e71511_
              _$e71511_
              (let ((_$e71514_
                     (let ()
                       (declare (not safe))
                       (find-library-module _modpath71508_))))
                (if _$e71514_
                    ((lambda (_path71517_)
                       (let ((_lpath71519_ (load _path71517_)))
                         (let ((__tmp76099 (current-module-registry)))
                           (declare (not safe))
                           (table-set! __tmp76099 _modpath71508_ _lpath71519_))
                         _lpath71519_))
                     _$e71514_)
                    (error '"module not found" _modpath71508_)))))))
    (define load-module__0
      (lambda (_modpath71524_)
        (let ((_reload?71526_ (__reload-module)))
          (declare (not safe))
          (load-module__% _modpath71524_ _reload?71526_))))
    (define load-module
      (lambda _g76101_
        (let ((_g76100_ (let () (declare (not safe)) (##length _g76101_))))
          (cond ((let () (declare (not safe)) (##fx= _g76100_ 1))
                 (apply (lambda (_modpath71524_)
                          (let ()
                            (declare (not safe))
                            (load-module__0 _modpath71524_)))
                        _g76101_))
                ((let () (declare (not safe)) (##fx= _g76100_ 2))
                 (apply (lambda (_modpath71528_ _reload?71529_)
                          (let ()
                            (declare (not safe))
                            (load-module__% _modpath71528_ _reload?71529_)))
                        _g76101_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  load-module
                  _g76101_))))))
    (define find-library-module
      (lambda (_modpath71442_)
        (letrec ((_find-compiled-file71444_
                  (lambda (_npath71496_)
                    (let ((_basepath71498_
                           (let ()
                             (declare (not safe))
                             (##string-append _npath71496_ '".o"))))
                      (let _lp71500_ ((_current71502_ '#f) (_n71503_ '1))
                        (let ((_next71505_
                               (let ((__tmp76102 (number->string _n71503_)))
                                 (declare (not safe))
                                 (##string-append
                                  _basepath71498_
                                  __tmp76102))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _next71505_))
                              (let ((__tmp76103
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _n71503_ '1))))
                                (declare (not safe))
                                (_lp71500_ _next71505_ __tmp76103))
                              _current71502_))))))
                 (_find-source-file71445_
                  (lambda (_npath71492_)
                    (let ((_spath71494_ (string-append _npath71492_ '".scm")))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _spath71494_))
                          _spath71494_
                          '#f)))))
          (let _lp71447_ ((_rest71449_ (current-module-library-path)))
            (let* ((_rest7145071458_ _rest71449_)
                   (_else7145271466_ (lambda () '#f))
                   (_K7145471480_
                    (lambda (_rest71469_ _dir71470_)
                      (let* ((_npath71472_
                              (path-expand
                               _modpath71442_
                               (path-expand _dir71470_)))
                             (_$e71474_
                              (let ()
                                (declare (not safe))
                                (_find-compiled-file71444_ _npath71472_))))
                        (if _$e71474_
                            (path-normalize _$e71474_)
                            (let ((_$e71477_
                                   (let ()
                                     (declare (not safe))
                                     (_find-source-file71445_ _npath71472_))))
                              (if _$e71477_
                                  (path-normalize _$e71477_)
                                  (let ()
                                    (declare (not safe))
                                    (_lp71447_ _rest71469_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest7145071458_))
                  (let ((_hd7145571483_
                         (let ()
                           (declare (not safe))
                           (##car _rest7145071458_)))
                        (_tl7145671485_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest7145071458_))))
                    (let* ((_dir71488_ _hd7145571483_)
                           (_rest71490_ _tl7145671485_))
                      (declare (not safe))
                      (_K7145471480_ _rest71490_ _dir71488_)))
                  (let () (declare (not safe)) (_else7145271466_))))))))))
