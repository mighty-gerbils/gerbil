(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1707601714)
  (begin
    (define current-module-library-path (make-parameter '#f))
    (define current-module-registry (make-parameter '#f))
    (define __reload-module (make-parameter '#f))
    (define load-module__%
      (lambda (_modpath69464_ _reload?69465_)
        (let ((_$e69467_
               (if (let () (declare (not safe)) (not _reload?69465_))
                   (let ((__tmp73954 (current-module-registry)))
                     (declare (not safe))
                     (table-ref __tmp73954 _modpath69464_ '#f))
                   '#f)))
          (if _$e69467_
              _$e69467_
              (let ((_$e69470_
                     (let ()
                       (declare (not safe))
                       (find-library-module _modpath69464_))))
                (if _$e69470_
                    ((lambda (_path69473_)
                       (let ((_lpath69475_ (load _path69473_)))
                         (let ((__tmp73955 (current-module-registry)))
                           (declare (not safe))
                           (table-set! __tmp73955 _modpath69464_ _lpath69475_))
                         _lpath69475_))
                     _$e69470_)
                    (error '"module not found" _modpath69464_)))))))
    (define load-module__0
      (lambda (_modpath69480_)
        (let ((_reload?69482_ (__reload-module)))
          (declare (not safe))
          (load-module__% _modpath69480_ _reload?69482_))))
    (define load-module
      (lambda _g73957_
        (let ((_g73956_ (let () (declare (not safe)) (##length _g73957_))))
          (cond ((let () (declare (not safe)) (##fx= _g73956_ 1))
                 (apply (lambda (_modpath69480_)
                          (let ()
                            (declare (not safe))
                            (load-module__0 _modpath69480_)))
                        _g73957_))
                ((let () (declare (not safe)) (##fx= _g73956_ 2))
                 (apply (lambda (_modpath69484_ _reload?69485_)
                          (let ()
                            (declare (not safe))
                            (load-module__% _modpath69484_ _reload?69485_)))
                        _g73957_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  load-module
                  _g73957_))))))
    (define find-library-module
      (lambda (_modpath69398_)
        (letrec ((_find-compiled-file69400_
                  (lambda (_npath69452_)
                    (let ((_basepath69454_
                           (let ()
                             (declare (not safe))
                             (##string-append _npath69452_ '".o"))))
                      (let _lp69456_ ((_current69458_ '#f) (_n69459_ '1))
                        (let ((_next69461_
                               (let ((__tmp73958 (number->string _n69459_)))
                                 (declare (not safe))
                                 (##string-append
                                  _basepath69454_
                                  __tmp73958))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _next69461_))
                              (let ((__tmp73959
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _n69459_ '1))))
                                (declare (not safe))
                                (_lp69456_ _next69461_ __tmp73959))
                              _current69458_))))))
                 (_find-source-file69401_
                  (lambda (_npath69448_)
                    (let ((_spath69450_ (string-append _npath69448_ '".scm")))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _spath69450_))
                          _spath69450_
                          '#f)))))
          (let _lp69403_ ((_rest69405_ (current-module-library-path)))
            (let* ((_rest6940669414_ _rest69405_)
                   (_else6940869422_ (lambda () '#f))
                   (_K6941069436_
                    (lambda (_rest69425_ _dir69426_)
                      (let* ((_npath69428_
                              (path-expand
                               _modpath69398_
                               (path-expand _dir69426_)))
                             (_$e69430_
                              (let ()
                                (declare (not safe))
                                (_find-compiled-file69400_ _npath69428_))))
                        (if _$e69430_
                            (path-normalize _$e69430_)
                            (let ((_$e69433_
                                   (let ()
                                     (declare (not safe))
                                     (_find-source-file69401_ _npath69428_))))
                              (if _$e69433_
                                  (path-normalize _$e69433_)
                                  (let ()
                                    (declare (not safe))
                                    (_lp69403_ _rest69425_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest6940669414_))
                  (let ((_hd6941169439_
                         (let ()
                           (declare (not safe))
                           (##car _rest6940669414_)))
                        (_tl6941269441_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6940669414_))))
                    (let* ((_dir69444_ _hd6941169439_)
                           (_rest69446_ _tl6941269441_))
                      (declare (not safe))
                      (_K6941069436_ _rest69446_ _dir69444_)))
                  (let () (declare (not safe)) (_else6940869422_))))))))))
