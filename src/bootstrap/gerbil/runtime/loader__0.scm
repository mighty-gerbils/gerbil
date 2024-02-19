(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1708337964)
  (begin
    (define current-module-library-path (make-parameter '#f))
    (define current-module-registry (make-parameter '#f))
    (define __reload-module (make-parameter '#f))
    (define load-module__%
      (lambda (_modpath130482_ _reload?130483_)
        (let ((_$e130485_
               (if (let () (declare (not safe)) (not _reload?130483_))
                   (let ((__tmp134490 (current-module-registry)))
                     (declare (not safe))
                     (hash-get __tmp134490 _modpath130482_))
                   '#f)))
          (if _$e130485_
              _$e130485_
              (let ((_$e130488_
                     (let ()
                       (declare (not safe))
                       (find-library-module _modpath130482_))))
                (if _$e130488_
                    ((lambda (_path130491_)
                       (let ((_lpath130493_ (load _path130491_)))
                         (let ((__tmp134491 (current-module-registry)))
                           (declare (not safe))
                           (hash-put!
                            __tmp134491
                            _modpath130482_
                            _lpath130493_))
                         _lpath130493_))
                     _$e130488_)
                    (let ()
                      (declare (not safe))
                      (error '"module not found" _modpath130482_))))))))
    (define load-module__0
      (lambda (_modpath130498_)
        (let ((_reload?130500_ (__reload-module)))
          (declare (not safe))
          (load-module__% _modpath130498_ _reload?130500_))))
    (define load-module
      (lambda _g134493_
        (let ((_g134492_ (let () (declare (not safe)) (##length _g134493_))))
          (cond ((let () (declare (not safe)) (##fx= _g134492_ 1))
                 (apply (lambda (_modpath130498_)
                          (let ()
                            (declare (not safe))
                            (load-module__0 _modpath130498_)))
                        _g134493_))
                ((let () (declare (not safe)) (##fx= _g134492_ 2))
                 (apply (lambda (_modpath130502_ _reload?130503_)
                          (let ()
                            (declare (not safe))
                            (load-module__% _modpath130502_ _reload?130503_)))
                        _g134493_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  load-module
                  _g134493_))))))
    (define find-library-module
      (lambda (_modpath130416_)
        (letrec ((_find-compiled-file130418_
                  (lambda (_npath130470_)
                    (let ((_basepath130472_
                           (let ()
                             (declare (not safe))
                             (##string-append _npath130470_ '".o"))))
                      (let _lp130474_ ((_current130476_ '#f) (_n130477_ '1))
                        (let ((_next130479_
                               (let ((__tmp134494 (number->string _n130477_)))
                                 (declare (not safe))
                                 (##string-append
                                  _basepath130472_
                                  __tmp134494))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _next130479_))
                              (let ((__tmp134495
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _n130477_ '1))))
                                (declare (not safe))
                                (_lp130474_ _next130479_ __tmp134495))
                              _current130476_))))))
                 (_find-source-file130419_
                  (lambda (_npath130466_)
                    (let ((_spath130468_
                           (string-append _npath130466_ '".scm")))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _spath130468_))
                          _spath130468_
                          '#f)))))
          (let _lp130421_ ((_rest130423_ (current-module-library-path)))
            (let* ((_rest130424130432_ _rest130423_)
                   (_else130426130440_ (lambda () '#f))
                   (_K130428130454_
                    (lambda (_rest130443_ _dir130444_)
                      (let* ((_npath130446_
                              (path-expand
                               _modpath130416_
                               (path-expand _dir130444_)))
                             (_$e130448_
                              (let ()
                                (declare (not safe))
                                (_find-compiled-file130418_ _npath130446_))))
                        (if _$e130448_
                            (path-normalize _$e130448_)
                            (let ((_$e130451_
                                   (let ()
                                     (declare (not safe))
                                     (_find-source-file130419_
                                      _npath130446_))))
                              (if _$e130451_
                                  (path-normalize _$e130451_)
                                  (let ()
                                    (declare (not safe))
                                    (_lp130421_ _rest130443_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest130424130432_))
                  (let ((_hd130429130457_
                         (let ()
                           (declare (not safe))
                           (##car _rest130424130432_)))
                        (_tl130430130459_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest130424130432_))))
                    (let* ((_dir130462_ _hd130429130457_)
                           (_rest130464_ _tl130430130459_))
                      (declare (not safe))
                      (_K130428130454_ _rest130464_ _dir130462_)))
                  (let () (declare (not safe)) (_else130426130440_))))))))))
