(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1707610212)
  (begin
    (define current-module-library-path (make-parameter '#f))
    (define current-module-registry (make-parameter '#f))
    (define __reload-module (make-parameter '#f))
    (define load-module__%
      (lambda (_modpath69466_ _reload?69467_)
        (let ((_$e69469_
               (if (let () (declare (not safe)) (not _reload?69467_))
                   (let ((__tmp73956 (current-module-registry)))
                     (declare (not safe))
                     (table-ref __tmp73956 _modpath69466_ '#f))
                   '#f)))
          (if _$e69469_
              _$e69469_
              (let ((_$e69472_
                     (let ()
                       (declare (not safe))
                       (find-library-module _modpath69466_))))
                (if _$e69472_
                    ((lambda (_path69475_)
                       (let ((_lpath69477_ (load _path69475_)))
                         (let ((__tmp73957 (current-module-registry)))
                           (declare (not safe))
                           (table-set! __tmp73957 _modpath69466_ _lpath69477_))
                         _lpath69477_))
                     _$e69472_)
                    (error '"module not found" _modpath69466_)))))))
    (define load-module__0
      (lambda (_modpath69482_)
        (let ((_reload?69484_ (__reload-module)))
          (declare (not safe))
          (load-module__% _modpath69482_ _reload?69484_))))
    (define load-module
      (lambda _g73959_
        (let ((_g73958_ (let () (declare (not safe)) (##length _g73959_))))
          (cond ((let () (declare (not safe)) (##fx= _g73958_ 1))
                 (apply (lambda (_modpath69482_)
                          (let ()
                            (declare (not safe))
                            (load-module__0 _modpath69482_)))
                        _g73959_))
                ((let () (declare (not safe)) (##fx= _g73958_ 2))
                 (apply (lambda (_modpath69486_ _reload?69487_)
                          (let ()
                            (declare (not safe))
                            (load-module__% _modpath69486_ _reload?69487_)))
                        _g73959_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  load-module
                  _g73959_))))))
    (define find-library-module
      (lambda (_modpath69400_)
        (letrec ((_find-compiled-file69402_
                  (lambda (_npath69454_)
                    (let ((_basepath69456_
                           (let ()
                             (declare (not safe))
                             (##string-append _npath69454_ '".o"))))
                      (let _lp69458_ ((_current69460_ '#f) (_n69461_ '1))
                        (let ((_next69463_
                               (let ((__tmp73960 (number->string _n69461_)))
                                 (declare (not safe))
                                 (##string-append
                                  _basepath69456_
                                  __tmp73960))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _next69463_))
                              (let ((__tmp73961
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _n69461_ '1))))
                                (declare (not safe))
                                (_lp69458_ _next69463_ __tmp73961))
                              _current69460_))))))
                 (_find-source-file69403_
                  (lambda (_npath69450_)
                    (let ((_spath69452_ (string-append _npath69450_ '".scm")))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _spath69452_))
                          _spath69452_
                          '#f)))))
          (let _lp69405_ ((_rest69407_ (current-module-library-path)))
            (let* ((_rest6940869416_ _rest69407_)
                   (_else6941069424_ (lambda () '#f))
                   (_K6941269438_
                    (lambda (_rest69427_ _dir69428_)
                      (let* ((_npath69430_
                              (path-expand
                               _modpath69400_
                               (path-expand _dir69428_)))
                             (_$e69432_
                              (let ()
                                (declare (not safe))
                                (_find-compiled-file69402_ _npath69430_))))
                        (if _$e69432_
                            (path-normalize _$e69432_)
                            (let ((_$e69435_
                                   (let ()
                                     (declare (not safe))
                                     (_find-source-file69403_ _npath69430_))))
                              (if _$e69435_
                                  (path-normalize _$e69435_)
                                  (let ()
                                    (declare (not safe))
                                    (_lp69405_ _rest69427_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest6940869416_))
                  (let ((_hd6941369441_
                         (let ()
                           (declare (not safe))
                           (##car _rest6940869416_)))
                        (_tl6941469443_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6940869416_))))
                    (let* ((_dir69446_ _hd6941369441_)
                           (_rest69448_ _tl6941469443_))
                      (declare (not safe))
                      (_K6941269438_ _rest69448_ _dir69446_)))
                  (let () (declare (not safe)) (_else6941069424_))))))))))
